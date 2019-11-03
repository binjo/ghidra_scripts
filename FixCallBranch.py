#fix call flow type as branches
#@author binjo
#@category User
#@keybinding 
#@menupath 
#@toolbar 


#TODO Add User Code Here
from ghidra.program.model.listing import FlowOverride

def set_branch_at(addr):
    minea = addr.getMinAddress()
    instr = getInstructionAt(minea)
    print "current address {0}, flow type {1}".format(minea, instr.flowType)

    if instr.flowType != FlowOverride.BRANCH:
        instr.setFlowOverride(FlowOverride.BRANCH)
        print "fixed..."

for addr in iter(currentSelection):
    set_branch_at(addr)
