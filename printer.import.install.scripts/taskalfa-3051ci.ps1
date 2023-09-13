#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- best if it matches the file without extension (e.g. "mfc-l5850dw")
$printername = "TaskAlfa-3051ci"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://www.kyoceradocumentsolutions.eu/content/download-center/eu/drivers/all/KX_Universal_Printer_Driver_zip.download.zip"

# assigns a name to the downloading zip file
$dzip = "$printername.zip"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = "$dfolder\Kx83_UPD_8.3.0815_RC5_en\64bit\"

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "Kyocera TASKalfa 3051ci KX"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "OEMSETUP.INF"