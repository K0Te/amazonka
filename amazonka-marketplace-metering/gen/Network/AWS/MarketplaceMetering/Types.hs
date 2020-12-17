{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceMetering.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MarketplaceMetering.Types
    (
    -- * Service Configuration
      marketplaceMetering

    -- * Errors
    , _InvalidTagException
    , _InvalidEndpointRegionException
    , _InvalidProductCodeException
    , _InvalidUsageDimensionException
    , _PlatformNotSupportedException
    , _CustomerNotEntitledException
    , _DuplicateRequestException
    , _DisabledAPIException
    , _TimestampOutOfBoundsException
    , _ThrottlingException
    , _InvalidPublicKeyVersionException
    , _InternalServiceErrorException
    , _InvalidTokenException
    , _InvalidUsageAllocationsException
    , _ExpiredTokenException
    , _InvalidRegionException
    , _InvalidCustomerIdentifierException

    -- * UsageRecordResultStatus
    , UsageRecordResultStatus (..)

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- * UsageAllocation
    , UsageAllocation
    , usageAllocation
    , uaTags
    , uaAllocatedUsageQuantity

    -- * UsageRecord
    , UsageRecord
    , usageRecord
    , urQuantity
    , urUsageAllocations
    , urTimestamp
    , urCustomerIdentifier
    , urDimension

    -- * UsageRecordResult
    , UsageRecordResult
    , usageRecordResult
    , urrStatus
    , urrUsageRecord
    , urrMeteringRecordId
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.MarketplaceMetering.Types.UsageRecordResultStatus
import Network.AWS.MarketplaceMetering.Types.Tag
import Network.AWS.MarketplaceMetering.Types.UsageAllocation
import Network.AWS.MarketplaceMetering.Types.UsageRecord
import Network.AWS.MarketplaceMetering.Types.UsageRecordResult

-- | API version @2016-01-14@ of the Amazon Marketplace Metering SDK configuration.
marketplaceMetering :: Service
marketplaceMetering
  = Service{_svcAbbrev = "MarketplaceMetering",
            _svcSigner = v4, _svcPrefix = "metering.marketplace",
            _svcVersion = "2016-01-14",
            _svcEndpoint = defaultEndpoint marketplaceMetering,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "MarketplaceMetering",
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

-- | The tag is invalid, or the number of tags is greater than 5.
--
--
_InvalidTagException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagException
  = _MatchServiceError marketplaceMetering
      "InvalidTagException"

-- | The endpoint being called is in a AWS Region different from your EC2 instance, ECS task, or EKS pod. The Region of the Metering Service endpoint and the AWS Region of the resource must match.
--
--
_InvalidEndpointRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEndpointRegionException
  = _MatchServiceError marketplaceMetering
      "InvalidEndpointRegionException"

-- | The product code passed does not match the product code used for publishing the product.
--
--
_InvalidProductCodeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidProductCodeException
  = _MatchServiceError marketplaceMetering
      "InvalidProductCodeException"

-- | The usage dimension does not match one of the UsageDimensions associated with products.
--
--
_InvalidUsageDimensionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUsageDimensionException
  = _MatchServiceError marketplaceMetering
      "InvalidUsageDimensionException"

-- | AWS Marketplace does not support metering usage from the underlying platform. Currently, Amazon ECS, Amazon EKS, and AWS Fargate are supported.
--
--
_PlatformNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformNotSupportedException
  = _MatchServiceError marketplaceMetering
      "PlatformNotSupportedException"

-- | Exception thrown when the customer does not have a valid subscription for the product.
--
--
_CustomerNotEntitledException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomerNotEntitledException
  = _MatchServiceError marketplaceMetering
      "CustomerNotEntitledException"

-- | A metering record has already been emitted by the same EC2 instance, ECS task, or EKS pod for the given {usageDimension, timestamp} with a different usageQuantity.
--
--
_DuplicateRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateRequestException
  = _MatchServiceError marketplaceMetering
      "DuplicateRequestException"

-- | The API is disabled in the Region.
--
--
_DisabledAPIException :: AsError a => Getting (First ServiceError) a ServiceError
_DisabledAPIException
  = _MatchServiceError marketplaceMetering
      "DisabledApiException"

-- | The timestamp value passed in the meterUsage() is out of allowed range.
--
--
_TimestampOutOfBoundsException :: AsError a => Getting (First ServiceError) a ServiceError
_TimestampOutOfBoundsException
  = _MatchServiceError marketplaceMetering
      "TimestampOutOfBoundsException"

-- | The calls to the API are throttled.
--
--
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException
  = _MatchServiceError marketplaceMetering
      "ThrottlingException"

-- | Public Key version is invalid.
--
--
_InvalidPublicKeyVersionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPublicKeyVersionException
  = _MatchServiceError marketplaceMetering
      "InvalidPublicKeyVersionException"

-- | An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.
--
--
_InternalServiceErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceErrorException
  = _MatchServiceError marketplaceMetering
      "InternalServiceErrorException"

-- | Registration token is invalid.
--
--
_InvalidTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTokenException
  = _MatchServiceError marketplaceMetering
      "InvalidTokenException"

-- | The usage allocation objects are invalid, or the number of allocations is greater than 500 for a single usage record.
--
--
_InvalidUsageAllocationsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUsageAllocationsException
  = _MatchServiceError marketplaceMetering
      "InvalidUsageAllocationsException"

-- | The submitted registration token has expired. This can happen if the buyer's browser takes too long to redirect to your page, the buyer has resubmitted the registration token, or your application has held on to the registration token for too long. Your SaaS registration website should redeem this token as soon as it is submitted by the buyer's browser.
--
--
_ExpiredTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_ExpiredTokenException
  = _MatchServiceError marketplaceMetering
      "ExpiredTokenException"

-- | RegisterUsage must be called in the same AWS Region the ECS task was launched in. This prevents a container from hardcoding a Region (e.g. withRegion(“us-east-1”) when calling RegisterUsage.
--
--
_InvalidRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRegionException
  = _MatchServiceError marketplaceMetering
      "InvalidRegionException"

-- | You have metered usage for a CustomerIdentifier that does not exist.
--
--
_InvalidCustomerIdentifierException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCustomerIdentifierException
  = _MatchServiceError marketplaceMetering
      "InvalidCustomerIdentifierException"
