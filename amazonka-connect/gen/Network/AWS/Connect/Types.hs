{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Connect.Types
    (
    -- * Service Configuration
      connect

    -- * Errors
    , _InvalidContactFlowException
    , _OutboundContactNotPermittedException
    , _InvalidParameterException
    , _InvalidRequestException
    , _DuplicateResourceException
    , _UserNotFoundException
    , _ContactFlowNotPublishedException
    , _DestinationNotAllowedException
    , _ContactNotFoundException
    , _ServiceQuotaExceededException
    , _ThrottlingException
    , _InternalServiceException
    , _ResourceConflictException
    , _ResourceNotFoundException
    , _LimitExceededException
    , _ResourceInUseException

    -- * Channel
    , Channel (..)

    -- * Comparison
    , Comparison (..)

    -- * ContactFlowType
    , ContactFlowType (..)

    -- * CurrentMetricName
    , CurrentMetricName (..)

    -- * DirectoryType
    , DirectoryType (..)

    -- * EncryptionType
    , EncryptionType (..)

    -- * Grouping
    , Grouping (..)

    -- * HistoricalMetricName
    , HistoricalMetricName (..)

    -- * InstanceAttributeType
    , InstanceAttributeType (..)

    -- * InstanceStatus
    , InstanceStatus (..)

    -- * InstanceStorageResourceType
    , InstanceStorageResourceType (..)

    -- * IntegrationType
    , IntegrationType (..)

    -- * PhoneNumberCountryCode
    , PhoneNumberCountryCode (..)

    -- * PhoneNumberType
    , PhoneNumberType (..)

    -- * PhoneType
    , PhoneType (..)

    -- * QueueType
    , QueueType (..)

    -- * ReferenceType
    , ReferenceType (..)

    -- * SourceType
    , SourceType (..)

    -- * Statistic
    , Statistic (..)

    -- * StorageType
    , StorageType (..)

    -- * Unit
    , Unit (..)

    -- * UseCaseType
    , UseCaseType (..)

    -- * VoiceRecordingTrack
    , VoiceRecordingTrack (..)

    -- * Attribute
    , Attribute
    , attribute
    , aValue
    , aAttributeType

    -- * ChatMessage
    , ChatMessage
    , chatMessage
    , cmContentType
    , cmContent

    -- * ContactFlow
    , ContactFlow
    , contactFlow
    , cfARN
    , cfContent
    , cfName
    , cfId
    , cfType
    , cfDescription
    , cfTags

    -- * ContactFlowSummary
    , ContactFlowSummary
    , contactFlowSummary
    , cfsARN
    , cfsName
    , cfsContactFlowType
    , cfsId

    -- * Credentials
    , Credentials
    , credentials
    , cAccessTokenExpiration
    , cAccessToken
    , cRefreshToken
    , cRefreshTokenExpiration

    -- * CurrentMetric
    , CurrentMetric
    , currentMetric
    , cmName
    , cmUnit

    -- * CurrentMetricData
    , CurrentMetricData
    , currentMetricData
    , cmdValue
    , cmdMetric

    -- * CurrentMetricResult
    , CurrentMetricResult
    , currentMetricResult
    , cmrCollections
    , cmrDimensions

    -- * Dimensions
    , Dimensions
    , dimensions
    , dChannel
    , dQueue

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecEncryptionType
    , ecKeyId

    -- * Filters
    , Filters
    , filters
    , fQueues
    , fChannels

    -- * HierarchyGroup
    , HierarchyGroup
    , hierarchyGroup
    , hgARN
    , hgName
    , hgHierarchyPath
    , hgId
    , hgLevelId

    -- * HierarchyGroupSummary
    , HierarchyGroupSummary
    , hierarchyGroupSummary
    , hgsARN
    , hgsName
    , hgsId

    -- * HierarchyLevel
    , HierarchyLevel
    , hierarchyLevel
    , hlARN
    , hlName
    , hlId

    -- * HierarchyLevelUpdate
    , HierarchyLevelUpdate
    , hierarchyLevelUpdate
    , hluName

    -- * HierarchyPath
    , HierarchyPath
    , hierarchyPath
    , hpLevelFive
    , hpLevelThree
    , hpLevelFour
    , hpLevelTwo
    , hpLevelOne

    -- * HierarchyStructure
    , HierarchyStructure
    , hierarchyStructure
    , hsLevelFive
    , hsLevelThree
    , hsLevelFour
    , hsLevelTwo
    , hsLevelOne

    -- * HierarchyStructureUpdate
    , HierarchyStructureUpdate
    , hierarchyStructureUpdate
    , hsuLevelFive
    , hsuLevelThree
    , hsuLevelFour
    , hsuLevelTwo
    , hsuLevelOne

    -- * HistoricalMetric
    , HistoricalMetric
    , historicalMetric
    , hmName
    , hmThreshold
    , hmUnit
    , hmStatistic

    -- * HistoricalMetricData
    , HistoricalMetricData
    , historicalMetricData
    , hmdValue
    , hmdMetric

    -- * HistoricalMetricResult
    , HistoricalMetricResult
    , historicalMetricResult
    , hmrCollections
    , hmrDimensions

    -- * HoursOfOperationSummary
    , HoursOfOperationSummary
    , hoursOfOperationSummary
    , hoosARN
    , hoosName
    , hoosId

    -- * Instance
    , Instance
    , instance'
    , iARN
    , iCreatedTime
    , iOutboundCallsEnabled
    , iInboundCallsEnabled
    , iInstanceAlias
    , iId
    , iInstanceStatus
    , iIdentityManagementType
    , iStatusReason
    , iServiceRole

    -- * InstanceStatusReason
    , InstanceStatusReason
    , instanceStatusReason
    , isrMessage

    -- * InstanceStorageConfig
    , InstanceStorageConfig
    , instanceStorageConfig
    , iscAssociationId
    , iscKinesisStreamConfig
    , iscKinesisVideoStreamConfig
    , iscS3Config
    , iscKinesisFirehoseConfig
    , iscStorageType

    -- * InstanceSummary
    , InstanceSummary
    , instanceSummary
    , isARN
    , isCreatedTime
    , isOutboundCallsEnabled
    , isInboundCallsEnabled
    , isInstanceAlias
    , isId
    , isInstanceStatus
    , isIdentityManagementType
    , isServiceRole

    -- * IntegrationAssociationSummary
    , IntegrationAssociationSummary
    , integrationAssociationSummary
    , iasInstanceId
    , iasSourceType
    , iasSourceApplicationURL
    , iasIntegrationAssociationId
    , iasIntegrationAssociationARN
    , iasSourceApplicationName
    , iasIntegrationARN
    , iasIntegrationType

    -- * KinesisFirehoseConfig
    , KinesisFirehoseConfig
    , kinesisFirehoseConfig
    , kfcFirehoseARN

    -- * KinesisStreamConfig
    , KinesisStreamConfig
    , kinesisStreamConfig
    , kscStreamARN

    -- * KinesisVideoStreamConfig
    , KinesisVideoStreamConfig
    , kinesisVideoStreamConfig
    , kvscPrefix
    , kvscRetentionPeriodHours
    , kvscEncryptionConfig

    -- * LexBot
    , LexBot
    , lexBot
    , lbLexRegion
    , lbName

    -- * MediaConcurrency
    , MediaConcurrency
    , mediaConcurrency
    , mcChannel
    , mcConcurrency

    -- * ParticipantDetails
    , ParticipantDetails
    , participantDetails
    , pdDisplayName

    -- * PhoneNumberSummary
    , PhoneNumberSummary
    , phoneNumberSummary
    , pnsPhoneNumberType
    , pnsARN
    , pnsPhoneNumber
    , pnsPhoneNumberCountryCode
    , pnsId

    -- * PromptSummary
    , PromptSummary
    , promptSummary
    , psARN
    , psName
    , psId

    -- * QueueReference
    , QueueReference
    , queueReference
    , qrARN
    , qrId

    -- * QueueSummary
    , QueueSummary
    , queueSummary
    , qsARN
    , qsName
    , qsId
    , qsQueueType

    -- * Reference
    , Reference
    , reference
    , rValue
    , rType

    -- * RoutingProfile
    , RoutingProfile
    , routingProfile
    , rpInstanceId
    , rpRoutingProfileARN
    , rpRoutingProfileId
    , rpDefaultOutboundQueueId
    , rpName
    , rpMediaConcurrencies
    , rpDescription
    , rpTags

    -- * RoutingProfileQueueConfig
    , RoutingProfileQueueConfig
    , routingProfileQueueConfig
    , rpqcQueueReference
    , rpqcPriority
    , rpqcDelay

    -- * RoutingProfileQueueConfigSummary
    , RoutingProfileQueueConfigSummary
    , routingProfileQueueConfigSummary
    , rpqcsQueueId
    , rpqcsQueueARN
    , rpqcsQueueName
    , rpqcsPriority
    , rpqcsDelay
    , rpqcsChannel

    -- * RoutingProfileQueueReference
    , RoutingProfileQueueReference
    , routingProfileQueueReference
    , rpqrQueueId
    , rpqrChannel

    -- * RoutingProfileSummary
    , RoutingProfileSummary
    , routingProfileSummary
    , rpsARN
    , rpsName
    , rpsId

    -- * S3Config
    , S3Config
    , s3Config
    , scEncryptionConfig
    , scBucketName
    , scBucketPrefix

    -- * SecurityKey
    , SecurityKey
    , securityKey
    , skCreationTime
    , skAssociationId
    , skKey

    -- * SecurityProfileSummary
    , SecurityProfileSummary
    , securityProfileSummary
    , spsARN
    , spsName
    , spsId

    -- * Threshold
    , Threshold
    , threshold
    , tThresholdValue
    , tComparison

    -- * UseCase
    , UseCase
    , useCase
    , ucUseCaseType
    , ucUseCaseARN
    , ucUseCaseId

    -- * User
    , User
    , user
    , uRoutingProfileId
    , uDirectoryUserId
    , uARN
    , uIdentityInfo
    , uSecurityProfileIds
    , uUsername
    , uId
    , uHierarchyGroupId
    , uPhoneConfig
    , uTags

    -- * UserIdentityInfo
    , UserIdentityInfo
    , userIdentityInfo
    , uiiEmail
    , uiiLastName
    , uiiFirstName

    -- * UserPhoneConfig
    , UserPhoneConfig
    , userPhoneConfig
    , upcAutoAccept
    , upcAfterContactWorkTimeLimit
    , upcDeskPhoneNumber
    , upcPhoneType

    -- * UserSummary
    , UserSummary
    , userSummary
    , usARN
    , usUsername
    , usId

    -- * VoiceRecordingConfiguration
    , VoiceRecordingConfiguration
    , voiceRecordingConfiguration
    , vrcVoiceRecordingTrack
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Connect.Types.Channel
import Network.AWS.Connect.Types.Comparison
import Network.AWS.Connect.Types.ContactFlowType
import Network.AWS.Connect.Types.CurrentMetricName
import Network.AWS.Connect.Types.DirectoryType
import Network.AWS.Connect.Types.EncryptionType
import Network.AWS.Connect.Types.Grouping
import Network.AWS.Connect.Types.HistoricalMetricName
import Network.AWS.Connect.Types.InstanceAttributeType
import Network.AWS.Connect.Types.InstanceStatus
import Network.AWS.Connect.Types.InstanceStorageResourceType
import Network.AWS.Connect.Types.IntegrationType
import Network.AWS.Connect.Types.PhoneNumberCountryCode
import Network.AWS.Connect.Types.PhoneNumberType
import Network.AWS.Connect.Types.PhoneType
import Network.AWS.Connect.Types.QueueType
import Network.AWS.Connect.Types.ReferenceType
import Network.AWS.Connect.Types.SourceType
import Network.AWS.Connect.Types.Statistic
import Network.AWS.Connect.Types.StorageType
import Network.AWS.Connect.Types.Unit
import Network.AWS.Connect.Types.UseCaseType
import Network.AWS.Connect.Types.VoiceRecordingTrack
import Network.AWS.Connect.Types.Attribute
import Network.AWS.Connect.Types.ChatMessage
import Network.AWS.Connect.Types.ContactFlow
import Network.AWS.Connect.Types.ContactFlowSummary
import Network.AWS.Connect.Types.Credentials
import Network.AWS.Connect.Types.CurrentMetric
import Network.AWS.Connect.Types.CurrentMetricData
import Network.AWS.Connect.Types.CurrentMetricResult
import Network.AWS.Connect.Types.Dimensions
import Network.AWS.Connect.Types.EncryptionConfig
import Network.AWS.Connect.Types.Filters
import Network.AWS.Connect.Types.HierarchyGroup
import Network.AWS.Connect.Types.HierarchyGroupSummary
import Network.AWS.Connect.Types.HierarchyLevel
import Network.AWS.Connect.Types.HierarchyLevelUpdate
import Network.AWS.Connect.Types.HierarchyPath
import Network.AWS.Connect.Types.HierarchyStructure
import Network.AWS.Connect.Types.HierarchyStructureUpdate
import Network.AWS.Connect.Types.HistoricalMetric
import Network.AWS.Connect.Types.HistoricalMetricData
import Network.AWS.Connect.Types.HistoricalMetricResult
import Network.AWS.Connect.Types.HoursOfOperationSummary
import Network.AWS.Connect.Types.Instance
import Network.AWS.Connect.Types.InstanceStatusReason
import Network.AWS.Connect.Types.InstanceStorageConfig
import Network.AWS.Connect.Types.InstanceSummary
import Network.AWS.Connect.Types.IntegrationAssociationSummary
import Network.AWS.Connect.Types.KinesisFirehoseConfig
import Network.AWS.Connect.Types.KinesisStreamConfig
import Network.AWS.Connect.Types.KinesisVideoStreamConfig
import Network.AWS.Connect.Types.LexBot
import Network.AWS.Connect.Types.MediaConcurrency
import Network.AWS.Connect.Types.ParticipantDetails
import Network.AWS.Connect.Types.PhoneNumberSummary
import Network.AWS.Connect.Types.PromptSummary
import Network.AWS.Connect.Types.QueueReference
import Network.AWS.Connect.Types.QueueSummary
import Network.AWS.Connect.Types.Reference
import Network.AWS.Connect.Types.RoutingProfile
import Network.AWS.Connect.Types.RoutingProfileQueueConfig
import Network.AWS.Connect.Types.RoutingProfileQueueConfigSummary
import Network.AWS.Connect.Types.RoutingProfileQueueReference
import Network.AWS.Connect.Types.RoutingProfileSummary
import Network.AWS.Connect.Types.S3Config
import Network.AWS.Connect.Types.SecurityKey
import Network.AWS.Connect.Types.SecurityProfileSummary
import Network.AWS.Connect.Types.Threshold
import Network.AWS.Connect.Types.UseCase
import Network.AWS.Connect.Types.User
import Network.AWS.Connect.Types.UserIdentityInfo
import Network.AWS.Connect.Types.UserPhoneConfig
import Network.AWS.Connect.Types.UserSummary
import Network.AWS.Connect.Types.VoiceRecordingConfiguration

-- | API version @2017-08-08@ of the Amazon Connect Service SDK configuration.
connect :: Service
connect
  = Service{_svcAbbrev = "Connect", _svcSigner = v4,
            _svcPrefix = "connect", _svcVersion = "2017-08-08",
            _svcEndpoint = defaultEndpoint connect,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "Connect",
            _svcRetry = retry}
  where retry
          = Exponential{_retryBase = 5.0e-2, _retryGrowth = 2,
                        _retryAttempts = 5, _retryCheck = check}
        check e
          | has (hasCode "ThrottledException" . hasStatus 400)
              e
            = Just "throttled_exception"
          | has (hasStatus 429) e = Just "too_many_requests"
          | has (hasCode "ThrottlingException" . hasStatus 400)
              e
            = Just "throttling_exception"
          | has (hasCode "Throttling" . hasStatus 400) e =
            Just "throttling"
          | has
              (hasCode "ProvisionedThroughputExceededException" .
                 hasStatus 400)
              e
            = Just "throughput_exceeded"
          | has (hasStatus 504) e = Just "gateway_timeout"
          | has
              (hasCode "RequestThrottledException" . hasStatus 400)
              e
            = Just "request_throttled_exception"
          | has (hasStatus 502) e = Just "bad_gateway"
          | has (hasStatus 503) e = Just "service_unavailable"
          | has (hasStatus 500) e = Just "general_server_error"
          | has (hasStatus 509) e = Just "limit_exceeded"
          | otherwise = Nothing

-- | The contact flow is not valid.
--
--
_InvalidContactFlowException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidContactFlowException
  = _MatchServiceError connect
      "InvalidContactFlowException"
      . hasStatus 400

-- | The contact is not permitted.
--
--
_OutboundContactNotPermittedException :: AsError a => Getting (First ServiceError) a ServiceError
_OutboundContactNotPermittedException
  = _MatchServiceError connect
      "OutboundContactNotPermittedException"
      . hasStatus 403

-- | One or more of the specified parameters are not valid.
--
--
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException
  = _MatchServiceError connect
      "InvalidParameterException"
      . hasStatus 400

-- | The request is not valid.
--
--
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException
  = _MatchServiceError connect
      "InvalidRequestException"
      . hasStatus 400

-- | A resource with the specified name already exists.
--
--
_DuplicateResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateResourceException
  = _MatchServiceError connect
      "DuplicateResourceException"
      . hasStatus 409

-- | No user with the specified credentials was found in the Amazon Connect instance.
--
--
_UserNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_UserNotFoundException
  = _MatchServiceError connect "UserNotFoundException"
      . hasStatus 404

-- | The contact flow has not been published.
--
--
_ContactFlowNotPublishedException :: AsError a => Getting (First ServiceError) a ServiceError
_ContactFlowNotPublishedException
  = _MatchServiceError connect
      "ContactFlowNotPublishedException"
      . hasStatus 404

-- | Outbound calls to the destination number are not allowed.
--
--
_DestinationNotAllowedException :: AsError a => Getting (First ServiceError) a ServiceError
_DestinationNotAllowedException
  = _MatchServiceError connect
      "DestinationNotAllowedException"
      . hasStatus 403

-- | The contact with the specified ID is not active or does not exist.
--
--
_ContactNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ContactNotFoundException
  = _MatchServiceError connect
      "ContactNotFoundException"
      . hasStatus 410

-- | The service quota has been exceeded.
--
--
_ServiceQuotaExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceQuotaExceededException
  = _MatchServiceError connect
      "ServiceQuotaExceededException"
      . hasStatus 402

-- | The throttling limit has been exceeded.
--
--
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException
  = _MatchServiceError connect "ThrottlingException" .
      hasStatus 429

-- | Request processing failed due to an error or failure with the service.
--
--
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException
  = _MatchServiceError connect
      "InternalServiceException"
      . hasStatus 500

-- | A resource already has that name.
--
--
_ResourceConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceConflictException
  = _MatchServiceError connect
      "ResourceConflictException"
      . hasStatus 409

-- | The specified resource was not found.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError connect
      "ResourceNotFoundException"
      . hasStatus 404

-- | The allowed limit for the resource has been exceeded.
--
--
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException
  = _MatchServiceError connect "LimitExceededException"
      . hasStatus 429

-- | That resource is already in use. Please try another.
--
--
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException
  = _MatchServiceError connect "ResourceInUseException"
      . hasStatus 409
