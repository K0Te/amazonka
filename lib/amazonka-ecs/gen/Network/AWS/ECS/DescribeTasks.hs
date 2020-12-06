{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.DescribeTasks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a specified task or tasks.
module Network.AWS.ECS.DescribeTasks
  ( -- * Creating a Request
    describeTasks,
    DescribeTasks,

    -- * Request Lenses
    dtInclude,
    dtCluster,
    dtTasks,

    -- * Destructuring the Response
    describeTasksResponse,
    DescribeTasksResponse,

    -- * Response Lenses
    dtrsFailures,
    dtrsTasks,
    dtrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTasks' smart constructor.
data DescribeTasks = DescribeTasks'
  { _dtInclude ::
      !(Maybe [TaskField]),
    _dtCluster :: !(Maybe Text),
    _dtTasks :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtInclude' - Specifies whether you want to see the resource tags for the task. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
--
-- * 'dtCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task or tasks to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the task or tasks you are describing were launched in any cluster other than the default cluster.
--
-- * 'dtTasks' - A list of up to 100 task IDs or full ARN entries.
describeTasks ::
  DescribeTasks
describeTasks =
  DescribeTasks'
    { _dtInclude = Nothing,
      _dtCluster = Nothing,
      _dtTasks = mempty
    }

-- | Specifies whether you want to see the resource tags for the task. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
dtInclude :: Lens' DescribeTasks [TaskField]
dtInclude = lens _dtInclude (\s a -> s {_dtInclude = a}) . _Default . _Coerce

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task or tasks to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the task or tasks you are describing were launched in any cluster other than the default cluster.
dtCluster :: Lens' DescribeTasks (Maybe Text)
dtCluster = lens _dtCluster (\s a -> s {_dtCluster = a})

-- | A list of up to 100 task IDs or full ARN entries.
dtTasks :: Lens' DescribeTasks [Text]
dtTasks = lens _dtTasks (\s a -> s {_dtTasks = a}) . _Coerce

instance AWSRequest DescribeTasks where
  type Rs DescribeTasks = DescribeTasksResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DescribeTasksResponse'
            <$> (x .?> "failures" .!@ mempty)
            <*> (x .?> "tasks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTasks

instance NFData DescribeTasks

instance ToHeaders DescribeTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonEC2ContainerServiceV20141113.DescribeTasks" :: ByteString),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTasks where
  toJSON DescribeTasks' {..} =
    object
      ( catMaybes
          [ ("include" .=) <$> _dtInclude,
            ("cluster" .=) <$> _dtCluster,
            Just ("tasks" .= _dtTasks)
          ]
      )

instance ToPath DescribeTasks where
  toPath = const "/"

instance ToQuery DescribeTasks where
  toQuery = const mempty

-- | /See:/ 'describeTasksResponse' smart constructor.
data DescribeTasksResponse = DescribeTasksResponse'
  { _dtrsFailures ::
      !(Maybe [Failure]),
    _dtrsTasks :: !(Maybe [Task]),
    _dtrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrsFailures' - Any failures associated with the call.
--
-- * 'dtrsTasks' - The list of tasks.
--
-- * 'dtrsResponseStatus' - -- | The response status code.
describeTasksResponse ::
  -- | 'dtrsResponseStatus'
  Int ->
  DescribeTasksResponse
describeTasksResponse pResponseStatus_ =
  DescribeTasksResponse'
    { _dtrsFailures = Nothing,
      _dtrsTasks = Nothing,
      _dtrsResponseStatus = pResponseStatus_
    }

-- | Any failures associated with the call.
dtrsFailures :: Lens' DescribeTasksResponse [Failure]
dtrsFailures = lens _dtrsFailures (\s a -> s {_dtrsFailures = a}) . _Default . _Coerce

-- | The list of tasks.
dtrsTasks :: Lens' DescribeTasksResponse [Task]
dtrsTasks = lens _dtrsTasks (\s a -> s {_dtrsTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrsResponseStatus :: Lens' DescribeTasksResponse Int
dtrsResponseStatus = lens _dtrsResponseStatus (\s a -> s {_dtrsResponseStatus = a})

instance NFData DescribeTasksResponse