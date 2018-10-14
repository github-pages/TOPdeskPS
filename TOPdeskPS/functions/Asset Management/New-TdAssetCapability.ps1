﻿function New-TdAssetCapability {
    <#
    .SYNOPSIS
        Create a new Asset Capability
    .DESCRIPTION
        Create a new Asset Capability
    .PARAMETER Name
        Name of the capability that you would like to create.
    .EXAMPLE
        PS C:\> New-TdAssetCapability -Name 'testCapability'
        Creates a new capability named 'testCapability'
#>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/Get-TdAssetCapabilityDetail')]
    param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [Alias('id')]
        [system.string]
        $Name
    )
    process {
        $uri = (Get-TdUrl) + "/tas/api/assetmgmt/capabilities"
        $body = [PSCustomObject]@{
            name = $name
        }
        Invoke-TdMethod -Uri $uri -Body ($body | ConvertTo-Json) -Method POST
    }
}
