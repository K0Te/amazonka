{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265QualityTuningLevel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265QualityTuningLevel (
  H265QualityTuningLevel (
    ..
    , MultiPassHq
    , SinglePass
    , SinglePassHq
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
data H265QualityTuningLevel = H265QualityTuningLevel' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern MultiPassHq :: H265QualityTuningLevel
pattern MultiPassHq = H265QualityTuningLevel' "MULTI_PASS_HQ"

pattern SinglePass :: H265QualityTuningLevel
pattern SinglePass = H265QualityTuningLevel' "SINGLE_PASS"

pattern SinglePassHq :: H265QualityTuningLevel
pattern SinglePassHq = H265QualityTuningLevel' "SINGLE_PASS_HQ"

{-# COMPLETE
  MultiPassHq,
  SinglePass,
  SinglePassHq,
  H265QualityTuningLevel' #-}

instance FromText H265QualityTuningLevel where
    parser = (H265QualityTuningLevel' . mk) <$> takeText

instance ToText H265QualityTuningLevel where
    toText (H265QualityTuningLevel' ci) = original ci

instance Hashable     H265QualityTuningLevel
instance NFData       H265QualityTuningLevel
instance ToByteString H265QualityTuningLevel
instance ToQuery      H265QualityTuningLevel
instance ToHeader     H265QualityTuningLevel

instance ToJSON H265QualityTuningLevel where
    toJSON = toJSONText

instance FromJSON H265QualityTuningLevel where
    parseJSON = parseJSONText "H265QualityTuningLevel"
