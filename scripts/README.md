# Overview

This is a PowerShell script to help users deploy our policy sets files to a deployed Sovereign Landing Zone (SLZ).

# Setup and run

1. Install PowerShell 7.
1. Open PowerShell 7 and navigate to this directory.
1. Then type `.\New-PolicySets.ps1` and  follow the prompts to provide the inputs needed to install the policy sets.

# FAQ

## How can I authenticate when MFA is enabled?
Examples scenarios of how to use Connect-AzAccount when multi-factor authentication is enabled: https://learn.microsoft.com/en-us/powershell/module/az.accounts/connect-azaccount

# Still facing issues with authentication?
Ensure you are running the script in PowerShell 7. Try to clear all local account context, some examples of commands to run for clearing the context include:
```ps
Clear-AzContext
az logout
az login
```
