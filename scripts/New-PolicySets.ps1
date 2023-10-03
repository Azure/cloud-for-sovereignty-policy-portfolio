# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

<#
.SYNOPSIS
    This is standalone powershell script to deploy policy sets.
#>
using namespace System.Collections

param (
    [Parameter(Position = 0, mandatory = $true)]
    [string]
    $parFolderPath = $(Read-Host -prompt "Please choose the relative folder path where the policy initiative JSON files reside. For example, D:\Repository\MCFSPolicyPortfolio\PolicyPacks\BIO"),
    [Parameter(Position = 1, mandatory = $true)]
    [string]
    $parManagementGroupId = $(Read-Host -prompt "Please type the management group ID where the policies will be deployed. The root management group ID is the same as your AAD tenant ID. For example, SLZ")
)

#variables
$varMaxRetryAttemptTransientErrorRetry = 6
$varRetryWaitTimeTransientErrorRetry = 60

<#
.Description
    Installs the default policy sets for the root management group.
#>
function New-InstallPolicySets {
    param($parFolderPath, $parManagementGroupId)
    $varPolicySetDefinitionFiles = Get-ChildItem $parFolderPath -Filter "*.json"

    ForEach ($varPolicySetDefinitionFile in $varPolicySetDefinitionFiles) {
        $varLoopCounter = 0;
        $varRetry = $true
        while ($varRetry) {
            try {
                Write-Host "Importing policy file: " + $varPolicySetDefinitionFile.Name
                $varPolicySetDefinitionJson = Get-Content -Raw -Path $varPolicySetDefinitionFile.FullName | ConvertFrom-Json
                $varDisplayName = $varPolicySetDefinitionJson.properties.displayName + " v" + $varPolicySetDefinitionJson.properties.metadata.version
                $varName = $varPolicySetDefinitionJson.name + ".v" + $varPolicySetDefinitionJson.properties.metadata.version
                $varDescription = $varPolicySetDefinitionJson.properties.description + " v" + $varPolicySetDefinitionJson.properties.metadata.version
                $varPolicyDefinitions = ConvertTo-Json $varPolicySetDefinitionJson.properties.policyDefinitions -Depth 100
                $varPolicyMetadata = $varPolicySetDefinitionJson.properties.metadata | ConvertTo-Json -Depth 100
                $varPolicyParameters = $varPolicySetDefinitionJson.properties.parameters | ConvertTo-Json -Depth 100
                $varPolicyDefinitionGroups = ConvertTo-Json $varPolicySetDefinitionJson.properties.policyDefinitionGroups -Depth 100
                $varPolicyDefinitions = $varPolicyDefinitions -Replace '\[\[', '['
                $varPolicyDefinitionGroups = $varPolicyDefinitionGroups -Replace '\[\[', '['

                if (Confirm-ValueIsNullOrEmpty($varPolicyDefinitions)) {
                    Write-Host "No policy definitions in the policy file: " + $varPolicySetDefinitionFile.Name
                    break
                }

                if (-Not (Confirm-ValueIsNullOrEmpty($varPolicyDefinitionGroups))) {
                    $varResult = New-AzPolicySetDefinition `
                        -Name $varName `
                        -DisplayName $varDisplayName `
                        -Description $varDescription `
                        -PolicyDefinition $varPolicyDefinitions `
                        -Metadata $varPolicyMetadata `
                        -Parameter $varPolicyParameters `
                        -GroupDefinition $varPolicyDefinitionGroups `
                        -ManagementGroupName $parManagementGroupId `

                }
                else {
                    $varResult = New-AzPolicySetDefinition `
                        -Name $varName `
                        -DisplayName $varDisplayName `
                        -Description $varDescription `
                        -PolicyDefinition $varPolicyDefinitions `
                        -Metadata $varPolicyMetadata `
                        -Parameter $varPolicyParameters `
                        -ManagementGroupName $parManagementGroupId `

                }

                if ($null -ne $varResult) {
                    Write-Output $varResult
                    $varRetry = $false
                }
                else {
                    throw
                }
            }
            catch {
                $varLoopCounter++
                if ($varLoopCounter -lt $varMaxRetryAttemptTransientErrorRetry) {
                    Write-Information ">>> Retrying policy deployment after waiting for $varRetryWaitTimeTransientErrorRetry secs" -InformationAction Continue
                    Start-Sleep -Seconds $varRetryWaitTimeTransientErrorRetry
                }
                else {
                    $varRetry = $false
                    Write-Error ">>> Error occurred in install policy sets from file $varPolicySetDefinitionFile. Please try after addressing the above error." -ErrorAction Stop
                }
            }
        }
    }
}

<#
.Description
    Confirm the value is null or empty.
#>
function Confirm-ValueIsNullOrEmpty {
    param($parValue)

    if (($null -eq $parValue) -or [string]::IsNullOrEmpty($parValue) -or $parValue -eq "[]" -or $parValue -eq "{}") {
        return $true
    }
    elseif ($parValue -is [array] -and $parValue.Length -eq 0) {
        return $true
    }

    return $false
}

#Install new policy sets
New-InstallPolicySets $parFolderPath $parManagementGroupId
