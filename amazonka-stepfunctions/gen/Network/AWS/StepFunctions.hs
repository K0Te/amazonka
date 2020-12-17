{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Step Functions__ 
--
-- AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows.
--
-- You can use Step Functions to build applications from individual components, each of which performs a discrete function, or /task/ , allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues.
--
-- Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the /<https:\/\/docs.aws.amazon.com\/step-functions\/latest\/dg\/welcome.html AWS Step Functions Developer Guide> / .
--
module Network.AWS.StepFunctions
    (
    -- * Service Configuration
      stepFunctions

    -- * Errors
    -- $errors

    -- ** ExecutionLimitExceeded
    , _ExecutionLimitExceeded

    -- ** InvalidDefinition
    , _InvalidDefinition

    -- ** StateMachineLimitExceeded
    , _StateMachineLimitExceeded

    -- ** ExecutionAlreadyExists
    , _ExecutionAlreadyExists

    -- ** StateMachineAlreadyExists
    , _StateMachineAlreadyExists

    -- ** TaskTimedOut
    , _TaskTimedOut

    -- ** InvalidExecutionInput
    , _InvalidExecutionInput

    -- ** InvalidOutput
    , _InvalidOutput

    -- ** InvalidName
    , _InvalidName

    -- ** TaskDoesNotExist
    , _TaskDoesNotExist

    -- ** ActivityDoesNotExist
    , _ActivityDoesNotExist

    -- ** StateMachineDeleting
    , _StateMachineDeleting

    -- ** StateMachineTypeNotSupported
    , _StateMachineTypeNotSupported

    -- ** MissingRequiredParameter
    , _MissingRequiredParameter

    -- ** InvalidARN
    , _InvalidARN

    -- ** InvalidToken
    , _InvalidToken

    -- ** InvalidLoggingConfiguration
    , _InvalidLoggingConfiguration

    -- ** ActivityWorkerLimitExceeded
    , _ActivityWorkerLimitExceeded

    -- ** InvalidTracingConfiguration
    , _InvalidTracingConfiguration

    -- ** ActivityLimitExceeded
    , _ActivityLimitExceeded

    -- ** TooManyTags
    , _TooManyTags

    -- ** ExecutionDoesNotExist
    , _ExecutionDoesNotExist

    -- ** StateMachineDoesNotExist
    , _StateMachineDoesNotExist

    -- ** ResourceNotFound
    , _ResourceNotFound

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteActivity 
    , module Network.AWS.StepFunctions.DeleteActivity

    -- ** DescribeStateMachine 
    , module Network.AWS.StepFunctions.DescribeStateMachine

    -- ** ListTagsForResource 
    , module Network.AWS.StepFunctions.ListTagsForResource

    -- ** StopExecution 
    , module Network.AWS.StepFunctions.StopExecution

    -- ** DescribeActivity 
    , module Network.AWS.StepFunctions.DescribeActivity

    -- ** ListStateMachines (Paginated)
    , module Network.AWS.StepFunctions.ListStateMachines

    -- ** ListExecutions (Paginated)
    , module Network.AWS.StepFunctions.ListExecutions

    -- ** DeleteStateMachine 
    , module Network.AWS.StepFunctions.DeleteStateMachine

    -- ** UpdateStateMachine 
    , module Network.AWS.StepFunctions.UpdateStateMachine

    -- ** DescribeStateMachineForExecution 
    , module Network.AWS.StepFunctions.DescribeStateMachineForExecution

    -- ** GetActivityTask 
    , module Network.AWS.StepFunctions.GetActivityTask

    -- ** CreateActivity 
    , module Network.AWS.StepFunctions.CreateActivity

    -- ** ListActivities (Paginated)
    , module Network.AWS.StepFunctions.ListActivities

    -- ** SendTaskHeartbeat 
    , module Network.AWS.StepFunctions.SendTaskHeartbeat

    -- ** SendTaskFailure 
    , module Network.AWS.StepFunctions.SendTaskFailure

    -- ** DescribeExecution 
    , module Network.AWS.StepFunctions.DescribeExecution

    -- ** SendTaskSuccess 
    , module Network.AWS.StepFunctions.SendTaskSuccess

    -- ** StartExecution 
    , module Network.AWS.StepFunctions.StartExecution

    -- ** StartSyncExecution 
    , module Network.AWS.StepFunctions.StartSyncExecution

    -- ** TagResource 
    , module Network.AWS.StepFunctions.TagResource

    -- ** UntagResource 
    , module Network.AWS.StepFunctions.UntagResource

    -- ** GetExecutionHistory (Paginated)
    , module Network.AWS.StepFunctions.GetExecutionHistory

    -- ** CreateStateMachine 
    , module Network.AWS.StepFunctions.CreateStateMachine

    -- * Types

    -- ** ExecutionStatus
    , ExecutionStatus (..)

    -- ** HistoryEventType
    , HistoryEventType (..)

    -- ** LogLevel
    , LogLevel (..)

    -- ** StateMachineStatus
    , StateMachineStatus (..)

    -- ** StateMachineType
    , StateMachineType (..)

    -- ** SyncExecutionStatus
    , SyncExecutionStatus (..)

    -- ** ActivityFailedEventDetails
    , ActivityFailedEventDetails
    , activityFailedEventDetails
    , afedError
    , afedCause

    -- ** ActivityListItem
    , ActivityListItem
    , activityListItem
    , aliActivityARN
    , aliName
    , aliCreationDate

    -- ** ActivityScheduleFailedEventDetails
    , ActivityScheduleFailedEventDetails
    , activityScheduleFailedEventDetails
    , asfedError
    , asfedCause

    -- ** ActivityScheduledEventDetails
    , ActivityScheduledEventDetails
    , activityScheduledEventDetails
    , asedHeartbeatInSeconds
    , asedInputDetails
    , asedInput
    , asedTimeoutInSeconds
    , asedResource

    -- ** ActivityStartedEventDetails
    , ActivityStartedEventDetails
    , activityStartedEventDetails
    , asedWorkerName

    -- ** ActivitySucceededEventDetails
    , ActivitySucceededEventDetails
    , activitySucceededEventDetails
    , asedOutput
    , asedOutputDetails

    -- ** ActivityTimedOutEventDetails
    , ActivityTimedOutEventDetails
    , activityTimedOutEventDetails
    , atoedError
    , atoedCause

    -- ** BillingDetails
    , BillingDetails
    , billingDetails
    , bdBilledMemoryUsedInMB
    , bdBilledDurationInMilliseconds

    -- ** CloudWatchEventsExecutionDataDetails
    , CloudWatchEventsExecutionDataDetails
    , cloudWatchEventsExecutionDataDetails
    , cweeddIncluded

    -- ** CloudWatchLogsLogGroup
    , CloudWatchLogsLogGroup
    , cloudWatchLogsLogGroup
    , cwllgLogGroupARN

    -- ** ExecutionAbortedEventDetails
    , ExecutionAbortedEventDetails
    , executionAbortedEventDetails
    , eaedError
    , eaedCause

    -- ** ExecutionFailedEventDetails
    , ExecutionFailedEventDetails
    , executionFailedEventDetails
    , efedError
    , efedCause

    -- ** ExecutionListItem
    , ExecutionListItem
    , executionListItem
    , eliStopDate
    , eliExecutionARN
    , eliStateMachineARN
    , eliName
    , eliStatus
    , eliStartDate

    -- ** ExecutionStartedEventDetails
    , ExecutionStartedEventDetails
    , executionStartedEventDetails
    , esedInputDetails
    , esedInput
    , esedRoleARN

    -- ** ExecutionSucceededEventDetails
    , ExecutionSucceededEventDetails
    , executionSucceededEventDetails
    , esedOutput
    , esedOutputDetails

    -- ** ExecutionTimedOutEventDetails
    , ExecutionTimedOutEventDetails
    , executionTimedOutEventDetails
    , etoedError
    , etoedCause

    -- ** HistoryEvent
    , HistoryEvent
    , historyEvent
    , heMapStateStartedEventDetails
    , heTaskSubmitFailedEventDetails
    , heTaskStartedEventDetails
    , heActivityStartedEventDetails
    , heTaskSubmittedEventDetails
    , heLambdaFunctionStartFailedEventDetails
    , heTaskStartFailedEventDetails
    , heStateExitedEventDetails
    , heLambdaFunctionSucceededEventDetails
    , heTaskSucceededEventDetails
    , heActivitySucceededEventDetails
    , heMapIterationAbortedEventDetails
    , heMapIterationSucceededEventDetails
    , heMapIterationStartedEventDetails
    , heLambdaFunctionTimedOutEventDetails
    , heTaskTimedOutEventDetails
    , heActivityTimedOutEventDetails
    , heExecutionFailedEventDetails
    , heExecutionAbortedEventDetails
    , heExecutionSucceededEventDetails
    , heLambdaFunctionScheduledEventDetails
    , heTaskScheduledEventDetails
    , heActivityScheduledEventDetails
    , heExecutionStartedEventDetails
    , heActivityScheduleFailedEventDetails
    , heLambdaFunctionScheduleFailedEventDetails
    , heStateEnteredEventDetails
    , hePreviousEventId
    , heActivityFailedEventDetails
    , heTaskFailedEventDetails
    , heLambdaFunctionFailedEventDetails
    , heExecutionTimedOutEventDetails
    , heMapIterationFailedEventDetails
    , heTimestamp
    , heType
    , heId

    -- ** HistoryEventExecutionDataDetails
    , HistoryEventExecutionDataDetails
    , historyEventExecutionDataDetails
    , heeddTruncated

    -- ** LambdaFunctionFailedEventDetails
    , LambdaFunctionFailedEventDetails
    , lambdaFunctionFailedEventDetails
    , lffedError
    , lffedCause

    -- ** LambdaFunctionScheduleFailedEventDetails
    , LambdaFunctionScheduleFailedEventDetails
    , lambdaFunctionScheduleFailedEventDetails
    , lError
    , lCause

    -- ** LambdaFunctionScheduledEventDetails
    , LambdaFunctionScheduledEventDetails
    , lambdaFunctionScheduledEventDetails
    , lfsedInputDetails
    , lfsedInput
    , lfsedTimeoutInSeconds
    , lfsedResource

    -- ** LambdaFunctionStartFailedEventDetails
    , LambdaFunctionStartFailedEventDetails
    , lambdaFunctionStartFailedEventDetails
    , lfsfedError
    , lfsfedCause

    -- ** LambdaFunctionSucceededEventDetails
    , LambdaFunctionSucceededEventDetails
    , lambdaFunctionSucceededEventDetails
    , lfsedOutput
    , lfsedOutputDetails

    -- ** LambdaFunctionTimedOutEventDetails
    , LambdaFunctionTimedOutEventDetails
    , lambdaFunctionTimedOutEventDetails
    , lftoedError
    , lftoedCause

    -- ** LogDestination
    , LogDestination
    , logDestination
    , ldCloudWatchLogsLogGroup

    -- ** LoggingConfiguration
    , LoggingConfiguration
    , loggingConfiguration
    , lcIncludeExecutionData
    , lcDestinations
    , lcLevel

    -- ** MapIterationEventDetails
    , MapIterationEventDetails
    , mapIterationEventDetails
    , miedName
    , miedIndex

    -- ** MapStateStartedEventDetails
    , MapStateStartedEventDetails
    , mapStateStartedEventDetails
    , mssedLength

    -- ** StateEnteredEventDetails
    , StateEnteredEventDetails
    , stateEnteredEventDetails
    , sInputDetails
    , sInput
    , sName

    -- ** StateExitedEventDetails
    , StateExitedEventDetails
    , stateExitedEventDetails
    , seedOutput
    , seedOutputDetails
    , seedName

    -- ** StateMachineListItem
    , StateMachineListItem
    , stateMachineListItem
    , smliStateMachineARN
    , smliName
    , smliType
    , smliCreationDate

    -- ** Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- ** TaskFailedEventDetails
    , TaskFailedEventDetails
    , taskFailedEventDetails
    , tfedError
    , tfedCause
    , tfedResourceType
    , tfedResource

    -- ** TaskScheduledEventDetails
    , TaskScheduledEventDetails
    , taskScheduledEventDetails
    , tasHeartbeatInSeconds
    , tasTimeoutInSeconds
    , tasResourceType
    , tasResource
    , tasRegion
    , tasParameters

    -- ** TaskStartFailedEventDetails
    , TaskStartFailedEventDetails
    , taskStartFailedEventDetails
    , tsfedsError
    , tsfedsCause
    , tsfedsResourceType
    , tsfedsResource

    -- ** TaskStartedEventDetails
    , TaskStartedEventDetails
    , taskStartedEventDetails
    , tsedResourceType
    , tsedResource

    -- ** TaskSubmitFailedEventDetails
    , TaskSubmitFailedEventDetails
    , taskSubmitFailedEventDetails
    , tsfedError
    , tsfedCause
    , tsfedResourceType
    , tsfedResource

    -- ** TaskSubmittedEventDetails
    , TaskSubmittedEventDetails
    , taskSubmittedEventDetails
    , tOutput
    , tOutputDetails
    , tResourceType
    , tResource

    -- ** TaskSucceededEventDetails
    , TaskSucceededEventDetails
    , taskSucceededEventDetails
    , tsedsOutput
    , tsedsOutputDetails
    , tsedsResourceType
    , tsedsResource

    -- ** TaskTimedOutEventDetails
    , TaskTimedOutEventDetails
    , taskTimedOutEventDetails
    , ttoedError
    , ttoedCause
    , ttoedResourceType
    , ttoedResource

    -- ** TracingConfiguration
    , TracingConfiguration
    , tracingConfiguration
    , tcEnabled
    ) where

import Network.AWS.StepFunctions.CreateActivity
import Network.AWS.StepFunctions.CreateStateMachine
import Network.AWS.StepFunctions.DeleteActivity
import Network.AWS.StepFunctions.DeleteStateMachine
import Network.AWS.StepFunctions.DescribeActivity
import Network.AWS.StepFunctions.DescribeExecution
import Network.AWS.StepFunctions.DescribeStateMachine
import Network.AWS.StepFunctions.DescribeStateMachineForExecution
import Network.AWS.StepFunctions.GetActivityTask
import Network.AWS.StepFunctions.GetExecutionHistory
import Network.AWS.StepFunctions.ListActivities
import Network.AWS.StepFunctions.ListExecutions
import Network.AWS.StepFunctions.ListStateMachines
import Network.AWS.StepFunctions.ListTagsForResource
import Network.AWS.StepFunctions.SendTaskFailure
import Network.AWS.StepFunctions.SendTaskHeartbeat
import Network.AWS.StepFunctions.SendTaskSuccess
import Network.AWS.StepFunctions.StartExecution
import Network.AWS.StepFunctions.StartSyncExecution
import Network.AWS.StepFunctions.StopExecution
import Network.AWS.StepFunctions.TagResource
import Network.AWS.StepFunctions.Types
import Network.AWS.StepFunctions.UntagResource
import Network.AWS.StepFunctions.UpdateStateMachine
import Network.AWS.StepFunctions.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'StepFunctions'.
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
