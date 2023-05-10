#!/bin/powershell

# link to download the driver
$download = "https://ftp.hp.com/pub/softlib/software13/printers/LJ/M428-M429/V3_DriveronlyWebpack-48.6.4638-LJM428f-M429f_V3_DriveronlyWebpack.exe"

# name of the downloaded zip file
$zip = "c:\tech\drivers\hp-lj-m428f-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\hp-lj-m428f"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\hp-lj-m428f\HPeSCLScan.INF"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc

Write-Output "Repo folder name: "(Get-ChildItem C:\Windows\System32\DriverStore\FileRepository\ | Select-Object name | grep -i HPeSCLScan.INF)

start-sleep -seconds 10

#this has been the result I've seen so far: brprm15a.inf_amd64_cfab10ef1af64d37