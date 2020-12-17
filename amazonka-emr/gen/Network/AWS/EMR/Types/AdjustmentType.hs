{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.AdjustmentType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.AdjustmentType (
  AdjustmentType (
    ..
    , ChangeInCapacity
    , ExactCapacity
    , PercentChangeInCapacity
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AdjustmentType = AdjustmentType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern ChangeInCapacity :: AdjustmentType
pattern ChangeInCapacity = AdjustmentType' "CHANGE_IN_CAPACITY"

pattern ExactCapacity :: AdjustmentType
pattern ExactCapacity = AdjustmentType' "EXACT_CAPACITY"

pattern PercentChangeInCapacity :: AdjustmentType
pattern PercentChangeInCapacity = AdjustmentType' "PERCENT_CHANGE_IN_CAPACITY"

{-# COMPLETE
  ChangeInCapacity,
  ExactCapacity,
  PercentChangeInCapacity,
  AdjustmentType' #-}

instance FromText AdjustmentType where
    parser = (AdjustmentType' . mk) <$> takeText

instance ToText AdjustmentType where
    toText (AdjustmentType' ci) = original ci

instance Hashable     AdjustmentType
instance NFData       AdjustmentType
instance ToByteString AdjustmentType
instance ToQuery      AdjustmentType
instance ToHeader     AdjustmentType

instance ToJSON AdjustmentType where
    toJSON = toJSONText

instance FromJSON AdjustmentType where
    parseJSON = parseJSONText "AdjustmentType"
