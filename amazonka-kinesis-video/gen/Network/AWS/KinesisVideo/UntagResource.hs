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
-- Module      : Network.AWS.KinesisVideo.UntagResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.
--
--
module Network.AWS.KinesisVideo.UntagResource
    (
    -- * Creating a Request
      untagResource
    , UntagResource
    -- * Request Lenses
    , urResourceARN
    , urTagKeyList

    -- * Destructuring the Response
    , untagResourceResponse
    , UntagResourceResponse
    -- * Response Lenses
    , urrsResponseStatus
    ) where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagResource' smart constructor.
data UntagResource = UntagResource'{_urResourceARN ::
                                    !Text,
                                    _urTagKeyList :: !(List1 Text)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urResourceARN' - The Amazon Resource Name (ARN) of the signaling channel from which you want to remove tags.
--
-- * 'urTagKeyList' - A list of the keys of the tags that you want to remove.
untagResource
    :: Text -- ^ 'urResourceARN'
    -> NonEmpty Text -- ^ 'urTagKeyList'
    -> UntagResource
untagResource pResourceARN_ pTagKeyList_
  = UntagResource'{_urResourceARN = pResourceARN_,
                   _urTagKeyList = _List1 # pTagKeyList_}

-- | The Amazon Resource Name (ARN) of the signaling channel from which you want to remove tags.
urResourceARN :: Lens' UntagResource Text
urResourceARN = lens _urResourceARN (\ s a -> s{_urResourceARN = a})

-- | A list of the keys of the tags that you want to remove.
urTagKeyList :: Lens' UntagResource (NonEmpty Text)
urTagKeyList = lens _urTagKeyList (\ s a -> s{_urTagKeyList = a}) . _List1

instance AWSRequest UntagResource where
        type Rs UntagResource = UntagResourceResponse
        request = postJSON kinesisVideo
        response
          = receiveEmpty
              (\ s h x ->
                 UntagResourceResponse' <$> (pure (fromEnum s)))

instance Hashable UntagResource where

instance NFData UntagResource where

instance ToHeaders UntagResource where
        toHeaders = const mempty

instance ToJSON UntagResource where
        toJSON UntagResource'{..}
          = object
              (catMaybes
                 [Just ("ResourceARN" .= _urResourceARN),
                  Just ("TagKeyList" .= _urTagKeyList)])

instance ToPath UntagResource where
        toPath = const "/UntagResource"

instance ToQuery UntagResource where
        toQuery = const mempty

-- | /See:/ 'untagResourceResponse' smart constructor.
newtype UntagResourceResponse = UntagResourceResponse'{_urrsResponseStatus
                                                       :: Int}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'UntagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrsResponseStatus' - -- | The response status code.
untagResourceResponse
    :: Int -- ^ 'urrsResponseStatus'
    -> UntagResourceResponse
untagResourceResponse pResponseStatus_
  = UntagResourceResponse'{_urrsResponseStatus =
                             pResponseStatus_}

-- | -- | The response status code.
urrsResponseStatus :: Lens' UntagResourceResponse Int
urrsResponseStatus = lens _urrsResponseStatus (\ s a -> s{_urrsResponseStatus = a})

instance NFData UntagResourceResponse where
