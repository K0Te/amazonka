{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SQS.Types
    (
    -- * Service Configuration
      sqs

    -- * Errors
    , _InvalidBatchEntryId
    , _TooManyEntriesInBatchRequest
    , _QueueDeletedRecently
    , _QueueDoesNotExist
    , _InvalidAttributeName
    , _UnsupportedOperation
    , _InvalidMessageContents
    , _BatchRequestTooLong
    , _OverLimit
    , _QueueNameExists
    , _PurgeQueueInProgress
    , _InvalidIdFormat
    , _ReceiptHandleIsInvalid
    , _EmptyBatchRequest
    , _BatchEntryIdsNotDistinct
    , _MessageNotInflight

    -- * MessageAttribute
    , MessageAttribute (..)

    -- * MessageSystemAttributeNameForSends
    , MessageSystemAttributeNameForSends (..)

    -- * QueueAttributeName
    , QueueAttributeName (..)

    -- * BatchResultErrorEntry
    , BatchResultErrorEntry
    , batchResultErrorEntry
    , breeMessage
    , breeId
    , breeSenderFault
    , breeCode

    -- * ChangeMessageVisibilityBatchRequestEntry
    , ChangeMessageVisibilityBatchRequestEntry
    , changeMessageVisibilityBatchRequestEntry
    , cVisibilityTimeout
    , cId
    , cReceiptHandle

    -- * ChangeMessageVisibilityBatchResultEntry
    , ChangeMessageVisibilityBatchResultEntry
    , changeMessageVisibilityBatchResultEntry
    , cmvbreId

    -- * DeleteMessageBatchRequestEntry
    , DeleteMessageBatchRequestEntry
    , deleteMessageBatchRequestEntry
    , dmbreId
    , dmbreReceiptHandle

    -- * DeleteMessageBatchResultEntry
    , DeleteMessageBatchResultEntry
    , deleteMessageBatchResultEntry
    , dId

    -- * Message
    , Message
    , message
    , mMessageAttributes
    , mMD5OfBody
    , mBody
    , mAttributes
    , mReceiptHandle
    , mMessageId
    , mMD5OfMessageAttributes

    -- * MessageAttributeValue
    , MessageAttributeValue
    , messageAttributeValue
    , mavBinaryValue
    , mavStringListValues
    , mavStringValue
    , mavBinaryListValues
    , mavDataType

    -- * MessageSystemAttributeValue
    , MessageSystemAttributeValue
    , messageSystemAttributeValue
    , msavBinaryValue
    , msavStringListValues
    , msavStringValue
    , msavBinaryListValues
    , msavDataType

    -- * SendMessageBatchRequestEntry
    , SendMessageBatchRequestEntry
    , sendMessageBatchRequestEntry
    , sMessageAttributes
    , sDelaySeconds
    , sMessageSystemAttributes
    , sMessageDeduplicationId
    , sMessageGroupId
    , sId
    , sMessageBody

    -- * SendMessageBatchResultEntry
    , SendMessageBatchResultEntry
    , sendMessageBatchResultEntry
    , smbreSequenceNumber
    , smbreMD5OfMessageSystemAttributes
    , smbreMD5OfMessageAttributes
    , smbreId
    , smbreMessageId
    , smbreMD5OfMessageBody
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.SQS.Types.MessageAttribute
import Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
import Network.AWS.SQS.Types.QueueAttributeName
import Network.AWS.SQS.Types.BatchResultErrorEntry
import Network.AWS.SQS.Types.ChangeMessageVisibilityBatchRequestEntry
import Network.AWS.SQS.Types.ChangeMessageVisibilityBatchResultEntry
import Network.AWS.SQS.Types.DeleteMessageBatchRequestEntry
import Network.AWS.SQS.Types.DeleteMessageBatchResultEntry
import Network.AWS.SQS.Types.Message
import Network.AWS.SQS.Types.MessageAttributeValue
import Network.AWS.SQS.Types.MessageSystemAttributeValue
import Network.AWS.SQS.Types.SendMessageBatchRequestEntry
import Network.AWS.SQS.Types.SendMessageBatchResultEntry

-- | API version @2012-11-05@ of the Amazon Simple Queue Service SDK configuration.
sqs :: Service
sqs
  = Service{_svcAbbrev = "SQS", _svcSigner = v4,
            _svcPrefix = "sqs", _svcVersion = "2012-11-05",
            _svcEndpoint = defaultEndpoint sqs,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseXMLError "SQS", _svcRetry = retry}
  where retry
          = Exponential{_retryBase = 5.0e-2, _retryGrowth = 2,
                        _retryAttempts = 5, _retryCheck = check}
        check e
          | has (hasCode "ThrottledException" . hasStatus 400)
              e
            = Just "throttled_exception"
          | has (hasCode "RequestThrottled" . hasStatus 403) e
            = Just "request_limit_exceeded"
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

-- | The @Id@ of a batch entry in a batch request doesn't abide by the specification.
--
--
_InvalidBatchEntryId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidBatchEntryId
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.InvalidBatchEntryId"
      . hasStatus 400

-- | The batch request contains more entries than permissible.
--
--
_TooManyEntriesInBatchRequest :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyEntriesInBatchRequest
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.TooManyEntriesInBatchRequest"
      . hasStatus 400

-- | You must wait 60 seconds after deleting a queue before you can create another queue with the same name.
--
--
_QueueDeletedRecently :: AsError a => Getting (First ServiceError) a ServiceError
_QueueDeletedRecently
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.QueueDeletedRecently"
      . hasStatus 400

-- | The specified queue doesn't exist.
--
--
_QueueDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_QueueDoesNotExist
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.NonExistentQueue"
      . hasStatus 400

-- | The specified attribute doesn't exist.
--
--
_InvalidAttributeName :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAttributeName
  = _MatchServiceError sqs "InvalidAttributeName"

-- | Error code 400. Unsupported operation.
--
--
_UnsupportedOperation :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOperation
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.UnsupportedOperation"
      . hasStatus 400

-- | The message contains characters outside the allowed set.
--
--
_InvalidMessageContents :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMessageContents
  = _MatchServiceError sqs "InvalidMessageContents"

-- | The length of all the messages put together is more than the limit.
--
--
_BatchRequestTooLong :: AsError a => Getting (First ServiceError) a ServiceError
_BatchRequestTooLong
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.BatchRequestTooLong"
      . hasStatus 400

-- | The specified action violates a limit. For example, @ReceiveMessage@ returns this error if the maximum number of inflight messages is reached and @AddPermission@ returns this error if the maximum number of permissions for the queue is reached.
--
--
_OverLimit :: AsError a => Getting (First ServiceError) a ServiceError
_OverLimit
  = _MatchServiceError sqs "OverLimit" . hasStatus 403

-- | A queue with this name already exists. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.
--
--
_QueueNameExists :: AsError a => Getting (First ServiceError) a ServiceError
_QueueNameExists
  = _MatchServiceError sqs "QueueAlreadyExists" .
      hasStatus 400

-- | Indicates that the specified queue previously received a @PurgeQueue@ request within the last 60 seconds (the time it can take to delete the messages in the queue).
--
--
_PurgeQueueInProgress :: AsError a => Getting (First ServiceError) a ServiceError
_PurgeQueueInProgress
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.PurgeQueueInProgress"
      . hasStatus 403

-- | The specified receipt handle isn't valid for the current version.
--
--
_InvalidIdFormat :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidIdFormat
  = _MatchServiceError sqs "InvalidIdFormat"

-- | The specified receipt handle isn't valid.
--
--
_ReceiptHandleIsInvalid :: AsError a => Getting (First ServiceError) a ServiceError
_ReceiptHandleIsInvalid
  = _MatchServiceError sqs "ReceiptHandleIsInvalid"

-- | The batch request doesn't contain any entries.
--
--
_EmptyBatchRequest :: AsError a => Getting (First ServiceError) a ServiceError
_EmptyBatchRequest
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.EmptyBatchRequest"
      . hasStatus 400

-- | Two or more batch entries in the request have the same @Id@ .
--
--
_BatchEntryIdsNotDistinct :: AsError a => Getting (First ServiceError) a ServiceError
_BatchEntryIdsNotDistinct
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.BatchEntryIdsNotDistinct"
      . hasStatus 400

-- | The specified message isn't in flight.
--
--
_MessageNotInflight :: AsError a => Getting (First ServiceError) a ServiceError
_MessageNotInflight
  = _MatchServiceError sqs
      "AWS.SimpleQueueService.MessageNotInflight"
      . hasStatus 400
