#SYSVOL Fix
New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths -Name \\*\SYSVOL
#Set-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths\\\*\SYSVOL -Value RequireMutualAuthentication=0

#NETLOGON Fix
New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths -Name \\*\NETLOGON
#Set-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths\\\*\NETLOGON -Value RequireMutualAuthentication=0

pause
