#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "https://downloads.canon.com/bicg2022/drivers/Generic_Plus_UFRII_v2.72_Set-up_x64.exe"

# name of the downloaded zip file
$zip = "c:\tech\drivers\canon-iR-1643if-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\canon-iR-1643if"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\canon-iR-1643if\Driver\CNLB0MA64.INF"

# the name of the driver as listed inside the .inf file
$drivername = "Canon Generic Plus UFR II"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc