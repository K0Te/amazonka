{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types
    (
    -- * Service Configuration
      fms

    -- * Errors
    , _InternalErrorException
    , _InvalidInputException
    , _InvalidOperationException
    , _InvalidTypeException
    , _ResourceNotFoundException
    , _LimitExceededException

    -- * AccountRoleStatus
    , AccountRoleStatus (..)

    -- * CustomerPolicyScopeIdType
    , CustomerPolicyScopeIdType (..)

    -- * DependentServiceName
    , DependentServiceName (..)

    -- * PolicyComplianceStatusType
    , PolicyComplianceStatusType (..)

    -- * RemediationActionType
    , RemediationActionType (..)

    -- * SecurityServiceType
    , SecurityServiceType (..)

    -- * ViolationReason
    , ViolationReason (..)

    -- * AWSEC2InstanceViolation
    , AWSEC2InstanceViolation
    , awsEC2InstanceViolation
    , aeivViolationTarget
    , aeivAWSEC2NetworkInterfaceViolations

    -- * AWSEC2NetworkInterfaceViolation
    , AWSEC2NetworkInterfaceViolation
    , awsEC2NetworkInterfaceViolation
    , aenivViolatingSecurityGroups
    , aenivViolationTarget

    -- * AWSVPCSecurityGroupViolation
    , AWSVPCSecurityGroupViolation
    , awsVPCSecurityGroupViolation
    , avsgvViolationTargetDescription
    , avsgvPossibleSecurityGroupRemediationActions
    , avsgvViolationTarget
    , avsgvPartialMatches

    -- * App
    , App
    , app
    , appAppName
    , appProtocol
    , appPort

    -- * AppsListData
    , AppsListData
    , appsListData
    , aldListUpdateToken
    , aldListId
    , aldLastUpdateTime
    , aldPreviousAppsList
    , aldCreateTime
    , aldListName
    , aldAppsList

    -- * AppsListDataSummary
    , AppsListDataSummary
    , appsListDataSummary
    , aldsListARN
    , aldsAppsList
    , aldsListId
    , aldsListName

    -- * ComplianceViolator
    , ComplianceViolator
    , complianceViolator
    , cvResourceId
    , cvResourceType
    , cvViolationReason

    -- * EvaluationResult
    , EvaluationResult
    , evaluationResult
    , erViolatorCount
    , erComplianceStatus
    , erEvaluationLimitExceeded

    -- * NetworkFirewallMissingExpectedRTViolation
    , NetworkFirewallMissingExpectedRTViolation
    , networkFirewallMissingExpectedRTViolation
    , nfmertvCurrentRouteTable
    , nfmertvAvailabilityZone
    , nfmertvVPC
    , nfmertvViolationTarget
    , nfmertvExpectedRouteTable

    -- * NetworkFirewallMissingFirewallViolation
    , NetworkFirewallMissingFirewallViolation
    , networkFirewallMissingFirewallViolation
    , nfmfvTargetViolationReason
    , nfmfvAvailabilityZone
    , nfmfvVPC
    , nfmfvViolationTarget

    -- * NetworkFirewallMissingSubnetViolation
    , NetworkFirewallMissingSubnetViolation
    , networkFirewallMissingSubnetViolation
    , nfmsvTargetViolationReason
    , nfmsvAvailabilityZone
    , nfmsvVPC
    , nfmsvViolationTarget

    -- * NetworkFirewallPolicyDescription
    , NetworkFirewallPolicyDescription
    , networkFirewallPolicyDescription
    , nfpdStatefulRuleGroups
    , nfpdStatelessRuleGroups
    , nfpdStatelessFragmentDefaultActions
    , nfpdStatelessCustomActions
    , nfpdStatelessDefaultActions

    -- * NetworkFirewallPolicyModifiedViolation
    , NetworkFirewallPolicyModifiedViolation
    , networkFirewallPolicyModifiedViolation
    , nfpmvCurrentPolicyDescription
    , nfpmvViolationTarget
    , nfpmvExpectedPolicyDescription

    -- * PartialMatch
    , PartialMatch
    , partialMatch
    , pmTargetViolationReasons
    , pmReference

    -- * Policy
    , Policy
    , policy
    , pPolicyId
    , pResourceTypeList
    , pResourceTags
    , pPolicyUpdateToken
    , pExcludeMap
    , pIncludeMap
    , pPolicyName
    , pSecurityServicePolicyData
    , pResourceType
    , pExcludeResourceTags
    , pRemediationEnabled

    -- * PolicyComplianceDetail
    , PolicyComplianceDetail
    , policyComplianceDetail
    , pcdExpiredAt
    , pcdPolicyId
    , pcdViolators
    , pcdEvaluationLimitExceeded
    , pcdIssueInfoMap
    , pcdPolicyOwner
    , pcdMemberAccount

    -- * PolicyComplianceStatus
    , PolicyComplianceStatus
    , policyComplianceStatus
    , pcsEvaluationResults
    , pcsLastUpdated
    , pcsPolicyName
    , pcsPolicyId
    , pcsIssueInfoMap
    , pcsPolicyOwner
    , pcsMemberAccount

    -- * PolicySummary
    , PolicySummary
    , policySummary
    , psPolicyName
    , psRemediationEnabled
    , psResourceType
    , psPolicyId
    , psPolicyARN
    , psSecurityServiceType

    -- * ProtocolsListData
    , ProtocolsListData
    , protocolsListData
    , pldListUpdateToken
    , pldListId
    , pldLastUpdateTime
    , pldPreviousProtocolsList
    , pldCreateTime
    , pldListName
    , pldProtocolsList

    -- * ProtocolsListDataSummary
    , ProtocolsListDataSummary
    , protocolsListDataSummary
    , pldsProtocolsList
    , pldsListARN
    , pldsListId
    , pldsListName

    -- * ResourceTag
    , ResourceTag
    , resourceTag
    , rtValue
    , rtKey

    -- * ResourceViolation
    , ResourceViolation
    , resourceViolation
    , rvNetworkFirewallMissingExpectedRTViolation
    , rvNetworkFirewallMissingFirewallViolation
    , rvNetworkFirewallMissingSubnetViolation
    , rvAWSEC2InstanceViolation
    , rvAWSVPCSecurityGroupViolation
    , rvNetworkFirewallPolicyModifiedViolation
    , rvAWSEC2NetworkInterfaceViolation

    -- * SecurityGroupRemediationAction
    , SecurityGroupRemediationAction
    , securityGroupRemediationAction
    , sgraIsDefaultAction
    , sgraRemediationResult
    , sgraDescription
    , sgraRemediationActionType

    -- * SecurityGroupRuleDescription
    , SecurityGroupRuleDescription
    , securityGroupRuleDescription
    , sgrdFromPort
    , sgrdProtocol
    , sgrdIPV4Range
    , sgrdPrefixListId
    , sgrdToPort
    , sgrdIPV6Range

    -- * SecurityServicePolicyData
    , SecurityServicePolicyData
    , securityServicePolicyData
    , sspdManagedServiceData
    , sspdType

    -- * StatefulRuleGroup
    , StatefulRuleGroup
    , statefulRuleGroup
    , srgResourceId
    , srgRuleGroupName

    -- * StatelessRuleGroup
    , StatelessRuleGroup
    , statelessRuleGroup
    , sResourceId
    , sPriority
    , sRuleGroupName

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- * ViolationDetail
    , ViolationDetail
    , violationDetail
    , vdResourceTags
    , vdResourceDescription
    , vdPolicyId
    , vdMemberAccount
    , vdResourceId
    , vdResourceType
    , vdResourceViolations
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.FMS.Types.AccountRoleStatus
import Network.AWS.FMS.Types.CustomerPolicyScopeIdType
import Network.AWS.FMS.Types.DependentServiceName
import Network.AWS.FMS.Types.PolicyComplianceStatusType
import Network.AWS.FMS.Types.RemediationActionType
import Network.AWS.FMS.Types.SecurityServiceType
import Network.AWS.FMS.Types.ViolationReason
import Network.AWS.FMS.Types.AWSEC2InstanceViolation
import Network.AWS.FMS.Types.AWSEC2NetworkInterfaceViolation
import Network.AWS.FMS.Types.AWSVPCSecurityGroupViolation
import Network.AWS.FMS.Types.App
import Network.AWS.FMS.Types.AppsListData
import Network.AWS.FMS.Types.AppsListDataSummary
import Network.AWS.FMS.Types.ComplianceViolator
import Network.AWS.FMS.Types.EvaluationResult
import Network.AWS.FMS.Types.NetworkFirewallMissingExpectedRTViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingFirewallViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingSubnetViolation
import Network.AWS.FMS.Types.NetworkFirewallPolicyDescription
import Network.AWS.FMS.Types.NetworkFirewallPolicyModifiedViolation
import Network.AWS.FMS.Types.PartialMatch
import Network.AWS.FMS.Types.Policy
import Network.AWS.FMS.Types.PolicyComplianceDetail
import Network.AWS.FMS.Types.PolicyComplianceStatus
import Network.AWS.FMS.Types.PolicySummary
import Network.AWS.FMS.Types.ProtocolsListData
import Network.AWS.FMS.Types.ProtocolsListDataSummary
import Network.AWS.FMS.Types.ResourceTag
import Network.AWS.FMS.Types.ResourceViolation
import Network.AWS.FMS.Types.SecurityGroupRemediationAction
import Network.AWS.FMS.Types.SecurityGroupRuleDescription
import Network.AWS.FMS.Types.SecurityServicePolicyData
import Network.AWS.FMS.Types.StatefulRuleGroup
import Network.AWS.FMS.Types.StatelessRuleGroup
import Network.AWS.FMS.Types.Tag
import Network.AWS.FMS.Types.ViolationDetail

-- | API version @2018-01-01@ of the Amazon Firewall Management Service SDK configuration.
fms :: Service
fms
  = Service{_svcAbbrev = "FMS", _svcSigner = v4,
            _svcPrefix = "fms", _svcVersion = "2018-01-01",
            _svcEndpoint = defaultEndpoint fms,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "FMS", _svcRetry = retry}
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

-- | The operation failed because of a system problem, even though the request was valid. Retry your request.
--
--
_InternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalErrorException
  = _MatchServiceError fms "InternalErrorException"

-- | The parameters of the request were invalid.
--
--
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException
  = _MatchServiceError fms "InvalidInputException"

-- | The operation failed because there was nothing to do or the operation wasn't possible. For example, you might have submitted an @AssociateAdminAccount@ request for an account ID that was already set as the AWS Firewall Manager administrator. Or you might have tried to access a Region that's disabled by default, and that you need to enable for the Firewall Manager administrator account and for AWS Organizations before you can access it.
--
--
_InvalidOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOperationException
  = _MatchServiceError fms "InvalidOperationException"

-- | The value of the @Type@ parameter is invalid.
--
--
_InvalidTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTypeException
  = _MatchServiceError fms "InvalidTypeException"

-- | The specified resource was not found.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError fms "ResourceNotFoundException"

-- | The operation exceeds a resource limit, for example, the maximum number of @policy@ objects that you can create for an AWS account. For more information, see <https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html Firewall Manager Limits> in the /AWS WAF Developer Guide/ .
--
--
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException
  = _MatchServiceError fms "LimitExceededException"
