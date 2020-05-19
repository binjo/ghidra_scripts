//Headless Pre-script to Apply PDB path and import path
//@author binjo
//@category User
//@keybinding 
//@menupath 
//@toolbar

// import ghidra.app.script.GhidraScript;
// setHeadlessImportDirectory required extending HeadlessScript
import ghidra.app.util.headless.HeadlessScript;
import java.util.*;

public class HeadlessPreSetPath extends HeadlessScript {

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 1) {
            String ps = args[0];
            if (ps.endsWith("/")) ps = ps.substring(0, ps.length() - 1);
            if (ps.endsWith("pdb")) {
                setAnalysisOption(currentProgram, "PDB.Symbol Repository Path", ps); // FIXME
                String[] tmps = ps.split("/");
                if (tmps.length >= 2) {
                    setHeadlessImportDirectory(String.join("/", Arrays.copyOfRange(tmps, tmps.length - 2, tmps.length - 1)));
                }
            }
        }
    }
}
