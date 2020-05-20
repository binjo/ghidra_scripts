//Headless post-script to replace __guard_dispatch_icall_fptr call refs
//@author binjo
//@category User
//@keybinding
//@menupath
//@toolbar

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.lang.*;
import ghidra.app.plugin.assembler.*;

import java.util.ArrayList;
import java.util.List;

public class HeadlessPostReplaceCFGDispatchCall extends GhidraScript {

    @Override
    public void run() throws Exception {

        if (!currentProgram.getLanguageID().getIdAsString().contains(":64:")) return;

        Address address = toAddr("__guard_dispatch_icall_fptr");
        if (address == null) return;

        ReferenceManager refMgr = currentProgram.getReferenceManager();
        List<Reference> xRefs = new ArrayList<Reference>();
        ReferenceIterator refIter = refMgr.getReferencesTo(address);
        while(refIter.hasNext()) {
            Reference ref = refIter.next();
            if (ref.getReferenceType() != RefType.INDIRECTION) continue;
            xRefs.add(ref);
        }

        int totalRefs = 0;
        Assembler asm = Assemblers.getAssembler(currentProgram);
        for (Reference ref : xRefs) {
            Address addr = ref.getFromAddress();
            byte[] callRax = { (byte)0xff, (byte)0xd0, (byte)0x90, (byte)0x90, (byte)0x90, (byte)0x90 };
            asm.patchProgram(callRax, addr);
            for (var i = 0; i < 6; i++)
                disassemble(addr.add(i));
            totalRefs++;
            if (totalRefs % 100 == 0)
                this.println("patched ... " + totalRefs);
        }
        this.println("total patched = " + totalRefs);

    }

}
