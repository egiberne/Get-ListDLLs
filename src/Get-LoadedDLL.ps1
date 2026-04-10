<#
.SYNOPSIS
Get the list of the DLLs for a process
.DESCRIPTION
The GetListDLLs is a tool that reports the Dynamic Link Libraries loaded in processes. Use it to list all DLLs loaded into a specific process. 
It can also display full version information for DLLs.
.PARAMETER Name
.INPUTS
None.
.OUTPUTS
System.Object
.LINK
https://learn.microsoft.com/en-us/sysinternals/downloads/listdlls
.NOTES
Author: EMERICK GIBERNE
version: 0.3.3
#>

#Requires -Version 7.0

Get-Process -Name `
(Read-Host -Prompt "Name Process")` -Module 
| Select-Object -Property Company, ModuleName, FileName, FileVersion 
| ForEach-Object {[ordered] @{Company =$_.Company; Version =$_.FileVersion; Path=$_.FileName ; Signature=(Get-AuthenticodeSignature -LiteralPath $_.FileName  ).SignerCertificate}}
| Format-table


