
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Creates or updates a service namespace.
Once created, this namespace's resource manifest is immutable.
This operation is idempotent.
.Description
Creates or updates a service namespace.
Once created, this namespace's resource manifest is immutable.
This operation is idempotent.
.Example
$id1 = "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
$id2 = "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mySecondIdentity"
$keyVaultProperty1 = New-AzServiceBusKeyVaultPropertiesObject -KeyName key4 -KeyVaultUri https://testkeyvault.vault.azure.net/ -UserAssignedIdentity "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
$keyVaultProperty2 = New-AzServiceBusKeyVaultPropertiesObject -KeyName key5 -KeyVaultUri https://testkeyvault.vault.azure.net/ -UserAssignedIdentity "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
New-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Premium -Location northeurope -IdentityType UserAssigned -UserAssignedIdentityID $id1,$id2 -KeyVaultProperty $keyVaultProperty1,$keyVaultProperty2
.Example
New-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Premium -Location northeurope -IdentityType SystemAssigned
.Example
New-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Standard -Location southcentralus -Tag @{k1='v1'; k2='v2'} -DisableLocalAuth

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.ISbNamespace
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.ISbNamespace
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IServiceBusIdentity>: Identity Parameter
  [Alias <String>]: The Disaster Recovery configuration name
  [AuthorizationRuleName <String>]: The authorization rule name.
  [ConfigName <MigrationConfigurationName?>]: The configuration name. Should always be "$default".
  [Id <String>]: Resource identity path
  [NamespaceName <String>]: The namespace name
  [PrivateEndpointConnectionName <String>]: The PrivateEndpointConnection name
  [QueueName <String>]: The queue name.
  [ResourceGroupName <String>]: Name of the Resource group within the Azure subscription.
  [RuleName <String>]: The rule name.
  [SubscriptionId <String>]: Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  [SubscriptionName <String>]: The subscription name.
  [TopicName <String>]: The topic name.

KEYVAULTPROPERTY <IKeyVaultProperties[]>: Properties of KeyVault
  [KeyName <String>]: Name of the Key from KeyVault
  [KeyVaultUri <String>]: Uri of KeyVault
  [KeyVersion <String>]: Version of KeyVault
  [UserAssignedIdentity <String>]: ARM ID of user Identity selected for encryption

PARAMETER <ISbNamespace>: Description of a namespace resource.
  Location <String>: The Geo-location where the resource lives
  [Tag <ITrackedResourceTags>]: Resource tags
    [(Any) <String>]: This indicates any property can be added to this object.
  [AlternateName <String>]: Alternate name for namespace
  [DisableLocalAuth <Boolean?>]: This property disables SAS authentication for the Service Bus namespace.
  [IdentityType <ManagedServiceIdentityType?>]: Type of managed service identity.
  [KeySource <KeySource?>]: Enumerates the possible value of keySource for Encryption
  [KeyVaultProperty <IKeyVaultProperties[]>]: Properties of KeyVault
    [KeyName <String>]: Name of the Key from KeyVault
    [KeyVaultUri <String>]: Uri of KeyVault
    [KeyVersion <String>]: Version of KeyVault
    [UserAssignedIdentity <String>]: ARM ID of user Identity selected for encryption
  [MinimumTlsVersion <TlsVersion?>]: The minimum TLS version for the cluster to support, e.g. '1.2'
  [PrivateEndpointConnection <IPrivateEndpointConnection[]>]: List of private endpoint connections.
    [ConnectionState <PrivateLinkConnectionStatus?>]: Status of the connection.
    [Description <String>]: Description of the connection state.
    [PrivateEndpointId <String>]: The ARM identifier for Private Endpoint.
    [ProvisioningState <EndPointProvisioningState?>]: Provisioning state of the Private Endpoint Connection.
    [SystemDataCreatedAt <DateTime?>]: The timestamp of resource creation (UTC).
    [SystemDataCreatedBy <String>]: The identity that created the resource.
    [SystemDataCreatedByType <CreatedByType?>]: The type of identity that created the resource.
    [SystemDataLastModifiedAt <DateTime?>]: The type of identity that last modified the resource.
    [SystemDataLastModifiedBy <String>]: The identity that last modified the resource.
    [SystemDataLastModifiedByType <CreatedByType?>]: The type of identity that last modified the resource.
  [PublicNetworkAccess <PublicNetworkAccess?>]: This determines if traffic is allowed over public network. By default it is enabled.
  [RequireInfrastructureEncryption <Boolean?>]: Enable Infrastructure Encryption (Double Encryption)
  [SkuCapacity <Int32?>]: The specified messaging units for the tier. For Premium tier, capacity are 1,2 and 4.
  [SkuName <SkuName?>]: Name of this SKU.
  [SkuTier <SkuTier?>]: The billing tier of this particular SKU.
  [SystemDataCreatedAt <DateTime?>]: The timestamp of resource creation (UTC).
  [SystemDataCreatedBy <String>]: The identity that created the resource.
  [SystemDataCreatedByType <CreatedByType?>]: The type of identity that created the resource.
  [SystemDataLastModifiedAt <DateTime?>]: The type of identity that last modified the resource.
  [SystemDataLastModifiedBy <String>]: The identity that last modified the resource.
  [SystemDataLastModifiedByType <CreatedByType?>]: The type of identity that last modified the resource.
  [UserAssignedIdentity <IIdentityUserAssignedIdentities>]: Properties for User Assigned Identities
    [(Any) <IUserAssignedIdentity>]: This indicates any property can be added to this object.
  [ZoneRedundant <Boolean?>]: Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.

PRIVATEENDPOINTCONNECTION <IPrivateEndpointConnection[]>: List of private endpoint connections.
  [ConnectionState <PrivateLinkConnectionStatus?>]: Status of the connection.
  [Description <String>]: Description of the connection state.
  [PrivateEndpointId <String>]: The ARM identifier for Private Endpoint.
  [ProvisioningState <EndPointProvisioningState?>]: Provisioning state of the Private Endpoint Connection.
  [SystemDataCreatedAt <DateTime?>]: The timestamp of resource creation (UTC).
  [SystemDataCreatedBy <String>]: The identity that created the resource.
  [SystemDataCreatedByType <CreatedByType?>]: The type of identity that created the resource.
  [SystemDataLastModifiedAt <DateTime?>]: The type of identity that last modified the resource.
  [SystemDataLastModifiedBy <String>]: The identity that last modified the resource.
  [SystemDataLastModifiedByType <CreatedByType?>]: The type of identity that last modified the resource.
.Link
https://learn.microsoft.com/powershell/module/az.servicebus/new-azservicebusnamespacev2
#>
function New-AzServiceBusNamespaceV2 {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.ISbNamespace])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Alias('NamespaceName')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
    [System.String]
    # The namespace name.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
    [System.String]
    # Name of the Resource group within the Azure subscription.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Subscription credentials that uniquely identify a Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [System.String]
    # The Geo-location where the resource lives
    ${Location},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [System.String]
    # Alternate name for namespace
    ${AlternateName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # This property disables SAS authentication for the Service Bus namespace.
    ${DisableLocalAuth},

    [Parameter(ParameterSetName='CreateExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.ManagedServiceIdentityType])]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.ManagedServiceIdentityType]
    # Type of managed service identity.
    ${IdentityType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.KeySource])]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.KeySource]
    # Enumerates the possible value of keySource for Encryption
    ${KeySource},

    [Parameter(ParameterSetName='CreateExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.IKeyVaultProperties[]]
    # Properties of KeyVault
    # To construct, see NOTES section for KEYVAULTPROPERTY properties and create a hash table.
    ${KeyVaultProperty},

    [Parameter(ParameterSetName='CreateExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.TlsVersion])]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.TlsVersion]
    # The minimum TLS version for the cluster to support, e.g.
    # '1.2'
    ${MinimumTlsVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.IPrivateEndpointConnection[]]
    # List of private endpoint connections.
    # To construct, see NOTES section for PRIVATEENDPOINTCONNECTION properties and create a hash table.
    ${PrivateEndpointConnection},

    [Parameter(ParameterSetName='CreateExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.PublicNetworkAccess])]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.PublicNetworkAccess]
    # This determines if traffic is allowed over public network.
    # By default it is enabled.
    ${PublicNetworkAccess},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Enable Infrastructure Encryption (Double Encryption)
    ${RequireInfrastructureEncryption},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [System.Int32]
    # The specified messaging units for the tier.
    # For Premium tier, capacity are 1,2 and 4.
    ${SkuCapacity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.SkuName])]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.SkuName]
    # Name of this SKU.
    ${SkuName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.SkuTier])]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.SkuTier]
    # The billing tier of this particular SKU.
    ${SkuTier},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api10.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags
    ${Tag},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.IIdentityUserAssignedIdentities]))]
    [System.Collections.Hashtable]
    # Properties for User Assigned Identities
    ${UserAssignedIdentity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.
    ${ZoneRedundant},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.ISbNamespace]
    # Description of a namespace resource.
    # To construct, see NOTES section for PARAMETER properties and create a hash table.
    ${Parameter},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateExpanded = 'Az.ServiceBus.private\New-AzServiceBusNamespaceV2_CreateExpanded';
            CreateViaIdentity = 'Az.ServiceBus.private\New-AzServiceBusNamespaceV2_CreateViaIdentity';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
