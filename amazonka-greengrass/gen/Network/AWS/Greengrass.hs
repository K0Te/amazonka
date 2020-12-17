{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
module Network.AWS.Greengrass
    (
    -- * Service Configuration
      greengrass

    -- * Errors
    -- $errors

    -- ** InternalServerErrorException
    , _InternalServerErrorException

    -- ** BadRequestException
    , _BadRequestException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetGroupCertificateConfiguration 
    , module Network.AWS.Greengrass.GetGroupCertificateConfiguration

    -- ** ListGroupVersions (Paginated)
    , module Network.AWS.Greengrass.ListGroupVersions

    -- ** ListFunctionDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListFunctionDefinitionVersions

    -- ** ListDeviceDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListDeviceDefinitions

    -- ** AssociateRoleToGroup 
    , module Network.AWS.Greengrass.AssociateRoleToGroup

    -- ** UpdateCoreDefinition 
    , module Network.AWS.Greengrass.UpdateCoreDefinition

    -- ** DeleteCoreDefinition 
    , module Network.AWS.Greengrass.DeleteCoreDefinition

    -- ** GetLoggerDefinition 
    , module Network.AWS.Greengrass.GetLoggerDefinition

    -- ** ListGroupCertificateAuthorities 
    , module Network.AWS.Greengrass.ListGroupCertificateAuthorities

    -- ** DisassociateRoleFromGroup 
    , module Network.AWS.Greengrass.DisassociateRoleFromGroup

    -- ** UpdateSubscriptionDefinition 
    , module Network.AWS.Greengrass.UpdateSubscriptionDefinition

    -- ** DeleteSubscriptionDefinition 
    , module Network.AWS.Greengrass.DeleteSubscriptionDefinition

    -- ** ListCoreDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListCoreDefinitions

    -- ** ListSubscriptionDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListSubscriptionDefinitions

    -- ** CreateGroupCertificateAuthority 
    , module Network.AWS.Greengrass.CreateGroupCertificateAuthority

    -- ** DeleteConnectorDefinition 
    , module Network.AWS.Greengrass.DeleteConnectorDefinition

    -- ** UpdateConnectorDefinition 
    , module Network.AWS.Greengrass.UpdateConnectorDefinition

    -- ** CreateLoggerDefinitionVersion 
    , module Network.AWS.Greengrass.CreateLoggerDefinitionVersion

    -- ** CreateCoreDefinition 
    , module Network.AWS.Greengrass.CreateCoreDefinition

    -- ** GetConnectorDefinitionVersion 
    , module Network.AWS.Greengrass.GetConnectorDefinitionVersion

    -- ** UpdateConnectivityInfo 
    , module Network.AWS.Greengrass.UpdateConnectivityInfo

    -- ** CreateSubscriptionDefinition 
    , module Network.AWS.Greengrass.CreateSubscriptionDefinition

    -- ** ListTagsForResource 
    , module Network.AWS.Greengrass.ListTagsForResource

    -- ** GetGroupCertificateAuthority 
    , module Network.AWS.Greengrass.GetGroupCertificateAuthority

    -- ** GetLoggerDefinitionVersion 
    , module Network.AWS.Greengrass.GetLoggerDefinitionVersion

    -- ** GetServiceRoleForAccount 
    , module Network.AWS.Greengrass.GetServiceRoleForAccount

    -- ** ListConnectorDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListConnectorDefinitionVersions

    -- ** CreateSoftwareUpdateJob 
    , module Network.AWS.Greengrass.CreateSoftwareUpdateJob

    -- ** CreateLoggerDefinition 
    , module Network.AWS.Greengrass.CreateLoggerDefinition

    -- ** GetConnectivityInfo 
    , module Network.AWS.Greengrass.GetConnectivityInfo

    -- ** CreateDeployment 
    , module Network.AWS.Greengrass.CreateDeployment

    -- ** DeleteLoggerDefinition 
    , module Network.AWS.Greengrass.DeleteLoggerDefinition

    -- ** UpdateLoggerDefinition 
    , module Network.AWS.Greengrass.UpdateLoggerDefinition

    -- ** GetSubscriptionDefinition 
    , module Network.AWS.Greengrass.GetSubscriptionDefinition

    -- ** GetCoreDefinition 
    , module Network.AWS.Greengrass.GetCoreDefinition

    -- ** CreateConnectorDefinitionVersion 
    , module Network.AWS.Greengrass.CreateConnectorDefinitionVersion

    -- ** GetDeploymentStatus 
    , module Network.AWS.Greengrass.GetDeploymentStatus

    -- ** GetBulkDeploymentStatus 
    , module Network.AWS.Greengrass.GetBulkDeploymentStatus

    -- ** CreateResourceDefinition 
    , module Network.AWS.Greengrass.CreateResourceDefinition

    -- ** GetResourceDefinitionVersion 
    , module Network.AWS.Greengrass.GetResourceDefinitionVersion

    -- ** UpdateFunctionDefinition 
    , module Network.AWS.Greengrass.UpdateFunctionDefinition

    -- ** DeleteFunctionDefinition 
    , module Network.AWS.Greengrass.DeleteFunctionDefinition

    -- ** ListResourceDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListResourceDefinitions

    -- ** StopBulkDeployment 
    , module Network.AWS.Greengrass.StopBulkDeployment

    -- ** CreateResourceDefinitionVersion 
    , module Network.AWS.Greengrass.CreateResourceDefinitionVersion

    -- ** GetResourceDefinition 
    , module Network.AWS.Greengrass.GetResourceDefinition

    -- ** ListResourceDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListResourceDefinitionVersions

    -- ** DisassociateServiceRoleFromAccount 
    , module Network.AWS.Greengrass.DisassociateServiceRoleFromAccount

    -- ** DeleteDeviceDefinition 
    , module Network.AWS.Greengrass.DeleteDeviceDefinition

    -- ** UpdateDeviceDefinition 
    , module Network.AWS.Greengrass.UpdateDeviceDefinition

    -- ** AssociateServiceRoleToAccount 
    , module Network.AWS.Greengrass.AssociateServiceRoleToAccount

    -- ** ResetDeployments 
    , module Network.AWS.Greengrass.ResetDeployments

    -- ** ListConnectorDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListConnectorDefinitions

    -- ** GetSubscriptionDefinitionVersion 
    , module Network.AWS.Greengrass.GetSubscriptionDefinitionVersion

    -- ** GetAssociatedRole 
    , module Network.AWS.Greengrass.GetAssociatedRole

    -- ** ListLoggerDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListLoggerDefinitionVersions

    -- ** CreateConnectorDefinition 
    , module Network.AWS.Greengrass.CreateConnectorDefinition

    -- ** GetCoreDefinitionVersion 
    , module Network.AWS.Greengrass.GetCoreDefinitionVersion

    -- ** ListSubscriptionDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListSubscriptionDefinitionVersions

    -- ** ListCoreDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListCoreDefinitionVersions

    -- ** CreateCoreDefinitionVersion 
    , module Network.AWS.Greengrass.CreateCoreDefinitionVersion

    -- ** ListBulkDeployments (Paginated)
    , module Network.AWS.Greengrass.ListBulkDeployments

    -- ** ListDeployments (Paginated)
    , module Network.AWS.Greengrass.ListDeployments

    -- ** GetConnectorDefinition 
    , module Network.AWS.Greengrass.GetConnectorDefinition

    -- ** ListLoggerDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListLoggerDefinitions

    -- ** TagResource 
    , module Network.AWS.Greengrass.TagResource

    -- ** CreateSubscriptionDefinitionVersion 
    , module Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion

    -- ** GetGroupVersion 
    , module Network.AWS.Greengrass.GetGroupVersion

    -- ** UpdateGroupCertificateConfiguration 
    , module Network.AWS.Greengrass.UpdateGroupCertificateConfiguration

    -- ** GetFunctionDefinitionVersion 
    , module Network.AWS.Greengrass.GetFunctionDefinitionVersion

    -- ** GetDeviceDefinition 
    , module Network.AWS.Greengrass.GetDeviceDefinition

    -- ** CreateGroup 
    , module Network.AWS.Greengrass.CreateGroup

    -- ** CreateFunctionDefinition 
    , module Network.AWS.Greengrass.CreateFunctionDefinition

    -- ** UntagResource 
    , module Network.AWS.Greengrass.UntagResource

    -- ** CreateDeviceDefinitionVersion 
    , module Network.AWS.Greengrass.CreateDeviceDefinitionVersion

    -- ** DeleteGroup 
    , module Network.AWS.Greengrass.DeleteGroup

    -- ** UpdateGroup 
    , module Network.AWS.Greengrass.UpdateGroup

    -- ** ListGroups (Paginated)
    , module Network.AWS.Greengrass.ListGroups

    -- ** ListBulkDeploymentDetailedReports (Paginated)
    , module Network.AWS.Greengrass.ListBulkDeploymentDetailedReports

    -- ** GetThingRuntimeConfiguration 
    , module Network.AWS.Greengrass.GetThingRuntimeConfiguration

    -- ** DeleteResourceDefinition 
    , module Network.AWS.Greengrass.DeleteResourceDefinition

    -- ** UpdateResourceDefinition 
    , module Network.AWS.Greengrass.UpdateResourceDefinition

    -- ** ListDeviceDefinitionVersions (Paginated)
    , module Network.AWS.Greengrass.ListDeviceDefinitionVersions

    -- ** ListFunctionDefinitions (Paginated)
    , module Network.AWS.Greengrass.ListFunctionDefinitions

    -- ** GetFunctionDefinition 
    , module Network.AWS.Greengrass.GetFunctionDefinition

    -- ** GetGroup 
    , module Network.AWS.Greengrass.GetGroup

    -- ** CreateDeviceDefinition 
    , module Network.AWS.Greengrass.CreateDeviceDefinition

    -- ** CreateGroupVersion 
    , module Network.AWS.Greengrass.CreateGroupVersion

    -- ** CreateFunctionDefinitionVersion 
    , module Network.AWS.Greengrass.CreateFunctionDefinitionVersion

    -- ** StartBulkDeployment 
    , module Network.AWS.Greengrass.StartBulkDeployment

    -- ** UpdateThingRuntimeConfiguration 
    , module Network.AWS.Greengrass.UpdateThingRuntimeConfiguration

    -- ** GetDeviceDefinitionVersion 
    , module Network.AWS.Greengrass.GetDeviceDefinitionVersion

    -- * Types

    -- ** BulkDeploymentStatus
    , BulkDeploymentStatus (..)

    -- ** ConfigurationSyncStatus
    , ConfigurationSyncStatus (..)

    -- ** DeploymentType
    , DeploymentType (..)

    -- ** EncodingType
    , EncodingType (..)

    -- ** FunctionIsolationMode
    , FunctionIsolationMode (..)

    -- ** LoggerComponent
    , LoggerComponent (..)

    -- ** LoggerLevel
    , LoggerLevel (..)

    -- ** LoggerType
    , LoggerType (..)

    -- ** Permission
    , Permission (..)

    -- ** SoftwareToUpdate
    , SoftwareToUpdate (..)

    -- ** Telemetry
    , Telemetry (..)

    -- ** UpdateAgentLogLevel
    , UpdateAgentLogLevel (..)

    -- ** UpdateTargetsArchitecture
    , UpdateTargetsArchitecture (..)

    -- ** UpdateTargetsOperatingSystem
    , UpdateTargetsOperatingSystem (..)

    -- ** BulkDeployment
    , BulkDeployment
    , bulkDeployment
    , bdBulkDeploymentARN
    , bdBulkDeploymentId
    , bdCreatedAt

    -- ** BulkDeploymentMetrics
    , BulkDeploymentMetrics
    , bulkDeploymentMetrics
    , bdmRecordsProcessed
    , bdmRetryAttempts
    , bdmInvalidInputRecords

    -- ** BulkDeploymentResult
    , BulkDeploymentResult
    , bulkDeploymentResult
    , bdrDeploymentId
    , bdrDeploymentARN
    , bdrCreatedAt
    , bdrDeploymentType
    , bdrErrorDetails
    , bdrGroupARN
    , bdrDeploymentStatus
    , bdrErrorMessage

    -- ** ConnectivityInfo
    , ConnectivityInfo
    , connectivityInfo
    , ciPortNumber
    , ciId
    , ciMetadata
    , ciHostAddress

    -- ** Connector
    , Connector
    , connector
    , conParameters
    , conConnectorARN
    , conId

    -- ** ConnectorDefinitionVersion
    , ConnectorDefinitionVersion
    , connectorDefinitionVersion
    , cdvConnectors

    -- ** Core
    , Core
    , core
    , cSyncShadow
    , cThingARN
    , cId
    , cCertificateARN

    -- ** CoreDefinitionVersion
    , CoreDefinitionVersion
    , coreDefinitionVersion
    , cdvCores

    -- ** DefinitionInformation
    , DefinitionInformation
    , definitionInformation
    , diLatestVersionARN
    , diARN
    , diName
    , diCreationTimestamp
    , diId
    , diTags
    , diLatestVersion
    , diLastUpdatedTimestamp

    -- ** Deployment
    , Deployment
    , deployment
    , dDeploymentId
    , dDeploymentARN
    , dCreatedAt
    , dDeploymentType
    , dGroupARN

    -- ** Device
    , Device
    , device
    , dSyncShadow
    , dThingARN
    , dId
    , dCertificateARN

    -- ** DeviceDefinitionVersion
    , DeviceDefinitionVersion
    , deviceDefinitionVersion
    , ddvDevices

    -- ** ErrorDetail
    , ErrorDetail
    , errorDetail
    , edDetailedErrorCode
    , edDetailedErrorMessage

    -- ** Function
    , Function
    , function
    , fFunctionARN
    , fFunctionConfiguration
    , fId

    -- ** FunctionConfiguration
    , FunctionConfiguration
    , functionConfiguration
    , fcMemorySize
    , fcExecArgs
    , fcEnvironment
    , fcExecutable
    , fcPinned
    , fcEncodingType
    , fcTimeout

    -- ** FunctionConfigurationEnvironment
    , FunctionConfigurationEnvironment
    , functionConfigurationEnvironment
    , fceVariables
    , fceExecution
    , fceResourceAccessPolicies
    , fceAccessSysfs

    -- ** FunctionDefaultConfig
    , FunctionDefaultConfig
    , functionDefaultConfig
    , fdcExecution

    -- ** FunctionDefaultExecutionConfig
    , FunctionDefaultExecutionConfig
    , functionDefaultExecutionConfig
    , fdecRunAs
    , fdecIsolationMode

    -- ** FunctionDefinitionVersion
    , FunctionDefinitionVersion
    , functionDefinitionVersion
    , fdvDefaultConfig
    , fdvFunctions

    -- ** FunctionExecutionConfig
    , FunctionExecutionConfig
    , functionExecutionConfig
    , fecRunAs
    , fecIsolationMode

    -- ** FunctionRunAsConfig
    , FunctionRunAsConfig
    , functionRunAsConfig
    , fracUid
    , fracGid

    -- ** GreengrassLogger
    , GreengrassLogger
    , greengrassLogger
    , glSpace
    , glType
    , glLevel
    , glId
    , glComponent

    -- ** GroupCertificateAuthorityProperties
    , GroupCertificateAuthorityProperties
    , groupCertificateAuthorityProperties
    , gcapGroupCertificateAuthorityARN
    , gcapGroupCertificateAuthorityId

    -- ** GroupInformation
    , GroupInformation
    , groupInformation
    , giLatestVersionARN
    , giARN
    , giName
    , giCreationTimestamp
    , giId
    , giLatestVersion
    , giLastUpdatedTimestamp

    -- ** GroupOwnerSetting
    , GroupOwnerSetting
    , groupOwnerSetting
    , gosAutoAddGroupOwner
    , gosGroupOwner

    -- ** GroupVersion
    , GroupVersion
    , groupVersion
    , gvResourceDefinitionVersionARN
    , gvSubscriptionDefinitionVersionARN
    , gvCoreDefinitionVersionARN
    , gvDeviceDefinitionVersionARN
    , gvFunctionDefinitionVersionARN
    , gvLoggerDefinitionVersionARN
    , gvConnectorDefinitionVersionARN

    -- ** LocalDeviceResourceData
    , LocalDeviceResourceData
    , localDeviceResourceData
    , ldrdGroupOwnerSetting
    , ldrdSourcePath

    -- ** LocalVolumeResourceData
    , LocalVolumeResourceData
    , localVolumeResourceData
    , lvrdGroupOwnerSetting
    , lvrdDestinationPath
    , lvrdSourcePath

    -- ** LoggerDefinitionVersion
    , LoggerDefinitionVersion
    , loggerDefinitionVersion
    , ldvLoggers

    -- ** Resource
    , Resource
    , resource
    , rResourceDataContainer
    , rId
    , rName

    -- ** ResourceAccessPolicy
    , ResourceAccessPolicy
    , resourceAccessPolicy
    , rapPermission
    , rapResourceId

    -- ** ResourceDataContainer
    , ResourceDataContainer
    , resourceDataContainer
    , rdcS3MachineLearningModelResourceData
    , rdcSageMakerMachineLearningModelResourceData
    , rdcLocalVolumeResourceData
    , rdcLocalDeviceResourceData
    , rdcSecretsManagerSecretResourceData

    -- ** ResourceDefinitionVersion
    , ResourceDefinitionVersion
    , resourceDefinitionVersion
    , rdvResources

    -- ** ResourceDownloadOwnerSetting
    , ResourceDownloadOwnerSetting
    , resourceDownloadOwnerSetting
    , rdosGroupOwner
    , rdosGroupPermission

    -- ** RuntimeConfiguration
    , RuntimeConfiguration
    , runtimeConfiguration
    , rcTelemetryConfiguration

    -- ** S3MachineLearningModelResourceData
    , S3MachineLearningModelResourceData
    , s3MachineLearningModelResourceData
    , smlmrdOwnerSetting
    , smlmrdDestinationPath
    , smlmrdS3URI

    -- ** SageMakerMachineLearningModelResourceData
    , SageMakerMachineLearningModelResourceData
    , sageMakerMachineLearningModelResourceData
    , smmlmrdOwnerSetting
    , smmlmrdSageMakerJobARN
    , smmlmrdDestinationPath

    -- ** SecretsManagerSecretResourceData
    , SecretsManagerSecretResourceData
    , secretsManagerSecretResourceData
    , smsrdAdditionalStagingLabelsToDownload
    , smsrdARN

    -- ** Subscription
    , Subscription
    , subscription
    , sTarget
    , sId
    , sSubject
    , sSource

    -- ** SubscriptionDefinitionVersion
    , SubscriptionDefinitionVersion
    , subscriptionDefinitionVersion
    , sdvSubscriptions

    -- ** TelemetryConfiguration
    , TelemetryConfiguration
    , telemetryConfiguration
    , tcConfigurationSyncStatus
    , tcTelemetry

    -- ** TelemetryConfigurationUpdate
    , TelemetryConfigurationUpdate
    , telemetryConfigurationUpdate
    , tcuTelemetry

    -- ** VersionInformation
    , VersionInformation
    , versionInformation
    , viARN
    , viCreationTimestamp
    , viVersion
    , viId
    ) where

import Network.AWS.Greengrass.AssociateRoleToGroup
import Network.AWS.Greengrass.AssociateServiceRoleToAccount
import Network.AWS.Greengrass.CreateConnectorDefinition
import Network.AWS.Greengrass.CreateConnectorDefinitionVersion
import Network.AWS.Greengrass.CreateCoreDefinition
import Network.AWS.Greengrass.CreateCoreDefinitionVersion
import Network.AWS.Greengrass.CreateDeployment
import Network.AWS.Greengrass.CreateDeviceDefinition
import Network.AWS.Greengrass.CreateDeviceDefinitionVersion
import Network.AWS.Greengrass.CreateFunctionDefinition
import Network.AWS.Greengrass.CreateFunctionDefinitionVersion
import Network.AWS.Greengrass.CreateGroup
import Network.AWS.Greengrass.CreateGroupCertificateAuthority
import Network.AWS.Greengrass.CreateGroupVersion
import Network.AWS.Greengrass.CreateLoggerDefinition
import Network.AWS.Greengrass.CreateLoggerDefinitionVersion
import Network.AWS.Greengrass.CreateResourceDefinition
import Network.AWS.Greengrass.CreateResourceDefinitionVersion
import Network.AWS.Greengrass.CreateSoftwareUpdateJob
import Network.AWS.Greengrass.CreateSubscriptionDefinition
import Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion
import Network.AWS.Greengrass.DeleteConnectorDefinition
import Network.AWS.Greengrass.DeleteCoreDefinition
import Network.AWS.Greengrass.DeleteDeviceDefinition
import Network.AWS.Greengrass.DeleteFunctionDefinition
import Network.AWS.Greengrass.DeleteGroup
import Network.AWS.Greengrass.DeleteLoggerDefinition
import Network.AWS.Greengrass.DeleteResourceDefinition
import Network.AWS.Greengrass.DeleteSubscriptionDefinition
import Network.AWS.Greengrass.DisassociateRoleFromGroup
import Network.AWS.Greengrass.DisassociateServiceRoleFromAccount
import Network.AWS.Greengrass.GetAssociatedRole
import Network.AWS.Greengrass.GetBulkDeploymentStatus
import Network.AWS.Greengrass.GetConnectivityInfo
import Network.AWS.Greengrass.GetConnectorDefinition
import Network.AWS.Greengrass.GetConnectorDefinitionVersion
import Network.AWS.Greengrass.GetCoreDefinition
import Network.AWS.Greengrass.GetCoreDefinitionVersion
import Network.AWS.Greengrass.GetDeploymentStatus
import Network.AWS.Greengrass.GetDeviceDefinition
import Network.AWS.Greengrass.GetDeviceDefinitionVersion
import Network.AWS.Greengrass.GetFunctionDefinition
import Network.AWS.Greengrass.GetFunctionDefinitionVersion
import Network.AWS.Greengrass.GetGroup
import Network.AWS.Greengrass.GetGroupCertificateAuthority
import Network.AWS.Greengrass.GetGroupCertificateConfiguration
import Network.AWS.Greengrass.GetGroupVersion
import Network.AWS.Greengrass.GetLoggerDefinition
import Network.AWS.Greengrass.GetLoggerDefinitionVersion
import Network.AWS.Greengrass.GetResourceDefinition
import Network.AWS.Greengrass.GetResourceDefinitionVersion
import Network.AWS.Greengrass.GetServiceRoleForAccount
import Network.AWS.Greengrass.GetSubscriptionDefinition
import Network.AWS.Greengrass.GetSubscriptionDefinitionVersion
import Network.AWS.Greengrass.GetThingRuntimeConfiguration
import Network.AWS.Greengrass.ListBulkDeploymentDetailedReports
import Network.AWS.Greengrass.ListBulkDeployments
import Network.AWS.Greengrass.ListConnectorDefinitionVersions
import Network.AWS.Greengrass.ListConnectorDefinitions
import Network.AWS.Greengrass.ListCoreDefinitionVersions
import Network.AWS.Greengrass.ListCoreDefinitions
import Network.AWS.Greengrass.ListDeployments
import Network.AWS.Greengrass.ListDeviceDefinitionVersions
import Network.AWS.Greengrass.ListDeviceDefinitions
import Network.AWS.Greengrass.ListFunctionDefinitionVersions
import Network.AWS.Greengrass.ListFunctionDefinitions
import Network.AWS.Greengrass.ListGroupCertificateAuthorities
import Network.AWS.Greengrass.ListGroupVersions
import Network.AWS.Greengrass.ListGroups
import Network.AWS.Greengrass.ListLoggerDefinitionVersions
import Network.AWS.Greengrass.ListLoggerDefinitions
import Network.AWS.Greengrass.ListResourceDefinitionVersions
import Network.AWS.Greengrass.ListResourceDefinitions
import Network.AWS.Greengrass.ListSubscriptionDefinitionVersions
import Network.AWS.Greengrass.ListSubscriptionDefinitions
import Network.AWS.Greengrass.ListTagsForResource
import Network.AWS.Greengrass.ResetDeployments
import Network.AWS.Greengrass.StartBulkDeployment
import Network.AWS.Greengrass.StopBulkDeployment
import Network.AWS.Greengrass.TagResource
import Network.AWS.Greengrass.Types
import Network.AWS.Greengrass.UntagResource
import Network.AWS.Greengrass.UpdateConnectivityInfo
import Network.AWS.Greengrass.UpdateConnectorDefinition
import Network.AWS.Greengrass.UpdateCoreDefinition
import Network.AWS.Greengrass.UpdateDeviceDefinition
import Network.AWS.Greengrass.UpdateFunctionDefinition
import Network.AWS.Greengrass.UpdateGroup
import Network.AWS.Greengrass.UpdateGroupCertificateConfiguration
import Network.AWS.Greengrass.UpdateLoggerDefinition
import Network.AWS.Greengrass.UpdateResourceDefinition
import Network.AWS.Greengrass.UpdateSubscriptionDefinition
import Network.AWS.Greengrass.UpdateThingRuntimeConfiguration
import Network.AWS.Greengrass.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'Greengrass'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
