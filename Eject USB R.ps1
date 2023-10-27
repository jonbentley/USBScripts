# Eject USB R.ps1

# Eject the R: USB drive
# you need to run this as an admin 

Clear-Host

# List all USB devices
get-wmiobject -Class Win32_Volume  | format-table -Property Name, label


# Get the R: USB drive, set the drive letter to null, Put it and dismount
$rVolume = get-wmiobject -Class Win32_Volume | where{$_.Name -eq 'R:\'}  ##  | format-table -Property Name, label
$rVolume.DriveLetter = $null  
$rVolume.Put()  
# $rVolume.Dismount($false, $false)