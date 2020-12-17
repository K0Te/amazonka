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
-- Module      : Network.AWS.GuardDuty.GetThreatIntelSet
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
--
--
module Network.AWS.GuardDuty.GetThreatIntelSet
    (
    -- * Creating a Request
      getThreatIntelSet
    , GetThreatIntelSet
    -- * Request Lenses
    , gtisDetectorId
    , gtisThreatIntelSetId

    -- * Destructuring the Response
    , getThreatIntelSetResponse
    , GetThreatIntelSetResponse
    -- * Response Lenses
    , gtisrsTags
    , gtisrsResponseStatus
    , gtisrsName
    , gtisrsFormat
    , gtisrsLocation
    , gtisrsStatus
    ) where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getThreatIntelSet' smart constructor.
data GetThreatIntelSet = GetThreatIntelSet'{_gtisDetectorId
                                            :: !Text,
                                            _gtisThreatIntelSetId :: !Text}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetThreatIntelSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtisDetectorId' - The unique ID of the detector that the threatIntelSet is associated with.
--
-- * 'gtisThreatIntelSetId' - The unique ID of the threatIntelSet that you want to get.
getThreatIntelSet
    :: Text -- ^ 'gtisDetectorId'
    -> Text -- ^ 'gtisThreatIntelSetId'
    -> GetThreatIntelSet
getThreatIntelSet pDetectorId_ pThreatIntelSetId_
  = GetThreatIntelSet'{_gtisDetectorId = pDetectorId_,
                       _gtisThreatIntelSetId = pThreatIntelSetId_}

-- | The unique ID of the detector that the threatIntelSet is associated with.
gtisDetectorId :: Lens' GetThreatIntelSet Text
gtisDetectorId = lens _gtisDetectorId (\ s a -> s{_gtisDetectorId = a})

-- | The unique ID of the threatIntelSet that you want to get.
gtisThreatIntelSetId :: Lens' GetThreatIntelSet Text
gtisThreatIntelSetId = lens _gtisThreatIntelSetId (\ s a -> s{_gtisThreatIntelSetId = a})

instance AWSRequest GetThreatIntelSet where
        type Rs GetThreatIntelSet = GetThreatIntelSetResponse
        request = get guardDuty
        response
          = receiveJSON
              (\ s h x ->
                 GetThreatIntelSetResponse' <$>
                   (x .?> "tags" .!@ mempty) <*> (pure (fromEnum s)) <*>
                     (x .:> "name")
                     <*> (x .:> "format")
                     <*> (x .:> "location")
                     <*> (x .:> "status"))

instance Hashable GetThreatIntelSet where

instance NFData GetThreatIntelSet where

instance ToHeaders GetThreatIntelSet where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath GetThreatIntelSet where
        toPath GetThreatIntelSet'{..}
          = mconcat
              ["/detector/", toBS _gtisDetectorId,
               "/threatintelset/", toBS _gtisThreatIntelSetId]

instance ToQuery GetThreatIntelSet where
        toQuery = const mempty

-- | /See:/ 'getThreatIntelSetResponse' smart constructor.
data GetThreatIntelSetResponse = GetThreatIntelSetResponse'{_gtisrsTags
                                                            ::
                                                            !(Maybe
                                                                (Map Text
                                                                   Text)),
                                                            _gtisrsResponseStatus
                                                            :: !Int,
                                                            _gtisrsName ::
                                                            !Text,
                                                            _gtisrsFormat ::
                                                            !ThreatIntelSetFormat,
                                                            _gtisrsLocation ::
                                                            !Text,
                                                            _gtisrsStatus ::
                                                            !ThreatIntelSetStatus}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'GetThreatIntelSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtisrsTags' - The tags of the threat list resource.
--
-- * 'gtisrsResponseStatus' - -- | The response status code.
--
-- * 'gtisrsName' - A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
--
-- * 'gtisrsFormat' - The format of the threatIntelSet.
--
-- * 'gtisrsLocation' - The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
--
-- * 'gtisrsStatus' - The status of threatIntelSet file uploaded.
getThreatIntelSetResponse
    :: Int -- ^ 'gtisrsResponseStatus'
    -> Text -- ^ 'gtisrsName'
    -> ThreatIntelSetFormat -- ^ 'gtisrsFormat'
    -> Text -- ^ 'gtisrsLocation'
    -> ThreatIntelSetStatus -- ^ 'gtisrsStatus'
    -> GetThreatIntelSetResponse
getThreatIntelSetResponse pResponseStatus_ pName_
  pFormat_ pLocation_ pStatus_
  = GetThreatIntelSetResponse'{_gtisrsTags = Nothing,
                               _gtisrsResponseStatus = pResponseStatus_,
                               _gtisrsName = pName_, _gtisrsFormat = pFormat_,
                               _gtisrsLocation = pLocation_,
                               _gtisrsStatus = pStatus_}

-- | The tags of the threat list resource.
gtisrsTags :: Lens' GetThreatIntelSetResponse (HashMap Text Text)
gtisrsTags = lens _gtisrsTags (\ s a -> s{_gtisrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gtisrsResponseStatus :: Lens' GetThreatIntelSetResponse Int
gtisrsResponseStatus = lens _gtisrsResponseStatus (\ s a -> s{_gtisrsResponseStatus = a})

-- | A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
gtisrsName :: Lens' GetThreatIntelSetResponse Text
gtisrsName = lens _gtisrsName (\ s a -> s{_gtisrsName = a})

-- | The format of the threatIntelSet.
gtisrsFormat :: Lens' GetThreatIntelSetResponse ThreatIntelSetFormat
gtisrsFormat = lens _gtisrsFormat (\ s a -> s{_gtisrsFormat = a})

-- | The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
gtisrsLocation :: Lens' GetThreatIntelSetResponse Text
gtisrsLocation = lens _gtisrsLocation (\ s a -> s{_gtisrsLocation = a})

-- | The status of threatIntelSet file uploaded.
gtisrsStatus :: Lens' GetThreatIntelSetResponse ThreatIntelSetStatus
gtisrsStatus = lens _gtisrsStatus (\ s a -> s{_gtisrsStatus = a})

instance NFData GetThreatIntelSetResponse where
