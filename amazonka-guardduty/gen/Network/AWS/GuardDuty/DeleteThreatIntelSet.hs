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
-- Module      : Network.AWS.GuardDuty.DeleteThreatIntelSet
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
--
--
module Network.AWS.GuardDuty.DeleteThreatIntelSet
    (
    -- * Creating a Request
      deleteThreatIntelSet
    , DeleteThreatIntelSet
    -- * Request Lenses
    , dtisDetectorId
    , dtisThreatIntelSetId

    -- * Destructuring the Response
    , deleteThreatIntelSetResponse
    , DeleteThreatIntelSetResponse
    -- * Response Lenses
    , dtisrsResponseStatus
    ) where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteThreatIntelSet' smart constructor.
data DeleteThreatIntelSet = DeleteThreatIntelSet'{_dtisDetectorId
                                                  :: !Text,
                                                  _dtisThreatIntelSetId ::
                                                  !Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteThreatIntelSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtisDetectorId' - The unique ID of the detector that the threatIntelSet is associated with.
--
-- * 'dtisThreatIntelSetId' - The unique ID of the threatIntelSet that you want to delete.
deleteThreatIntelSet
    :: Text -- ^ 'dtisDetectorId'
    -> Text -- ^ 'dtisThreatIntelSetId'
    -> DeleteThreatIntelSet
deleteThreatIntelSet pDetectorId_ pThreatIntelSetId_
  = DeleteThreatIntelSet'{_dtisDetectorId =
                            pDetectorId_,
                          _dtisThreatIntelSetId = pThreatIntelSetId_}

-- | The unique ID of the detector that the threatIntelSet is associated with.
dtisDetectorId :: Lens' DeleteThreatIntelSet Text
dtisDetectorId = lens _dtisDetectorId (\ s a -> s{_dtisDetectorId = a})

-- | The unique ID of the threatIntelSet that you want to delete.
dtisThreatIntelSetId :: Lens' DeleteThreatIntelSet Text
dtisThreatIntelSetId = lens _dtisThreatIntelSetId (\ s a -> s{_dtisThreatIntelSetId = a})

instance AWSRequest DeleteThreatIntelSet where
        type Rs DeleteThreatIntelSet =
             DeleteThreatIntelSetResponse
        request = delete guardDuty
        response
          = receiveEmpty
              (\ s h x ->
                 DeleteThreatIntelSetResponse' <$>
                   (pure (fromEnum s)))

instance Hashable DeleteThreatIntelSet where

instance NFData DeleteThreatIntelSet where

instance ToHeaders DeleteThreatIntelSet where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DeleteThreatIntelSet where
        toPath DeleteThreatIntelSet'{..}
          = mconcat
              ["/detector/", toBS _dtisDetectorId,
               "/threatintelset/", toBS _dtisThreatIntelSetId]

instance ToQuery DeleteThreatIntelSet where
        toQuery = const mempty

-- | /See:/ 'deleteThreatIntelSetResponse' smart constructor.
newtype DeleteThreatIntelSetResponse = DeleteThreatIntelSetResponse'{_dtisrsResponseStatus
                                                                     :: Int}
                                         deriving (Eq, Read, Show, Data,
                                                   Typeable, Generic)

-- | Creates a value of 'DeleteThreatIntelSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtisrsResponseStatus' - -- | The response status code.
deleteThreatIntelSetResponse
    :: Int -- ^ 'dtisrsResponseStatus'
    -> DeleteThreatIntelSetResponse
deleteThreatIntelSetResponse pResponseStatus_
  = DeleteThreatIntelSetResponse'{_dtisrsResponseStatus
                                    = pResponseStatus_}

-- | -- | The response status code.
dtisrsResponseStatus :: Lens' DeleteThreatIntelSetResponse Int
dtisrsResponseStatus = lens _dtisrsResponseStatus (\ s a -> s{_dtisrsResponseStatus = a})

instance NFData DeleteThreatIntelSetResponse where
