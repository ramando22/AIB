#### Install 7-Zip ####
Write-Output "#### Install 7-Zip ####"
$binary = Get-ChildItem -recurse "C:\temp\binaries\7-Zip"  -Filter *.msi

$binaryFullName = $binary.FullName

$p = Start-Process 'msiexec.exe' -ArgumentList '/i', """$binaryFullName""", "/quiet" -wait

Write-Output $p



###################################################

Write-Output "#### Install 7-Zip ####"
$binary = Get-ChildItem "C:\software\PostgresSQL_JDBC_Driver_42.2.2_P1"  -Filter *.msi

$binaryFullName = $binary.FullName

$p = Start-Process 'msiexec.exe' -ArgumentList '/i', """$binaryFullName""", "/quiet" -wait

Write-Output $p

############WORKING#################
##NDR Tunnel
Write-Output "#### ##NDR Tunnel ####"
$binary = Get-ChildItem -recurse "C:\software\NDR_Tunnel_1.0_P5\Package Source\PROJECT_ASSISTANT\SINGLE_MSI_IMAGE\DiskImages\DISK1"  -Filter *.msi

$binaryFullName = $binary.FullName

$p = Start-Process 'msiexec.exe' -ArgumentList '/i', """$binaryFullName""", "ALLUSERS=1 REBOOT=ReallySuppress /QN" -wait
