# Eject USB R.ps1

# Eject the R: USB drive
# you need to run this as an admin 

Clear-Host

# List all USB devices
Get-CimInstance -Class Win32_Volume  | format-table -Property Name, label


# Get the R: USB drive, set the drive letter to null, Put it and dismount
$rVolume = Get-CimInstance -Class Win32_Volume | where{$_.Name -eq 'R:\'}  ##  | format-table -Property Name, label
$rVolume  | format-table -Property Name, label, Caption, DeviceId, SystemName, DriveLetter


Set-CimInstance -InputObject $rVolume -Property @{DriveLetter = $null }

# List all USB devices
$rVolume = Get-CimInstance -Class Win32_Volume | Where-Object { $_.Label -eq 'BlackToshiba2TB' }  ##  | format-table -Property Name, label
$rVolume  | format-table -Property Name, label, Caption, DeviceId

Get-CimInstance -Class Win32_Volume  | format-table -Property Name, label, Caption, DeviceId, SystemName
