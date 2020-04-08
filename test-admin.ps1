<#
.SYNOPSIS

Checks if user is running console as administrator.

.DESCRIPTION

Checks if user is running powershell console as administrator.


.INPUTS

None. You cannot pipe objects to this.

.OUTPUTS

"Running as admin" for true
"NOT running as administrator" for false

.EXAMPLE

PS> .\test-admin.ps1

#>


function test-admin {
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)){
    Write-Host "Running as admin"
}
else{
    Write-Host "NOT running as administrator"
}
}

test-admin