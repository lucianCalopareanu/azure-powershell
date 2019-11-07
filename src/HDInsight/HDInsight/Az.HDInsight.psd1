#
# Module manifest for module 'Az.HDInsight'
#
# Generated by: Microsoft Corporation
#
# Generated on: 10/29/2019
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '3.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '483c408e-6d98-45fc-b138-5b2327216d16'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - HDInsight service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For more information on HDInsight, please visit the following: https://docs.microsoft.com/azure/hdinsight/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '1.6.4'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = '.\Microsoft.Azure.Management.HDInsight.dll', 
               '.\Microsoft.Azure.Management.HDInsight.Job.dll', 
               '.\Microsoft.WindowsAzure.Storage.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('.\Microsoft.Azure.PowerShell.Cmdlets.HDInsight.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzHDInsightJob', 'New-AzHDInsightSqoopJobDefinition', 
               'Wait-AzHDInsightJob', 
               'New-AzHDInsightStreamingMapReduceJobDefinition', 
               'New-AzHDInsightMapReduceJobDefinition', 
               'New-AzHDInsightPigJobDefinition', 
               'New-AzHDInsightHiveJobDefinition', 'Get-AzHDInsightJobOutput', 
               'Invoke-AzHDInsightHiveJob', 'Use-AzHDInsightCluster', 
               'Stop-AzHDInsightJob', 'Start-AzHDInsightJob', 
               'Add-AzHDInsightComponentVersion', 'Add-AzHDInsightSecurityProfile', 
               'Set-AzHDInsightDefaultStorage', 'Add-AzHDInsightStorage', 
               'Add-AzHDInsightScriptAction', 'Add-AzHDInsightMetastore', 
               'Add-AzHDInsightConfigValue', 'Get-AzHDInsightProperty', 
               'Set-AzHDInsightGatewayCredential', 'New-AzHDInsightClusterConfig', 
               'Remove-AzHDInsightCluster', 'Set-AzHDInsightClusterSize', 
               'Get-AzHDInsightPersistedScriptAction', 
               'Get-AzHDInsightScriptActionHistory', 
               'Remove-AzHDInsightPersistedScriptAction', 
               'Set-AzHDInsightPersistedScriptAction', 
               'Submit-AzHDInsightScriptAction', 'Get-AzHDInsightCluster', 
               'New-AzHDInsightCluster', 'Add-AzHDInsightClusterIdentity', 
               'Enable-AzHDInsightMonitoring', 'Disable-AzHDInsightMonitoring', 
               'Get-AzHDInsightMonitoring'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','HDInsight'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Fixed the bug that customer will get ''Not a valid Base-64 string'' error when using Get-AzHDInsightCluster to get the cluster with ADLSGen1 storage.
* Add a parameter named ''ApplicationId'' to three cmdlets Add-AzHDInsightClusterIdentity, New-AzHDInsightClusterConfig and New-AzHDInsightCluster so that customer can provide the service principal application id for accessing Azure Data Lake.
* Changed Microsoft.Azure.Management.HDInsight from 2.1.0 to 5.1.0
* Removed five cmdlets:
    - Get-AzHDInsightOMS
    - Enable-AzHDInsightOMS
    - Disable-AzHDInsightOMS
    - Grant-AzHDInsightRdpServicesAccess
    - Revoke-AzHDInsightRdpServicesAccess
* Added three cmdlets:
    - Get-AzHDInsightMonitoring to replace Get-AzHDInsightOMS.
    - Enable-AzHDInsightMonitoring to replace Enable-AzHDInsightOMS.
    - Disable-AzHDInsightMonitoring to replace Disable-AzHDInsightOMS.
* Fixed cmdlet Get-AzHDInsightProperties to support get capabilities information from a specific location.
* Removed parameter sets(''Spark1'', ''Spark2'') from Add-AzHDInsightConfigValue.
* Add examples to the help documents of cmdlet Add-AzHDInsightSecurityProfile.
* Changed output type of the following cmdlets:
*  - Changed the output type of Get-AzHDInsightProperties from  CapabilitiesResponse to AzureHDInsightCapabilities.
*  - Changed the output type of Remove-AzHDInsightCluster from ClusterGetResponse to bool.
*  - Changed the output type of Set-AzHDInsightGatewaySettings HttpConnectivitySettings to GatewaySettings.
* Added some scenario test cases.
* Remove some alias: ''Add-AzHDInsightConfigValues'', ''Get-AzHDInsightProperties''.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

