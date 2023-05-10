#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1
$model="mfc-l9570dw"
$driver="BRPRC16A.INF"

# link to download the driver
$download = "https://download.brother.com/welcome/dlf103196/Y16E_C1-hostm-F2.EXE"

# name of the downloaded zip file
$zip = "c:\tech\drivers\$model-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\$model"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\$model\gdi\$driver"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc

Write-Output "Repo folder name: "(Get-ChildItem C:\Windows\System32\DriverStore\FileRepository\ | Select-Object name | grep -i $driver)

start-sleep -seconds 10