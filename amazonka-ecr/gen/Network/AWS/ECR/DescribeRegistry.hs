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
-- Module      : Network.AWS.ECR.DescribeRegistry
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the settings for a registry. The replication configuration for a repository can be created or updated with the 'PutReplicationConfiguration' API action.
--
--
module Network.AWS.ECR.DescribeRegistry
    (
    -- * Creating a Request
      describeRegistry
    , DescribeRegistry

    -- * Destructuring the Response
    , describeRegistryResponse
    , DescribeRegistryResponse
    -- * Response Lenses
    , drsReplicationConfiguration
    , drsRegistryId
    , drsResponseStatus
    ) where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRegistry' smart constructor.
data DescribeRegistry = DescribeRegistry'
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRegistry' with the minimum fields required to make a request.
--
describeRegistry
    :: DescribeRegistry
describeRegistry = DescribeRegistry'

instance AWSRequest DescribeRegistry where
        type Rs DescribeRegistry = DescribeRegistryResponse
        request = postJSON ecr
        response
          = receiveJSON
              (\ s h x ->
                 DescribeRegistryResponse' <$>
                   (x .?> "replicationConfiguration") <*>
                     (x .?> "registryId")
                     <*> (pure (fromEnum s)))

instance Hashable DescribeRegistry where

instance NFData DescribeRegistry where

instance ToHeaders DescribeRegistry where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerRegistry_V20150921.DescribeRegistry"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeRegistry where
        toJSON = const (Object mempty)

instance ToPath DescribeRegistry where
        toPath = const "/"

instance ToQuery DescribeRegistry where
        toQuery = const mempty

-- | /See:/ 'describeRegistryResponse' smart constructor.
data DescribeRegistryResponse = DescribeRegistryResponse'{_drsReplicationConfiguration
                                                          ::
                                                          !(Maybe
                                                              ReplicationConfiguration),
                                                          _drsRegistryId ::
                                                          !(Maybe Text),
                                                          _drsResponseStatus ::
                                                          !Int}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'DescribeRegistryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsReplicationConfiguration' - The replication configuration for the registry.
--
-- * 'drsRegistryId' - The ID of the registry.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeRegistryResponse
    :: Int -- ^ 'drsResponseStatus'
    -> DescribeRegistryResponse
describeRegistryResponse pResponseStatus_
  = DescribeRegistryResponse'{_drsReplicationConfiguration
                                = Nothing,
                              _drsRegistryId = Nothing,
                              _drsResponseStatus = pResponseStatus_}

-- | The replication configuration for the registry.
drsReplicationConfiguration :: Lens' DescribeRegistryResponse (Maybe ReplicationConfiguration)
drsReplicationConfiguration = lens _drsReplicationConfiguration (\ s a -> s{_drsReplicationConfiguration = a})

-- | The ID of the registry.
drsRegistryId :: Lens' DescribeRegistryResponse (Maybe Text)
drsRegistryId = lens _drsRegistryId (\ s a -> s{_drsRegistryId = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeRegistryResponse Int
drsResponseStatus = lens _drsResponseStatus (\ s a -> s{_drsResponseStatus = a})

instance NFData DescribeRegistryResponse where
