#!/bin/powershell

## Add printer and port

$drivername = "HP OfficeJet Pro 7740 series PCL-3"
$driverstoreunc = "C:\Windows\System32\DriverStore\FileRepository\hpygid20_v4.inf_amd64_5abe939007f6fbb1\hpygid20_v4.inf"
$port = "192.168.1.11"


#install the driver using the driver name (in the inf file) and driverstore unc
Add-PrinterDriver -Name $drivername -InfPath $driverstoreunc

#create the printer port using the printers IP address
Add-PrinterPort -Name $port -PrinterHostAddress $port

#install the printer
Add-Printer -DriverName $drivername -Name $drivername -PortName $port