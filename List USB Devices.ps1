#  the WMI class WIN32_USBControllerDevice describes the connection between USB controllers (The Antecedent) and their logical devices [CIM_LOGICALDEVICE] (the Dependent). Let me illustrate:
#  These are WMI Path names and are not so readable. That’s ok for now; the point is that this class points to 2 other WMI entities.
# This script does a query to get all instances of WIN32_USBControllerDevice, then for each one it takes the DEPENDENT property and converts it to a query, it then executes that query (which gets the PNPEntities) and formats the description and deviceID.
#  https://blogs.msdn.microsoft.com/powershell/2007/02/24/displaying-usb-devices-using-wmi/

gwmi Win32_USBControllerDevice |%{[wmi]($_.Dependent)} |
 Sort Manufacturer,Description,DeviceID |
 Format-Table -GroupBy Manufacturer Description,Service,DeviceID,driveletter
