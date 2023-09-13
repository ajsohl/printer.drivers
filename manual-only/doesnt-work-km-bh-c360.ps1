#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- best if it matches the file without extension (e.g. "mfc-l5850dw")
$printername = "km-bh-c360"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://d3srb24tnyoj6g.cloudfront.net/NGSP/Attachment/Knova/b730a8e8-a3ab-4cce-984d-0c1f28738904/BHC360PCL6Winx64_3700EN.zip?Expires=1686590436&Signature=TRfjREyos9AJImzeJDHWqvEpV7AOJoj~5IcR~ZlbdFbT07GVCzT0QfMaw5f0XjeBNwA0fLFItEdojrZLg0VHNrlVsph9raFc8Xh2ocJrp-~XwuCaxoVw1IFJjv3d20CqqnJ7iDZNfmhRsxhPFmzNgZPAGTPKjFKcLN1hAz35bKB1F1rscX~R2VD~XTwqRIasnsZMgIwLGFNmZ36KXd-tDxNbc7VQMRFiBqpsKO1TPHhkdMYloh8WWcD7v7NU292IoXOBak154eMY8xhLhCWOFIAWv5IZ5VoE9sTOPcX~WRr2tOGTjMgIPamykLGMYrwgAefN6CxBvkOS8Ec6dy71sA__&Key-Pair-Id=APKAI4QQSVDDFLCYAFYA&ext=.zip"

# assigns a name to the downloading zip file
$dzip = "$printername.zip"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = $dfolder

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = "KONICA MINOLTA C360SeriesPCL"

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = "KOAZ8J__.INF"