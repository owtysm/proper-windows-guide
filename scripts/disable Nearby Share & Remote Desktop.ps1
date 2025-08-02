# Disable Nearby Share (also called "Nearby Sharing")
# This affects the registry key responsible for proximity sharing
Write-Output "Disabling Nearby Share..."
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP" -Name "NearShareChannelUserAuthzPolicy" -Value 0 -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\CDP" -Name "CdpSessionUserAuthzPolicy" -Value 0 -Force

# Disable CDPUserSvc (Connected Devices Platform Service) — supports Nearby Share
Write-Output "Disabling Connected Devices Platform Service..."
Get-Service -Name "CDPUserSvc*" | ForEach-Object {
    Stop-Service -Name $_.Name -Force -ErrorAction SilentlyContinue
    Set-Service -Name $_.Name -StartupType Disabled
}

# Disable Remote Desktop
Write-Output "Disabling Remote Desktop..."
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 1

# Disable Remote Desktop Services (RDP)
Write-Output "Disabling Remote Desktop Services..."
Stop-Service -Name TermService -Force -ErrorAction SilentlyContinue
Set-Service -Name TermService -StartupType Disabled

# Disable Remote Assistance
Write-Output "Disabling Remote Assistance..."
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Value 0

# Remove Remote Desktop firewall rules
Write-Output "Removing Remote Desktop firewall rules..."
Get-NetFirewallRule -DisplayGroup "Remote Desktop" | Remove-NetFirewallRule -ErrorAction SilentlyContinue

# Disable inbound firewall rules for Nearby Share
Write-Output "Removing Nearby Share firewall rules..."
Get-NetFirewallRule | Where-Object { $_.DisplayName -like "*Nearby*" -or $_.DisplayName -like "*Proximity*" } | Remove-NetFirewallRule -ErrorAction SilentlyContinue

Write-Output "Nearby Share and Remote Desktop have been disabled."
pause