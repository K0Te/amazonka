{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceMetering.Types.Tag
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MarketplaceMetering.Types.Tag where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata assigned to an allocation. Each tag is made up of a key and a value.
--
--
--
-- /See:/ 'tag' smart constructor.
data Tag = Tag'{_tagKey :: !Text, _tagValue :: !Text}
             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagKey' - One part of a key-value pair that makes up a tag. A key is a label that acts like a category for the specific tag values.
--
-- * 'tagValue' - One part of a key-value pair that makes up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.
tag
    :: Text -- ^ 'tagKey'
    -> Text -- ^ 'tagValue'
    -> Tag
tag pKey_ pValue_
  = Tag'{_tagKey = pKey_, _tagValue = pValue_}

-- | One part of a key-value pair that makes up a tag. A key is a label that acts like a category for the specific tag values.
tagKey :: Lens' Tag Text
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

-- | One part of a key-value pair that makes up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.
tagValue :: Lens' Tag Text
tagValue = lens _tagValue (\ s a -> s{_tagValue = a})

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ x -> Tag' <$> (x .: "Key") <*> (x .: "Value"))

instance Hashable Tag where

instance NFData Tag where

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [Just ("Key" .= _tagKey),
                  Just ("Value" .= _tagValue)])
