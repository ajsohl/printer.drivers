#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- This will end up being the display name (no spaces) (e.g. "HP-PageWide-Pro-577dw-MFP")
$printername = "Toshiba-e-Studio400ac"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://business.toshiba.com/downloads/KB/f1Ulds/19991/eb4-ebn-Uni-3264bit-7222541281.zip"

# assigns a name to the downloading zip file (If it's an EXE, copy the original file name from the driverurl e.g. HPEasyStart-13.4.8-OJP9010_49_10_4644_2_Webpack.exe)
$dzip = "$printername.zip"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = "$dfolder\UNI\Driver\64bit"

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "TOSHIBA Universal Printer 2"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "eSf6u.inf"