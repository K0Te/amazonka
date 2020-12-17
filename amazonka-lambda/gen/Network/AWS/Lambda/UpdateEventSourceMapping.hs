{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.UpdateEventSourceMapping
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an event source mapping. You can change the function that AWS Lambda invokes, or pause invocation and resume later from the same location.
--
--
-- The following error handling options are only available for stream sources (DynamoDB and Kinesis):
--
--     * @BisectBatchOnFunctionError@ - If the function returns an error, split the batch in two and retry.
--
--     * @DestinationConfig@ - Send discarded records to an Amazon SQS queue or Amazon SNS topic.
--
--     * @MaximumRecordAgeInSeconds@ - Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires
--
--     * @MaximumRetryAttempts@ - Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.
--
--     * @ParallelizationFactor@ - Process multiple batches from each shard concurrently.
--
--
--
module Network.AWS.Lambda.UpdateEventSourceMapping
    (
    -- * Creating a Request
      updateEventSourceMapping
    , UpdateEventSourceMapping
    -- * Request Lenses
    , uesmEnabled
    , uesmBisectBatchOnFunctionError
    , uesmParallelizationFactor
    , uesmMaximumRetryAttempts
    , uesmBatchSize
    , uesmMaximumBatchingWindowInSeconds
    , uesmSourceAccessConfigurations
    , uesmMaximumRecordAgeInSeconds
    , uesmFunctionResponseTypes
    , uesmTumblingWindowInSeconds
    , uesmFunctionName
    , uesmDestinationConfig
    , uesmUUId

    -- * Destructuring the Response
    , eventSourceMappingConfiguration
    , EventSourceMappingConfiguration
    -- * Response Lenses
    , esmcEventSourceARN
    , esmcState
    , esmcStartingPositionTimestamp
    , esmcFunctionARN
    , esmcTopics
    , esmcQueues
    , esmcBisectBatchOnFunctionError
    , esmcUUId
    , esmcParallelizationFactor
    , esmcLastProcessingResult
    , esmcMaximumRetryAttempts
    , esmcBatchSize
    , esmcStateTransitionReason
    , esmcMaximumBatchingWindowInSeconds
    , esmcSourceAccessConfigurations
    , esmcMaximumRecordAgeInSeconds
    , esmcFunctionResponseTypes
    , esmcTumblingWindowInSeconds
    , esmcSelfManagedEventSource
    , esmcLastModified
    , esmcDestinationConfig
    , esmcStartingPosition
    ) where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateEventSourceMapping' smart constructor.
data UpdateEventSourceMapping = UpdateEventSourceMapping'{_uesmEnabled
                                                          :: !(Maybe Bool),
                                                          _uesmBisectBatchOnFunctionError
                                                          :: !(Maybe Bool),
                                                          _uesmParallelizationFactor
                                                          :: !(Maybe Nat),
                                                          _uesmMaximumRetryAttempts
                                                          :: !(Maybe Int),
                                                          _uesmBatchSize ::
                                                          !(Maybe Nat),
                                                          _uesmMaximumBatchingWindowInSeconds
                                                          :: !(Maybe Nat),
                                                          _uesmSourceAccessConfigurations
                                                          ::
                                                          !(Maybe
                                                              (List1
                                                                 SourceAccessConfiguration)),
                                                          _uesmMaximumRecordAgeInSeconds
                                                          :: !(Maybe Int),
                                                          _uesmFunctionResponseTypes
                                                          ::
                                                          !(Maybe
                                                              (List1
                                                                 FunctionResponseType)),
                                                          _uesmTumblingWindowInSeconds
                                                          :: !(Maybe Nat),
                                                          _uesmFunctionName ::
                                                          !(Maybe Text),
                                                          _uesmDestinationConfig
                                                          ::
                                                          !(Maybe
                                                              DestinationConfig),
                                                          _uesmUUId :: !Text}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'UpdateEventSourceMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uesmEnabled' - If true, the event source mapping is active. Set to false to pause polling and invocation.
--
-- * 'uesmBisectBatchOnFunctionError' - (Streams) If the function returns an error, split the batch in two and retry.
--
-- * 'uesmParallelizationFactor' - (Streams) The number of batches to process from each shard concurrently.
--
-- * 'uesmMaximumRetryAttempts' - (Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.
--
-- * 'uesmBatchSize' - The maximum number of items to retrieve in a single batch.     * __Amazon Kinesis__ - Default 100. Max 10,000.     * __Amazon DynamoDB Streams__ - Default 100. Max 1,000.     * __Amazon Simple Queue Service__ - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.     * __Amazon Managed Streaming for Apache Kafka__ - Default 100. Max 10,000.     * __Self-Managed Apache Kafka__ - Default 100. Max 10,000.
--
-- * 'uesmMaximumBatchingWindowInSeconds' - (Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.
--
-- * 'uesmSourceAccessConfigurations' - An array of the authentication protocol, or the VPC components to secure your event source.
--
-- * 'uesmMaximumRecordAgeInSeconds' - (Streams) Discard records older than the specified age. The default value is infinite (-1).
--
-- * 'uesmFunctionResponseTypes' - (Streams) A list of current response type enums applied to the event source mapping.
--
-- * 'uesmTumblingWindowInSeconds' - (Streams) The duration of a processing window in seconds. The range is between 1 second up to 15 minutes.
--
-- * 'uesmFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Version or Alias ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.
--
-- * 'uesmDestinationConfig' - (Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.
--
-- * 'uesmUUId' - The identifier of the event source mapping.
updateEventSourceMapping
    :: Text -- ^ 'uesmUUId'
    -> UpdateEventSourceMapping
updateEventSourceMapping pUUId_
  = UpdateEventSourceMapping'{_uesmEnabled = Nothing,
                              _uesmBisectBatchOnFunctionError = Nothing,
                              _uesmParallelizationFactor = Nothing,
                              _uesmMaximumRetryAttempts = Nothing,
                              _uesmBatchSize = Nothing,
                              _uesmMaximumBatchingWindowInSeconds = Nothing,
                              _uesmSourceAccessConfigurations = Nothing,
                              _uesmMaximumRecordAgeInSeconds = Nothing,
                              _uesmFunctionResponseTypes = Nothing,
                              _uesmTumblingWindowInSeconds = Nothing,
                              _uesmFunctionName = Nothing,
                              _uesmDestinationConfig = Nothing,
                              _uesmUUId = pUUId_}

-- | If true, the event source mapping is active. Set to false to pause polling and invocation.
uesmEnabled :: Lens' UpdateEventSourceMapping (Maybe Bool)
uesmEnabled = lens _uesmEnabled (\ s a -> s{_uesmEnabled = a})

-- | (Streams) If the function returns an error, split the batch in two and retry.
uesmBisectBatchOnFunctionError :: Lens' UpdateEventSourceMapping (Maybe Bool)
uesmBisectBatchOnFunctionError = lens _uesmBisectBatchOnFunctionError (\ s a -> s{_uesmBisectBatchOnFunctionError = a})

-- | (Streams) The number of batches to process from each shard concurrently.
uesmParallelizationFactor :: Lens' UpdateEventSourceMapping (Maybe Natural)
uesmParallelizationFactor = lens _uesmParallelizationFactor (\ s a -> s{_uesmParallelizationFactor = a}) . mapping _Nat

-- | (Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.
uesmMaximumRetryAttempts :: Lens' UpdateEventSourceMapping (Maybe Int)
uesmMaximumRetryAttempts = lens _uesmMaximumRetryAttempts (\ s a -> s{_uesmMaximumRetryAttempts = a})

-- | The maximum number of items to retrieve in a single batch.     * __Amazon Kinesis__ - Default 100. Max 10,000.     * __Amazon DynamoDB Streams__ - Default 100. Max 1,000.     * __Amazon Simple Queue Service__ - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.     * __Amazon Managed Streaming for Apache Kafka__ - Default 100. Max 10,000.     * __Self-Managed Apache Kafka__ - Default 100. Max 10,000.
uesmBatchSize :: Lens' UpdateEventSourceMapping (Maybe Natural)
uesmBatchSize = lens _uesmBatchSize (\ s a -> s{_uesmBatchSize = a}) . mapping _Nat

-- | (Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.
uesmMaximumBatchingWindowInSeconds :: Lens' UpdateEventSourceMapping (Maybe Natural)
uesmMaximumBatchingWindowInSeconds = lens _uesmMaximumBatchingWindowInSeconds (\ s a -> s{_uesmMaximumBatchingWindowInSeconds = a}) . mapping _Nat

-- | An array of the authentication protocol, or the VPC components to secure your event source.
uesmSourceAccessConfigurations :: Lens' UpdateEventSourceMapping (Maybe (NonEmpty SourceAccessConfiguration))
uesmSourceAccessConfigurations = lens _uesmSourceAccessConfigurations (\ s a -> s{_uesmSourceAccessConfigurations = a}) . mapping _List1

-- | (Streams) Discard records older than the specified age. The default value is infinite (-1).
uesmMaximumRecordAgeInSeconds :: Lens' UpdateEventSourceMapping (Maybe Int)
uesmMaximumRecordAgeInSeconds = lens _uesmMaximumRecordAgeInSeconds (\ s a -> s{_uesmMaximumRecordAgeInSeconds = a})

-- | (Streams) A list of current response type enums applied to the event source mapping.
uesmFunctionResponseTypes :: Lens' UpdateEventSourceMapping (Maybe (NonEmpty FunctionResponseType))
uesmFunctionResponseTypes = lens _uesmFunctionResponseTypes (\ s a -> s{_uesmFunctionResponseTypes = a}) . mapping _List1

-- | (Streams) The duration of a processing window in seconds. The range is between 1 second up to 15 minutes.
uesmTumblingWindowInSeconds :: Lens' UpdateEventSourceMapping (Maybe Natural)
uesmTumblingWindowInSeconds = lens _uesmTumblingWindowInSeconds (\ s a -> s{_uesmTumblingWindowInSeconds = a}) . mapping _Nat

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Version or Alias ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.
uesmFunctionName :: Lens' UpdateEventSourceMapping (Maybe Text)
uesmFunctionName = lens _uesmFunctionName (\ s a -> s{_uesmFunctionName = a})

-- | (Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.
uesmDestinationConfig :: Lens' UpdateEventSourceMapping (Maybe DestinationConfig)
uesmDestinationConfig = lens _uesmDestinationConfig (\ s a -> s{_uesmDestinationConfig = a})

-- | The identifier of the event source mapping.
uesmUUId :: Lens' UpdateEventSourceMapping Text
uesmUUId = lens _uesmUUId (\ s a -> s{_uesmUUId = a})

instance AWSRequest UpdateEventSourceMapping where
        type Rs UpdateEventSourceMapping =
             EventSourceMappingConfiguration
        request = putJSON lambda
        response = receiveJSON (\ s h x -> eitherParseJSON x)

instance Hashable UpdateEventSourceMapping where

instance NFData UpdateEventSourceMapping where

instance ToHeaders UpdateEventSourceMapping where
        toHeaders = const mempty

instance ToJSON UpdateEventSourceMapping where
        toJSON UpdateEventSourceMapping'{..}
          = object
              (catMaybes
                 [("Enabled" .=) <$> _uesmEnabled,
                  ("BisectBatchOnFunctionError" .=) <$>
                    _uesmBisectBatchOnFunctionError,
                  ("ParallelizationFactor" .=) <$>
                    _uesmParallelizationFactor,
                  ("MaximumRetryAttempts" .=) <$>
                    _uesmMaximumRetryAttempts,
                  ("BatchSize" .=) <$> _uesmBatchSize,
                  ("MaximumBatchingWindowInSeconds" .=) <$>
                    _uesmMaximumBatchingWindowInSeconds,
                  ("SourceAccessConfigurations" .=) <$>
                    _uesmSourceAccessConfigurations,
                  ("MaximumRecordAgeInSeconds" .=) <$>
                    _uesmMaximumRecordAgeInSeconds,
                  ("FunctionResponseTypes" .=) <$>
                    _uesmFunctionResponseTypes,
                  ("TumblingWindowInSeconds" .=) <$>
                    _uesmTumblingWindowInSeconds,
                  ("FunctionName" .=) <$> _uesmFunctionName,
                  ("DestinationConfig" .=) <$> _uesmDestinationConfig])

instance ToPath UpdateEventSourceMapping where
        toPath UpdateEventSourceMapping'{..}
          = mconcat
              ["/2015-03-31/event-source-mappings/",
               toBS _uesmUUId]

instance ToQuery UpdateEventSourceMapping where
        toQuery = const mempty
