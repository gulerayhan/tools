$Params = @{
CreateDnsDelegation = $false
DatabasePath = 'C:\Windows\NTDS'
DomainMode = 'WinThreshold'
DomainName = $domainName
DomainNetbiosName = $NetBIOS
ForestMode = 'WinThreshold'
InstallDns = $true
LogPath = 'C:\Windows\NTDS'
NoRebootOnCompletion = $true
SafeModeAdministratorPassword = $SafeModePass
SysvolPath = 'C:\Windows\SYSVOL'
Force = $true
}

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment

Install-ADDSForest @Params