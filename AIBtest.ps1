##.Net Framework
Write-Output "#Enabling .Net Framework"
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3"
Start-Sleep -s 10

##Microsoft .NET Framework 3.5 SP1
Write-Output "##Microsoft .NET Framework 3.5 SP1"
cd 'C:\software\Microsoft .NET Framework 3.5 SP1'
.\Install.bat -wait
Start-Sleep -s 10

<#
##Microsoft .NET Framework 4.8 x64 (version or later already installed)
Write-Output "##Microsoft .NET Framework 4.8 x64"
cd 'C:\software\Microsoft .NET Framework 4.8 x64'
.\ndp48-x86-x64-allos-enu.exe
Start-Sleep -s 10
#>


##DotNet SDK
Write-Output "##DotNet SDK"
cd 'C:\software\Microsoft_.Net_Core_SDK_3.1.403_x64_P1'
.\Install.CMD
Start-Sleep -s 10


##Access Database Engine 2007
Write-Output "##Access Database Engine 2007"
cd 'C:\software\Microsoft_Office_Access_Database_Engine_2007_P1'
msiexec /i "AceRedist.msi" /T "Microsoft_Office_Access_Database_Engine_2007_P1.Mst" ALLUSERS=1 REBOOT=ReallySuppress /QN
Start-Sleep -s 10


##HSCIC Identity Agent
Write-Output "##HSCIC Identity Agent"
cd 'C:\software\NHS HSCIC Identity Agent 2.3.2.0'
msiexec /i "NHS-Digital-Identity-Agent-2.3.2.0.msi" ALLUSERS=1 REBOOT=ReallySuppress /QN 
Start-Sleep -s 20

##SQL Server Report Builder
Write-Output "##SQL Server Report Builder"
cd 'C:\software\Microsoft Report Builder 15\Microsoft_Report_Builder_15.0.19611.0_P1'
msiexec /i "ReportBuilder.msi" ALLUSERS=1 REBOOT=ReallySuppress /QN
Start-Sleep -s 10

## Firefox
Write-Output "##Firefox"
cd "C:\software\Mozilla Firefox"
& '.\Firefox Setup 91.10.0esr.exe' -ms -wait
Start-Sleep -s 10

##Classic Client Patch for NHS
Write-Output "##Classic Client Patch for NHS"
cd 'C:\software\Gemalto Classic Client 6.1 Patch 3 x64 User Setup'
msiexec /i "Gemalto Classic Client 6.1 Patch 3 x64 User Setup.msi" ALLUSERS=1 REBOOT=ReallySuppress /QN

Start-Sleep -s 10

##NDR Tunnel
Write-Output "##NDR Tunnel"
##cd "C:\software\NDR_Tunnel_1.0_P5\NDR Tunnel 1.0 P5"
cd "C:\software\NDR_Tunnel_1.0_P5\Package Source\PROJECT_ASSISTANT\SINGLE_MSI_IMAGE\DiskImages\DISK1"
msiexec /i "NDR Tunnel 1.0 P5.msi" ALLUSERS=1 REBOOT=ReallySuppress /QN
Start-Sleep -s 10

##Tortoise
Write-Output "##Tortoise"
cd 'C:\software\Tortoise SVN 1.14.0.28885 x64'
msiexec /i "TortoiseSVN-1.14.0.28885-x64-svn-1.14.0.msi" ALLUSERS=1 REBOOT=ReallySuppress /QN
Start-Sleep -s 10

##Python
#cd 'C:\software\Python 3.9.6 x64'
#Install.CMD - file not found


##PostgresSQL JDBC Driver
Write-Output "##PostgresSQL JDBC Driver"
cd 'C:\software\PostgresSQL_JDBC_Driver_42.2.2_P1'
msiexec /i "PostgresSQL_JDBC_Driver_42.2.2_P1.msi" ALLUSERS=1 REBOOT=ReallySuppress /QN 
Start-Sleep -s 10

##EndNote
Write-Output "##EndNote"
cd 'C:\software\Clarivate_Analytics_Endnote-x20_20.2.1.15749'
.\Install.cmd
Start-Sleep -s 20


##Dbeaver
Write-Output "##Dbeaver"
cd 'C:\software\DBeaver - Latest'
.\dbeaver-ce-22.1.0-x86_64-setup.exe /Allusers /S
Start-Sleep -s 10

##Filezilla
Write-Output "##Filezilla"
cd 'C:\software\Filezilla - Latest'
.\FileZilla_3.60.1_win64-setup.exe /S
Start-Sleep -s 10

##Git
Write-Output "##Git"
cd 'C:\software\Git - Latest'
.\Git-2.37.0-64-bit.exe /VERYSILENT /NOCLOSEAPPLICATIONS /NORESTARTAPPLICATIONS /NORESTART /SP- /SUPPRESSMSGBOXES
Start-Sleep -s 10


##Notepad++
Write-Output "##Notepad++"
cd 'C:\software\NotePad++ - Latest'
.\npp.8.4.2.Installer.x64.exe /S
Start-Sleep -s 10

##Tableau
Write-Output "##Tableau"
cd 'C:\software\Tableau Desktop 2021 - Latest'
.\TableauDesktop-64bit-2021-4-8.exe /quiet /norestart ACCEPTEULA=1 REMOVEINSTALLEDAPP=1
Start-Sleep -s 30


Write-Output "##COMPLETE"