#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1
$printer="mfc-l5900dw"

# link to download the driver
$download = "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE"

# name of the downloaded zip file
$zip = "c:\tech\drivers\$printer-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\$printer"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\$printer\gdi\BRPRM15A.INF"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc

Write-Output "Repo folder name: "(Get-ChildItem C:\Windows\System32\DriverStore\FileRepository\ | Select-Object name | grep -i BRPRM15A.INF)

Start-Sleep -seconds 10