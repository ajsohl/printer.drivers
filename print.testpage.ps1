#!/bin/powershell
Function out-TestPage{
 $printers = Get-CimInstance Win32_Printer
 "{0} Printers defined on this system" -f $printers.count

 $printer = $printers | Where-Object name -like (Read-Host "enter printer name")
 "Printer name: {0}" -f $printer.name
 Invoke-CimMethod -InputObject $Printer -MethodName PrintTestPage
 
}

out-TestPage