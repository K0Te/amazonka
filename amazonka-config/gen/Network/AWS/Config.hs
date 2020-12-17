{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Config__ 
--
-- AWS Config provides a way to keep track of the configurations of all the AWS resources associated with your AWS account. You can use AWS Config to get the current and historical configurations of each AWS resource and also to get information about the relationship between the resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by AWS Config, see <https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources Supported AWS Resources> .
--
-- You can access and manage AWS Config through the AWS Management Console, the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS Config. This reference guide contains documentation for the AWS Config API and the AWS CLI commands that you can use to manage AWS Config. The AWS Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process> . For detailed information about AWS Config features and their associated actions or commands, as well as how to work with AWS Management Console, see <https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html What Is AWS Config> in the /AWS Config Developer Guide/ .
--
module Network.AWS.Config
    (
    -- * Service Configuration
      config

    -- * Errors
    -- $errors

    -- ** NoSuchRemediationConfigurationException
    , _NoSuchRemediationConfigurationException

    -- ** InvalidTimeRangeException
    , _InvalidTimeRangeException

    -- ** NoSuchOrganizationConformancePackException
    , _NoSuchOrganizationConformancePackException

    -- ** InvalidSNSTopicARNException
    , _InvalidSNSTopicARNException

    -- ** InvalidRecordingGroupException
    , _InvalidRecordingGroupException

    -- ** InvalidExpressionException
    , _InvalidExpressionException

    -- ** NoAvailableOrganizationException
    , _NoAvailableOrganizationException

    -- ** ValidationException
    , _ValidationException

    -- ** OrganizationAccessDeniedException
    , _OrganizationAccessDeniedException

    -- ** NoSuchConfigurationAggregatorException
    , _NoSuchConfigurationAggregatorException

    -- ** InvalidRoleException
    , _InvalidRoleException

    -- ** OversizedConfigurationItemException
    , _OversizedConfigurationItemException

    -- ** LastDeliveryChannelDeleteFailedException
    , _LastDeliveryChannelDeleteFailedException

    -- ** ConformancePackTemplateValidationException
    , _ConformancePackTemplateValidationException

    -- ** NoSuchRemediationExceptionException
    , _NoSuchRemediationExceptionException

    -- ** InvalidLimitException
    , _InvalidLimitException

    -- ** MaxNumberOfOrganizationConformancePacksExceededException
    , _MaxNumberOfOrganizationConformancePacksExceededException

    -- ** InvalidDeliveryChannelNameException
    , _InvalidDeliveryChannelNameException

    -- ** TooManyTagsException
    , _TooManyTagsException

    -- ** InvalidParameterValueException
    , _InvalidParameterValueException

    -- ** InvalidResultTokenException
    , _InvalidResultTokenException

    -- ** NoSuchConfigRuleInConformancePackException
    , _NoSuchConfigRuleInConformancePackException

    -- ** NoSuchOrganizationConfigRuleException
    , _NoSuchOrganizationConfigRuleException

    -- ** NoSuchDeliveryChannelException
    , _NoSuchDeliveryChannelException

    -- ** NoSuchConfigRuleException
    , _NoSuchConfigRuleException

    -- ** NoSuchConformancePackException
    , _NoSuchConformancePackException

    -- ** NoSuchRetentionConfigurationException
    , _NoSuchRetentionConfigurationException

    -- ** RemediationInProgressException
    , _RemediationInProgressException

    -- ** OrganizationAllFeaturesNotEnabledException
    , _OrganizationAllFeaturesNotEnabledException

    -- ** InsufficientPermissionsException
    , _InsufficientPermissionsException

    -- ** ResourceNotDiscoveredException
    , _ResourceNotDiscoveredException

    -- ** InvalidNextTokenException
    , _InvalidNextTokenException

    -- ** MaxNumberOfRetentionConfigurationsExceededException
    , _MaxNumberOfRetentionConfigurationsExceededException

    -- ** MaxNumberOfConformancePacksExceededException
    , _MaxNumberOfConformancePacksExceededException

    -- ** MaxNumberOfConfigRulesExceededException
    , _MaxNumberOfConfigRulesExceededException

    -- ** NoAvailableConfigurationRecorderException
    , _NoAvailableConfigurationRecorderException

    -- ** NoSuchBucketException
    , _NoSuchBucketException

    -- ** MaxActiveResourcesExceededException
    , _MaxActiveResourcesExceededException

    -- ** NoAvailableDeliveryChannelException
    , _NoAvailableDeliveryChannelException

    -- ** OrganizationConformancePackTemplateValidationException
    , _OrganizationConformancePackTemplateValidationException

    -- ** InvalidConfigurationRecorderNameException
    , _InvalidConfigurationRecorderNameException

    -- ** NoRunningConfigurationRecorderException
    , _NoRunningConfigurationRecorderException

    -- ** MaxNumberOfConfigurationRecordersExceededException
    , _MaxNumberOfConfigurationRecordersExceededException

    -- ** InsufficientDeliveryPolicyException
    , _InsufficientDeliveryPolicyException

    -- ** MaxNumberOfDeliveryChannelsExceededException
    , _MaxNumberOfDeliveryChannelsExceededException

    -- ** MaxNumberOfOrganizationConfigRulesExceededException
    , _MaxNumberOfOrganizationConfigRulesExceededException

    -- ** ResourceNotFoundException
    , _ResourceNotFoundException

    -- ** NoSuchConfigurationRecorderException
    , _NoSuchConfigurationRecorderException

    -- ** InvalidS3KeyPrefixException
    , _InvalidS3KeyPrefixException

    -- ** LimitExceededException
    , _LimitExceededException

    -- ** ResourceInUseException
    , _ResourceInUseException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribePendingAggregationRequests (Paginated)
    , module Network.AWS.Config.DescribePendingAggregationRequests

    -- ** DescribeRemediationExecutionStatus (Paginated)
    , module Network.AWS.Config.DescribeRemediationExecutionStatus

    -- ** GetResourceConfigHistory (Paginated)
    , module Network.AWS.Config.GetResourceConfigHistory

    -- ** GetAggregateResourceConfig 
    , module Network.AWS.Config.GetAggregateResourceConfig

    -- ** DescribeConfigurationAggregators (Paginated)
    , module Network.AWS.Config.DescribeConfigurationAggregators

    -- ** DescribeComplianceByConfigRule (Paginated)
    , module Network.AWS.Config.DescribeComplianceByConfigRule

    -- ** DescribeRetentionConfigurations (Paginated)
    , module Network.AWS.Config.DescribeRetentionConfigurations

    -- ** StopConfigurationRecorder 
    , module Network.AWS.Config.StopConfigurationRecorder

    -- ** GetAggregateConfigRuleComplianceSummary 
    , module Network.AWS.Config.GetAggregateConfigRuleComplianceSummary

    -- ** ListTagsForResource 
    , module Network.AWS.Config.ListTagsForResource

    -- ** BatchGetResourceConfig 
    , module Network.AWS.Config.BatchGetResourceConfig

    -- ** DescribeConfigRules (Paginated)
    , module Network.AWS.Config.DescribeConfigRules

    -- ** PutRetentionConfiguration 
    , module Network.AWS.Config.PutRetentionConfiguration

    -- ** GetOrganizationConformancePackDetailedStatus 
    , module Network.AWS.Config.GetOrganizationConformancePackDetailedStatus

    -- ** DescribeAggregateComplianceByConfigRules (Paginated)
    , module Network.AWS.Config.DescribeAggregateComplianceByConfigRules

    -- ** DeleteEvaluationResults 
    , module Network.AWS.Config.DeleteEvaluationResults

    -- ** PutConfigRule 
    , module Network.AWS.Config.PutConfigRule

    -- ** GetConformancePackComplianceDetails 
    , module Network.AWS.Config.GetConformancePackComplianceDetails

    -- ** DeleteConfigRule 
    , module Network.AWS.Config.DeleteConfigRule

    -- ** DeleteRetentionConfiguration 
    , module Network.AWS.Config.DeleteRetentionConfiguration

    -- ** SelectResourceConfig 
    , module Network.AWS.Config.SelectResourceConfig

    -- ** ListAggregateDiscoveredResources (Paginated)
    , module Network.AWS.Config.ListAggregateDiscoveredResources

    -- ** DescribeOrganizationConfigRuleStatuses 
    , module Network.AWS.Config.DescribeOrganizationConfigRuleStatuses

    -- ** DescribeOrganizationConformancePackStatuses 
    , module Network.AWS.Config.DescribeOrganizationConformancePackStatuses

    -- ** GetComplianceDetailsByResource (Paginated)
    , module Network.AWS.Config.GetComplianceDetailsByResource

    -- ** DeletePendingAggregationRequest 
    , module Network.AWS.Config.DeletePendingAggregationRequest

    -- ** DeliverConfigSnapshot 
    , module Network.AWS.Config.DeliverConfigSnapshot

    -- ** BatchGetAggregateResourceConfig 
    , module Network.AWS.Config.BatchGetAggregateResourceConfig

    -- ** DescribeConfigRuleEvaluationStatus (Paginated)
    , module Network.AWS.Config.DescribeConfigRuleEvaluationStatus

    -- ** GetDiscoveredResourceCounts 
    , module Network.AWS.Config.GetDiscoveredResourceCounts

    -- ** DescribeRemediationExceptions 
    , module Network.AWS.Config.DescribeRemediationExceptions

    -- ** DeleteOrganizationConformancePack 
    , module Network.AWS.Config.DeleteOrganizationConformancePack

    -- ** PutOrganizationConfigRule 
    , module Network.AWS.Config.PutOrganizationConfigRule

    -- ** PutOrganizationConformancePack 
    , module Network.AWS.Config.PutOrganizationConformancePack

    -- ** DeleteOrganizationConfigRule 
    , module Network.AWS.Config.DeleteOrganizationConfigRule

    -- ** PutResourceConfig 
    , module Network.AWS.Config.PutResourceConfig

    -- ** StartConfigRulesEvaluation 
    , module Network.AWS.Config.StartConfigRulesEvaluation

    -- ** DescribeOrganizationConfigRules 
    , module Network.AWS.Config.DescribeOrganizationConfigRules

    -- ** SelectAggregateResourceConfig 
    , module Network.AWS.Config.SelectAggregateResourceConfig

    -- ** DescribeComplianceByResource (Paginated)
    , module Network.AWS.Config.DescribeComplianceByResource

    -- ** DescribeOrganizationConformancePacks 
    , module Network.AWS.Config.DescribeOrganizationConformancePacks

    -- ** DeleteResourceConfig 
    , module Network.AWS.Config.DeleteResourceConfig

    -- ** PutEvaluations 
    , module Network.AWS.Config.PutEvaluations

    -- ** DescribeConfigurationRecorders 
    , module Network.AWS.Config.DescribeConfigurationRecorders

    -- ** DescribeConformancePackCompliance 
    , module Network.AWS.Config.DescribeConformancePackCompliance

    -- ** GetAggregateComplianceDetailsByConfigRule (Paginated)
    , module Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule

    -- ** GetAggregateDiscoveredResourceCounts 
    , module Network.AWS.Config.GetAggregateDiscoveredResourceCounts

    -- ** StartConfigurationRecorder 
    , module Network.AWS.Config.StartConfigurationRecorder

    -- ** DescribeConformancePacks 
    , module Network.AWS.Config.DescribeConformancePacks

    -- ** DeleteRemediationExceptions 
    , module Network.AWS.Config.DeleteRemediationExceptions

    -- ** PutRemediationExceptions 
    , module Network.AWS.Config.PutRemediationExceptions

    -- ** GetOrganizationConfigRuleDetailedStatus 
    , module Network.AWS.Config.GetOrganizationConfigRuleDetailedStatus

    -- ** PutRemediationConfigurations 
    , module Network.AWS.Config.PutRemediationConfigurations

    -- ** DeleteConformancePack 
    , module Network.AWS.Config.DeleteConformancePack

    -- ** PutConformancePack 
    , module Network.AWS.Config.PutConformancePack

    -- ** StartRemediationExecution 
    , module Network.AWS.Config.StartRemediationExecution

    -- ** DescribeConformancePackStatus 
    , module Network.AWS.Config.DescribeConformancePackStatus

    -- ** GetComplianceSummaryByConfigRule 
    , module Network.AWS.Config.GetComplianceSummaryByConfigRule

    -- ** PutConfigurationAggregator 
    , module Network.AWS.Config.PutConfigurationAggregator

    -- ** TagResource 
    , module Network.AWS.Config.TagResource

    -- ** DeleteConfigurationAggregator 
    , module Network.AWS.Config.DeleteConfigurationAggregator

    -- ** DescribeConfigurationRecorderStatus 
    , module Network.AWS.Config.DescribeConfigurationRecorderStatus

    -- ** PutConfigurationRecorder 
    , module Network.AWS.Config.PutConfigurationRecorder

    -- ** UntagResource 
    , module Network.AWS.Config.UntagResource

    -- ** DeleteConfigurationRecorder 
    , module Network.AWS.Config.DeleteConfigurationRecorder

    -- ** GetConformancePackComplianceSummary 
    , module Network.AWS.Config.GetConformancePackComplianceSummary

    -- ** GetComplianceSummaryByResourceType 
    , module Network.AWS.Config.GetComplianceSummaryByResourceType

    -- ** DescribeDeliveryChannelStatus 
    , module Network.AWS.Config.DescribeDeliveryChannelStatus

    -- ** PutDeliveryChannel 
    , module Network.AWS.Config.PutDeliveryChannel

    -- ** GetComplianceDetailsByConfigRule (Paginated)
    , module Network.AWS.Config.GetComplianceDetailsByConfigRule

    -- ** DeleteAggregationAuthorization 
    , module Network.AWS.Config.DeleteAggregationAuthorization

    -- ** DeleteDeliveryChannel 
    , module Network.AWS.Config.DeleteDeliveryChannel

    -- ** DeleteRemediationConfiguration 
    , module Network.AWS.Config.DeleteRemediationConfiguration

    -- ** PutAggregationAuthorization 
    , module Network.AWS.Config.PutAggregationAuthorization

    -- ** DescribeConfigurationAggregatorSourcesStatus (Paginated)
    , module Network.AWS.Config.DescribeConfigurationAggregatorSourcesStatus

    -- ** ListDiscoveredResources (Paginated)
    , module Network.AWS.Config.ListDiscoveredResources

    -- ** DescribeRemediationConfigurations 
    , module Network.AWS.Config.DescribeRemediationConfigurations

    -- ** DescribeDeliveryChannels 
    , module Network.AWS.Config.DescribeDeliveryChannels

    -- ** DescribeAggregationAuthorizations (Paginated)
    , module Network.AWS.Config.DescribeAggregationAuthorizations

    -- * Types

    -- ** AggregatedSourceStatusType
    , AggregatedSourceStatusType (..)

    -- ** AggregatedSourceType
    , AggregatedSourceType (..)

    -- ** ChronologicalOrder
    , ChronologicalOrder (..)

    -- ** ComplianceType
    , ComplianceType (..)

    -- ** ConfigRuleComplianceSummaryGroupKey
    , ConfigRuleComplianceSummaryGroupKey (..)

    -- ** ConfigRuleState
    , ConfigRuleState (..)

    -- ** ConfigurationItemStatus
    , ConfigurationItemStatus (..)

    -- ** ConformancePackComplianceType
    , ConformancePackComplianceType (..)

    -- ** ConformancePackState
    , ConformancePackState (..)

    -- ** DeliveryStatus
    , DeliveryStatus (..)

    -- ** EventSource
    , EventSource (..)

    -- ** MaximumExecutionFrequency
    , MaximumExecutionFrequency (..)

    -- ** MemberAccountRuleStatus
    , MemberAccountRuleStatus (..)

    -- ** MessageType
    , MessageType (..)

    -- ** OrganizationConfigRuleTriggerType
    , OrganizationConfigRuleTriggerType (..)

    -- ** OrganizationResourceDetailedStatus
    , OrganizationResourceDetailedStatus (..)

    -- ** OrganizationResourceStatus
    , OrganizationResourceStatus (..)

    -- ** OrganizationRuleStatus
    , OrganizationRuleStatus (..)

    -- ** Owner
    , Owner (..)

    -- ** RecorderStatus
    , RecorderStatus (..)

    -- ** RemediationExecutionState
    , RemediationExecutionState (..)

    -- ** RemediationExecutionStepState
    , RemediationExecutionStepState (..)

    -- ** RemediationTargetType
    , RemediationTargetType (..)

    -- ** ResourceCountGroupKey
    , ResourceCountGroupKey (..)

    -- ** ResourceType
    , ResourceType (..)

    -- ** ResourceValueType
    , ResourceValueType (..)

    -- ** AccountAggregationSource
    , AccountAggregationSource
    , accountAggregationSource
    , aasAWSRegions
    , aasAllAWSRegions
    , aasAccountIds

    -- ** AggregateComplianceByConfigRule
    , AggregateComplianceByConfigRule
    , aggregateComplianceByConfigRule
    , acbcrCompliance
    , acbcrConfigRuleName
    , acbcrAccountId
    , acbcrAWSRegion

    -- ** AggregateComplianceCount
    , AggregateComplianceCount
    , aggregateComplianceCount
    , accGroupName
    , accComplianceSummary

    -- ** AggregateEvaluationResult
    , AggregateEvaluationResult
    , aggregateEvaluationResult
    , aerEvaluationResultIdentifier
    , aerAnnotation
    , aerConfigRuleInvokedTime
    , aerResultRecordedTime
    , aerAccountId
    , aerComplianceType
    , aerAWSRegion

    -- ** AggregateResourceIdentifier
    , AggregateResourceIdentifier
    , aggregateResourceIdentifier
    , ariResourceName
    , ariSourceAccountId
    , ariSourceRegion
    , ariResourceId
    , ariResourceType

    -- ** AggregatedSourceStatus
    , AggregatedSourceStatus
    , aggregatedSourceStatus
    , assLastErrorCode
    , assLastUpdateStatus
    , assSourceType
    , assSourceId
    , assLastErrorMessage
    , assAWSRegion
    , assLastUpdateTime

    -- ** AggregationAuthorization
    , AggregationAuthorization
    , aggregationAuthorization
    , aaCreationTime
    , aaAuthorizedAWSRegion
    , aaAggregationAuthorizationARN
    , aaAuthorizedAccountId

    -- ** BaseConfigurationItem
    , BaseConfigurationItem
    , baseConfigurationItem
    , bciResourceId
    , bciResourceType
    , bciConfigurationStateId
    , bciArn
    , bciResourceName
    , bciResourceCreationTime
    , bciConfigurationItemStatus
    , bciConfigurationItemCaptureTime
    , bciAccountId
    , bciSupplementaryConfiguration
    , bciAvailabilityZone
    , bciVersion
    , bciAwsRegion
    , bciConfiguration

    -- ** Compliance
    , Compliance
    , compliance
    , cComplianceContributorCount
    , cComplianceType

    -- ** ComplianceByConfigRule
    , ComplianceByConfigRule
    , complianceByConfigRule
    , cbcrCompliance
    , cbcrConfigRuleName

    -- ** ComplianceByResource
    , ComplianceByResource
    , complianceByResource
    , cbrResourceId
    , cbrResourceType
    , cbrCompliance

    -- ** ComplianceContributorCount
    , ComplianceContributorCount
    , complianceContributorCount
    , cccCappedCount
    , cccCapExceeded

    -- ** ComplianceSummary
    , ComplianceSummary
    , complianceSummary
    , csComplianceSummaryTimestamp
    , csCompliantResourceCount
    , csNonCompliantResourceCount

    -- ** ComplianceSummaryByResourceType
    , ComplianceSummaryByResourceType
    , complianceSummaryByResourceType
    , csbrtResourceType
    , csbrtComplianceSummary

    -- ** ConfigExportDeliveryInfo
    , ConfigExportDeliveryInfo
    , configExportDeliveryInfo
    , cediLastErrorCode
    , cediLastAttemptTime
    , cediLastSuccessfulTime
    , cediLastStatus
    , cediLastErrorMessage
    , cediNextDeliveryTime

    -- ** ConfigRule
    , ConfigRule
    , configRule
    , crInputParameters
    , crConfigRuleName
    , crCreatedBy
    , crMaximumExecutionFrequency
    , crConfigRuleId
    , crScope
    , crConfigRuleState
    , crDescription
    , crConfigRuleARN
    , crSource

    -- ** ConfigRuleComplianceFilters
    , ConfigRuleComplianceFilters
    , configRuleComplianceFilters
    , crcfConfigRuleName
    , crcfAccountId
    , crcfComplianceType
    , crcfAWSRegion

    -- ** ConfigRuleComplianceSummaryFilters
    , ConfigRuleComplianceSummaryFilters
    , configRuleComplianceSummaryFilters
    , crcsfAccountId
    , crcsfAWSRegion

    -- ** ConfigRuleEvaluationStatus
    , ConfigRuleEvaluationStatus
    , configRuleEvaluationStatus
    , cresLastErrorCode
    , cresLastFailedEvaluationTime
    , cresFirstActivatedTime
    , cresLastSuccessfulEvaluationTime
    , cresLastDeactivatedTime
    , cresConfigRuleName
    , cresLastErrorMessage
    , cresConfigRuleId
    , cresLastFailedInvocationTime
    , cresFirstEvaluationStarted
    , cresLastSuccessfulInvocationTime
    , cresConfigRuleARN

    -- ** ConfigSnapshotDeliveryProperties
    , ConfigSnapshotDeliveryProperties
    , configSnapshotDeliveryProperties
    , csdpDeliveryFrequency

    -- ** ConfigStreamDeliveryInfo
    , ConfigStreamDeliveryInfo
    , configStreamDeliveryInfo
    , csdiLastErrorCode
    , csdiLastStatusChangeTime
    , csdiLastStatus
    , csdiLastErrorMessage

    -- ** ConfigurationAggregator
    , ConfigurationAggregator
    , configurationAggregator
    , caConfigurationAggregatorARN
    , caCreationTime
    , caOrganizationAggregationSource
    , caLastUpdatedTime
    , caAccountAggregationSources
    , caCreatedBy
    , caConfigurationAggregatorName

    -- ** ConfigurationItem
    , ConfigurationItem
    , configurationItem
    , ciResourceId
    , ciResourceType
    , ciConfigurationStateId
    , ciArn
    , ciResourceName
    , ciResourceCreationTime
    , ciConfigurationItemStatus
    , ciConfigurationItemCaptureTime
    , ciAccountId
    , ciSupplementaryConfiguration
    , ciAvailabilityZone
    , ciRelationships
    , ciVersion
    , ciAwsRegion
    , ciRelatedEvents
    , ciConfiguration
    , ciConfigurationItemMD5Hash
    , ciTags

    -- ** ConfigurationRecorder
    , ConfigurationRecorder
    , configurationRecorder
    , crName
    , crRecordingGroup
    , crRoleARN

    -- ** ConfigurationRecorderStatus
    , ConfigurationRecorderStatus
    , configurationRecorderStatus
    , crsLastErrorCode
    , crsLastStopTime
    , crsLastStatusChangeTime
    , crsRecording
    , crsLastStatus
    , crsLastErrorMessage
    , crsName
    , crsLastStartTime

    -- ** ConformancePackComplianceFilters
    , ConformancePackComplianceFilters
    , conformancePackComplianceFilters
    , cpcfConfigRuleNames
    , cpcfComplianceType

    -- ** ConformancePackComplianceSummary
    , ConformancePackComplianceSummary
    , conformancePackComplianceSummary
    , cpcsConformancePackName
    , cpcsConformancePackComplianceStatus

    -- ** ConformancePackDetail
    , ConformancePackDetail
    , conformancePackDetail
    , cpdDeliveryS3Bucket
    , cpdDeliveryS3KeyPrefix
    , cpdCreatedBy
    , cpdLastUpdateRequestedTime
    , cpdConformancePackInputParameters
    , cpdConformancePackName
    , cpdConformancePackARN
    , cpdConformancePackId

    -- ** ConformancePackEvaluationFilters
    , ConformancePackEvaluationFilters
    , conformancePackEvaluationFilters
    , cpefResourceIds
    , cpefResourceType
    , cpefConfigRuleNames
    , cpefComplianceType

    -- ** ConformancePackEvaluationResult
    , ConformancePackEvaluationResult
    , conformancePackEvaluationResult
    , cperAnnotation
    , cperComplianceType
    , cperEvaluationResultIdentifier
    , cperConfigRuleInvokedTime
    , cperResultRecordedTime

    -- ** ConformancePackInputParameter
    , ConformancePackInputParameter
    , conformancePackInputParameter
    , cpipParameterName
    , cpipParameterValue

    -- ** ConformancePackRuleCompliance
    , ConformancePackRuleCompliance
    , conformancePackRuleCompliance
    , cprcConfigRuleName
    , cprcComplianceType

    -- ** ConformancePackStatusDetail
    , ConformancePackStatusDetail
    , conformancePackStatusDetail
    , cpsdConformancePackStatusReason
    , cpsdLastUpdateCompletedTime
    , cpsdConformancePackName
    , cpsdConformancePackId
    , cpsdConformancePackARN
    , cpsdConformancePackState
    , cpsdStackARN
    , cpsdLastUpdateRequestedTime

    -- ** DeliveryChannel
    , DeliveryChannel
    , deliveryChannel
    , dcS3KeyPrefix
    , dcSnsTopicARN
    , dcName
    , dcConfigSnapshotDeliveryProperties
    , dcS3BucketName

    -- ** DeliveryChannelStatus
    , DeliveryChannelStatus
    , deliveryChannelStatus
    , dcsConfigSnapshotDeliveryInfo
    , dcsConfigStreamDeliveryInfo
    , dcsConfigHistoryDeliveryInfo
    , dcsName

    -- ** Evaluation
    , Evaluation
    , evaluation
    , eAnnotation
    , eComplianceResourceType
    , eComplianceResourceId
    , eComplianceType
    , eOrderingTimestamp

    -- ** EvaluationResult
    , EvaluationResult
    , evaluationResult
    , erEvaluationResultIdentifier
    , erAnnotation
    , erConfigRuleInvokedTime
    , erResultRecordedTime
    , erResultToken
    , erComplianceType

    -- ** EvaluationResultIdentifier
    , EvaluationResultIdentifier
    , evaluationResultIdentifier
    , eriEvaluationResultQualifier
    , eriOrderingTimestamp

    -- ** EvaluationResultQualifier
    , EvaluationResultQualifier
    , evaluationResultQualifier
    , erqResourceId
    , erqResourceType
    , erqConfigRuleName

    -- ** ExecutionControls
    , ExecutionControls
    , executionControls
    , ecSsmControls

    -- ** FailedDeleteRemediationExceptionsBatch
    , FailedDeleteRemediationExceptionsBatch
    , failedDeleteRemediationExceptionsBatch
    , fdrebFailureMessage
    , fdrebFailedItems

    -- ** FailedRemediationBatch
    , FailedRemediationBatch
    , failedRemediationBatch
    , frbFailureMessage
    , frbFailedItems

    -- ** FailedRemediationExceptionBatch
    , FailedRemediationExceptionBatch
    , failedRemediationExceptionBatch
    , frebFailureMessage
    , frebFailedItems

    -- ** FieldInfo
    , FieldInfo
    , fieldInfo
    , fiName

    -- ** GroupedResourceCount
    , GroupedResourceCount
    , groupedResourceCount
    , grcGroupName
    , grcResourceCount

    -- ** MemberAccountStatus
    , MemberAccountStatus
    , memberAccountStatus
    , masErrorCode
    , masErrorMessage
    , masLastUpdateTime
    , masAccountId
    , masConfigRuleName
    , masMemberAccountRuleStatus

    -- ** OrganizationAggregationSource
    , OrganizationAggregationSource
    , organizationAggregationSource
    , oasAWSRegions
    , oasAllAWSRegions
    , oasRoleARN

    -- ** OrganizationConfigRule
    , OrganizationConfigRule
    , organizationConfigRule
    , ocrOrganizationManagedRuleMetadata
    , ocrExcludedAccounts
    , ocrOrganizationCustomRuleMetadata
    , ocrLastUpdateTime
    , ocrOrganizationConfigRuleName
    , ocrOrganizationConfigRuleARN

    -- ** OrganizationConfigRuleStatus
    , OrganizationConfigRuleStatus
    , organizationConfigRuleStatus
    , ocrsErrorCode
    , ocrsErrorMessage
    , ocrsLastUpdateTime
    , ocrsOrganizationConfigRuleName
    , ocrsOrganizationRuleStatus

    -- ** OrganizationConformancePack
    , OrganizationConformancePack
    , organizationConformancePack
    , ocpDeliveryS3Bucket
    , ocpDeliveryS3KeyPrefix
    , ocpConformancePackInputParameters
    , ocpExcludedAccounts
    , ocpOrganizationConformancePackName
    , ocpOrganizationConformancePackARN
    , ocpLastUpdateTime

    -- ** OrganizationConformancePackDetailedStatus
    , OrganizationConformancePackDetailedStatus
    , organizationConformancePackDetailedStatus
    , ocpdsErrorCode
    , ocpdsErrorMessage
    , ocpdsLastUpdateTime
    , ocpdsAccountId
    , ocpdsConformancePackName
    , ocpdsStatus

    -- ** OrganizationConformancePackStatus
    , OrganizationConformancePackStatus
    , organizationConformancePackStatus
    , ocpsErrorCode
    , ocpsErrorMessage
    , ocpsLastUpdateTime
    , ocpsOrganizationConformancePackName
    , ocpsStatus

    -- ** OrganizationCustomRuleMetadata
    , OrganizationCustomRuleMetadata
    , organizationCustomRuleMetadata
    , ocrmInputParameters
    , ocrmResourceIdScope
    , ocrmTagValueScope
    , ocrmMaximumExecutionFrequency
    , ocrmTagKeyScope
    , ocrmResourceTypesScope
    , ocrmDescription
    , ocrmLambdaFunctionARN
    , ocrmOrganizationConfigRuleTriggerTypes

    -- ** OrganizationManagedRuleMetadata
    , OrganizationManagedRuleMetadata
    , organizationManagedRuleMetadata
    , omrmInputParameters
    , omrmResourceIdScope
    , omrmTagValueScope
    , omrmMaximumExecutionFrequency
    , omrmTagKeyScope
    , omrmResourceTypesScope
    , omrmDescription
    , omrmRuleIdentifier

    -- ** OrganizationResourceDetailedStatusFilters
    , OrganizationResourceDetailedStatusFilters
    , organizationResourceDetailedStatusFilters
    , ordsfStatus
    , ordsfAccountId

    -- ** PendingAggregationRequest
    , PendingAggregationRequest
    , pendingAggregationRequest
    , parRequesterAccountId
    , parRequesterAWSRegion

    -- ** QueryInfo
    , QueryInfo
    , queryInfo
    , qiSelectFields

    -- ** RecordingGroup
    , RecordingGroup
    , recordingGroup
    , rgAllSupported
    , rgIncludeGlobalResourceTypes
    , rgResourceTypes

    -- ** Relationship
    , Relationship
    , relationship
    , rResourceId
    , rResourceType
    , rResourceName
    , rRelationshipName

    -- ** RemediationConfiguration
    , RemediationConfiguration
    , remediationConfiguration
    , rcResourceType
    , rcARN
    , rcAutomatic
    , rcCreatedByService
    , rcRetryAttemptSeconds
    , rcExecutionControls
    , rcParameters
    , rcMaximumAutomaticAttempts
    , rcTargetVersion
    , rcConfigRuleName
    , rcTargetType
    , rcTargetId

    -- ** RemediationException
    , RemediationException
    , remediationException
    , reMessage
    , reExpirationTime
    , reConfigRuleName
    , reResourceType
    , reResourceId

    -- ** RemediationExceptionResourceKey
    , RemediationExceptionResourceKey
    , remediationExceptionResourceKey
    , rerkResourceId
    , rerkResourceType

    -- ** RemediationExecutionStatus
    , RemediationExecutionStatus
    , remediationExecutionStatus
    , rState
    , rLastUpdatedTime
    , rResourceKey
    , rStepDetails
    , rInvocationTime

    -- ** RemediationExecutionStep
    , RemediationExecutionStep
    , remediationExecutionStep
    , resState
    , resStartTime
    , resName
    , resStopTime
    , resErrorMessage

    -- ** RemediationParameterValue
    , RemediationParameterValue
    , remediationParameterValue
    , rpvStaticValue
    , rpvResourceValue

    -- ** ResourceCount
    , ResourceCount
    , resourceCount
    , resResourceType
    , resCount

    -- ** ResourceCountFilters
    , ResourceCountFilters
    , resourceCountFilters
    , rcfResourceType
    , rcfAccountId
    , rcfRegion

    -- ** ResourceFilters
    , ResourceFilters
    , resourceFilters
    , rfResourceId
    , rfResourceName
    , rfAccountId
    , rfRegion

    -- ** ResourceIdentifier
    , ResourceIdentifier
    , resourceIdentifier
    , riResourceId
    , riResourceType
    , riResourceName
    , riResourceDeletionTime

    -- ** ResourceKey
    , ResourceKey
    , resourceKey
    , rkResourceType
    , rkResourceId

    -- ** ResourceValue
    , ResourceValue
    , resourceValue
    , rvValue

    -- ** RetentionConfiguration
    , RetentionConfiguration
    , retentionConfiguration
    , rcName
    , rcRetentionPeriodInDays

    -- ** Scope
    , Scope
    , scope
    , sComplianceResourceTypes
    , sComplianceResourceId
    , sTagValue
    , sTagKey

    -- ** Source
    , Source
    , source
    , sSourceDetails
    , sOwner
    , sSourceIdentifier

    -- ** SourceDetail
    , SourceDetail
    , sourceDetail
    , sdMessageType
    , sdMaximumExecutionFrequency
    , sdEventSource

    -- ** SsmControls
    , SsmControls
    , ssmControls
    , scConcurrentExecutionRatePercentage
    , scErrorPercentage

    -- ** StaticValue
    , StaticValue
    , staticValue
    , svValues

    -- ** StatusDetailFilters
    , StatusDetailFilters
    , statusDetailFilters
    , sdfMemberAccountRuleStatus
    , sdfAccountId

    -- ** Tag
    , Tag
    , tag
    , tagValue
    , tagKey
    ) where

import Network.AWS.Config.BatchGetAggregateResourceConfig
import Network.AWS.Config.BatchGetResourceConfig
import Network.AWS.Config.DeleteAggregationAuthorization
import Network.AWS.Config.DeleteConfigRule
import Network.AWS.Config.DeleteConfigurationAggregator
import Network.AWS.Config.DeleteConfigurationRecorder
import Network.AWS.Config.DeleteConformancePack
import Network.AWS.Config.DeleteDeliveryChannel
import Network.AWS.Config.DeleteEvaluationResults
import Network.AWS.Config.DeleteOrganizationConfigRule
import Network.AWS.Config.DeleteOrganizationConformancePack
import Network.AWS.Config.DeletePendingAggregationRequest
import Network.AWS.Config.DeleteRemediationConfiguration
import Network.AWS.Config.DeleteRemediationExceptions
import Network.AWS.Config.DeleteResourceConfig
import Network.AWS.Config.DeleteRetentionConfiguration
import Network.AWS.Config.DeliverConfigSnapshot
import Network.AWS.Config.DescribeAggregateComplianceByConfigRules
import Network.AWS.Config.DescribeAggregationAuthorizations
import Network.AWS.Config.DescribeComplianceByConfigRule
import Network.AWS.Config.DescribeComplianceByResource
import Network.AWS.Config.DescribeConfigRuleEvaluationStatus
import Network.AWS.Config.DescribeConfigRules
import Network.AWS.Config.DescribeConfigurationAggregatorSourcesStatus
import Network.AWS.Config.DescribeConfigurationAggregators
import Network.AWS.Config.DescribeConfigurationRecorderStatus
import Network.AWS.Config.DescribeConfigurationRecorders
import Network.AWS.Config.DescribeConformancePackCompliance
import Network.AWS.Config.DescribeConformancePackStatus
import Network.AWS.Config.DescribeConformancePacks
import Network.AWS.Config.DescribeDeliveryChannelStatus
import Network.AWS.Config.DescribeDeliveryChannels
import Network.AWS.Config.DescribeOrganizationConfigRuleStatuses
import Network.AWS.Config.DescribeOrganizationConfigRules
import Network.AWS.Config.DescribeOrganizationConformancePackStatuses
import Network.AWS.Config.DescribeOrganizationConformancePacks
import Network.AWS.Config.DescribePendingAggregationRequests
import Network.AWS.Config.DescribeRemediationConfigurations
import Network.AWS.Config.DescribeRemediationExceptions
import Network.AWS.Config.DescribeRemediationExecutionStatus
import Network.AWS.Config.DescribeRetentionConfigurations
import Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule
import Network.AWS.Config.GetAggregateConfigRuleComplianceSummary
import Network.AWS.Config.GetAggregateDiscoveredResourceCounts
import Network.AWS.Config.GetAggregateResourceConfig
import Network.AWS.Config.GetComplianceDetailsByConfigRule
import Network.AWS.Config.GetComplianceDetailsByResource
import Network.AWS.Config.GetComplianceSummaryByConfigRule
import Network.AWS.Config.GetComplianceSummaryByResourceType
import Network.AWS.Config.GetConformancePackComplianceDetails
import Network.AWS.Config.GetConformancePackComplianceSummary
import Network.AWS.Config.GetDiscoveredResourceCounts
import Network.AWS.Config.GetOrganizationConfigRuleDetailedStatus
import Network.AWS.Config.GetOrganizationConformancePackDetailedStatus
import Network.AWS.Config.GetResourceConfigHistory
import Network.AWS.Config.ListAggregateDiscoveredResources
import Network.AWS.Config.ListDiscoveredResources
import Network.AWS.Config.ListTagsForResource
import Network.AWS.Config.PutAggregationAuthorization
import Network.AWS.Config.PutConfigRule
import Network.AWS.Config.PutConfigurationAggregator
import Network.AWS.Config.PutConfigurationRecorder
import Network.AWS.Config.PutConformancePack
import Network.AWS.Config.PutDeliveryChannel
import Network.AWS.Config.PutEvaluations
import Network.AWS.Config.PutOrganizationConfigRule
import Network.AWS.Config.PutOrganizationConformancePack
import Network.AWS.Config.PutRemediationConfigurations
import Network.AWS.Config.PutRemediationExceptions
import Network.AWS.Config.PutResourceConfig
import Network.AWS.Config.PutRetentionConfiguration
import Network.AWS.Config.SelectAggregateResourceConfig
import Network.AWS.Config.SelectResourceConfig
import Network.AWS.Config.StartConfigRulesEvaluation
import Network.AWS.Config.StartConfigurationRecorder
import Network.AWS.Config.StartRemediationExecution
import Network.AWS.Config.StopConfigurationRecorder
import Network.AWS.Config.TagResource
import Network.AWS.Config.Types
import Network.AWS.Config.UntagResource
import Network.AWS.Config.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'Config'.
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
