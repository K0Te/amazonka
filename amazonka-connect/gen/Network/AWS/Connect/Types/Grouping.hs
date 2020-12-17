{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Grouping
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Connect.Types.Grouping (
  Grouping (
    ..
    , Channel
    , Queue
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Grouping = Grouping' (CI Text)
                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                            Generic)

pattern Channel :: Grouping
pattern Channel = Grouping' "CHANNEL"

pattern Queue :: Grouping
pattern Queue = Grouping' "QUEUE"

{-# COMPLETE
  Channel,
  Queue,
  Grouping' #-}

instance FromText Grouping where
    parser = (Grouping' . mk) <$> takeText

instance ToText Grouping where
    toText (Grouping' ci) = original ci

instance Hashable     Grouping
instance NFData       Grouping
instance ToByteString Grouping
instance ToQuery      Grouping
instance ToHeader     Grouping

instance ToJSON Grouping where
    toJSON = toJSONText
