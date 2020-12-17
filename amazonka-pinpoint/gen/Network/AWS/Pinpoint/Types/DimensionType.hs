{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DimensionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.DimensionType (
  DimensionType (
    ..
    , DTExclusive
    , DTInclusive
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DimensionType = DimensionType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern DTExclusive :: DimensionType
pattern DTExclusive = DimensionType' "EXCLUSIVE"

pattern DTInclusive :: DimensionType
pattern DTInclusive = DimensionType' "INCLUSIVE"

{-# COMPLETE
  DTExclusive,
  DTInclusive,
  DimensionType' #-}

instance FromText DimensionType where
    parser = (DimensionType' . mk) <$> takeText

instance ToText DimensionType where
    toText (DimensionType' ci) = original ci

instance Hashable     DimensionType
instance NFData       DimensionType
instance ToByteString DimensionType
instance ToQuery      DimensionType
instance ToHeader     DimensionType

instance ToJSON DimensionType where
    toJSON = toJSONText

instance FromJSON DimensionType where
    parseJSON = parseJSONText "DimensionType"
