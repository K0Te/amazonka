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
-- Module      : Network.AWS.CloudWatchLogs.StartQuery
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group and time range to query and the query string to use.
--
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
--
-- Queries time out after 15 minutes of execution. If your queries are timing out, reduce the time range being searched or partition your query into a number of queries.
--
module Network.AWS.CloudWatchLogs.StartQuery
    (
    -- * Creating a Request
      startQuery
    , StartQuery
    -- * Request Lenses
    , sqLogGroupNames
    , sqLogGroupName
    , sqLimit
    , sqStartTime
    , sqEndTime
    , sqQueryString

    -- * Destructuring the Response
    , startQueryResponse
    , StartQueryResponse
    -- * Response Lenses
    , srsQueryId
    , srsResponseStatus
    ) where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startQuery' smart constructor.
data StartQuery = StartQuery'{_sqLogGroupNames ::
                              !(Maybe [Text]),
                              _sqLogGroupName :: !(Maybe Text),
                              _sqLimit :: !(Maybe Nat), _sqStartTime :: !Nat,
                              _sqEndTime :: !Nat, _sqQueryString :: !Text}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqLogGroupNames' - The list of log groups to be queried. You can include up to 20 log groups. A @StartQuery@ operation must include a @logGroupNames@ or a @logGroupName@ parameter, but not both.
--
-- * 'sqLogGroupName' - The log group on which to perform the query. A @StartQuery@ operation must include a @logGroupNames@ or a @logGroupName@ parameter, but not both.
--
-- * 'sqLimit' - The maximum number of log events to return in the query. If the query string uses the @fields@ command, only the specified fields and their values are returned. The default is 1000.
--
-- * 'sqStartTime' - The beginning of the time range to query. The range is inclusive, so the specified start time is included in the query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.
--
-- * 'sqEndTime' - The end of the time range to query. The range is inclusive, so the specified end time is included in the query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.
--
-- * 'sqQueryString' - The query string to use. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
startQuery
    :: Natural -- ^ 'sqStartTime'
    -> Natural -- ^ 'sqEndTime'
    -> Text -- ^ 'sqQueryString'
    -> StartQuery
startQuery pStartTime_ pEndTime_ pQueryString_
  = StartQuery'{_sqLogGroupNames = Nothing,
                _sqLogGroupName = Nothing, _sqLimit = Nothing,
                _sqStartTime = _Nat # pStartTime_,
                _sqEndTime = _Nat # pEndTime_,
                _sqQueryString = pQueryString_}

-- | The list of log groups to be queried. You can include up to 20 log groups. A @StartQuery@ operation must include a @logGroupNames@ or a @logGroupName@ parameter, but not both.
sqLogGroupNames :: Lens' StartQuery [Text]
sqLogGroupNames = lens _sqLogGroupNames (\ s a -> s{_sqLogGroupNames = a}) . _Default . _Coerce

-- | The log group on which to perform the query. A @StartQuery@ operation must include a @logGroupNames@ or a @logGroupName@ parameter, but not both.
sqLogGroupName :: Lens' StartQuery (Maybe Text)
sqLogGroupName = lens _sqLogGroupName (\ s a -> s{_sqLogGroupName = a})

-- | The maximum number of log events to return in the query. If the query string uses the @fields@ command, only the specified fields and their values are returned. The default is 1000.
sqLimit :: Lens' StartQuery (Maybe Natural)
sqLimit = lens _sqLimit (\ s a -> s{_sqLimit = a}) . mapping _Nat

-- | The beginning of the time range to query. The range is inclusive, so the specified start time is included in the query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.
sqStartTime :: Lens' StartQuery Natural
sqStartTime = lens _sqStartTime (\ s a -> s{_sqStartTime = a}) . _Nat

-- | The end of the time range to query. The range is inclusive, so the specified end time is included in the query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.
sqEndTime :: Lens' StartQuery Natural
sqEndTime = lens _sqEndTime (\ s a -> s{_sqEndTime = a}) . _Nat

-- | The query string to use. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
sqQueryString :: Lens' StartQuery Text
sqQueryString = lens _sqQueryString (\ s a -> s{_sqQueryString = a})

instance AWSRequest StartQuery where
        type Rs StartQuery = StartQueryResponse
        request = postJSON cloudWatchLogs
        response
          = receiveJSON
              (\ s h x ->
                 StartQueryResponse' <$>
                   (x .?> "queryId") <*> (pure (fromEnum s)))

instance Hashable StartQuery where

instance NFData StartQuery where

instance ToHeaders StartQuery where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("Logs_20140328.StartQuery" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON StartQuery where
        toJSON StartQuery'{..}
          = object
              (catMaybes
                 [("logGroupNames" .=) <$> _sqLogGroupNames,
                  ("logGroupName" .=) <$> _sqLogGroupName,
                  ("limit" .=) <$> _sqLimit,
                  Just ("startTime" .= _sqStartTime),
                  Just ("endTime" .= _sqEndTime),
                  Just ("queryString" .= _sqQueryString)])

instance ToPath StartQuery where
        toPath = const "/"

instance ToQuery StartQuery where
        toQuery = const mempty

-- | /See:/ 'startQueryResponse' smart constructor.
data StartQueryResponse = StartQueryResponse'{_srsQueryId
                                              :: !(Maybe Text),
                                              _srsResponseStatus :: !Int}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsQueryId' - The unique ID of the query. 
--
-- * 'srsResponseStatus' - -- | The response status code.
startQueryResponse
    :: Int -- ^ 'srsResponseStatus'
    -> StartQueryResponse
startQueryResponse pResponseStatus_
  = StartQueryResponse'{_srsQueryId = Nothing,
                        _srsResponseStatus = pResponseStatus_}

-- | The unique ID of the query. 
srsQueryId :: Lens' StartQueryResponse (Maybe Text)
srsQueryId = lens _srsQueryId (\ s a -> s{_srsQueryId = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StartQueryResponse Int
srsResponseStatus = lens _srsResponseStatus (\ s a -> s{_srsResponseStatus = a})

instance NFData StartQueryResponse where
