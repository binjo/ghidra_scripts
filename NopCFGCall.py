#eliminate __guard_check_icall_fptr, nop them all
#@author binjo
#@category User
#@keybinding 
#@menupath 
#@toolbar 

from ghidra.app.plugin.assembler import Assemblers
from ghidra.program.database.code import InstructionDB
from ghidra.program.model.address import GenericAddress

asm = Assemblers.getAssembler(currentProgram)

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
   
    for i in xrange(size):
        asm.assemble(addr.add(i), opcode)

def find_inst_via_pattern(frm_inst, pattern1=None, pattern2=None, tot=50, fwd_p=True):
    ctn, the_inst, the_addr = 0, None, frm_inst.next.getAddress()
    while True:
        if ctn > tot:
            print "[-] too far away...{0}, {1}".format(tot, the_addr)
            break

        inst = getInstructionAt(the_addr)
        if not inst:
            print "[-] failed to get inst...{0}".format(the_addr)
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
            the_addr = inst.previous.getAddress()
        ctn += 1

    return the_inst

# find xrefs of ___guard_check_icall_fptr call, make selection
# or just place cursor at the call
def patch_cfg_call_at(addr):

    nop_them_all_insts = []

    mov_ecx_inst = find_inst_via_pattern(getInstructionAt(addr), pattern1="mov ecx,", fwd_p=False)
    if mov_ecx_inst:

        nop_them_all_insts.append(mov_ecx_inst)

        mov_esp_inst = find_inst_via_pattern(mov_ecx_inst, "mov ", ",esp", fwd_p=False)
        if mov_esp_inst:
            nop_them_all_insts.append(mov_esp_inst)
        else:
            print "[-] failed to find esp setting opcodes ... {0}".format(mov_ecx_inst.getAddress())

    # following instructions could be patched due to compiler optimizations...
    cmp_esp_inst = find_inst_via_pattern(getInstructionAt(addr), "cmp ", ",esp")
    if cmp_esp_inst:

        nop_them_all_insts.append(cmp_esp_inst)

        j_inst = cmp_esp_inst.next
        if str(j_inst).startswith("JNZ"):
            nop_them_all_insts.append(j_inst)
            j_inst = getInstructionAt(j_inst.getAddress(0)).previous # find_inst_via_pattern needs to be previous inst
        elif str(j_inst).startswith("JZ"):
            nop_them_all_insts.append(j_inst)
        else:
            print "[-] not jz/jnz ... {0}".format(j_inst.getAddress())

        mov_ecx_4_inst = find_inst_via_pattern(j_inst, pattern1="mov ecx,0x4")
        if not mov_ecx_4_inst:
            print "[-] can't find mov ecx, 0x4 ... maybe optimized {0}".format(j_inst.getAddress())
        else:
            nop_them_all_insts.append(mov_ecx_4_inst)

        int_29_inst = find_inst_via_pattern(j_inst, pattern1="int 29")
        if not int_29_inst:
            print "[-] can't find int 29 ... maybe optimized {0}".format(j_inst.getAddress())
        else:
            nop_them_all_insts.append(int_29_inst)

    # should be safe to patch now...
    patch_many_bytes(addr)
    for inst in nop_them_all_insts:
        patch_many_bytes(inst)


if currentSelection:
    ctn = 0
    for addr in iter(currentSelection):
        patch_cfg_call_at(addr.getMinAddress())
        ctn += 1
        if (ctn % 100 == 0):
            print "[+] done...{0}".format(ctn)
    print "[+] total...{0}".format(ctn)
else:
    patch_cfg_call_at(currentAddress)
    print "[+] check at current address..."
