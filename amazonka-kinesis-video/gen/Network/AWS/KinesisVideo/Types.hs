{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideo.Types
    (
    -- * Service Configuration
      kinesisVideo

    -- * Errors
    , _AccessDeniedException
    , _InvalidArgumentException
    , _TagsPerResourceExceededLimitException
    , _NotAuthorizedException
    , _ClientLimitExceededException
    , _AccountChannelLimitExceededException
    , _InvalidDeviceException
    , _VersionMismatchException
    , _AccountStreamLimitExceededException
    , _InvalidResourceFormatException
    , _DeviceStreamLimitExceededException
    , _ResourceNotFoundException
    , _ResourceInUseException

    -- * APIName
    , APIName (..)

    -- * ChannelProtocol
    , ChannelProtocol (..)

    -- * ChannelRole
    , ChannelRole (..)

    -- * ChannelType
    , ChannelType (..)

    -- * ComparisonOperator
    , ComparisonOperator (..)

    -- * StreamStatus
    , StreamStatus (..)

    -- * UpdateDataRetentionOperation
    , UpdateDataRetentionOperation (..)

    -- * ChannelInfo
    , ChannelInfo
    , channelInfo
    , ciCreationTime
    , ciChannelStatus
    , ciChannelARN
    , ciSingleMasterConfiguration
    , ciChannelName
    , ciVersion
    , ciChannelType

    -- * ChannelNameCondition
    , ChannelNameCondition
    , channelNameCondition
    , cncComparisonOperator
    , cncComparisonValue

    -- * ResourceEndpointListItem
    , ResourceEndpointListItem
    , resourceEndpointListItem
    , reliProtocol
    , reliResourceEndpoint

    -- * SingleMasterChannelEndpointConfiguration
    , SingleMasterChannelEndpointConfiguration
    , singleMasterChannelEndpointConfiguration
    , smcecProtocols
    , smcecRole

    -- * SingleMasterConfiguration
    , SingleMasterConfiguration
    , singleMasterConfiguration
    , smcMessageTtlSeconds

    -- * StreamInfo
    , StreamInfo
    , streamInfo
    , siCreationTime
    , siStatus
    , siMediaType
    , siDataRetentionInHours
    , siStreamARN
    , siKMSKeyId
    , siDeviceName
    , siVersion
    , siStreamName

    -- * StreamNameCondition
    , StreamNameCondition
    , streamNameCondition
    , sncComparisonOperator
    , sncComparisonValue

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.KinesisVideo.Types.APIName
import Network.AWS.KinesisVideo.Types.ChannelProtocol
import Network.AWS.KinesisVideo.Types.ChannelRole
import Network.AWS.KinesisVideo.Types.ChannelType
import Network.AWS.KinesisVideo.Types.ComparisonOperator
import Network.AWS.KinesisVideo.Types.StreamStatus
import Network.AWS.KinesisVideo.Types.UpdateDataRetentionOperation
import Network.AWS.KinesisVideo.Types.ChannelInfo
import Network.AWS.KinesisVideo.Types.ChannelNameCondition
import Network.AWS.KinesisVideo.Types.ResourceEndpointListItem
import Network.AWS.KinesisVideo.Types.SingleMasterChannelEndpointConfiguration
import Network.AWS.KinesisVideo.Types.SingleMasterConfiguration
import Network.AWS.KinesisVideo.Types.StreamInfo
import Network.AWS.KinesisVideo.Types.StreamNameCondition
import Network.AWS.KinesisVideo.Types.Tag

-- | API version @2017-09-30@ of the Amazon Kinesis Video Streams SDK configuration.
kinesisVideo :: Service
kinesisVideo
  = Service{_svcAbbrev = "KinesisVideo",
            _svcSigner = v4, _svcPrefix = "kinesisvideo",
            _svcVersion = "2017-09-30",
            _svcEndpoint = defaultEndpoint kinesisVideo,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "KinesisVideo",
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

-- | You do not have required permissions to perform this operation.
--
--
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException
  = _MatchServiceError kinesisVideo
      "AccessDeniedException"
      . hasStatus 401

-- | The value for this input parameter is invalid.
--
--
_InvalidArgumentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgumentException
  = _MatchServiceError kinesisVideo
      "InvalidArgumentException"
      . hasStatus 400

-- | You have exceeded the limit of tags that you can associate with the resource. Kinesis video streams support up to 50 tags. 
--
--
_TagsPerResourceExceededLimitException :: AsError a => Getting (First ServiceError) a ServiceError
_TagsPerResourceExceededLimitException
  = _MatchServiceError kinesisVideo
      "TagsPerResourceExceededLimitException"
      . hasStatus 400

-- | The caller is not authorized to perform this operation.
--
--
_NotAuthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_NotAuthorizedException
  = _MatchServiceError kinesisVideo
      "NotAuthorizedException"
      . hasStatus 401

-- | Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.
--
--
_ClientLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientLimitExceededException
  = _MatchServiceError kinesisVideo
      "ClientLimitExceededException"
      . hasStatus 400

-- | You have reached the maximum limit of active signaling channels for this AWS account in this region.
--
--
_AccountChannelLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AccountChannelLimitExceededException
  = _MatchServiceError kinesisVideo
      "AccountChannelLimitExceededException"
      . hasStatus 400

-- | Not implemented.
--
--
_InvalidDeviceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeviceException
  = _MatchServiceError kinesisVideo
      "InvalidDeviceException"
      . hasStatus 400

-- | The stream version that you specified is not the latest version. To get the latest version, use the <https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_DescribeStream.html DescribeStream> API.
--
--
_VersionMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_VersionMismatchException
  = _MatchServiceError kinesisVideo
      "VersionMismatchException"
      . hasStatus 400

-- | The number of streams created for the account is too high.
--
--
_AccountStreamLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AccountStreamLimitExceededException
  = _MatchServiceError kinesisVideo
      "AccountStreamLimitExceededException"
      . hasStatus 400

-- | The format of the @StreamARN@ is invalid.
--
--
_InvalidResourceFormatException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceFormatException
  = _MatchServiceError kinesisVideo
      "InvalidResourceFormatException"
      . hasStatus 400

-- | Not implemented. 
--
--
_DeviceStreamLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DeviceStreamLimitExceededException
  = _MatchServiceError kinesisVideo
      "DeviceStreamLimitExceededException"
      . hasStatus 400

-- | Amazon Kinesis Video Streams can't find the stream that you specified.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError kinesisVideo
      "ResourceNotFoundException"
      . hasStatus 404

-- | The signaling channel is currently not available for this operation.
--
--
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException
  = _MatchServiceError kinesisVideo
      "ResourceInUseException"
      . hasStatus 400
