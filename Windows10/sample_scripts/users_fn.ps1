Function GetUsers
{
    Write-Host " "
    Write-Host "Getting User Accounts..."
    Get-WmiObject Win32_UserAccount -filter “LocalAccount=True” | Select-Object Name,FullName,Disabled
}

GetUsers