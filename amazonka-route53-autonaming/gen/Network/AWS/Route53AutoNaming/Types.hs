{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53AutoNaming.Types
    (
    -- * Service Configuration
      route53AutoNaming

    -- * Errors
    , _ResourceLimitExceeded
    , _InvalidInput
    , _NamespaceAlreadyExists
    , _NamespaceNotFound
    , _ServiceAlreadyExists
    , _ResourceInUse
    , _TooManyTagsException
    , _CustomHealthNotFound
    , _RequestLimitExceeded
    , _InstanceNotFound
    , _DuplicateRequest
    , _ServiceNotFound
    , _OperationNotFound
    , _ResourceNotFoundException

    -- * CustomHealthStatus
    , CustomHealthStatus (..)

    -- * FilterCondition
    , FilterCondition (..)

    -- * HealthCheckType
    , HealthCheckType (..)

    -- * HealthStatus
    , HealthStatus (..)

    -- * HealthStatusFilter
    , HealthStatusFilter (..)

    -- * NamespaceFilterName
    , NamespaceFilterName (..)

    -- * NamespaceType
    , NamespaceType (..)

    -- * OperationFilterName
    , OperationFilterName (..)

    -- * OperationStatus
    , OperationStatus (..)

    -- * OperationTargetType
    , OperationTargetType (..)

    -- * OperationType
    , OperationType (..)

    -- * RecordType
    , RecordType (..)

    -- * RoutingPolicy
    , RoutingPolicy (..)

    -- * ServiceFilterName
    , ServiceFilterName (..)

    -- * DNSConfig
    , DNSConfig
    , dnsConfig
    , dcRoutingPolicy
    , dcNamespaceId
    , dcDNSRecords

    -- * DNSConfigChange
    , DNSConfigChange
    , dnsConfigChange
    , dccDNSRecords

    -- * DNSProperties
    , DNSProperties
    , dnsProperties
    , dpHostedZoneId

    -- * DNSRecord
    , DNSRecord
    , dnsRecord
    , drType
    , drTTL

    -- * HTTPInstanceSummary
    , HTTPInstanceSummary
    , hTTPInstanceSummary
    , httpisInstanceId
    , httpisNamespaceName
    , httpisAttributes
    , httpisServiceName
    , httpisHealthStatus

    -- * HTTPProperties
    , HTTPProperties
    , hTTPProperties
    , httppHTTPName

    -- * HealthCheckConfig
    , HealthCheckConfig
    , healthCheckConfig
    , hccFailureThreshold
    , hccResourcePath
    , hccType

    -- * HealthCheckCustomConfig
    , HealthCheckCustomConfig
    , healthCheckCustomConfig
    , hcccFailureThreshold

    -- * Instance
    , Instance
    , instance'
    , iCreatorRequestId
    , iAttributes
    , iId

    -- * InstanceSummary
    , InstanceSummary
    , instanceSummary
    , isAttributes
    , isId

    -- * Namespace
    , Namespace
    , namespace
    , nARN
    , nCreatorRequestId
    , nCreateDate
    , nServiceCount
    , nName
    , nId
    , nType
    , nDescription
    , nProperties

    -- * NamespaceFilter
    , NamespaceFilter
    , namespaceFilter
    , nfCondition
    , nfName
    , nfValues

    -- * NamespaceProperties
    , NamespaceProperties
    , namespaceProperties
    , npDNSProperties
    , npHTTPProperties

    -- * NamespaceSummary
    , NamespaceSummary
    , namespaceSummary
    , nsARN
    , nsCreateDate
    , nsServiceCount
    , nsName
    , nsId
    , nsType
    , nsDescription
    , nsProperties

    -- * Operation
    , Operation
    , operation
    , oStatus
    , oUpdateDate
    , oCreateDate
    , oTargets
    , oErrorCode
    , oId
    , oType
    , oErrorMessage

    -- * OperationFilter
    , OperationFilter
    , operationFilter
    , ofCondition
    , ofName
    , ofValues

    -- * OperationSummary
    , OperationSummary
    , operationSummary
    , osStatus
    , osId

    -- * ServiceChange
    , ServiceChange
    , serviceChange
    , scHealthCheckConfig
    , scDNSConfig
    , scDescription

    -- * ServiceFilter
    , ServiceFilter
    , serviceFilter
    , sfCondition
    , sfName
    , sfValues

    -- * ServiceInfo
    , ServiceInfo
    , serviceInfo
    , siInstanceCount
    , siARN
    , siHealthCheckConfig
    , siCreatorRequestId
    , siCreateDate
    , siHealthCheckCustomConfig
    , siNamespaceId
    , siName
    , siId
    , siDNSConfig
    , siDescription

    -- * ServiceSummary
    , ServiceSummary
    , serviceSummary
    , ssInstanceCount
    , ssARN
    , ssHealthCheckConfig
    , ssCreateDate
    , ssHealthCheckCustomConfig
    , ssName
    , ssId
    , ssDNSConfig
    , ssDescription

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Route53AutoNaming.Types.CustomHealthStatus
import Network.AWS.Route53AutoNaming.Types.FilterCondition
import Network.AWS.Route53AutoNaming.Types.HealthCheckType
import Network.AWS.Route53AutoNaming.Types.HealthStatus
import Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
import Network.AWS.Route53AutoNaming.Types.NamespaceFilterName
import Network.AWS.Route53AutoNaming.Types.NamespaceType
import Network.AWS.Route53AutoNaming.Types.OperationFilterName
import Network.AWS.Route53AutoNaming.Types.OperationStatus
import Network.AWS.Route53AutoNaming.Types.OperationTargetType
import Network.AWS.Route53AutoNaming.Types.OperationType
import Network.AWS.Route53AutoNaming.Types.RecordType
import Network.AWS.Route53AutoNaming.Types.RoutingPolicy
import Network.AWS.Route53AutoNaming.Types.ServiceFilterName
import Network.AWS.Route53AutoNaming.Types.DNSConfig
import Network.AWS.Route53AutoNaming.Types.DNSConfigChange
import Network.AWS.Route53AutoNaming.Types.DNSProperties
import Network.AWS.Route53AutoNaming.Types.DNSRecord
import Network.AWS.Route53AutoNaming.Types.HTTPInstanceSummary
import Network.AWS.Route53AutoNaming.Types.HTTPProperties
import Network.AWS.Route53AutoNaming.Types.HealthCheckConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckCustomConfig
import Network.AWS.Route53AutoNaming.Types.Instance
import Network.AWS.Route53AutoNaming.Types.InstanceSummary
import Network.AWS.Route53AutoNaming.Types.Namespace
import Network.AWS.Route53AutoNaming.Types.NamespaceFilter
import Network.AWS.Route53AutoNaming.Types.NamespaceProperties
import Network.AWS.Route53AutoNaming.Types.NamespaceSummary
import Network.AWS.Route53AutoNaming.Types.Operation
import Network.AWS.Route53AutoNaming.Types.OperationFilter
import Network.AWS.Route53AutoNaming.Types.OperationSummary
import Network.AWS.Route53AutoNaming.Types.ServiceChange
import Network.AWS.Route53AutoNaming.Types.ServiceFilter
import Network.AWS.Route53AutoNaming.Types.ServiceInfo
import Network.AWS.Route53AutoNaming.Types.ServiceSummary
import Network.AWS.Route53AutoNaming.Types.Tag

-- | API version @2017-03-14@ of the Amazon Cloud Map SDK configuration.
route53AutoNaming :: Service
route53AutoNaming
  = Service{_svcAbbrev = "Route53AutoNaming",
            _svcSigner = v4, _svcPrefix = "servicediscovery",
            _svcVersion = "2017-03-14",
            _svcEndpoint = defaultEndpoint route53AutoNaming,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "Route53AutoNaming",
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

-- | The resource can't be created because you've reached the quota on the number of resources.
--
--
_ResourceLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceeded
  = _MatchServiceError route53AutoNaming
      "ResourceLimitExceeded"

-- | One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
--
--
_InvalidInput :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInput
  = _MatchServiceError route53AutoNaming "InvalidInput"

-- | The namespace that you're trying to create already exists.
--
--
_NamespaceAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_NamespaceAlreadyExists
  = _MatchServiceError route53AutoNaming
      "NamespaceAlreadyExists"

-- | No namespace exists with the specified ID.
--
--
_NamespaceNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_NamespaceNotFound
  = _MatchServiceError route53AutoNaming
      "NamespaceNotFound"

-- | The service can't be created because a service with the same name already exists.
--
--
_ServiceAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceAlreadyExists
  = _MatchServiceError route53AutoNaming
      "ServiceAlreadyExists"

-- | The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
--
--
_ResourceInUse :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUse
  = _MatchServiceError route53AutoNaming
      "ResourceInUse"

-- | The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a resource is 50.
--
--
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException
  = _MatchServiceError route53AutoNaming
      "TooManyTagsException"

-- | The health check for the instance that is specified by @ServiceId@ and @InstanceId@ is not a custom health check. 
--
--
_CustomHealthNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_CustomHealthNotFound
  = _MatchServiceError route53AutoNaming
      "CustomHealthNotFound"

-- | The operation can't be completed because you've reached the quota for the number of requests. For more information, see <https://docs.aws.amazon.com/cloud-map/latest/dg/throttling.html AWS Cloud Map API request throttling quota> in the /AWS Cloud Map Developer Guide/ .
--
--
_RequestLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_RequestLimitExceeded
  = _MatchServiceError route53AutoNaming
      "RequestLimitExceeded"

-- | No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.
--
--
_InstanceNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceNotFound
  = _MatchServiceError route53AutoNaming
      "InstanceNotFound"

-- | The operation is already in progress.
--
--
_DuplicateRequest :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateRequest
  = _MatchServiceError route53AutoNaming
      "DuplicateRequest"

-- | No service exists with the specified ID.
--
--
_ServiceNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceNotFound
  = _MatchServiceError route53AutoNaming
      "ServiceNotFound"

-- | No operation exists with the specified ID.
--
--
_OperationNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotFound
  = _MatchServiceError route53AutoNaming
      "OperationNotFound"

-- | The operation can't be completed because the resource was not found.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError route53AutoNaming
      "ResourceNotFoundException"
