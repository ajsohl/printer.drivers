#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "https://download.brother.com/welcome/dlf103395/Y17B_C1-hostm-190.EXE"

# name of the downloaded zip file
$zip = "c:\tech\drivers\hl-l2370dw-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\hl-l2370dw"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\hl-l2370dw\gdi\brium17a.inf"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc