#!/bin/powershell

# take user input for variables
$repofolder = Read-Host "enter repo folder name"
$port = Read-Host "enter printer IP"

## Add printer and port
$drivername = "HP OfficeJet Pro 8710"
$driverstoreunc = "C:\Windows\System32\DriverStore\FileRepository\$repofolder\hpygid20.inf"


#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port