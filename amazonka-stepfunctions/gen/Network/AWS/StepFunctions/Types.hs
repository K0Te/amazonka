{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StepFunctions.Types
    (
    -- * Service Configuration
      stepFunctions

    -- * Errors
    , _ExecutionLimitExceeded
    , _InvalidDefinition
    , _StateMachineLimitExceeded
    , _ExecutionAlreadyExists
    , _StateMachineAlreadyExists
    , _TaskTimedOut
    , _InvalidExecutionInput
    , _InvalidOutput
    , _InvalidName
    , _TaskDoesNotExist
    , _ActivityDoesNotExist
    , _StateMachineDeleting
    , _StateMachineTypeNotSupported
    , _MissingRequiredParameter
    , _InvalidARN
    , _InvalidToken
    , _InvalidLoggingConfiguration
    , _ActivityWorkerLimitExceeded
    , _InvalidTracingConfiguration
    , _ActivityLimitExceeded
    , _TooManyTags
    , _ExecutionDoesNotExist
    , _StateMachineDoesNotExist
    , _ResourceNotFound

    -- * ExecutionStatus
    , ExecutionStatus (..)

    -- * HistoryEventType
    , HistoryEventType (..)

    -- * LogLevel
    , LogLevel (..)

    -- * StateMachineStatus
    , StateMachineStatus (..)

    -- * StateMachineType
    , StateMachineType (..)

    -- * SyncExecutionStatus
    , SyncExecutionStatus (..)

    -- * ActivityFailedEventDetails
    , ActivityFailedEventDetails
    , activityFailedEventDetails
    , afedError
    , afedCause

    -- * ActivityListItem
    , ActivityListItem
    , activityListItem
    , aliActivityARN
    , aliName
    , aliCreationDate

    -- * ActivityScheduleFailedEventDetails
    , ActivityScheduleFailedEventDetails
    , activityScheduleFailedEventDetails
    , asfedError
    , asfedCause

    -- * ActivityScheduledEventDetails
    , ActivityScheduledEventDetails
    , activityScheduledEventDetails
    , asedHeartbeatInSeconds
    , asedInputDetails
    , asedInput
    , asedTimeoutInSeconds
    , asedResource

    -- * ActivityStartedEventDetails
    , ActivityStartedEventDetails
    , activityStartedEventDetails
    , asedWorkerName

    -- * ActivitySucceededEventDetails
    , ActivitySucceededEventDetails
    , activitySucceededEventDetails
    , asedOutput
    , asedOutputDetails

    -- * ActivityTimedOutEventDetails
    , ActivityTimedOutEventDetails
    , activityTimedOutEventDetails
    , atoedError
    , atoedCause

    -- * BillingDetails
    , BillingDetails
    , billingDetails
    , bdBilledMemoryUsedInMB
    , bdBilledDurationInMilliseconds

    -- * CloudWatchEventsExecutionDataDetails
    , CloudWatchEventsExecutionDataDetails
    , cloudWatchEventsExecutionDataDetails
    , cweeddIncluded

    -- * CloudWatchLogsLogGroup
    , CloudWatchLogsLogGroup
    , cloudWatchLogsLogGroup
    , cwllgLogGroupARN

    -- * ExecutionAbortedEventDetails
    , ExecutionAbortedEventDetails
    , executionAbortedEventDetails
    , eaedError
    , eaedCause

    -- * ExecutionFailedEventDetails
    , ExecutionFailedEventDetails
    , executionFailedEventDetails
    , efedError
    , efedCause

    -- * ExecutionListItem
    , ExecutionListItem
    , executionListItem
    , eliStopDate
    , eliExecutionARN
    , eliStateMachineARN
    , eliName
    , eliStatus
    , eliStartDate

    -- * ExecutionStartedEventDetails
    , ExecutionStartedEventDetails
    , executionStartedEventDetails
    , esedInputDetails
    , esedInput
    , esedRoleARN

    -- * ExecutionSucceededEventDetails
    , ExecutionSucceededEventDetails
    , executionSucceededEventDetails
    , esedOutput
    , esedOutputDetails

    -- * ExecutionTimedOutEventDetails
    , ExecutionTimedOutEventDetails
    , executionTimedOutEventDetails
    , etoedError
    , etoedCause

    -- * HistoryEvent
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

    -- * HistoryEventExecutionDataDetails
    , HistoryEventExecutionDataDetails
    , historyEventExecutionDataDetails
    , heeddTruncated

    -- * LambdaFunctionFailedEventDetails
    , LambdaFunctionFailedEventDetails
    , lambdaFunctionFailedEventDetails
    , lffedError
    , lffedCause

    -- * LambdaFunctionScheduleFailedEventDetails
    , LambdaFunctionScheduleFailedEventDetails
    , lambdaFunctionScheduleFailedEventDetails
    , lError
    , lCause

    -- * LambdaFunctionScheduledEventDetails
    , LambdaFunctionScheduledEventDetails
    , lambdaFunctionScheduledEventDetails
    , lfsedInputDetails
    , lfsedInput
    , lfsedTimeoutInSeconds
    , lfsedResource

    -- * LambdaFunctionStartFailedEventDetails
    , LambdaFunctionStartFailedEventDetails
    , lambdaFunctionStartFailedEventDetails
    , lfsfedError
    , lfsfedCause

    -- * LambdaFunctionSucceededEventDetails
    , LambdaFunctionSucceededEventDetails
    , lambdaFunctionSucceededEventDetails
    , lfsedOutput
    , lfsedOutputDetails

    -- * LambdaFunctionTimedOutEventDetails
    , LambdaFunctionTimedOutEventDetails
    , lambdaFunctionTimedOutEventDetails
    , lftoedError
    , lftoedCause

    -- * LogDestination
    , LogDestination
    , logDestination
    , ldCloudWatchLogsLogGroup

    -- * LoggingConfiguration
    , LoggingConfiguration
    , loggingConfiguration
    , lcIncludeExecutionData
    , lcDestinations
    , lcLevel

    -- * MapIterationEventDetails
    , MapIterationEventDetails
    , mapIterationEventDetails
    , miedName
    , miedIndex

    -- * MapStateStartedEventDetails
    , MapStateStartedEventDetails
    , mapStateStartedEventDetails
    , mssedLength

    -- * StateEnteredEventDetails
    , StateEnteredEventDetails
    , stateEnteredEventDetails
    , sInputDetails
    , sInput
    , sName

    -- * StateExitedEventDetails
    , StateExitedEventDetails
    , stateExitedEventDetails
    , seedOutput
    , seedOutputDetails
    , seedName

    -- * StateMachineListItem
    , StateMachineListItem
    , stateMachineListItem
    , smliStateMachineARN
    , smliName
    , smliType
    , smliCreationDate

    -- * Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- * TaskFailedEventDetails
    , TaskFailedEventDetails
    , taskFailedEventDetails
    , tfedError
    , tfedCause
    , tfedResourceType
    , tfedResource

    -- * TaskScheduledEventDetails
    , TaskScheduledEventDetails
    , taskScheduledEventDetails
    , tasHeartbeatInSeconds
    , tasTimeoutInSeconds
    , tasResourceType
    , tasResource
    , tasRegion
    , tasParameters

    -- * TaskStartFailedEventDetails
    , TaskStartFailedEventDetails
    , taskStartFailedEventDetails
    , tsfedsError
    , tsfedsCause
    , tsfedsResourceType
    , tsfedsResource

    -- * TaskStartedEventDetails
    , TaskStartedEventDetails
    , taskStartedEventDetails
    , tsedResourceType
    , tsedResource

    -- * TaskSubmitFailedEventDetails
    , TaskSubmitFailedEventDetails
    , taskSubmitFailedEventDetails
    , tsfedError
    , tsfedCause
    , tsfedResourceType
    , tsfedResource

    -- * TaskSubmittedEventDetails
    , TaskSubmittedEventDetails
    , taskSubmittedEventDetails
    , tOutput
    , tOutputDetails
    , tResourceType
    , tResource

    -- * TaskSucceededEventDetails
    , TaskSucceededEventDetails
    , taskSucceededEventDetails
    , tsedsOutput
    , tsedsOutputDetails
    , tsedsResourceType
    , tsedsResource

    -- * TaskTimedOutEventDetails
    , TaskTimedOutEventDetails
    , taskTimedOutEventDetails
    , ttoedError
    , ttoedCause
    , ttoedResourceType
    , ttoedResource

    -- * TracingConfiguration
    , TracingConfiguration
    , tracingConfiguration
    , tcEnabled
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.StepFunctions.Types.ExecutionStatus
import Network.AWS.StepFunctions.Types.HistoryEventType
import Network.AWS.StepFunctions.Types.LogLevel
import Network.AWS.StepFunctions.Types.StateMachineStatus
import Network.AWS.StepFunctions.Types.StateMachineType
import Network.AWS.StepFunctions.Types.SyncExecutionStatus
import Network.AWS.StepFunctions.Types.ActivityFailedEventDetails
import Network.AWS.StepFunctions.Types.ActivityListItem
import Network.AWS.StepFunctions.Types.ActivityScheduleFailedEventDetails
import Network.AWS.StepFunctions.Types.ActivityScheduledEventDetails
import Network.AWS.StepFunctions.Types.ActivityStartedEventDetails
import Network.AWS.StepFunctions.Types.ActivitySucceededEventDetails
import Network.AWS.StepFunctions.Types.ActivityTimedOutEventDetails
import Network.AWS.StepFunctions.Types.BillingDetails
import Network.AWS.StepFunctions.Types.CloudWatchEventsExecutionDataDetails
import Network.AWS.StepFunctions.Types.CloudWatchLogsLogGroup
import Network.AWS.StepFunctions.Types.ExecutionAbortedEventDetails
import Network.AWS.StepFunctions.Types.ExecutionFailedEventDetails
import Network.AWS.StepFunctions.Types.ExecutionListItem
import Network.AWS.StepFunctions.Types.ExecutionStartedEventDetails
import Network.AWS.StepFunctions.Types.ExecutionSucceededEventDetails
import Network.AWS.StepFunctions.Types.ExecutionTimedOutEventDetails
import Network.AWS.StepFunctions.Types.HistoryEvent
import Network.AWS.StepFunctions.Types.HistoryEventExecutionDataDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionFailedEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionScheduleFailedEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionScheduledEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionStartFailedEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionSucceededEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionTimedOutEventDetails
import Network.AWS.StepFunctions.Types.LogDestination
import Network.AWS.StepFunctions.Types.LoggingConfiguration
import Network.AWS.StepFunctions.Types.MapIterationEventDetails
import Network.AWS.StepFunctions.Types.MapStateStartedEventDetails
import Network.AWS.StepFunctions.Types.StateEnteredEventDetails
import Network.AWS.StepFunctions.Types.StateExitedEventDetails
import Network.AWS.StepFunctions.Types.StateMachineListItem
import Network.AWS.StepFunctions.Types.Tag
import Network.AWS.StepFunctions.Types.TaskFailedEventDetails
import Network.AWS.StepFunctions.Types.TaskScheduledEventDetails
import Network.AWS.StepFunctions.Types.TaskStartFailedEventDetails
import Network.AWS.StepFunctions.Types.TaskStartedEventDetails
import Network.AWS.StepFunctions.Types.TaskSubmitFailedEventDetails
import Network.AWS.StepFunctions.Types.TaskSubmittedEventDetails
import Network.AWS.StepFunctions.Types.TaskSucceededEventDetails
import Network.AWS.StepFunctions.Types.TaskTimedOutEventDetails
import Network.AWS.StepFunctions.Types.TracingConfiguration

-- | API version @2016-11-23@ of the Amazon Step Functions SDK configuration.
stepFunctions :: Service
stepFunctions
  = Service{_svcAbbrev = "StepFunctions",
            _svcSigner = v4, _svcPrefix = "states",
            _svcVersion = "2016-11-23",
            _svcEndpoint = defaultEndpoint stepFunctions,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "StepFunctions",
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

-- | The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.
--
--
_ExecutionLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ExecutionLimitExceeded
  = _MatchServiceError stepFunctions
      "ExecutionLimitExceeded"

-- | The provided Amazon States Language definition is invalid.
--
--
_InvalidDefinition :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDefinition
  = _MatchServiceError stepFunctions
      "InvalidDefinition"

-- | The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.
--
--
_StateMachineLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_StateMachineLimitExceeded
  = _MatchServiceError stepFunctions
      "StateMachineLimitExceeded"

-- | The execution has the same @name@ as another execution (but a different @input@ ).
--
--
_ExecutionAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_ExecutionAlreadyExists
  = _MatchServiceError stepFunctions
      "ExecutionAlreadyExists"

-- | A state machine with the same name but a different definition or role ARN already exists.
--
--
_StateMachineAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_StateMachineAlreadyExists
  = _MatchServiceError stepFunctions
      "StateMachineAlreadyExists"

-- | Prism for TaskTimedOut' errors.
_TaskTimedOut :: AsError a => Getting (First ServiceError) a ServiceError
_TaskTimedOut
  = _MatchServiceError stepFunctions "TaskTimedOut"

-- | The provided JSON input data is invalid.
--
--
_InvalidExecutionInput :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExecutionInput
  = _MatchServiceError stepFunctions
      "InvalidExecutionInput"

-- | The provided JSON output data is invalid.
--
--
_InvalidOutput :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOutput
  = _MatchServiceError stepFunctions "InvalidOutput"

-- | The provided name is invalid.
--
--
_InvalidName :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidName
  = _MatchServiceError stepFunctions "InvalidName"

-- | Prism for TaskDoesNotExist' errors.
_TaskDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_TaskDoesNotExist
  = _MatchServiceError stepFunctions "TaskDoesNotExist"

-- | The specified activity does not exist.
--
--
_ActivityDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_ActivityDoesNotExist
  = _MatchServiceError stepFunctions
      "ActivityDoesNotExist"

-- | The specified state machine is being deleted.
--
--
_StateMachineDeleting :: AsError a => Getting (First ServiceError) a ServiceError
_StateMachineDeleting
  = _MatchServiceError stepFunctions
      "StateMachineDeleting"

-- | 
--
--
_StateMachineTypeNotSupported :: AsError a => Getting (First ServiceError) a ServiceError
_StateMachineTypeNotSupported
  = _MatchServiceError stepFunctions
      "StateMachineTypeNotSupported"

-- | Request is missing a required parameter. This error occurs if both @definition@ and @roleArn@ are not specified.
--
--
_MissingRequiredParameter :: AsError a => Getting (First ServiceError) a ServiceError
_MissingRequiredParameter
  = _MatchServiceError stepFunctions
      "MissingRequiredParameter"

-- | The provided Amazon Resource Name (ARN) is invalid.
--
--
_InvalidARN :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARN
  = _MatchServiceError stepFunctions "InvalidArn"

-- | The provided token is invalid.
--
--
_InvalidToken :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidToken
  = _MatchServiceError stepFunctions "InvalidToken"

-- | 
--
--
_InvalidLoggingConfiguration :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLoggingConfiguration
  = _MatchServiceError stepFunctions
      "InvalidLoggingConfiguration"

-- | The maximum number of workers concurrently polling for activity tasks has been reached.
--
--
_ActivityWorkerLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ActivityWorkerLimitExceeded
  = _MatchServiceError stepFunctions
      "ActivityWorkerLimitExceeded"

-- | Your @tracingConfiguration@ key does not match, or @enabled@ has not been set to @true@ or @false@ .
--
--
_InvalidTracingConfiguration :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTracingConfiguration
  = _MatchServiceError stepFunctions
      "InvalidTracingConfiguration"

-- | The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.
--
--
_ActivityLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ActivityLimitExceeded
  = _MatchServiceError stepFunctions
      "ActivityLimitExceeded"

-- | You've exceeded the number of tags allowed for a resource. See the <https://docs.aws.amazon.com/step-functions/latest/dg/limits.html Limits Topic> in the AWS Step Functions Developer Guide.
--
--
_TooManyTags :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTags
  = _MatchServiceError stepFunctions "TooManyTags"

-- | The specified execution does not exist.
--
--
_ExecutionDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_ExecutionDoesNotExist
  = _MatchServiceError stepFunctions
      "ExecutionDoesNotExist"

-- | The specified state machine does not exist.
--
--
_StateMachineDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_StateMachineDoesNotExist
  = _MatchServiceError stepFunctions
      "StateMachineDoesNotExist"

-- | Could not find the referenced resource. Only state machine and activity ARNs are supported.
--
--
_ResourceNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFound
  = _MatchServiceError stepFunctions "ResourceNotFound"
