{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType (
  FragmentSelectorType (
    ..
    , FSTProducerTimestamp
    , FSTServerTimestamp
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FragmentSelectorType = FragmentSelectorType' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern FSTProducerTimestamp :: FragmentSelectorType
pattern FSTProducerTimestamp = FragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern FSTServerTimestamp :: FragmentSelectorType
pattern FSTServerTimestamp = FragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  FSTProducerTimestamp,
  FSTServerTimestamp,
  FragmentSelectorType' #-}

instance FromText FragmentSelectorType where
    parser = (FragmentSelectorType' . mk) <$> takeText

instance ToText FragmentSelectorType where
    toText (FragmentSelectorType' ci) = original ci

instance Hashable     FragmentSelectorType
instance NFData       FragmentSelectorType
instance ToByteString FragmentSelectorType
instance ToQuery      FragmentSelectorType
instance ToHeader     FragmentSelectorType

instance ToJSON FragmentSelectorType where
    toJSON = toJSONText
