#eliminate __guard_check_icall_fptr, replace to call rax
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

def replace_call_rax(frm):
    inst, addr = getInstructionAt(frm), frm
    if not str(inst).lower().startswith("call"):
        println("[-] not a call? ... {0}".format(inst))
        return

    asm.patchProgram("\xff\xd0\x90\x90\x90\x90", addr)
    for i in xrange(6):
        disassemble(addr.add(i))

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


    # find xrefs of ___guard_check_icall_fptr call, make selection
    # or just place cursor at the call
    def collect_xrefs(self, addr):
        self.append(addr)


x = CFGXrefs()

if currentSelection:
    ctn = 0
    for addr in iter(currentSelection):
        x.collect_xrefs(addr.getMinAddress())
        ctn += 1
        if (ctn % 100 == 0):
            println("[+] done...{0}".format(ctn))
    println("[+] total...{0}".format(ctn))
else:
    x.collect_xrefs(currentAddress)

for xref in x.xrefs:
    replace_call_rax(xref)

println("[+] done ... {0} blocks".format(len(x.xrefs)))
