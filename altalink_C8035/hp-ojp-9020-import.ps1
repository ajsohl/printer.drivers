#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "https://ftp.ext.hp.com/pub/softlib/software13/printers/SUPD-V3-x64-2.07.1.1569.exe"

# name of the downloaded zip file
$zip = "c:\tech\drivers\hp-ojp-9020-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\hp-ojp-9020"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\hp-ojp-9020\SUPD-V3-x64-2.07.1.1569\Drivers\HPOneDriver_V3_x64\HPOneDriver_V3_x64.inf"

# the name of the driver as listed inside the .inf file
$drivername = "HP Smart Universal Printing (V3)"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc