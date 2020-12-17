{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon EventBridge helps you to respond to state changes in your AWS resources. When your resources change state, they automatically send events into an event stream. You can create rules that match selected events in the stream and route them to targets to take action. You can also use rules to take action on a predetermined schedule. For example, you can configure rules to:
--
--
--     * Automatically invoke an AWS Lambda function to update DNS entries when an event notifies you that Amazon EC2 instance enters the running state.
--
--     * Direct specific API records from AWS CloudTrail to an Amazon Kinesis data stream for detailed analysis of potential security or availability risks.
--
--     * Periodically invoke a built-in target to create a snapshot of an Amazon EBS volume.
--
--
--
-- For more information about the features of Amazon EventBridge, see the <https://docs.aws.amazon.com/eventbridge/latest/userguide Amazon EventBridge User Guide> .
--
module Network.AWS.CloudWatchEvents
    (
    -- * Service Configuration
      cloudWatchEvents

    -- * Errors
    -- $errors

    -- ** ManagedRuleException
    , _ManagedRuleException

    -- ** IllegalStatusException
    , _IllegalStatusException

    -- ** PolicyLengthExceededException
    , _PolicyLengthExceededException

    -- ** ResourceAlreadyExistsException
    , _ResourceAlreadyExistsException

    -- ** OperationDisabledException
    , _OperationDisabledException

    -- ** ConcurrentModificationException
    , _ConcurrentModificationException

    -- ** InvalidEventPatternException
    , _InvalidEventPatternException

    -- ** InternalException
    , _InternalException

    -- ** ResourceNotFoundException
    , _ResourceNotFoundException

    -- ** InvalidStateException
    , _InvalidStateException

    -- ** LimitExceededException
    , _LimitExceededException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** RemoveTargets 
    , module Network.AWS.CloudWatchEvents.RemoveTargets

    -- ** DeleteRule 
    , module Network.AWS.CloudWatchEvents.DeleteRule

    -- ** ListPartnerEventSourceAccounts 
    , module Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts

    -- ** ListRules (Paginated)
    , module Network.AWS.CloudWatchEvents.ListRules

    -- ** PutRule 
    , module Network.AWS.CloudWatchEvents.PutRule

    -- ** DisableRule 
    , module Network.AWS.CloudWatchEvents.DisableRule

    -- ** PutPermission 
    , module Network.AWS.CloudWatchEvents.PutPermission

    -- ** ListTagsForResource 
    , module Network.AWS.CloudWatchEvents.ListTagsForResource

    -- ** ListReplays 
    , module Network.AWS.CloudWatchEvents.ListReplays

    -- ** CancelReplay 
    , module Network.AWS.CloudWatchEvents.CancelReplay

    -- ** ListTargetsByRule (Paginated)
    , module Network.AWS.CloudWatchEvents.ListTargetsByRule

    -- ** RemovePermission 
    , module Network.AWS.CloudWatchEvents.RemovePermission

    -- ** ActivateEventSource 
    , module Network.AWS.CloudWatchEvents.ActivateEventSource

    -- ** PutPartnerEvents 
    , module Network.AWS.CloudWatchEvents.PutPartnerEvents

    -- ** DescribeRule 
    , module Network.AWS.CloudWatchEvents.DescribeRule

    -- ** ListArchives 
    , module Network.AWS.CloudWatchEvents.ListArchives

    -- ** StartReplay 
    , module Network.AWS.CloudWatchEvents.StartReplay

    -- ** DeletePartnerEventSource 
    , module Network.AWS.CloudWatchEvents.DeletePartnerEventSource

    -- ** DescribeReplay 
    , module Network.AWS.CloudWatchEvents.DescribeReplay

    -- ** ListEventBuses 
    , module Network.AWS.CloudWatchEvents.ListEventBuses

    -- ** CreateEventBus 
    , module Network.AWS.CloudWatchEvents.CreateEventBus

    -- ** DescribeEventSource 
    , module Network.AWS.CloudWatchEvents.DescribeEventSource

    -- ** DescribeArchive 
    , module Network.AWS.CloudWatchEvents.DescribeArchive

    -- ** EnableRule 
    , module Network.AWS.CloudWatchEvents.EnableRule

    -- ** ListRuleNamesByTarget (Paginated)
    , module Network.AWS.CloudWatchEvents.ListRuleNamesByTarget

    -- ** TestEventPattern 
    , module Network.AWS.CloudWatchEvents.TestEventPattern

    -- ** DescribePartnerEventSource 
    , module Network.AWS.CloudWatchEvents.DescribePartnerEventSource

    -- ** DescribeEventBus 
    , module Network.AWS.CloudWatchEvents.DescribeEventBus

    -- ** ListEventSources 
    , module Network.AWS.CloudWatchEvents.ListEventSources

    -- ** TagResource 
    , module Network.AWS.CloudWatchEvents.TagResource

    -- ** CreatePartnerEventSource 
    , module Network.AWS.CloudWatchEvents.CreatePartnerEventSource

    -- ** PutTargets 
    , module Network.AWS.CloudWatchEvents.PutTargets

    -- ** UpdateArchive 
    , module Network.AWS.CloudWatchEvents.UpdateArchive

    -- ** DeleteArchive 
    , module Network.AWS.CloudWatchEvents.DeleteArchive

    -- ** UntagResource 
    , module Network.AWS.CloudWatchEvents.UntagResource

    -- ** PutEvents 
    , module Network.AWS.CloudWatchEvents.PutEvents

    -- ** ListPartnerEventSources 
    , module Network.AWS.CloudWatchEvents.ListPartnerEventSources

    -- ** CreateArchive 
    , module Network.AWS.CloudWatchEvents.CreateArchive

    -- ** DeactivateEventSource 
    , module Network.AWS.CloudWatchEvents.DeactivateEventSource

    -- ** DeleteEventBus 
    , module Network.AWS.CloudWatchEvents.DeleteEventBus

    -- * Types

    -- ** ArchiveState
    , ArchiveState (..)

    -- ** AssignPublicIP
    , AssignPublicIP (..)

    -- ** EventSourceState
    , EventSourceState (..)

    -- ** LaunchType
    , LaunchType (..)

    -- ** ReplayState
    , ReplayState (..)

    -- ** RuleState
    , RuleState (..)

    -- ** AWSVPCConfiguration
    , AWSVPCConfiguration
    , awsVPCConfiguration
    , avcSecurityGroups
    , avcAssignPublicIP
    , avcSubnets

    -- ** Archive
    , Archive
    , archive
    , aCreationTime
    , aSizeBytes
    , aEventSourceARN
    , aState
    , aEventCount
    , aArchiveName
    , aRetentionDays
    , aStateReason

    -- ** BatchArrayProperties
    , BatchArrayProperties
    , batchArrayProperties
    , bapSize

    -- ** BatchParameters
    , BatchParameters
    , batchParameters
    , bpRetryStrategy
    , bpArrayProperties
    , bpJobDefinition
    , bpJobName

    -- ** BatchRetryStrategy
    , BatchRetryStrategy
    , batchRetryStrategy
    , brsAttempts

    -- ** Condition
    , Condition
    , condition
    , cType
    , cKey
    , cValue

    -- ** DeadLetterConfig
    , DeadLetterConfig
    , deadLetterConfig
    , dlcARN

    -- ** EcsParameters
    , EcsParameters
    , ecsParameters
    , epGroup
    , epPlatformVersion
    , epLaunchType
    , epTaskCount
    , epNetworkConfiguration
    , epTaskDefinitionARN

    -- ** EventBus
    , EventBus
    , eventBus
    , ebARN
    , ebName
    , ebPolicy

    -- ** EventSource
    , EventSource
    , eventSource
    , esCreationTime
    , esState
    , esARN
    , esCreatedBy
    , esName
    , esExpirationTime

    -- ** HTTPParameters
    , HTTPParameters
    , hTTPParameters
    , httppPathParameterValues
    , httppQueryStringParameters
    , httppHeaderParameters

    -- ** InputTransformer
    , InputTransformer
    , inputTransformer
    , itInputPathsMap
    , itInputTemplate

    -- ** KinesisParameters
    , KinesisParameters
    , kinesisParameters
    , kpPartitionKeyPath

    -- ** NetworkConfiguration
    , NetworkConfiguration
    , networkConfiguration
    , ncAwsvpcConfiguration

    -- ** PartnerEventSource
    , PartnerEventSource
    , partnerEventSource
    , pesARN
    , pesName

    -- ** PartnerEventSourceAccount
    , PartnerEventSourceAccount
    , partnerEventSourceAccount
    , pesaCreationTime
    , pesaState
    , pesaAccount
    , pesaExpirationTime

    -- ** PutEventsRequestEntry
    , PutEventsRequestEntry
    , putEventsRequestEntry
    , pereTime
    , pereDetailType
    , pereResources
    , pereEventBusName
    , pereSource
    , pereDetail

    -- ** PutEventsResultEntry
    , PutEventsResultEntry
    , putEventsResultEntry
    , pereErrorCode
    , pereErrorMessage
    , pereEventId

    -- ** PutPartnerEventsRequestEntry
    , PutPartnerEventsRequestEntry
    , putPartnerEventsRequestEntry
    , ppereTime
    , ppereDetailType
    , ppereResources
    , ppereSource
    , ppereDetail

    -- ** PutPartnerEventsResultEntry
    , PutPartnerEventsResultEntry
    , putPartnerEventsResultEntry
    , ppereErrorCode
    , ppereErrorMessage
    , ppereEventId

    -- ** PutTargetsResultEntry
    , PutTargetsResultEntry
    , putTargetsResultEntry
    , ptreTargetId
    , ptreErrorCode
    , ptreErrorMessage

    -- ** RedshiftDataParameters
    , RedshiftDataParameters
    , redshiftDataParameters
    , rdpDBUser
    , rdpSecretManagerARN
    , rdpStatementName
    , rdpWithEvent
    , rdpDatabase
    , rdpSql

    -- ** RemoveTargetsResultEntry
    , RemoveTargetsResultEntry
    , removeTargetsResultEntry
    , rtreTargetId
    , rtreErrorCode
    , rtreErrorMessage

    -- ** Replay
    , Replay
    , replay
    , repEventSourceARN
    , repState
    , repEventEndTime
    , repReplayStartTime
    , repReplayEndTime
    , repEventLastReplayedTime
    , repEventStartTime
    , repReplayName
    , repStateReason

    -- ** ReplayDestination
    , ReplayDestination
    , replayDestination
    , rdFilterARNs
    , rdARN

    -- ** RetryPolicy
    , RetryPolicy
    , retryPolicy
    , rpMaximumEventAgeInSeconds
    , rpMaximumRetryAttempts

    -- ** Rule
    , Rule
    , rule
    , rEventPattern
    , rState
    , rARN
    , rEventBusName
    , rScheduleExpression
    , rName
    , rDescription
    , rManagedBy
    , rRoleARN

    -- ** RunCommandParameters
    , RunCommandParameters
    , runCommandParameters
    , rcpRunCommandTargets

    -- ** RunCommandTarget
    , RunCommandTarget
    , runCommandTarget
    , rctKey
    , rctValues

    -- ** SqsParameters
    , SqsParameters
    , sqsParameters
    , spMessageGroupId

    -- ** Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- ** Target
    , Target
    , target
    , tRunCommandParameters
    , tHTTPParameters
    , tKinesisParameters
    , tInputTransformer
    , tDeadLetterConfig
    , tSqsParameters
    , tInput
    , tBatchParameters
    , tRedshiftDataParameters
    , tEcsParameters
    , tRetryPolicy
    , tInputPath
    , tRoleARN
    , tId
    , tARN
    ) where

import Network.AWS.CloudWatchEvents.ActivateEventSource
import Network.AWS.CloudWatchEvents.CancelReplay
import Network.AWS.CloudWatchEvents.CreateArchive
import Network.AWS.CloudWatchEvents.CreateEventBus
import Network.AWS.CloudWatchEvents.CreatePartnerEventSource
import Network.AWS.CloudWatchEvents.DeactivateEventSource
import Network.AWS.CloudWatchEvents.DeleteArchive
import Network.AWS.CloudWatchEvents.DeleteEventBus
import Network.AWS.CloudWatchEvents.DeletePartnerEventSource
import Network.AWS.CloudWatchEvents.DeleteRule
import Network.AWS.CloudWatchEvents.DescribeArchive
import Network.AWS.CloudWatchEvents.DescribeEventBus
import Network.AWS.CloudWatchEvents.DescribeEventSource
import Network.AWS.CloudWatchEvents.DescribePartnerEventSource
import Network.AWS.CloudWatchEvents.DescribeReplay
import Network.AWS.CloudWatchEvents.DescribeRule
import Network.AWS.CloudWatchEvents.DisableRule
import Network.AWS.CloudWatchEvents.EnableRule
import Network.AWS.CloudWatchEvents.ListArchives
import Network.AWS.CloudWatchEvents.ListEventBuses
import Network.AWS.CloudWatchEvents.ListEventSources
import Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts
import Network.AWS.CloudWatchEvents.ListPartnerEventSources
import Network.AWS.CloudWatchEvents.ListReplays
import Network.AWS.CloudWatchEvents.ListRuleNamesByTarget
import Network.AWS.CloudWatchEvents.ListRules
import Network.AWS.CloudWatchEvents.ListTagsForResource
import Network.AWS.CloudWatchEvents.ListTargetsByRule
import Network.AWS.CloudWatchEvents.PutEvents
import Network.AWS.CloudWatchEvents.PutPartnerEvents
import Network.AWS.CloudWatchEvents.PutPermission
import Network.AWS.CloudWatchEvents.PutRule
import Network.AWS.CloudWatchEvents.PutTargets
import Network.AWS.CloudWatchEvents.RemovePermission
import Network.AWS.CloudWatchEvents.RemoveTargets
import Network.AWS.CloudWatchEvents.StartReplay
import Network.AWS.CloudWatchEvents.TagResource
import Network.AWS.CloudWatchEvents.TestEventPattern
import Network.AWS.CloudWatchEvents.Types
import Network.AWS.CloudWatchEvents.UntagResource
import Network.AWS.CloudWatchEvents.UpdateArchive
import Network.AWS.CloudWatchEvents.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'CloudWatchEvents'.
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
