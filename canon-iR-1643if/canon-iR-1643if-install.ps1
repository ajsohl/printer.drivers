#!/bin/powershell

## Add printer and port

$drivername = "Canon Generic Plus UFR II"
$driverstoreunc = "C:\Windows\System32\DriverStore\FileRepository\cnlb0ma64.inf_amd64_d80e9572680a0609\CNLB0MA64.INF"
$port = "192.168.1.11"


#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port