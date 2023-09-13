#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- This will end up being the display name (no spaces) (e.g. "HP-PageWide-Pro-577dw-MFP")
$printername = "HP-OfficeJet-Pro-9010"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://ftp.hp.com/pub/softlib/software13/printers/OJ7740/Basic_Webpack_x64-40.16.1234-OJ7740_Basicx64_Webpack.exe"

# assigns a name to the downloading zip file
$dzip = "Basic_Webpack_x64-40.16.1234-OJ7740_Basicx64_Webpack.exe"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = "$dfolder\"

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "HP OfficeJet Pro 7740 series PCL-3"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "hpygid20_v4.inf"