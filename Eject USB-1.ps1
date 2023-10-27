Clear-Host
#$vol = get-wmiobject -Class Win32_Volume #| where{$_.Name -eq 'R:\'}  
#$vol
#$vol.DriveLetter = $null  
#$vol.Put()  
#$vol.Dismount($false, $false)

# List all USB devices
get-wmiobject -Class Win32_Volume  | format-table -Property Name, label




# Get the R: USB drive, set the drive letter to null, Put it and dismount
# you need to run this as an admin 
$rVolume = get-wmiobject -Class Win32_Volume | where{$_.Name -eq 'R:\'}  ##  | format-table -Property Name, label
$rVolume.DriveLetter = $null  
$rVolume.Put()  
# $rVolume.Dismount($false, $false)

#
# Doesn't seem to work
#  $driveEject = New-Object -comObject Shell.Application
#  $driveEject
#  $driveEject.Namespace(17).ParseName("R:").InvokeVerb("Eject")


$rVolume = get-wmiobject -Class Win32_Volume | where{$_.Label -eq 'BlackToshiba2GB'}  ##  | format-table -Property Name, label
$rVolume.DriveLetter = 'R:'
$rVolume.Put()

$rVolume
