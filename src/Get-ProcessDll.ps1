<#
.SYNOPSIS
Get the list of the DLLs for a process.
.DESCRIPTION
The Get-ProcessDll is a PowerShell script that reports the Dynamic-Link Libraries loaded in a process. Use it to list all DLLs loaded into a specific process. 
It can also display full version information for DLLs.
.PARAMETER Name
.EXAMPLE
Get-ProcessDll -Name ProcessName
.INPUTS
None.
.OUTPUTS
None.
.LINK
https://learn.microsoft.com/en-us/sysinternals/downloads/listdlls
https://learn.microsoft.com/en-us/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulefilenamea

.NOTES
- Author  :EMERICK GIBERNE
- Version : 1.3.3
#>

#Requires -version 7.0

param([string] $Name=$(throw -Name "Process Name parameter is required."))
$Modules = Get-Process -Name $Name -Module 
$Dlls = @()
$Dll = @{Name='';Path='';Version='';Signature=''}
ForEach ($Module in  $Modules){
    if($Module.ModuleName -notlike '*.exe'){# Exclude executable
        $Dll.Name = $Module.ModuleName; 
        $Dll.Path = $Module.FileName ;
        $Dll.Version = $Module.FileVersion;
        $Dll.Signature = (Get-AuthenticodeSignature -FilePath $Module.FileName).Status
        $Dlls+=[PSCustomObject]$Dll
    }
   
}

$Dlls | Out-GridView
