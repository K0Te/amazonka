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
-- Module      : Network.AWS.StepFunctions.DescribeExecution
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an execution.
--
--
-- This API action is not supported by @EXPRESS@ state machines.
--
module Network.AWS.StepFunctions.DescribeExecution
    (
    -- * Creating a Request
      describeExecution
    , DescribeExecution
    -- * Request Lenses
    , deExecutionARN

    -- * Destructuring the Response
    , describeExecutionResponse
    , DescribeExecutionResponse
    -- * Response Lenses
    , dersStopDate
    , dersInputDetails
    , dersInput
    , dersName
    , dersOutput
    , dersOutputDetails
    , dersTraceHeader
    , dersResponseStatus
    , dersExecutionARN
    , dersStateMachineARN
    , dersStatus
    , dersStartDate
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'describeExecution' smart constructor.
newtype DescribeExecution = DescribeExecution'{_deExecutionARN
                                               :: Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deExecutionARN' - The Amazon Resource Name (ARN) of the execution to describe.
describeExecution
    :: Text -- ^ 'deExecutionARN'
    -> DescribeExecution
describeExecution pExecutionARN_
  = DescribeExecution'{_deExecutionARN =
                         pExecutionARN_}

-- | The Amazon Resource Name (ARN) of the execution to describe.
deExecutionARN :: Lens' DescribeExecution Text
deExecutionARN = lens _deExecutionARN (\ s a -> s{_deExecutionARN = a})

instance AWSRequest DescribeExecution where
        type Rs DescribeExecution = DescribeExecutionResponse
        request = postJSON stepFunctions
        response
          = receiveJSON
              (\ s h x ->
                 DescribeExecutionResponse' <$>
                   (x .?> "stopDate") <*> (x .?> "inputDetails") <*>
                     (x .?> "input")
                     <*> (x .?> "name")
                     <*> (x .?> "output")
                     <*> (x .?> "outputDetails")
                     <*> (x .?> "traceHeader")
                     <*> (pure (fromEnum s))
                     <*> (x .:> "executionArn")
                     <*> (x .:> "stateMachineArn")
                     <*> (x .:> "status")
                     <*> (x .:> "startDate"))

instance Hashable DescribeExecution where

instance NFData DescribeExecution where

instance ToHeaders DescribeExecution where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSStepFunctions.DescribeExecution" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.0" :: ByteString)])

instance ToJSON DescribeExecution where
        toJSON DescribeExecution'{..}
          = object
              (catMaybes
                 [Just ("executionArn" .= _deExecutionARN)])

instance ToPath DescribeExecution where
        toPath = const "/"

instance ToQuery DescribeExecution where
        toQuery = const mempty

-- | /See:/ 'describeExecutionResponse' smart constructor.
data DescribeExecutionResponse = DescribeExecutionResponse'{_dersStopDate
                                                            :: !(Maybe POSIX),
                                                            _dersInputDetails ::
                                                            !(Maybe
                                                                CloudWatchEventsExecutionDataDetails),
                                                            _dersInput ::
                                                            !(Maybe
                                                                (Sensitive
                                                                   Text)),
                                                            _dersName ::
                                                            !(Maybe Text),
                                                            _dersOutput ::
                                                            !(Maybe
                                                                (Sensitive
                                                                   Text)),
                                                            _dersOutputDetails
                                                            ::
                                                            !(Maybe
                                                                CloudWatchEventsExecutionDataDetails),
                                                            _dersTraceHeader ::
                                                            !(Maybe Text),
                                                            _dersResponseStatus
                                                            :: !Int,
                                                            _dersExecutionARN ::
                                                            !Text,
                                                            _dersStateMachineARN
                                                            :: !Text,
                                                            _dersStatus ::
                                                            !ExecutionStatus,
                                                            _dersStartDate ::
                                                            !POSIX}
                                   deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dersStopDate' - If the execution has already ended, the date the execution stopped.
--
-- * 'dersInputDetails' - Undocumented member.
--
-- * 'dersInput' - The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'dersName' - The name of the execution. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
--
-- * 'dersOutput' - The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'dersOutputDetails' - Undocumented member.
--
-- * 'dersTraceHeader' - The AWS X-Ray trace header that was passed to the execution.
--
-- * 'dersResponseStatus' - -- | The response status code.
--
-- * 'dersExecutionARN' - The Amazon Resource Name (ARN) that identifies the execution.
--
-- * 'dersStateMachineARN' - The Amazon Resource Name (ARN) of the executed stated machine.
--
-- * 'dersStatus' - The current status of the execution.
--
-- * 'dersStartDate' - The date the execution is started.
describeExecutionResponse
    :: Int -- ^ 'dersResponseStatus'
    -> Text -- ^ 'dersExecutionARN'
    -> Text -- ^ 'dersStateMachineARN'
    -> ExecutionStatus -- ^ 'dersStatus'
    -> UTCTime -- ^ 'dersStartDate'
    -> DescribeExecutionResponse
describeExecutionResponse pResponseStatus_
  pExecutionARN_ pStateMachineARN_ pStatus_ pStartDate_
  = DescribeExecutionResponse'{_dersStopDate = Nothing,
                               _dersInputDetails = Nothing,
                               _dersInput = Nothing, _dersName = Nothing,
                               _dersOutput = Nothing,
                               _dersOutputDetails = Nothing,
                               _dersTraceHeader = Nothing,
                               _dersResponseStatus = pResponseStatus_,
                               _dersExecutionARN = pExecutionARN_,
                               _dersStateMachineARN = pStateMachineARN_,
                               _dersStatus = pStatus_,
                               _dersStartDate = _Time # pStartDate_}

-- | If the execution has already ended, the date the execution stopped.
dersStopDate :: Lens' DescribeExecutionResponse (Maybe UTCTime)
dersStopDate = lens _dersStopDate (\ s a -> s{_dersStopDate = a}) . mapping _Time

-- | Undocumented member.
dersInputDetails :: Lens' DescribeExecutionResponse (Maybe CloudWatchEventsExecutionDataDetails)
dersInputDetails = lens _dersInputDetails (\ s a -> s{_dersInputDetails = a})

-- | The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
dersInput :: Lens' DescribeExecutionResponse (Maybe Text)
dersInput = lens _dersInput (\ s a -> s{_dersInput = a}) . mapping _Sensitive

-- | The name of the execution. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
dersName :: Lens' DescribeExecutionResponse (Maybe Text)
dersName = lens _dersName (\ s a -> s{_dersName = a})

-- | The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
dersOutput :: Lens' DescribeExecutionResponse (Maybe Text)
dersOutput = lens _dersOutput (\ s a -> s{_dersOutput = a}) . mapping _Sensitive

-- | Undocumented member.
dersOutputDetails :: Lens' DescribeExecutionResponse (Maybe CloudWatchEventsExecutionDataDetails)
dersOutputDetails = lens _dersOutputDetails (\ s a -> s{_dersOutputDetails = a})

-- | The AWS X-Ray trace header that was passed to the execution.
dersTraceHeader :: Lens' DescribeExecutionResponse (Maybe Text)
dersTraceHeader = lens _dersTraceHeader (\ s a -> s{_dersTraceHeader = a})

-- | -- | The response status code.
dersResponseStatus :: Lens' DescribeExecutionResponse Int
dersResponseStatus = lens _dersResponseStatus (\ s a -> s{_dersResponseStatus = a})

-- | The Amazon Resource Name (ARN) that identifies the execution.
dersExecutionARN :: Lens' DescribeExecutionResponse Text
dersExecutionARN = lens _dersExecutionARN (\ s a -> s{_dersExecutionARN = a})

-- | The Amazon Resource Name (ARN) of the executed stated machine.
dersStateMachineARN :: Lens' DescribeExecutionResponse Text
dersStateMachineARN = lens _dersStateMachineARN (\ s a -> s{_dersStateMachineARN = a})

-- | The current status of the execution.
dersStatus :: Lens' DescribeExecutionResponse ExecutionStatus
dersStatus = lens _dersStatus (\ s a -> s{_dersStatus = a})

-- | The date the execution is started.
dersStartDate :: Lens' DescribeExecutionResponse UTCTime
dersStartDate = lens _dersStartDate (\ s a -> s{_dersStartDate = a}) . _Time

instance NFData DescribeExecutionResponse where
