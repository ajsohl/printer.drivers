#!/bin/powershell

# take user input for variables
$repofolder = Read-Host "copy and paste repo folder name"
$port = Read-Host "enter printer IP"
$driver="BRPRC16A.INF"

$drivername = "Brother MFC-L9570CDW series"
$driverstoreunc = "C:\Windows\System32\DriverStore\FileRepository\$repofolder\$driver"


#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port