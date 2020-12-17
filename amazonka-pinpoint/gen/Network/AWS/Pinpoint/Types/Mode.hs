{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Mode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.Mode (
  Mode (
    ..
    , Delivery
    , Filter
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Mode = Mode' (CI Text)
              deriving (Eq, Ord, Read, Show, Data, Typeable,
                        Generic)

pattern Delivery :: Mode
pattern Delivery = Mode' "DELIVERY"

pattern Filter :: Mode
pattern Filter = Mode' "FILTER"

{-# COMPLETE
  Delivery,
  Filter,
  Mode' #-}

instance FromText Mode where
    parser = (Mode' . mk) <$> takeText

instance ToText Mode where
    toText (Mode' ci) = original ci

instance Hashable     Mode
instance NFData       Mode
instance ToByteString Mode
instance ToQuery      Mode
instance ToHeader     Mode

instance ToJSON Mode where
    toJSON = toJSONText

instance FromJSON Mode where
    parseJSON = parseJSONText "Mode"
