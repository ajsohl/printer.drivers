#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- best if it matches the file without extension (e.g. "mfc-l5850dw")
$printername = "Ricoh-MP-C3504"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://support.ricoh.com/bb/pub_e/dr_ut_e/0001331/0001331085/V1700/z97576L16.exe"

# assigns a name to the downloading zip file
$dzip = "z97576L16.exe"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = "$dfolder\disk1"

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "RICOH MP C3503 PCL 6"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "OEMSETUP.INF"