#!/bin/powershell
#prompt user for the different variables
#$download = Read-Host "Enter driver download URL"
$driverunc = Read-Host "Enter the link to the inf file"
$drivername = Read-Host "Enter driver name (from inf file)"
$port = Read-Host "Enter the printer's IP"

#download the driver file to tech\drivers
#Invoke-WebRequest -URI $download -OutFile "C:\tech\drivers\MFC-L5850DW-zip"



#unzip the driver files
#7z -e "C:\tech\drivers\MFC-L5850DW-zip" -oc:\tech\drivers\MFC-L5850DW

#add the driver to the driver store
pnputil.exe /a $driverunc

#install the driver
Add-PrinterDriver -Name $drivername -InfPath $driverunc

#create the printer port
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port

