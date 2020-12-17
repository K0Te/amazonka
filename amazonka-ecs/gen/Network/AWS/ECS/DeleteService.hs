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
-- Module      : Network.AWS.ECS.DeleteService
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see 'UpdateService' .
--
--
-- /Important:/ If you attempt to create a new service with the same name as an existing service in either @ACTIVE@ or @DRAINING@ status, you receive an error.
--
module Network.AWS.ECS.DeleteService
    (
    -- * Creating a Request
      deleteService
    , DeleteService
    -- * Request Lenses
    , dsCluster
    , dsForce
    , dsService

    -- * Destructuring the Response
    , deleteServiceResponse
    , DeleteServiceResponse
    -- * Response Lenses
    , dsrsService
    , dsrsResponseStatus
    ) where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteService' smart constructor.
data DeleteService = DeleteService'{_dsCluster ::
                                    !(Maybe Text),
                                    _dsForce :: !(Maybe Bool),
                                    _dsService :: !Text}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'dsForce' - If @true@ , allows you to delete a service even if it has not been scaled down to zero tasks. It is only necessary to use this if the service is using the @REPLICA@ scheduling strategy.
--
-- * 'dsService' - The name of the service to delete.
deleteService
    :: Text -- ^ 'dsService'
    -> DeleteService
deleteService pService_
  = DeleteService'{_dsCluster = Nothing,
                   _dsForce = Nothing, _dsService = pService_}

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.
dsCluster :: Lens' DeleteService (Maybe Text)
dsCluster = lens _dsCluster (\ s a -> s{_dsCluster = a})

-- | If @true@ , allows you to delete a service even if it has not been scaled down to zero tasks. It is only necessary to use this if the service is using the @REPLICA@ scheduling strategy.
dsForce :: Lens' DeleteService (Maybe Bool)
dsForce = lens _dsForce (\ s a -> s{_dsForce = a})

-- | The name of the service to delete.
dsService :: Lens' DeleteService Text
dsService = lens _dsService (\ s a -> s{_dsService = a})

instance AWSRequest DeleteService where
        type Rs DeleteService = DeleteServiceResponse
        request = postJSON ecs
        response
          = receiveJSON
              (\ s h x ->
                 DeleteServiceResponse' <$>
                   (x .?> "service") <*> (pure (fromEnum s)))

instance Hashable DeleteService where

instance NFData DeleteService where

instance ToHeaders DeleteService where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerServiceV20141113.DeleteService"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteService where
        toJSON DeleteService'{..}
          = object
              (catMaybes
                 [("cluster" .=) <$> _dsCluster,
                  ("force" .=) <$> _dsForce,
                  Just ("service" .= _dsService)])

instance ToPath DeleteService where
        toPath = const "/"

instance ToQuery DeleteService where
        toQuery = const mempty

-- | /See:/ 'deleteServiceResponse' smart constructor.
data DeleteServiceResponse = DeleteServiceResponse'{_dsrsService
                                                    ::
                                                    !(Maybe ContainerService),
                                                    _dsrsResponseStatus :: !Int}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'DeleteServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrsService' - The full description of the deleted service.
--
-- * 'dsrsResponseStatus' - -- | The response status code.
deleteServiceResponse
    :: Int -- ^ 'dsrsResponseStatus'
    -> DeleteServiceResponse
deleteServiceResponse pResponseStatus_
  = DeleteServiceResponse'{_dsrsService = Nothing,
                           _dsrsResponseStatus = pResponseStatus_}

-- | The full description of the deleted service.
dsrsService :: Lens' DeleteServiceResponse (Maybe ContainerService)
dsrsService = lens _dsrsService (\ s a -> s{_dsrsService = a})

-- | -- | The response status code.
dsrsResponseStatus :: Lens' DeleteServiceResponse Int
dsrsResponseStatus = lens _dsrsResponseStatus (\ s a -> s{_dsrsResponseStatus = a})

instance NFData DeleteServiceResponse where
