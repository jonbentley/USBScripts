# Mount USB R.ps1
# ReMount the R: USB drive
# you need to run this as an admin 

Clear-Host

# List all USB devices
Get-CimInstance -Class Win32_Volume  | format-table -Property Name, label, Caption, DeviceId


$rVolume = Get-CimInstance -Class Win32_Volume | Where-Object { $_.Label -eq 'BlackToshiba2TB' }  ##  | format-table -Property Name, label
$rVolume

Set-CimInstance -InputObject $rVolume -Property @{DriveLetter = "R:" } -PassThru

$rVolume = Get-CimInstance -Class Win32_Volume | Where-Object { $_.Label -eq 'BlackToshiba2TB' }  ##  | format-table -Property Name, label
$rVolume
# Get-CimInstance -Class Win32_Processor

# List all USB devices
Get-CimInstance -Class Win32_Volume  | format-table -Property Name, label, Caption, DeviceId
