{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.SnowballType (
  SnowballType (
    ..
    , Edge
    , EdgeC
    , EdgeCg
    , EdgeS
    , SNC1Hdd
    , Standard
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SnowballType = SnowballType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Edge :: SnowballType
pattern Edge = SnowballType' "EDGE"

pattern EdgeC :: SnowballType
pattern EdgeC = SnowballType' "EDGE_C"

pattern EdgeCg :: SnowballType
pattern EdgeCg = SnowballType' "EDGE_CG"

pattern EdgeS :: SnowballType
pattern EdgeS = SnowballType' "EDGE_S"

pattern SNC1Hdd :: SnowballType
pattern SNC1Hdd = SnowballType' "SNC1_HDD"

pattern Standard :: SnowballType
pattern Standard = SnowballType' "STANDARD"

{-# COMPLETE
  Edge,
  EdgeC,
  EdgeCg,
  EdgeS,
  SNC1Hdd,
  Standard,
  SnowballType' #-}

instance FromText SnowballType where
    parser = (SnowballType' . mk) <$> takeText

instance ToText SnowballType where
    toText (SnowballType' ci) = original ci

instance Hashable     SnowballType
instance NFData       SnowballType
instance ToByteString SnowballType
instance ToQuery      SnowballType
instance ToHeader     SnowballType

instance ToJSON SnowballType where
    toJSON = toJSONText

instance FromJSON SnowballType where
    parseJSON = parseJSONText "SnowballType"
