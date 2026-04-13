<#
.SYNOPSIS
Get the list of the DLLs for a process
.DESCRIPTION
The Get-LoadedDll is a one-line command script that reports the Dynamic Link Libraries loaded in processes. Use it to list all DLLs loaded into a specific process. 
It can also display full version information for DLLs.
.PARAMETER Name
.EXAMPLE
.INPUTS
.OUTPUTS
.LINK
https://learn.microsoft.com/en-us/sysinternals/downloads/listdlls

.NOTES
- Author  :EMERICK GIBERNE
- Version : 1.3.1
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
