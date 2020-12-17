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
-- Module      : Network.AWS.DirectoryService.DisableClientAuthentication
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables alternative client authentication methods for the specified directory. 
--
--
module Network.AWS.DirectoryService.DisableClientAuthentication
    (
    -- * Creating a Request
      disableClientAuthentication
    , DisableClientAuthentication
    -- * Request Lenses
    , dcaDirectoryId
    , dcaType

    -- * Destructuring the Response
    , disableClientAuthenticationResponse
    , DisableClientAuthenticationResponse
    -- * Response Lenses
    , dcarsResponseStatus
    ) where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableClientAuthentication' smart constructor.
data DisableClientAuthentication = DisableClientAuthentication'{_dcaDirectoryId
                                                                :: !Text,
                                                                _dcaType ::
                                                                !ClientAuthenticationType}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'DisableClientAuthentication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaDirectoryId' - The identifier of the directory 
--
-- * 'dcaType' - The type of client authentication to disable. Currently, only the parameter, @SmartCard@ is supported.
disableClientAuthentication
    :: Text -- ^ 'dcaDirectoryId'
    -> ClientAuthenticationType -- ^ 'dcaType'
    -> DisableClientAuthentication
disableClientAuthentication pDirectoryId_ pType_
  = DisableClientAuthentication'{_dcaDirectoryId =
                                   pDirectoryId_,
                                 _dcaType = pType_}

-- | The identifier of the directory 
dcaDirectoryId :: Lens' DisableClientAuthentication Text
dcaDirectoryId = lens _dcaDirectoryId (\ s a -> s{_dcaDirectoryId = a})

-- | The type of client authentication to disable. Currently, only the parameter, @SmartCard@ is supported.
dcaType :: Lens' DisableClientAuthentication ClientAuthenticationType
dcaType = lens _dcaType (\ s a -> s{_dcaType = a})

instance AWSRequest DisableClientAuthentication where
        type Rs DisableClientAuthentication =
             DisableClientAuthenticationResponse
        request = postJSON directoryService
        response
          = receiveEmpty
              (\ s h x ->
                 DisableClientAuthenticationResponse' <$>
                   (pure (fromEnum s)))

instance Hashable DisableClientAuthentication where

instance NFData DisableClientAuthentication where

instance ToHeaders DisableClientAuthentication where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("DirectoryService_20150416.DisableClientAuthentication"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DisableClientAuthentication where
        toJSON DisableClientAuthentication'{..}
          = object
              (catMaybes
                 [Just ("DirectoryId" .= _dcaDirectoryId),
                  Just ("Type" .= _dcaType)])

instance ToPath DisableClientAuthentication where
        toPath = const "/"

instance ToQuery DisableClientAuthentication where
        toQuery = const mempty

-- | /See:/ 'disableClientAuthenticationResponse' smart constructor.
newtype DisableClientAuthenticationResponse = DisableClientAuthenticationResponse'{_dcarsResponseStatus
                                                                                   ::
                                                                                   Int}
                                                deriving (Eq, Read, Show, Data,
                                                          Typeable, Generic)

-- | Creates a value of 'DisableClientAuthenticationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcarsResponseStatus' - -- | The response status code.
disableClientAuthenticationResponse
    :: Int -- ^ 'dcarsResponseStatus'
    -> DisableClientAuthenticationResponse
disableClientAuthenticationResponse pResponseStatus_
  = DisableClientAuthenticationResponse'{_dcarsResponseStatus
                                           = pResponseStatus_}

-- | -- | The response status code.
dcarsResponseStatus :: Lens' DisableClientAuthenticationResponse Int
dcarsResponseStatus = lens _dcarsResponseStatus (\ s a -> s{_dcarsResponseStatus = a})

instance NFData DisableClientAuthenticationResponse
         where
