#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "https://download.support.xerox.com/pub/drivers/ALC80XX/drivers/win10x64/ar/AltaLink_C8030-C8070_5.639.3.0_PCL6_x64.zip"

# name of the downloaded zip file
$zip = "c:\tech\drivers\altalink-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\altalink"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\altalink\AltaLink_C8030-C8070_5.639.3.0_PCL6_x64_Driver.inf\x3ASKYX.inf"

# the name of the driver as listed inside the .inf file
$drivername = "Xerox AltaLink C8035 PCL6"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc