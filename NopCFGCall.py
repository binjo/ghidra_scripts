#eliminate __guard_check_icall_fptr, nop them all
#@author binjo
#@category User
#@keybinding 
#@menupath 
#@toolbar 

from ghidra.app.plugin.assembler import Assemblers
from ghidra.program.database.code import InstructionDB
from ghidra.program.model.address import GenericAddress
from ghidra.app.util import XReferenceUtil

asm = Assemblers.getAssembler(currentProgram)
xref = XReferenceUtil()

def patch_many_bytes(frm, opcode="NOP"):
    addr, size = None, 0
    if isinstance(frm, InstructionDB):
        addr = frm.getAddress()
        size = frm.getLength()
    elif isinstance(frm, GenericAddress):
        addr = frm
        size = getInstructionAt(addr).getLength()
    else:
        print "[-] wrong param...{0}".format(type(frm))
        return

    # assemble call is way tooo slow...
    # for i in xrange(size):
    #     asm.assemble(addr.add(i), opcode)
    asm.patchProgram("\x90"*size, addr)

class CFGXrefs(object):
    """
    """
    def __init__(self, icall=None):
        self._icall = icall     # why keep it :X
        self._xrefs = []

    def exists(self, addr):
        return addr in self._xrefs

    @property
    def xrefs(self):
        return self._xrefs

    def append(self, addr):
        if addr and not self.exists(addr):
            self._xrefs.append(addr)

    def find(self, frm_inst, pattern1=None, pattern2=None, tot=50, fwd_p=True):
        ctn, the_inst, the_addr = 0, None, None
        if fwd_p:
            the_addr = frm_inst.next.getAddress()
        else:
            # backward finding, check if has reference
            if xref.getReferenceCount(frm_inst) == 1:
                the_addr = xref.getXRefList(frm_inst)[0] # FIXME other index possible?
            else:
                the_addr = frm_inst.previous.getAddress()

        while True:
            if ctn > tot:
                break

            inst = getInstructionAt(the_addr)
            if not inst:
                print "[-] failed to get inst...{0} {1}".format(the_addr, frm_inst.getAddress())
                break

            tsni = str(inst).lower()
            if pattern1:
                if tsni.startswith(pattern1):
                    if pattern2:
                        if tsni.endswith(pattern2):
                            the_inst = inst
                            break
                    else:
                        the_inst = inst
                        break

            if fwd_p:
                ft = inst.getFlowType()
                if ft.isJump():
                    the_addr = inst.getAddress(0)
                else:
                    the_addr = inst.next.getAddress()
            else:
                if xref.getReferenceCount(inst) == 1:
                    the_addr = xref.getXRefList(inst)[0]
                else:
                    the_addr = inst.previous.getAddress()
            ctn += 1

        if the_inst:
            self.append(the_inst)

        return the_inst

    # find xrefs of ___guard_check_icall_fptr call, make selection
    # or just place cursor at the call
    def collect_xrefs(self, addr):
        self.append(addr)

        mov_ecx_inst = self.find(getInstructionAt(addr), pattern1="mov ecx,", fwd_p=False)
        if not mov_ecx_inst:
            print "[-] failed to find ecx setting opcodes ... {0}".format(addr)

        mov_esp_inst = self.find(getInstructionAt(addr), "mov ", ",esp", fwd_p=False)
        if not mov_esp_inst:
            print "[-] failed to find esp setting opcodes ... {0}".format(addr)

        # following instructions could be patched due to compiler optimizations...
        cmp_esp_inst = self.find(getInstructionAt(addr), "cmp ", ",esp")
        if cmp_esp_inst:
            j_inst = cmp_esp_inst.next
            if str(j_inst).startswith("JNZ"):
                self.append(j_inst)
                j_inst = getInstructionAt(j_inst.getAddress(0)).previous # find_inst_via_pattern needs to be previous inst
            elif str(j_inst).startswith("JZ"):
                self.append(j_inst)
            elif str(j_inst).startswith("JMP"):
                j_inst = getInstructionAt(j_inst.getAddress(0))
                if str(j_inst).startswith("JNZ"):
                    self.append(j_inst)
                    j_inst = getInstructionAt(j_inst.getAddress(0)).previous
                elif str(j_inst).startswith("JZ"):
                    self.append(j_inst)
                else:
                    print "[-] still not jz/jnz ... {0}".format(j_inst.getAddress())
            else:
                print "[-] not jz/jnz ... {0}".format(j_inst.getAddress())

            mov_ecx_4_inst = self.find(j_inst, pattern1="mov ecx,0x4")
            if not mov_ecx_4_inst:
                print "[-] can't find mov ecx, 0x4 ... maybe optimized {0}".format(j_inst.getAddress())

            int_29_inst = self.find(j_inst, pattern1="int 29")
            if not int_29_inst:
                print "[-] can't find int 29 ... maybe optimized {0}".format(j_inst.getAddress())


x = CFGXrefs()

if currentSelection:
    ctn = 0
    for addr in iter(currentSelection):
        x.collect_xrefs(addr.getMinAddress())
        ctn += 1
        if (ctn % 100 == 0):
            print "[+] done...{0}".format(ctn)
    print "[+] total...{0}".format(ctn)
else:
    x.collect_xrefs(currentAddress)

for xref in x.xrefs:
    patch_many_bytes(xref)

print "[+] done ... {0} blocks".format(len(x.xrefs))
