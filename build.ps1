﻿param($Task = 'Default')

# Grab nuget bits, install modules, set build variables, start build.
#Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

Install-Module Psake, PSDeploy, Pester, BuildHelpers, psframework, psscriptanalyzer, platyps -force
Import-Module Psake, BuildHelpers

Set-BuildEnvironment -Force

Invoke-psake .\psake.ps1 -taskList $Task -nologo
