$targ = $args[0]
# TODO check if exists
$dbh = C:\windbg\x64\dbh.exe -s:"cache*c:\symbols;srv*http://msdl.microsoft.com/download/symbols" $targ info quit | Select-String LoadedPdbName
Write-Host ("[+] {0}" -f $dbh.Line.Trim())

$pdb = $dbh.Line.Replace("LoadedPdbName :", "").Trim()
$pdf = $pdb.Split("\\")[-1]

Copy-Item $pdb

c:\_virus\pdb.exe .\$pdf -fulloutput > .\$pdf.xml
Write-Host ("[+] done ... {0}.xml" -f $pdf)

Remove-Item .\$pdf
