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
-- Module      : Network.AWS.Pinpoint.GetApps
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the applications that are associated with your Amazon Pinpoint account.
--
--
module Network.AWS.Pinpoint.GetApps
    (
    -- * Creating a Request
      getApps
    , GetApps
    -- * Request Lenses
    , gaToken
    , gaPageSize

    -- * Destructuring the Response
    , getAppsResponse
    , GetAppsResponse
    -- * Response Lenses
    , gasrsResponseStatus
    , gasrsApplicationsResponse
    ) where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getApps' smart constructor.
data GetApps = GetApps'{_gaToken :: !(Maybe Text),
                        _gaPageSize :: !(Maybe Text)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetApps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gaPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
getApps
    :: GetApps
getApps
  = GetApps'{_gaToken = Nothing, _gaPageSize = Nothing}

-- | The NextToken string that specifies which page of results to return in a paginated response.
gaToken :: Lens' GetApps (Maybe Text)
gaToken = lens _gaToken (\ s a -> s{_gaToken = a})

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gaPageSize :: Lens' GetApps (Maybe Text)
gaPageSize = lens _gaPageSize (\ s a -> s{_gaPageSize = a})

instance AWSRequest GetApps where
        type Rs GetApps = GetAppsResponse
        request = get pinpoint
        response
          = receiveJSON
              (\ s h x ->
                 GetAppsResponse' <$>
                   (pure (fromEnum s)) <*> (eitherParseJSON x))

instance Hashable GetApps where

instance NFData GetApps where

instance ToHeaders GetApps where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath GetApps where
        toPath = const "/v1/apps"

instance ToQuery GetApps where
        toQuery GetApps'{..}
          = mconcat
              ["token" =: _gaToken, "page-size" =: _gaPageSize]

-- | /See:/ 'getAppsResponse' smart constructor.
data GetAppsResponse = GetAppsResponse'{_gasrsResponseStatus
                                        :: !Int,
                                        _gasrsApplicationsResponse ::
                                        !ApplicationsResponse}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAppsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasrsResponseStatus' - -- | The response status code.
--
-- * 'gasrsApplicationsResponse' - Undocumented member.
getAppsResponse
    :: Int -- ^ 'gasrsResponseStatus'
    -> ApplicationsResponse -- ^ 'gasrsApplicationsResponse'
    -> GetAppsResponse
getAppsResponse pResponseStatus_
  pApplicationsResponse_
  = GetAppsResponse'{_gasrsResponseStatus =
                       pResponseStatus_,
                     _gasrsApplicationsResponse = pApplicationsResponse_}

-- | -- | The response status code.
gasrsResponseStatus :: Lens' GetAppsResponse Int
gasrsResponseStatus = lens _gasrsResponseStatus (\ s a -> s{_gasrsResponseStatus = a})

-- | Undocumented member.
gasrsApplicationsResponse :: Lens' GetAppsResponse ApplicationsResponse
gasrsApplicationsResponse = lens _gasrsApplicationsResponse (\ s a -> s{_gasrsApplicationsResponse = a})

instance NFData GetAppsResponse where
