#!/bin/powershell

# take user input for variables
$repofolder = "hpesclscan.inf_amd64_85809cf09b31d90a"
$port = Read-Host "enter printer IP"

$drivername = "HP LJ Pro M428M429"
$driverstoreunc = "C:\Windows\System32\DriverStore\FileRepository\$repofolder\HPeSCLScan.INF"


#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port