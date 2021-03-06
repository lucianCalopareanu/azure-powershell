// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Commands.Synapse.Models
{
    using global::Azure.Analytics.Synapse.Artifacts.Models;
    using Microsoft.Rest;
    using Microsoft.Rest.Serialization;
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// HDInsight linked service.
    /// </summary>
    [Newtonsoft.Json.JsonObject("HDInsight")]
    [Rest.Serialization.JsonTransformation]
    public partial class PSHDInsightLinkedService : PSLinkedService
    {
        /// <summary>
        /// Initializes a new instance of the PSHDInsightLinkedService class.
        /// </summary>
        public PSHDInsightLinkedService()
        {
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets hDInsight cluster URI. Type: string (or Expression
        /// with resultType string).
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.clusterUri")]
        public object ClusterUri { get; set; }

        /// <summary>
        /// Gets or sets hDInsight cluster user name. Type: string (or
        /// Expression with resultType string).
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.userName")]
        public object UserName { get; set; }

        /// <summary>
        /// Gets or sets hDInsight cluster password.
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.password")]
        public SecretBase Password { get; set; }

        /// <summary>
        /// Gets or sets the Azure Storage linked service reference.
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.linkedServiceName")]
        public LinkedServiceReference LinkedServiceName { get; set; }

        /// <summary>
        /// Gets or sets a reference to the Azure SQL linked service that
        /// points to the HCatalog database.
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.hcatalogLinkedServiceName")]
        public LinkedServiceReference HcatalogLinkedServiceName { get; set; }

        /// <summary>
        /// Gets or sets the encrypted credential used for authentication.
        /// Credentials are encrypted using the integration runtime credential
        /// manager. Type: string (or Expression with resultType string).
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.encryptedCredential")]
        public object EncryptedCredential { get; set; }

        /// <summary>
        /// Gets or sets specify if the HDInsight is created with ESP
        /// (Enterprise Security Package). Type: Boolean.
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.isEspEnabled")]
        public object IsEspEnabled { get; set; }

        /// <summary>
        /// Gets or sets specify the FileSystem if the main storage for the
        /// HDInsight is ADLS Gen2. Type: string (or Expression with resultType
        /// string).
        /// </summary>
        [JsonProperty(PropertyName = "typeProperties.fileSystem")]
        public object FileSystem { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public override void Validate()
        {
            base.Validate();
            if (ClusterUri == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "ClusterUri");
            }
        }

        public override LinkedService ToSdkObject()
        {
            var linkedService = new HDInsightLinkedService(this.ClusterUri);
            linkedService.UserName = this.UserName;
            linkedService.Password = this.Password;
            linkedService.LinkedServiceName = this.LinkedServiceName;
            linkedService.HcatalogLinkedServiceName = this.HcatalogLinkedServiceName;
            linkedService.EncryptedCredential = this.EncryptedCredential;
            linkedService.IsEspEnabled = this.IsEspEnabled;
            linkedService.FileSystem = this.FileSystem;
            SetProperties(linkedService);
            return linkedService;
        }
    }
}

