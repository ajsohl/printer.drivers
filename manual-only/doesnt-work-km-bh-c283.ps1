#!/bin/powershell

# make sure to save this file as .ps1 (not .txt)

# choose the printer name -- best if it matches the file without extension (e.g. "mfc-l5850dw")
$printername = "km-bh-c283"

#path where the driver can be downloaded. I got this from downloading it first and then copying the URL from the downloads in Chrome. (e.g. "https://download.brother.com/welcome/dlf102770/Y15C_C1-hostm-J1.EXE")
$Driverurl = "https://d3srb24tnyoj6g.cloudfront.net/NGSP/Attachment/Knova/1161d84a-f136-46f5-959d-0f4c711a2f6b/UPD4PCL6Win81P_2101MU.zip?Expires=1687297341&Signature=pzjF0tDqN3ZMFCFU349x3nid-VFVdVmgUoGGKTj491TJytVFAafqjGXBLAJUTgPuowkTdMQW0KsoB5zCarwXOvx65ksBfDhD7rhx09GLF9DWsTgUJVM9EHfTgMcR7Bodlz7OqI3SM6XfPdbKnS-NAwY0VZ5~tyzuPVoWBfkERCyfS3vwXgXwgK0w1U08Ou9WukeIYZ3jzubW3iyQPq5~yIYz~h3i5cGQO6A3PgD6itB02nULaHZr0Y0ejDeSCvTj-58I66XfUKY7F-DAvaPTuq8BZU2NgVPkzOBDqTEdNH5tRaGJjPm0YKa2mdoa2l86uS55jWn-7cLVKTCStiToMA__&Key-Pair-Id=APKAI4QQSVDDFLCYAFYA&ext=.zip"

# assigns a name to the downloading zip file
$dzip = "$printername.zip"

# sets the path and name after unzipping
$dfolder = "c:\tech\drivers\$printername"

# complete path where the .inf file can be located -- pay attention to any subdirectories. (e.g. "$dfolder\gdi\")
$infpath = 

# taken from within the .inf file. It should be something like the printer name. (e.g. "Brother MFC-L5850DW series")
$drivername = 

# name of the inf file, including the file extension (e.g. "BRPRM15A.INF")
$infname = 