# Get-LoadedDLL

## Description

The Get-LoadedDll is attempt to replicate in PowerShell the LisDlls utility from SysInternal. The tool reports the Dynamic Link Libraries loaded in processes. Use it to list all DLLs loaded into a specific process. List also full version information for DLLs.


## Parameters

Name | Type | Description
-----|------|--------------------
     |String| Name of the process

## Example

```powershell

```

```output

```

## Roadmap

1. One-liner
    - [x] List all DLLs loaded into all processes. 
    - [x] List all DLLs into a specific process.
    - [x] Display full version information for DLLs.
    - [x] Display the digital signature.
    - [x] Return output in a hash table
2. Simple Script
3. Advanced Script 
    - [ ] List the processes that have a particular DLL loaded.
    - [ ] Scan processes for unsigned DLLs.
4. Simple Function
5. Advanced Function
6. Script Module
    - [ ] Implement with .Net API


### Reference
[![Common Changelog](https://common-changelog.org/badge.svg)](https://common-changelog.org)