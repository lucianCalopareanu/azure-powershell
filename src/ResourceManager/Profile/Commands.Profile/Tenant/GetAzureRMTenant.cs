﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using System.Linq;
using System.Management.Automation;
using Microsoft.Azure.Commands.Profile.Models;
using Microsoft.Azure.Commands.ResourceManager.Common;

namespace Microsoft.Azure.Commands.Profile
{    
    /// <summary>
    /// Cmdlet to get user tenant information. 
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "AzureRmTenant")]
    [Alias("Get-AzureRmDomain")]
    [OutputType(typeof(PSAzureTenant))]
    public class GetAzureRMTenantCommand : AzureRMCmdlet
    {
        [Parameter(Mandatory = false, Position = 0, ValueFromPipelineByPropertyName = true)]
        [Alias("Domain")]
        [ValidateNotNullOrEmpty]
        public string Tenant { get; set; }
        
        protected override void ProcessRecord()
        {
            var profileClient = new RMProfileClient(AzureRMCmdlet.DefaultProfile);
            
            WriteObject(profileClient.ListTenants(Tenant).Select((t) => (PSAzureTenant)t), enumerateCollection: true);
        }
    }
}
