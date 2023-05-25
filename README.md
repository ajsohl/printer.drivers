# PowerShell Printer Scripts

This repository contains a set of PowerShell scripts for automating printer driver installation and printer setup.

## Prerequisites

1. Windows 10 or higher
2. PowerShell 5.1 or higher
3. 7-Zip installed and available in the system PATH or specified in the scripts

## Description

There are two main scripts in this repository:

1. `import.drivers.ps1` - This script downloads a printer driver from a specified URL, and then extracts the downloaded file (.exe or .zip) using 7-Zip to a specified folder.

2. `install.drivers.ps1` - This script adds a printer port, installs a printer driver, and sets up a printer using specified variables.

These scripts use a set of variables defined in .ps1 files in the same directory. Each .ps1 file should define the following variables:

- `$Driverurl` - URL to download the printer driver.
- `$dzip` - Name of the downloaded file.
- `$dfolder` - Directory to extract the downloaded file to.
- `$portname` - Name of the printer port to add.
- `$drivername` - Name of the printer driver to install.
- `$infname` - Name of the .inf file to use for driver installation.

## Usage

Run the scripts from PowerShell as follows:

1. `.\import.drivers.ps1` - This will prompt you to choose a variable file, then download and extract the printer driver.
2. `.\install.drivers.ps1` - This will prompt you to choose a variable file, then install the printer.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
