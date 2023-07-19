#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- best if it matches the file without extension (e.g. "mfc-l5850dw")
$printername = "Canon-iR-ADV-C256"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://downloads.canon.com/bicg2022/drivers/Generic_Plus_UFRII_v2.72_Set-up_x64.exe"

# assigns a name to the downloading zip file
$dzip = "Generic_Plus_UFRII_v2.72_Set-up_x64.exe"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = "$dfolder\Generic_Plus_UFRII_v2.72_Set-up_x64\Driver"

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "Canon Generic Plus UFR II"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "CNLB0MA64.INF"