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

# Download printer driver and save as $dzip
Invoke-WebRequest -Uri $driverurl -OutFile $dzip

# Unzip $dzip to $dfolder
Try {
    $7zipPath = "C:\Program Files\7-Zip\7z.exe" 
    Start-Process -FilePath $7zipPath -ArgumentList "x $dzip -o$($dfolder) -y" -Wait -NoNewWindow
}
Catch {
    Write-Error "Failed to extract the file using 7-Zip. The file may be corrupt or not a valid archive."
    Exit 1
}

# Add $dfolder to pnputil.exe
pnputil.exe /a "$infpath\$infname"
