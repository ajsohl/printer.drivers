#!/bin/powershell

# link to download the driver
$download = "https://ftp.ext.hp.com/pub/softlib/software13/printers/OJ7740/Basic_Webpack_x64-40.16.1234-OJ7740_Basicx64_Webpack.exe"

# name of the downloaded zip file
$zip = "c:\tech\drivers\hp-oj-7740-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\hp-oj-7740"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\hp-oj-7740\hpygid20.inf"

# the name of the driver as listed inside the .inf file
$drivername = "HP OfficeJet Pro 7740 series"

# the location of the driver inside the driver store directory
# $driverstoreunc = 

# IP address of the printer
# $port = 

