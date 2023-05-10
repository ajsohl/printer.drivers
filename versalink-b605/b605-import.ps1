#!/bin/powershell

#import variables file
#.\hp-oj-7740-var.ps1

# link to download the driver
$download = "C:\Users\owner\Downloads\UNIV_5.919.5.0_PCL6_x64\UNIV_5.919.5.0_PCL6_x64_Driver.inf"

# name of the downloaded zip file
$zip = "c:\tech\drivers\b605-zip"

# set a name for the unzipped folder
$folder = "c:\tech\drivers\b605"

# location of the driver including the driver name
$driverunc = "c:\tech\drivers\b605\UNIV_5.919.5.0_PCL6_x64_Driver.inf\x3UNIVX.inf"

## Download drivers and add them to print driver store. Seperate script to add the driver and connect to the the printer.

#download the driver file to tech\drivers
Invoke-WebRequest -URI $download -OutFile $zip

#unzip the driver files and specify the folder name
7z x "$zip" -o"$folder"

#add the driver .inf to the driver store
pnputil.exe /a $driverunc

Write-Output "Repo folder name: "(Get-ChildItem C:\Windows\System32\DriverStore\FileRepository\ | Select-Object name | grep -i x3UNIVX.inf)

start-sleep -seconds 10

#this has been the result I've seen so far: brprm15a.inf_amd64_cfab10ef1af64d37