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
-- Module      : Network.AWS.ECR.DeleteRepository
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a repository. If the repository contains images, you must either delete all images in the repository or use the @force@ option to delete the repository.
--
--
module Network.AWS.ECR.DeleteRepository
    (
    -- * Creating a Request
      deleteRepository
    , DeleteRepository
    -- * Request Lenses
    , dForce
    , dRegistryId
    , dRepositoryName

    -- * Destructuring the Response
    , deleteRepositoryResponse
    , DeleteRepositoryResponse
    -- * Response Lenses
    , drrrsRepository
    , drrrsResponseStatus
    ) where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRepository' smart constructor.
data DeleteRepository = DeleteRepository'{_dForce ::
                                          !(Maybe Bool),
                                          _dRegistryId :: !(Maybe Text),
                                          _dRepositoryName :: !Text}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRepository' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dForce' - If a repository contains images, forces the deletion.
--
-- * 'dRegistryId' - The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.
--
-- * 'dRepositoryName' - The name of the repository to delete.
deleteRepository
    :: Text -- ^ 'dRepositoryName'
    -> DeleteRepository
deleteRepository pRepositoryName_
  = DeleteRepository'{_dForce = Nothing,
                      _dRegistryId = Nothing,
                      _dRepositoryName = pRepositoryName_}

-- | If a repository contains images, forces the deletion.
dForce :: Lens' DeleteRepository (Maybe Bool)
dForce = lens _dForce (\ s a -> s{_dForce = a})

-- | The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.
dRegistryId :: Lens' DeleteRepository (Maybe Text)
dRegistryId = lens _dRegistryId (\ s a -> s{_dRegistryId = a})

-- | The name of the repository to delete.
dRepositoryName :: Lens' DeleteRepository Text
dRepositoryName = lens _dRepositoryName (\ s a -> s{_dRepositoryName = a})

instance AWSRequest DeleteRepository where
        type Rs DeleteRepository = DeleteRepositoryResponse
        request = postJSON ecr
        response
          = receiveJSON
              (\ s h x ->
                 DeleteRepositoryResponse' <$>
                   (x .?> "repository") <*> (pure (fromEnum s)))

instance Hashable DeleteRepository where

instance NFData DeleteRepository where

instance ToHeaders DeleteRepository where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerRegistry_V20150921.DeleteRepository"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteRepository where
        toJSON DeleteRepository'{..}
          = object
              (catMaybes
                 [("force" .=) <$> _dForce,
                  ("registryId" .=) <$> _dRegistryId,
                  Just ("repositoryName" .= _dRepositoryName)])

instance ToPath DeleteRepository where
        toPath = const "/"

instance ToQuery DeleteRepository where
        toQuery = const mempty

-- | /See:/ 'deleteRepositoryResponse' smart constructor.
data DeleteRepositoryResponse = DeleteRepositoryResponse'{_drrrsRepository
                                                          ::
                                                          !(Maybe Repository),
                                                          _drrrsResponseStatus
                                                          :: !Int}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'DeleteRepositoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsRepository' - The repository that was deleted.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
deleteRepositoryResponse
    :: Int -- ^ 'drrrsResponseStatus'
    -> DeleteRepositoryResponse
deleteRepositoryResponse pResponseStatus_
  = DeleteRepositoryResponse'{_drrrsRepository =
                                Nothing,
                              _drrrsResponseStatus = pResponseStatus_}

-- | The repository that was deleted.
drrrsRepository :: Lens' DeleteRepositoryResponse (Maybe Repository)
drrrsRepository = lens _drrrsRepository (\ s a -> s{_drrrsRepository = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DeleteRepositoryResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\ s a -> s{_drrrsResponseStatus = a})

instance NFData DeleteRepositoryResponse where
