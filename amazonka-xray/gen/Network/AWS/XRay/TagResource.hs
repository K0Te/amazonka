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
-- Module      : Network.AWS.XRay.TagResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies tags to an existing AWS X-Ray group or sampling rule.
--
--
module Network.AWS.XRay.TagResource
    (
    -- * Creating a Request
      tagResource
    , TagResource
    -- * Request Lenses
    , trResourceARN
    , trTags

    -- * Destructuring the Response
    , tagResourceResponse
    , TagResourceResponse
    -- * Response Lenses
    , trrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'tagResource' smart constructor.
data TagResource = TagResource'{_trResourceARN ::
                                !Text,
                                _trTags :: ![Tag]}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trResourceARN' - The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
--
-- * 'trTags' - A map that contains one or more tag keys and tag values to attach to an X-Ray group or sampling rule. For more information about ways to use tags, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference/ . The following restrictions apply to tags:     * Maximum number of user-applied tags per resource: 50     * Maximum tag key length: 128 Unicode characters     * Maximum tag value length: 256 Unicode characters     * Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . : / = + - and @     * Tag keys and values are case sensitive.     * Don't use @aws:@ as a prefix for keys; it's reserved for AWS use. You cannot edit or delete system tags.
tagResource
    :: Text -- ^ 'trResourceARN'
    -> TagResource
tagResource pResourceARN_
  = TagResource'{_trResourceARN = pResourceARN_,
                 _trTags = mempty}

-- | The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
trResourceARN :: Lens' TagResource Text
trResourceARN = lens _trResourceARN (\ s a -> s{_trResourceARN = a})

-- | A map that contains one or more tag keys and tag values to attach to an X-Ray group or sampling rule. For more information about ways to use tags, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference/ . The following restrictions apply to tags:     * Maximum number of user-applied tags per resource: 50     * Maximum tag key length: 128 Unicode characters     * Maximum tag value length: 256 Unicode characters     * Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . : / = + - and @     * Tag keys and values are case sensitive.     * Don't use @aws:@ as a prefix for keys; it's reserved for AWS use. You cannot edit or delete system tags.
trTags :: Lens' TagResource [Tag]
trTags = lens _trTags (\ s a -> s{_trTags = a}) . _Coerce

instance AWSRequest TagResource where
        type Rs TagResource = TagResourceResponse
        request = postJSON xRay
        response
          = receiveEmpty
              (\ s h x ->
                 TagResourceResponse' <$> (pure (fromEnum s)))

instance Hashable TagResource where

instance NFData TagResource where

instance ToHeaders TagResource where
        toHeaders = const mempty

instance ToJSON TagResource where
        toJSON TagResource'{..}
          = object
              (catMaybes
                 [Just ("ResourceARN" .= _trResourceARN),
                  Just ("Tags" .= _trTags)])

instance ToPath TagResource where
        toPath = const "/TagResource"

instance ToQuery TagResource where
        toQuery = const mempty

-- | /See:/ 'tagResourceResponse' smart constructor.
newtype TagResourceResponse = TagResourceResponse'{_trrsResponseStatus
                                                   :: Int}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'TagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrsResponseStatus' - -- | The response status code.
tagResourceResponse
    :: Int -- ^ 'trrsResponseStatus'
    -> TagResourceResponse
tagResourceResponse pResponseStatus_
  = TagResourceResponse'{_trrsResponseStatus =
                           pResponseStatus_}

-- | -- | The response status code.
trrsResponseStatus :: Lens' TagResourceResponse Int
trrsResponseStatus = lens _trrsResponseStatus (\ s a -> s{_trrsResponseStatus = a})

instance NFData TagResourceResponse where
