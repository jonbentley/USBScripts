# Mount USB R.ps1
# ReMount the R: USB drive
# you need to run this as an admin 

Clear-Host


# List all USB devices
get-wmiobject -Class Win32_Volume  | format-table -Property Name, label


$rVolume = get-wmiobject -Class Win32_Volume | where{$_.Label -eq 'BlackToshiba2GB'}  ##  | format-table -Property Name, label
$rVolume.DriveLetter = 'R:'
$rVolume.Put()

#$rVolume
