# Get-LoadedDLL

## Description

The Get-LoadedDll is attempt to replicate in PowerShell the LisDlls utility from SysInternal. The tool reports the Dynamic Link Libraries loaded in processes. Use it to list all DLLs loaded into a specific process. List also full version information for DLLs.

## Requirement

|Name|Description|Specification|
-----------|------------|---------|
|PowerShell | Supported |7.5.5 Qualified|
|Windows Powershell|Unsupported|Not Applicable|

>[!IMPORTANT]
>Enable PowerShell Execution

Check execution policy status
```powershell
Get-ExecutionPolicy
```

```Output
Unrestricted
```
```Output
Bypass
```

## Roadmap

1. One-liner Script
    - [x] Without variable
    - [x] Pipelining command
    - [x] List DLLs loaded into all processes. 
    - [x] List DLLs into a specific process.
    - [x] Display version information for DLLs.
    - [x] Display the status of the signature.
    - [x] Return output in a hash table
2. Simple Script
    - [x] With variable
    - [ ] Without pipelining
3. Advanced Script 
    - [ ] List the processes that have a particular DLL loaded.
    - [ ] Scan processes for unsigned DLLs.
4. Simple Function
    - [ ] Without cmdlet binding
    - [ ] With splatting
5. Advanced Function
    - [ ] With cmdlet binding
6. Simple Module
    - [ ] Without .Net API
7. Advanced Module
    - [ ] With .Net API
8. Binary Module
    - [ ] With Compiled C#


## Reference
[![Common Changelog Static Badge](https://common-changelog.org/badge.svg)](https://common-changelog.org)

[![PowerShell Documentation Static Badge](https://img.shields.io/badge/PowerShell-Documentation-blue)](https://learn.microsoft.com/en-us/powershell/?view=powershell)

[![Windows PowerShell Static Badge](https://img.shields.io/badge/WindowsPowerShell-Documentation-purple)](https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-powershell)

## Status
![Static Badge](https://img.shields.io/badge/status-active-green)

![GitHub repo size](https://img.shields.io/github/repo-size/egiberne/get-listDLLs)


Happy Coding!