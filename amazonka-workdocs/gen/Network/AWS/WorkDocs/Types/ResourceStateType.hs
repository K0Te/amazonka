{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ResourceStateType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkDocs.Types.ResourceStateType (
  ResourceStateType (
    ..
    , RSTActive
    , RSTRecycled
    , RSTRecycling
    , RSTRestoring
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceStateType = ResourceStateType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern RSTActive :: ResourceStateType
pattern RSTActive = ResourceStateType' "ACTIVE"

pattern RSTRecycled :: ResourceStateType
pattern RSTRecycled = ResourceStateType' "RECYCLED"

pattern RSTRecycling :: ResourceStateType
pattern RSTRecycling = ResourceStateType' "RECYCLING"

pattern RSTRestoring :: ResourceStateType
pattern RSTRestoring = ResourceStateType' "RESTORING"

{-# COMPLETE
  RSTActive,
  RSTRecycled,
  RSTRecycling,
  RSTRestoring,
  ResourceStateType' #-}

instance FromText ResourceStateType where
    parser = (ResourceStateType' . mk) <$> takeText

instance ToText ResourceStateType where
    toText (ResourceStateType' ci) = original ci

instance Hashable     ResourceStateType
instance NFData       ResourceStateType
instance ToByteString ResourceStateType
instance ToQuery      ResourceStateType
instance ToHeader     ResourceStateType

instance ToJSON ResourceStateType where
    toJSON = toJSONText

instance FromJSON ResourceStateType where
    parseJSON = parseJSONText "ResourceStateType"
