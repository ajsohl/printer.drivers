#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- best if it matches the file without extension (e.g. "mfc-l5850dw")
$printername = "HP-LaserJet-MFP-E82560"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://ftp.hp.com/pub/softlib/software13/printers/COL73636/V4_DriveronlyWebpack-49.10.4644-LJE82540-50-60_V4_DriveronlyWebpack.exe"

# assigns a name to the downloading zip file
$dzip = "V4_DriveronlyWebpack-49.10.4644-LJE82540-50-60_V4_DriveronlyWebpack.exe"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = "$dfolder"

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "HP LaserJet MFP E82540-50-60 PCL-6 (V4)"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "hpdib12a4_x64.inf"