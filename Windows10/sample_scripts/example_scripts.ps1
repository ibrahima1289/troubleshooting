
# Powershell Version
#$PSVersionTable

#############


# Service status
#Get-Service | Sort-Object -property Status | Format-Table

#Get-Service | WHERE {$_.Status -eq "Running"} | SELECT displayname 

#Get-ChildItem Env:

#Get-Help Format-Table -Full

#Get-Service -ServiceName 'Dnscache' | Select-Object Name

#Get-Command | Where-Object { $_.parametersets.count -gt 2 } | Format-List Name
gcm | ? { $_.parametersets.count -gt 2 } | fl Name