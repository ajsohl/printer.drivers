#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "https://ftp.ext.hp.com/pub/softlib/software13/printers/OJ7740/Basic_Webpack_x64-40.16.1234-OJ7740_Basicx64_Webpack.exe"

# name of the downloaded zip file
$zip = "c:\tech\drivers\hp-oj-7740-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\hp-oj-7740"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\hp-oj-7740\hpygid20_v4.inf"

# the name of the driver as listed inside the .inf file
$drivername = "HP OfficeJet Pro 7740 series PCL-3"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc