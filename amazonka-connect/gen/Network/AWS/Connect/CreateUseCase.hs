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
-- Module      : Network.AWS.Connect.CreateUseCase
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Creates a use case for an AppIntegration association.
--
module Network.AWS.Connect.CreateUseCase
    (
    -- * Creating a Request
      createUseCase
    , CreateUseCase
    -- * Request Lenses
    , cucInstanceId
    , cucIntegrationAssociationId
    , cucUseCaseType

    -- * Destructuring the Response
    , createUseCaseResponse
    , CreateUseCaseResponse
    -- * Response Lenses
    , cucrsUseCaseARN
    , cucrsUseCaseId
    , cucrsResponseStatus
    ) where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createUseCase' smart constructor.
data CreateUseCase = CreateUseCase'{_cucInstanceId ::
                                    !Text,
                                    _cucIntegrationAssociationId :: !Text,
                                    _cucUseCaseType :: !UseCaseType}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUseCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cucInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'cucIntegrationAssociationId' - The identifier for the AppIntegration association.
--
-- * 'cucUseCaseType' - The type of use case to associate to the AppIntegration association. Each AppIntegration association can have only one of each use case type.
createUseCase
    :: Text -- ^ 'cucInstanceId'
    -> Text -- ^ 'cucIntegrationAssociationId'
    -> UseCaseType -- ^ 'cucUseCaseType'
    -> CreateUseCase
createUseCase pInstanceId_ pIntegrationAssociationId_
  pUseCaseType_
  = CreateUseCase'{_cucInstanceId = pInstanceId_,
                   _cucIntegrationAssociationId =
                     pIntegrationAssociationId_,
                   _cucUseCaseType = pUseCaseType_}

-- | The identifier of the Amazon Connect instance.
cucInstanceId :: Lens' CreateUseCase Text
cucInstanceId = lens _cucInstanceId (\ s a -> s{_cucInstanceId = a})

-- | The identifier for the AppIntegration association.
cucIntegrationAssociationId :: Lens' CreateUseCase Text
cucIntegrationAssociationId = lens _cucIntegrationAssociationId (\ s a -> s{_cucIntegrationAssociationId = a})

-- | The type of use case to associate to the AppIntegration association. Each AppIntegration association can have only one of each use case type.
cucUseCaseType :: Lens' CreateUseCase UseCaseType
cucUseCaseType = lens _cucUseCaseType (\ s a -> s{_cucUseCaseType = a})

instance AWSRequest CreateUseCase where
        type Rs CreateUseCase = CreateUseCaseResponse
        request = putJSON connect
        response
          = receiveJSON
              (\ s h x ->
                 CreateUseCaseResponse' <$>
                   (x .?> "UseCaseArn") <*> (x .?> "UseCaseId") <*>
                     (pure (fromEnum s)))

instance Hashable CreateUseCase where

instance NFData CreateUseCase where

instance ToHeaders CreateUseCase where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateUseCase where
        toJSON CreateUseCase'{..}
          = object
              (catMaybes [Just ("UseCaseType" .= _cucUseCaseType)])

instance ToPath CreateUseCase where
        toPath CreateUseCase'{..}
          = mconcat
              ["/instance/", toBS _cucInstanceId,
               "/integration-associations/",
               toBS _cucIntegrationAssociationId, "/use-cases"]

instance ToQuery CreateUseCase where
        toQuery = const mempty

-- | /See:/ 'createUseCaseResponse' smart constructor.
data CreateUseCaseResponse = CreateUseCaseResponse'{_cucrsUseCaseARN
                                                    :: !(Maybe Text),
                                                    _cucrsUseCaseId ::
                                                    !(Maybe Text),
                                                    _cucrsResponseStatus ::
                                                    !Int}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'CreateUseCaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cucrsUseCaseARN' - The Amazon Resource Name (ARN) for the use case.
--
-- * 'cucrsUseCaseId' - The identifier of the use case.
--
-- * 'cucrsResponseStatus' - -- | The response status code.
createUseCaseResponse
    :: Int -- ^ 'cucrsResponseStatus'
    -> CreateUseCaseResponse
createUseCaseResponse pResponseStatus_
  = CreateUseCaseResponse'{_cucrsUseCaseARN = Nothing,
                           _cucrsUseCaseId = Nothing,
                           _cucrsResponseStatus = pResponseStatus_}

-- | The Amazon Resource Name (ARN) for the use case.
cucrsUseCaseARN :: Lens' CreateUseCaseResponse (Maybe Text)
cucrsUseCaseARN = lens _cucrsUseCaseARN (\ s a -> s{_cucrsUseCaseARN = a})

-- | The identifier of the use case.
cucrsUseCaseId :: Lens' CreateUseCaseResponse (Maybe Text)
cucrsUseCaseId = lens _cucrsUseCaseId (\ s a -> s{_cucrsUseCaseId = a})

-- | -- | The response status code.
cucrsResponseStatus :: Lens' CreateUseCaseResponse Int
cucrsResponseStatus = lens _cucrsResponseStatus (\ s a -> s{_cucrsResponseStatus = a})

instance NFData CreateUseCaseResponse where
