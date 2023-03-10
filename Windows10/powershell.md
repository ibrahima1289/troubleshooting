# Powershell Commands 
## View, Add, and Remove Users and Groups:
This tutorial is to help start/familiarize with Powershell commands.

1. **View groups**:
```
Get-LocalGroup | Select Name, Objectclass, Principalsource,sid
```
2. **View Users**:

`Get-LocalUser` or `net user`<br>
You can also use:
```
Get-WmiObject Win32_UserAccount -filter “LocalAccount=True” | Select-Object Name,FullName,Disabled
```

3. **Add/Remove users**:
* Using the NET tool
	* Add users to a group
		```
        net localgroup "Group" "User" /add	
		```
    * Remove a user from a group
		```
        net localgroup "Group" "User" /delete
		```	
* Using PowerShell
	* Add users to a group
        ```
        Add-LocalGroupMember -Group "Group" -Member "User"
        ```
    * Remove a user account from a group
		```
        Remove-LocalGroupMember -Group "Group" -Member "User"
		```	
4. Create a user in Powershell:
	* Follow this [Link](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1).
	
5. Remove a user in Powershell:
	* Follow these links for more info: [Link-1](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser?view=powershell-5.1), [Link-2](https://blog.netwrix.com/2018/09/18/how-to-add-delete-and-change-local-users-and-groups-with-powershell/), or [Link-3](https://woshub.com/manage-local-users-groups-powershell/).
	
6. Windows updates using PowerShell	
	* Follow this [Link](https://pureinfotech.com/uninstall-quality-updates-windows-10/).
    
## Introduction to Powershell Functions
1. Here is an example of [Powershell Function](https://github.com/ibrahima1289/troubleshooting/blob/main/Windows10/sample_scripts/users_fn.ps1) that gets user accounts and filter out some custom information.