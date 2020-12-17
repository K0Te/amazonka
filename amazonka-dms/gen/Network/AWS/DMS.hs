{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Database Migration Service__ 
--
-- AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL.
--
-- For more information about AWS DMS, see <https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html What Is AWS Database Migration Service?> in the /AWS Database Migration User Guide./ 
--
module Network.AWS.DMS
    (
    -- * Service Configuration
      dms

    -- * Errors
    -- $errors

    -- ** KMSAccessDeniedFault
    , _KMSAccessDeniedFault

    -- ** KMSDisabledFault
    , _KMSDisabledFault

    -- ** KMSFault
    , _KMSFault

    -- ** InvalidSubnet
    , _InvalidSubnet

    -- ** KMSKeyNotAccessibleFault
    , _KMSKeyNotAccessibleFault

    -- ** ReplicationSubnetGroupDoesNotCoverEnoughAZs
    , _ReplicationSubnetGroupDoesNotCoverEnoughAZs

    -- ** S3ResourceNotFoundFault
    , _S3ResourceNotFoundFault

    -- ** InvalidResourceStateFault
    , _InvalidResourceStateFault

    -- ** InvalidCertificateFault
    , _InvalidCertificateFault

    -- ** SNSNoAuthorizationFault
    , _SNSNoAuthorizationFault

    -- ** ResourceAlreadyExistsFault
    , _ResourceAlreadyExistsFault

    -- ** InsufficientResourceCapacityFault
    , _InsufficientResourceCapacityFault

    -- ** S3AccessDeniedFault
    , _S3AccessDeniedFault

    -- ** SNSInvalidTopicFault
    , _SNSInvalidTopicFault

    -- ** KMSNotFoundFault
    , _KMSNotFoundFault

    -- ** KMSThrottlingFault
    , _KMSThrottlingFault

    -- ** ResourceQuotaExceededFault
    , _ResourceQuotaExceededFault

    -- ** UpgradeDependencyFailureFault
    , _UpgradeDependencyFailureFault

    -- ** ResourceNotFoundFault
    , _ResourceNotFoundFault

    -- ** StorageQuotaExceededFault
    , _StorageQuotaExceededFault

    -- ** AccessDeniedFault
    , _AccessDeniedFault

    -- ** SubnetAlreadyInUse
    , _SubnetAlreadyInUse

    -- ** KMSInvalidStateFault
    , _KMSInvalidStateFault

    -- * Waiters
    -- $waiters

    -- ** ReplicationInstanceAvailable
    , replicationInstanceAvailable

    -- ** ReplicationTaskDeleted
    , replicationTaskDeleted

    -- ** ReplicationTaskReady
    , replicationTaskReady

    -- ** ReplicationInstanceDeleted
    , replicationInstanceDeleted

    -- ** EndpointDeleted
    , endpointDeleted

    -- ** ReplicationTaskStopped
    , replicationTaskStopped

    -- ** ReplicationTaskRunning
    , replicationTaskRunning

    -- ** TestConnectionSucceeds
    , testConnectionSucceeds

    -- * Operations
    -- $operations

    -- ** DeleteReplicationInstance 
    , module Network.AWS.DMS.DeleteReplicationInstance

    -- ** RebootReplicationInstance 
    , module Network.AWS.DMS.RebootReplicationInstance

    -- ** ReloadTables 
    , module Network.AWS.DMS.ReloadTables

    -- ** StartReplicationTaskAssessment 
    , module Network.AWS.DMS.StartReplicationTaskAssessment

    -- ** DeleteReplicationTaskAssessmentRun 
    , module Network.AWS.DMS.DeleteReplicationTaskAssessmentRun

    -- ** CreateEndpoint 
    , module Network.AWS.DMS.CreateEndpoint

    -- ** DescribeSchemas (Paginated)
    , module Network.AWS.DMS.DescribeSchemas

    -- ** DeleteConnection 
    , module Network.AWS.DMS.DeleteConnection

    -- ** ModifyEventSubscription 
    , module Network.AWS.DMS.ModifyEventSubscription

    -- ** DescribeReplicationInstanceTaskLogs 
    , module Network.AWS.DMS.DescribeReplicationInstanceTaskLogs

    -- ** DescribeEvents (Paginated)
    , module Network.AWS.DMS.DescribeEvents

    -- ** DeleteEndpoint 
    , module Network.AWS.DMS.DeleteEndpoint

    -- ** ListTagsForResource 
    , module Network.AWS.DMS.ListTagsForResource

    -- ** DescribeEndpointTypes (Paginated)
    , module Network.AWS.DMS.DescribeEndpointTypes

    -- ** DeleteReplicationTask 
    , module Network.AWS.DMS.DeleteReplicationTask

    -- ** DescribeReplicationTaskAssessmentRuns 
    , module Network.AWS.DMS.DescribeReplicationTaskAssessmentRuns

    -- ** DescribeReplicationTaskAssessmentResults (Paginated)
    , module Network.AWS.DMS.DescribeReplicationTaskAssessmentResults

    -- ** TestConnection 
    , module Network.AWS.DMS.TestConnection

    -- ** DescribeConnections (Paginated)
    , module Network.AWS.DMS.DescribeConnections

    -- ** MoveReplicationTask 
    , module Network.AWS.DMS.MoveReplicationTask

    -- ** RemoveTagsFromResource 
    , module Network.AWS.DMS.RemoveTagsFromResource

    -- ** ModifyEndpoint 
    , module Network.AWS.DMS.ModifyEndpoint

    -- ** CreateEventSubscription 
    , module Network.AWS.DMS.CreateEventSubscription

    -- ** DescribeCertificates (Paginated)
    , module Network.AWS.DMS.DescribeCertificates

    -- ** StartReplicationTaskAssessmentRun 
    , module Network.AWS.DMS.StartReplicationTaskAssessmentRun

    -- ** DeleteEventSubscription 
    , module Network.AWS.DMS.DeleteEventSubscription

    -- ** DescribeTableStatistics (Paginated)
    , module Network.AWS.DMS.DescribeTableStatistics

    -- ** DescribeReplicationSubnetGroups (Paginated)
    , module Network.AWS.DMS.DescribeReplicationSubnetGroups

    -- ** StartReplicationTask 
    , module Network.AWS.DMS.StartReplicationTask

    -- ** DescribeEventSubscriptions (Paginated)
    , module Network.AWS.DMS.DescribeEventSubscriptions

    -- ** AddTagsToResource 
    , module Network.AWS.DMS.AddTagsToResource

    -- ** CreateReplicationSubnetGroup 
    , module Network.AWS.DMS.CreateReplicationSubnetGroup

    -- ** DescribeApplicableIndividualAssessments 
    , module Network.AWS.DMS.DescribeApplicableIndividualAssessments

    -- ** DeleteCertificate 
    , module Network.AWS.DMS.DeleteCertificate

    -- ** RefreshSchemas 
    , module Network.AWS.DMS.RefreshSchemas

    -- ** DescribeReplicationTasks (Paginated)
    , module Network.AWS.DMS.DescribeReplicationTasks

    -- ** DescribeEventCategories 
    , module Network.AWS.DMS.DescribeEventCategories

    -- ** DescribeOrderableReplicationInstances (Paginated)
    , module Network.AWS.DMS.DescribeOrderableReplicationInstances

    -- ** DescribePendingMaintenanceActions 
    , module Network.AWS.DMS.DescribePendingMaintenanceActions

    -- ** CreateReplicationTask 
    , module Network.AWS.DMS.CreateReplicationTask

    -- ** DescribeEndpoints (Paginated)
    , module Network.AWS.DMS.DescribeEndpoints

    -- ** ModifyReplicationInstance 
    , module Network.AWS.DMS.ModifyReplicationInstance

    -- ** ImportCertificate 
    , module Network.AWS.DMS.ImportCertificate

    -- ** CancelReplicationTaskAssessmentRun 
    , module Network.AWS.DMS.CancelReplicationTaskAssessmentRun

    -- ** ModifyReplicationSubnetGroup 
    , module Network.AWS.DMS.ModifyReplicationSubnetGroup

    -- ** DescribeReplicationTaskIndividualAssessments 
    , module Network.AWS.DMS.DescribeReplicationTaskIndividualAssessments

    -- ** ApplyPendingMaintenanceAction 
    , module Network.AWS.DMS.ApplyPendingMaintenanceAction

    -- ** DescribeAccountAttributes 
    , module Network.AWS.DMS.DescribeAccountAttributes

    -- ** DescribeReplicationInstances (Paginated)
    , module Network.AWS.DMS.DescribeReplicationInstances

    -- ** DescribeRefreshSchemasStatus 
    , module Network.AWS.DMS.DescribeRefreshSchemasStatus

    -- ** StopReplicationTask 
    , module Network.AWS.DMS.StopReplicationTask

    -- ** ModifyReplicationTask 
    , module Network.AWS.DMS.ModifyReplicationTask

    -- ** CreateReplicationInstance 
    , module Network.AWS.DMS.CreateReplicationInstance

    -- ** DeleteReplicationSubnetGroup 
    , module Network.AWS.DMS.DeleteReplicationSubnetGroup

    -- * Types

    -- ** AuthMechanismValue
    , AuthMechanismValue (..)

    -- ** AuthTypeValue
    , AuthTypeValue (..)

    -- ** CharLengthSemantics
    , CharLengthSemantics (..)

    -- ** CompressionTypeValue
    , CompressionTypeValue (..)

    -- ** DataFormatValue
    , DataFormatValue (..)

    -- ** DatePartitionDelimiterValue
    , DatePartitionDelimiterValue (..)

    -- ** DatePartitionSequenceValue
    , DatePartitionSequenceValue (..)

    -- ** DmsSSLModeValue
    , DmsSSLModeValue (..)

    -- ** EncodingTypeValue
    , EncodingTypeValue (..)

    -- ** EncryptionModeValue
    , EncryptionModeValue (..)

    -- ** MessageFormatValue
    , MessageFormatValue (..)

    -- ** MigrationTypeValue
    , MigrationTypeValue (..)

    -- ** NestingLevelValue
    , NestingLevelValue (..)

    -- ** ParquetVersionValue
    , ParquetVersionValue (..)

    -- ** RefreshSchemasStatusTypeValue
    , RefreshSchemasStatusTypeValue (..)

    -- ** ReleaseStatusValues
    , ReleaseStatusValues (..)

    -- ** ReloadOptionValue
    , ReloadOptionValue (..)

    -- ** ReplicationEndpointTypeValue
    , ReplicationEndpointTypeValue (..)

    -- ** SafeguardPolicy
    , SafeguardPolicy (..)

    -- ** SourceType
    , SourceType (..)

    -- ** StartReplicationTaskTypeValue
    , StartReplicationTaskTypeValue (..)

    -- ** TargetDBType
    , TargetDBType (..)

    -- ** AccountQuota
    , AccountQuota
    , accountQuota
    , aqMax
    , aqUsed
    , aqAccountQuotaName

    -- ** AvailabilityZone
    , AvailabilityZone
    , availabilityZone
    , azName

    -- ** Certificate
    , Certificate
    , certificate
    , cCertificateOwner
    , cSigningAlgorithm
    , cValidFromDate
    , cCertificatePem
    , cCertificateARN
    , cCertificateCreationDate
    , cCertificateIdentifier
    , cCertificateWallet
    , cKeyLength
    , cValidToDate

    -- ** Connection
    , Connection
    , connection
    , cStatus
    , cReplicationInstanceARN
    , cEndpointIdentifier
    , cReplicationInstanceIdentifier
    , cEndpointARN
    , cLastFailureMessage

    -- ** DmsTransferSettings
    , DmsTransferSettings
    , dmsTransferSettings
    , dtsServiceAccessRoleARN
    , dtsBucketName

    -- ** DocDBSettings
    , DocDBSettings
    , docDBSettings
    , ddsServerName
    , ddsUsername
    , ddsKMSKeyId
    , ddsPassword
    , ddsNestingLevel
    , ddsDatabaseName
    , ddsDocsToInvestigate
    , ddsExtractDocId
    , ddsPort

    -- ** DynamoDBSettings
    , DynamoDBSettings
    , dynamoDBSettings
    , ddsServiceAccessRoleARN

    -- ** ElasticsearchSettings
    , ElasticsearchSettings
    , elasticsearchSettings
    , esFullLoadErrorPercentage
    , esErrorRetryDuration
    , esServiceAccessRoleARN
    , esEndpointURI

    -- ** Endpoint
    , Endpoint
    , endpoint
    , eStatus
    , eDmsTransferSettings
    , eMySQLSettings
    , eServerName
    , eMicrosoftSQLServerSettings
    , eCertificateARN
    , eServiceAccessRoleARN
    , eDocDBSettings
    , eEngineDisplayName
    , ePostgreSQLSettings
    , eExtraConnectionAttributes
    , eKafkaSettings
    , eOracleSettings
    , eEndpointType
    , eRedshiftSettings
    , eElasticsearchSettings
    , eUsername
    , eExternalTableDefinition
    , eEngineName
    , eNeptuneSettings
    , eIBMDB2Settings
    , eKMSKeyId
    , eMongoDBSettings
    , eSSLMode
    , eSybaseSettings
    , eDatabaseName
    , eS3Settings
    , eKinesisSettings
    , eEndpointIdentifier
    , eExternalId
    , eDynamoDBSettings
    , eEndpointARN
    , ePort

    -- ** Event
    , Event
    , event
    , eSourceType
    , eSourceIdentifier
    , eDate
    , eEventCategories
    , eMessage

    -- ** EventCategoryGroup
    , EventCategoryGroup
    , eventCategoryGroup
    , ecgSourceType
    , ecgEventCategories

    -- ** EventSubscription
    , EventSubscription
    , eventSubscription
    , esStatus
    , esCustomerAWSId
    , esCustSubscriptionId
    , esSNSTopicARN
    , esEnabled
    , esSourceType
    , esSubscriptionCreationTime
    , esEventCategoriesList
    , esSourceIdsList

    -- ** Filter
    , Filter
    , filter'
    , fName
    , fValues

    -- ** IBMDB2Settings
    , IBMDB2Settings
    , iBMDB2Settings
    , ibmdsServerName
    , ibmdsCurrentLsn
    , ibmdsSetDataCaptureChanges
    , ibmdsUsername
    , ibmdsPassword
    , ibmdsDatabaseName
    , ibmdsMaxKBytesPerRead
    , ibmdsPort

    -- ** KafkaSettings
    , KafkaSettings
    , kafkaSettings
    , ksIncludeTransactionDetails
    , ksIncludeTableAlterOperations
    , ksPartitionIncludeSchemaTable
    , ksTopic
    , ksIncludeControlDetails
    , ksIncludePartitionValue
    , ksMessageFormat
    , ksBroker
    , ksMessageMaxBytes
    , ksIncludeNullAndEmpty

    -- ** KinesisSettings
    , KinesisSettings
    , kinesisSettings
    , kIncludeTransactionDetails
    , kIncludeTableAlterOperations
    , kServiceAccessRoleARN
    , kPartitionIncludeSchemaTable
    , kStreamARN
    , kIncludeControlDetails
    , kIncludePartitionValue
    , kMessageFormat
    , kIncludeNullAndEmpty

    -- ** MicrosoftSQLServerSettings
    , MicrosoftSQLServerSettings
    , microsoftSQLServerSettings
    , msqlssBcpPacketSize
    , msqlssUseBcpFullLoad
    , msqlssServerName
    , msqlssUsername
    , msqlssSafeguardPolicy
    , msqlssPassword
    , msqlssDatabaseName
    , msqlssReadBackupOnly
    , msqlssControlTablesFileGroup
    , msqlssPort

    -- ** MongoDBSettings
    , MongoDBSettings
    , mongoDBSettings
    , mdsServerName
    , mdsAuthMechanism
    , mdsUsername
    , mdsKMSKeyId
    , mdsPassword
    , mdsNestingLevel
    , mdsDatabaseName
    , mdsDocsToInvestigate
    , mdsAuthSource
    , mdsExtractDocId
    , mdsAuthType
    , mdsPort

    -- ** MySQLSettings
    , MySQLSettings
    , mySQLSettings
    , msqlsMaxFileSize
    , msqlsTargetDBType
    , msqlsServerName
    , msqlsParallelLoadThreads
    , msqlsUsername
    , msqlsPassword
    , msqlsEventsPollInterval
    , msqlsDatabaseName
    , msqlsAfterConnectScript
    , msqlsServerTimezone
    , msqlsPort

    -- ** NeptuneSettings
    , NeptuneSettings
    , neptuneSettings
    , nsMaxFileSize
    , nsMaxRetryCount
    , nsServiceAccessRoleARN
    , nsIAMAuthEnabled
    , nsErrorRetryDuration
    , nsS3BucketName
    , nsS3BucketFolder

    -- ** OracleSettings
    , OracleSettings
    , oracleSettings
    , osFailTasksOnLobTruncation
    , osServerName
    , osDirectPathNoLog
    , osSecurityDBEncryptionName
    , osOraclePathPrefix
    , osUsername
    , osAllowSelectNestedTables
    , osReadAheadBlocks
    , osArchivedLogDestId
    , osReplacePathPrefix
    , osAccessAlternateDirectly
    , osSecurityDBEncryption
    , osReadTableSpaceName
    , osRetryInterval
    , osPassword
    , osDatabaseName
    , osAddSupplementalLogging
    , osAsmServer
    , osCharLengthSemantics
    , osArchivedLogsOnly
    , osDirectPathParallelLoad
    , osAdditionalArchivedLogDestId
    , osAsmPassword
    , osEnableHomogenousTablespace
    , osParallelAsmReadThreads
    , osNumberDatatypeScale
    , osUsePathPrefix
    , osAsmUser
    , osUseAlternateFolderForOnline
    , osPort

    -- ** OrderableReplicationInstance
    , OrderableReplicationInstance
    , orderableReplicationInstance
    , oriEngineVersion
    , oriMinAllocatedStorage
    , oriReleaseStatus
    , oriIncludedAllocatedStorage
    , oriAvailabilityZones
    , oriMaxAllocatedStorage
    , oriReplicationInstanceClass
    , oriDefaultAllocatedStorage
    , oriStorageType

    -- ** PendingMaintenanceAction
    , PendingMaintenanceAction
    , pendingMaintenanceAction
    , pmaAutoAppliedAfterDate
    , pmaAction
    , pmaOptInStatus
    , pmaDescription
    , pmaForcedApplyDate
    , pmaCurrentApplyDate

    -- ** PostgreSQLSettings
    , PostgreSQLSettings
    , postgreSQLSettings
    , psqlsExecuteTimeout
    , psqlsMaxFileSize
    , psqlsFailTasksOnLobTruncation
    , psqlsServerName
    , psqlsDdlArtifactsSchema
    , psqlsSlotName
    , psqlsUsername
    , psqlsPassword
    , psqlsDatabaseName
    , psqlsAfterConnectScript
    , psqlsCaptureDdls
    , psqlsPort

    -- ** RedshiftSettings
    , RedshiftSettings
    , redshiftSettings
    , rsEmptyAsNull
    , rsCaseSensitiveNames
    , rsMaxFileSize
    , rsReplaceChars
    , rsServerName
    , rsConnectionTimeout
    , rsLoadTimeout
    , rsServiceAccessRoleARN
    , rsExplicitIds
    , rsBucketFolder
    , rsTruncateColumns
    , rsReplaceInvalidChars
    , rsUsername
    , rsBucketName
    , rsEncryptionMode
    , rsDateFormat
    , rsRemoveQuotes
    , rsPassword
    , rsDatabaseName
    , rsAcceptAnyDate
    , rsAfterConnectScript
    , rsWriteBufferSize
    , rsCompUpdate
    , rsTrimBlanks
    , rsTimeFormat
    , rsServerSideEncryptionKMSKeyId
    , rsPort
    , rsFileTransferUploadStreams

    -- ** RefreshSchemasStatus
    , RefreshSchemasStatus
    , refreshSchemasStatus
    , rssStatus
    , rssLastRefreshDate
    , rssReplicationInstanceARN
    , rssEndpointARN
    , rssLastFailureMessage

    -- ** ReplicationInstance
    , ReplicationInstance
    , replicationInstance
    , riEngineVersion
    , riPubliclyAccessible
    , riAutoMinorVersionUpgrade
    , riReplicationInstancePublicIPAddresses
    , riReplicationSubnetGroup
    , riInstanceCreateTime
    , riFreeUntil
    , riReplicationInstanceStatus
    , riReplicationInstancePrivateIPAddresses
    , riPreferredMaintenanceWindow
    , riReplicationInstancePrivateIPAddress
    , riKMSKeyId
    , riAvailabilityZone
    , riVPCSecurityGroups
    , riMultiAZ
    , riSecondaryAvailabilityZone
    , riReplicationInstanceARN
    , riAllocatedStorage
    , riDNSNameServers
    , riReplicationInstancePublicIPAddress
    , riReplicationInstanceClass
    , riReplicationInstanceIdentifier
    , riPendingModifiedValues

    -- ** ReplicationInstanceTaskLog
    , ReplicationInstanceTaskLog
    , replicationInstanceTaskLog
    , ritlReplicationTaskName
    , ritlReplicationTaskARN
    , ritlReplicationInstanceTaskLogSize

    -- ** ReplicationPendingModifiedValues
    , ReplicationPendingModifiedValues
    , replicationPendingModifiedValues
    , rpmvEngineVersion
    , rpmvMultiAZ
    , rpmvAllocatedStorage
    , rpmvReplicationInstanceClass

    -- ** ReplicationSubnetGroup
    , ReplicationSubnetGroup
    , replicationSubnetGroup
    , rsgVPCId
    , rsgSubnets
    , rsgReplicationSubnetGroupIdentifier
    , rsgSubnetGroupStatus
    , rsgReplicationSubnetGroupDescription

    -- ** ReplicationTask
    , ReplicationTask
    , replicationTask
    , repReplicationTaskSettings
    , repStatus
    , repStopReason
    , repTargetEndpointARN
    , repReplicationTaskIdentifier
    , repCdcStartPosition
    , repReplicationTaskStartDate
    , repSourceEndpointARN
    , repRecoveryCheckpoint
    , repTableMappings
    , repTargetReplicationInstanceARN
    , repReplicationTaskCreationDate
    , repMigrationType
    , repReplicationTaskARN
    , repTaskData
    , repCdcStopPosition
    , repReplicationTaskStats
    , repReplicationInstanceARN
    , repLastFailureMessage

    -- ** ReplicationTaskAssessmentResult
    , ReplicationTaskAssessmentResult
    , replicationTaskAssessmentResult
    , rAssessmentResults
    , rAssessmentResultsFile
    , rReplicationTaskIdentifier
    , rAssessmentStatus
    , rS3ObjectURL
    , rReplicationTaskLastAssessmentDate
    , rReplicationTaskARN

    -- ** ReplicationTaskAssessmentRun
    , ReplicationTaskAssessmentRun
    , replicationTaskAssessmentRun
    , rtarStatus
    , rtarServiceAccessRoleARN
    , rtarReplicationTaskAssessmentRunCreationDate
    , rtarAssessmentProgress
    , rtarResultKMSKeyARN
    , rtarReplicationTaskARN
    , rtarResultLocationBucket
    , rtarResultLocationFolder
    , rtarResultEncryptionMode
    , rtarAssessmentRunName
    , rtarReplicationTaskAssessmentRunARN
    , rtarLastFailureMessage

    -- ** ReplicationTaskAssessmentRunProgress
    , ReplicationTaskAssessmentRunProgress
    , replicationTaskAssessmentRunProgress
    , rtarpIndividualAssessmentCount
    , rtarpIndividualAssessmentCompletedCount

    -- ** ReplicationTaskIndividualAssessment
    , ReplicationTaskIndividualAssessment
    , replicationTaskIndividualAssessment
    , rtiaStatus
    , rtiaReplicationTaskIndividualAssessmentStartDate
    , rtiaIndividualAssessmentName
    , rtiaReplicationTaskIndividualAssessmentARN
    , rtiaReplicationTaskAssessmentRunARN

    -- ** ReplicationTaskStats
    , ReplicationTaskStats
    , replicationTaskStats
    , rtsStopDate
    , rtsFullLoadProgressPercent
    , rtsFullLoadStartDate
    , rtsElapsedTimeMillis
    , rtsStartDate
    , rtsTablesErrored
    , rtsFullLoadFinishDate
    , rtsTablesLoaded
    , rtsTablesQueued
    , rtsTablesLoading
    , rtsFreshStartDate

    -- ** ResourcePendingMaintenanceActions
    , ResourcePendingMaintenanceActions
    , resourcePendingMaintenanceActions
    , rpmaPendingMaintenanceActionDetails
    , rpmaResourceIdentifier

    -- ** S3Settings
    , S3Settings
    , s3Settings
    , ssParquetVersion
    , ssPreserveTransactions
    , ssCSVNoSupValue
    , ssParquetTimestampInMillisecond
    , ssIncludeOpForFullLoad
    , ssCSVDelimiter
    , ssServiceAccessRoleARN
    , ssBucketFolder
    , ssDataFormat
    , ssDatePartitionEnabled
    , ssEncodingType
    , ssExternalTableDefinition
    , ssDictPageSizeLimit
    , ssBucketName
    , ssEncryptionMode
    , ssEnableStatistics
    , ssCdcInsertsOnly
    , ssTimestampColumnName
    , ssCSVRowDelimiter
    , ssDatePartitionDelimiter
    , ssCompressionType
    , ssServerSideEncryptionKMSKeyId
    , ssDataPageSize
    , ssUseCSVNoSupValue
    , ssCdcInsertsAndUpdates
    , ssDatePartitionSequence
    , ssRowGroupLength
    , ssCdcPath

    -- ** Subnet
    , Subnet
    , subnet
    , sSubnetStatus
    , sSubnetIdentifier
    , sSubnetAvailabilityZone

    -- ** SupportedEndpointType
    , SupportedEndpointType
    , supportedEndpointType
    , setEngineDisplayName
    , setEndpointType
    , setEngineName
    , setReplicationInstanceEngineMinimumVersion
    , setSupportsCDC

    -- ** SybaseSettings
    , SybaseSettings
    , sybaseSettings
    , ssServerName
    , ssUsername
    , ssPassword
    , ssDatabaseName
    , ssPort

    -- ** TableStatistics
    , TableStatistics
    , tableStatistics
    , tsValidationState
    , tsFullLoadRows
    , tsInserts
    , tsFullLoadEndTime
    , tsFullLoadCondtnlChkFailedRows
    , tsFullLoadReloaded
    , tsValidationFailedRecords
    , tsValidationSuspendedRecords
    , tsSchemaName
    , tsValidationStateDetails
    , tsTableState
    , tsFullLoadErrorRows
    , tsDdls
    , tsDeletes
    , tsUpdates
    , tsValidationPendingRecords
    , tsFullLoadStartTime
    , tsLastUpdateTime
    , tsTableName

    -- ** TableToReload
    , TableToReload
    , tableToReload
    , ttrSchemaName
    , ttrTableName

    -- ** Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- ** VPCSecurityGroupMembership
    , VPCSecurityGroupMembership
    , vpcSecurityGroupMembership
    , vsgmStatus
    , vsgmVPCSecurityGroupId
    ) where

import Network.AWS.DMS.AddTagsToResource
import Network.AWS.DMS.ApplyPendingMaintenanceAction
import Network.AWS.DMS.CancelReplicationTaskAssessmentRun
import Network.AWS.DMS.CreateEndpoint
import Network.AWS.DMS.CreateEventSubscription
import Network.AWS.DMS.CreateReplicationInstance
import Network.AWS.DMS.CreateReplicationSubnetGroup
import Network.AWS.DMS.CreateReplicationTask
import Network.AWS.DMS.DeleteCertificate
import Network.AWS.DMS.DeleteConnection
import Network.AWS.DMS.DeleteEndpoint
import Network.AWS.DMS.DeleteEventSubscription
import Network.AWS.DMS.DeleteReplicationInstance
import Network.AWS.DMS.DeleteReplicationSubnetGroup
import Network.AWS.DMS.DeleteReplicationTask
import Network.AWS.DMS.DeleteReplicationTaskAssessmentRun
import Network.AWS.DMS.DescribeAccountAttributes
import Network.AWS.DMS.DescribeApplicableIndividualAssessments
import Network.AWS.DMS.DescribeCertificates
import Network.AWS.DMS.DescribeConnections
import Network.AWS.DMS.DescribeEndpointTypes
import Network.AWS.DMS.DescribeEndpoints
import Network.AWS.DMS.DescribeEventCategories
import Network.AWS.DMS.DescribeEventSubscriptions
import Network.AWS.DMS.DescribeEvents
import Network.AWS.DMS.DescribeOrderableReplicationInstances
import Network.AWS.DMS.DescribePendingMaintenanceActions
import Network.AWS.DMS.DescribeRefreshSchemasStatus
import Network.AWS.DMS.DescribeReplicationInstanceTaskLogs
import Network.AWS.DMS.DescribeReplicationInstances
import Network.AWS.DMS.DescribeReplicationSubnetGroups
import Network.AWS.DMS.DescribeReplicationTaskAssessmentResults
import Network.AWS.DMS.DescribeReplicationTaskAssessmentRuns
import Network.AWS.DMS.DescribeReplicationTaskIndividualAssessments
import Network.AWS.DMS.DescribeReplicationTasks
import Network.AWS.DMS.DescribeSchemas
import Network.AWS.DMS.DescribeTableStatistics
import Network.AWS.DMS.ImportCertificate
import Network.AWS.DMS.ListTagsForResource
import Network.AWS.DMS.ModifyEndpoint
import Network.AWS.DMS.ModifyEventSubscription
import Network.AWS.DMS.ModifyReplicationInstance
import Network.AWS.DMS.ModifyReplicationSubnetGroup
import Network.AWS.DMS.ModifyReplicationTask
import Network.AWS.DMS.MoveReplicationTask
import Network.AWS.DMS.RebootReplicationInstance
import Network.AWS.DMS.RefreshSchemas
import Network.AWS.DMS.ReloadTables
import Network.AWS.DMS.RemoveTagsFromResource
import Network.AWS.DMS.StartReplicationTask
import Network.AWS.DMS.StartReplicationTaskAssessment
import Network.AWS.DMS.StartReplicationTaskAssessmentRun
import Network.AWS.DMS.StopReplicationTask
import Network.AWS.DMS.TestConnection
import Network.AWS.DMS.Types
import Network.AWS.DMS.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'DMS'.
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
