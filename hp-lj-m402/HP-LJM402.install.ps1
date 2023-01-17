#!/bin/powershell

#import variables file
. ./var.ps1

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip


#unzip the driver files and specify the folder name
7z -e "$zip" -oc:$folder

#add the driver .inf to the driver store
pnputil.exe /a $driverunc



## Add printer and port

#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port


