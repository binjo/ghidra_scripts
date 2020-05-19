//Headless post-script to export as BinExport file
//@author binjo
//@category User
//@keybinding
//@menupath
//@toolbar

import ghidra.app.script.GhidraScript;
import com.google.security.binexport.BinExportExporter;
import java.io.File;

public class HeadlessPostBinExport extends GhidraScript {

    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 1) {
            // set export name
            String fbe = currentProgram.getName();
            if (fbe.contains(".")) fbe = fbe.substring(0, fbe.indexOf(".")) + ".BinExport";
            println(String.format("exporting %s to %s", fbe, args[0]));
            // fix output directory
            File outputDir = new File(args[0]);
            if (!outputDir.exists()) outputDir.mkdir();
            // let's export
            File outputFile = new File(args[0], fbe);
            BinExportExporter binexport = new BinExportExporter();
            binexport.export(outputFile, currentProgram, null, monitor);
        }
    }

}
