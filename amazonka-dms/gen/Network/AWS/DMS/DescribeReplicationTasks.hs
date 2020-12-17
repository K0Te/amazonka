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
-- Module      : Network.AWS.DMS.DescribeReplicationTasks
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication tasks for your account in the current region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationTasks
    (
    -- * Creating a Request
      describeReplicationTasks
    , DescribeReplicationTasks
    -- * Request Lenses
    , drtFilters
    , drtWithoutSettings
    , drtMarker
    , drtMaxRecords

    -- * Destructuring the Response
    , describeReplicationTasksResponse
    , DescribeReplicationTasksResponse
    -- * Response Lenses
    , drtsrsReplicationTasks
    , drtsrsMarker
    , drtsrsResponseStatus
    ) where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | 
--
--
--
-- /See:/ 'describeReplicationTasks' smart constructor.
data DescribeReplicationTasks = DescribeReplicationTasks'{_drtFilters
                                                          :: !(Maybe [Filter]),
                                                          _drtWithoutSettings ::
                                                          !(Maybe Bool),
                                                          _drtMarker ::
                                                          !(Maybe Text),
                                                          _drtMaxRecords ::
                                                          !(Maybe Int)}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'DescribeReplicationTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtFilters' - Filters applied to replication tasks. Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
--
-- * 'drtWithoutSettings' - An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose @true@ ; otherwise, choose @false@ (the default).
--
-- * 'drtMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
--
-- * 'drtMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeReplicationTasks
    :: DescribeReplicationTasks
describeReplicationTasks
  = DescribeReplicationTasks'{_drtFilters = Nothing,
                              _drtWithoutSettings = Nothing,
                              _drtMarker = Nothing, _drtMaxRecords = Nothing}

-- | Filters applied to replication tasks. Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
drtFilters :: Lens' DescribeReplicationTasks [Filter]
drtFilters = lens _drtFilters (\ s a -> s{_drtFilters = a}) . _Default . _Coerce

-- | An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose @true@ ; otherwise, choose @false@ (the default).
drtWithoutSettings :: Lens' DescribeReplicationTasks (Maybe Bool)
drtWithoutSettings = lens _drtWithoutSettings (\ s a -> s{_drtWithoutSettings = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
drtMarker :: Lens' DescribeReplicationTasks (Maybe Text)
drtMarker = lens _drtMarker (\ s a -> s{_drtMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
drtMaxRecords :: Lens' DescribeReplicationTasks (Maybe Int)
drtMaxRecords = lens _drtMaxRecords (\ s a -> s{_drtMaxRecords = a})

instance AWSPager DescribeReplicationTasks where
        page rq rs
          | stop (rs ^. drtsrsMarker) = Nothing
          | stop (rs ^. drtsrsReplicationTasks) = Nothing
          | otherwise =
            Just $ rq & drtMarker .~ rs ^. drtsrsMarker

instance AWSRequest DescribeReplicationTasks where
        type Rs DescribeReplicationTasks =
             DescribeReplicationTasksResponse
        request = postJSON dms
        response
          = receiveJSON
              (\ s h x ->
                 DescribeReplicationTasksResponse' <$>
                   (x .?> "ReplicationTasks" .!@ mempty) <*>
                     (x .?> "Marker")
                     <*> (pure (fromEnum s)))

instance Hashable DescribeReplicationTasks where

instance NFData DescribeReplicationTasks where

instance ToHeaders DescribeReplicationTasks where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonDMSv20160101.DescribeReplicationTasks" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeReplicationTasks where
        toJSON DescribeReplicationTasks'{..}
          = object
              (catMaybes
                 [("Filters" .=) <$> _drtFilters,
                  ("WithoutSettings" .=) <$> _drtWithoutSettings,
                  ("Marker" .=) <$> _drtMarker,
                  ("MaxRecords" .=) <$> _drtMaxRecords])

instance ToPath DescribeReplicationTasks where
        toPath = const "/"

instance ToQuery DescribeReplicationTasks where
        toQuery = const mempty

-- | 
--
--
--
-- /See:/ 'describeReplicationTasksResponse' smart constructor.
data DescribeReplicationTasksResponse = DescribeReplicationTasksResponse'{_drtsrsReplicationTasks
                                                                          ::
                                                                          !(Maybe
                                                                              [ReplicationTask]),
                                                                          _drtsrsMarker
                                                                          ::
                                                                          !(Maybe
                                                                              Text),
                                                                          _drtsrsResponseStatus
                                                                          ::
                                                                          !Int}
                                          deriving (Eq, Read, Show, Data,
                                                    Typeable, Generic)

-- | Creates a value of 'DescribeReplicationTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtsrsReplicationTasks' - A description of the replication tasks.
--
-- * 'drtsrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
--
-- * 'drtsrsResponseStatus' - -- | The response status code.
describeReplicationTasksResponse
    :: Int -- ^ 'drtsrsResponseStatus'
    -> DescribeReplicationTasksResponse
describeReplicationTasksResponse pResponseStatus_
  = DescribeReplicationTasksResponse'{_drtsrsReplicationTasks
                                        = Nothing,
                                      _drtsrsMarker = Nothing,
                                      _drtsrsResponseStatus = pResponseStatus_}

-- | A description of the replication tasks.
drtsrsReplicationTasks :: Lens' DescribeReplicationTasksResponse [ReplicationTask]
drtsrsReplicationTasks = lens _drtsrsReplicationTasks (\ s a -> s{_drtsrsReplicationTasks = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
drtsrsMarker :: Lens' DescribeReplicationTasksResponse (Maybe Text)
drtsrsMarker = lens _drtsrsMarker (\ s a -> s{_drtsrsMarker = a})

-- | -- | The response status code.
drtsrsResponseStatus :: Lens' DescribeReplicationTasksResponse Int
drtsrsResponseStatus = lens _drtsrsResponseStatus (\ s a -> s{_drtsrsResponseStatus = a})

instance NFData DescribeReplicationTasksResponse
         where
