#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "https://www.kyoceradocumentsolutions.us/content/download-center-americas/us/drivers/drivers/KX830815_zip.download.zip"

# name of the downloaded zip file
$zip = "c:\tech\drivers\ecosys-m3645idn-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\ecosys-m3645idn"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\ecosys-m3645idn\64bit\OEMSETUP.INF"


## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc