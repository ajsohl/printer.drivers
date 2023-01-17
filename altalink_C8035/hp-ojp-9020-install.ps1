#!/bin/powershell

## Add printer and port

$drivername = "HP Smart Universal Printing (V3)"
$driverstoreunc = "C:\Windows\System32\DriverStore\FileRepository\$repofolder\x3ASKYX.inf"
$port = ""


#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port