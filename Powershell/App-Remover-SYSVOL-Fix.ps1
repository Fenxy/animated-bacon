#remove built in apps
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *bingweather* | Remove-AppxPackage
Get-AppxPackage *photos* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationapps* | Remove-AppxPackage
Get-AppxPackage *windowsstore* | Remove-AppxPackage

#SYSVOL Fix
New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths -Name \\*\SYSVOL
Set-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths\\\*\SYSVOL -Value RequireMutualAuthentication=0

#NETLOGON Fix
New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths -Name \\*\NETLOGON
Set-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths\\\*\NETLOGON -Value RequireMutualAuthentication=0
