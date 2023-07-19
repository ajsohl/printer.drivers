#!/bin/powershell

# Exclude import and install files from variables file list prompt
$excludeFiles = @("import.template.ps1", "install.template.ps1")

# List available variable files (all other files in the current working directory) and prompt the user to choose one
$variableFiles = @(Get-ChildItem -Path "." -Filter "*.ps1" -File |
                  Where-Object { $_.Name -notin $excludeFiles } |
                  ForEach-Object { $_.Name })
Write-Host "Choose a variable file:"
for ($i = 0; $i -lt $variableFiles.Length; $i++) {
    Write-Host "[$i] $($variableFiles[$i])"
}
$selectedIndex = Read-Host "Enter the index of the desired variable file"
. ".\$($variableFiles[$selectedIndex])"

#prompt user for printer IP
$portname = Read-Host "Enter printer IP address"

#location of the inf in the windows driverstore
$driverstoreinfpath = (Get-ChildItem -Path "C:\Windows\System32\DriverStore\FileRepository\" -Filter "*$infname*" -Recurse -File).FullName

# Add printer port
Add-PrinterPort -Name $portname -PrinterHostAddress $portname

# Add printer driver
Add-PrinterDriver -Name "$drivername" -InfPath "$driverstoreinfpath"

# Add printer and set printer port
Add-Printer -Name $printername -DriverName $drivername -PortName $portname
