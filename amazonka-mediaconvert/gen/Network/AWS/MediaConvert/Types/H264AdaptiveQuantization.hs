{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264AdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264AdaptiveQuantization (
  H264AdaptiveQuantization (
    ..
    , H26Auto
    , H26High
    , H26Higher
    , H26Low
    , H26Max
    , H26Medium
    , H26Off
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization (H264AdaptiveQuantization) to Off (OFF). Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization.
data H264AdaptiveQuantization = H264AdaptiveQuantization' (CI
                                                             Text)
                                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                                            Generic)

pattern H26Auto :: H264AdaptiveQuantization
pattern H26Auto = H264AdaptiveQuantization' "AUTO"

pattern H26High :: H264AdaptiveQuantization
pattern H26High = H264AdaptiveQuantization' "HIGH"

pattern H26Higher :: H264AdaptiveQuantization
pattern H26Higher = H264AdaptiveQuantization' "HIGHER"

pattern H26Low :: H264AdaptiveQuantization
pattern H26Low = H264AdaptiveQuantization' "LOW"

pattern H26Max :: H264AdaptiveQuantization
pattern H26Max = H264AdaptiveQuantization' "MAX"

pattern H26Medium :: H264AdaptiveQuantization
pattern H26Medium = H264AdaptiveQuantization' "MEDIUM"

pattern H26Off :: H264AdaptiveQuantization
pattern H26Off = H264AdaptiveQuantization' "OFF"

{-# COMPLETE
  H26Auto,
  H26High,
  H26Higher,
  H26Low,
  H26Max,
  H26Medium,
  H26Off,
  H264AdaptiveQuantization' #-}

instance FromText H264AdaptiveQuantization where
    parser = (H264AdaptiveQuantization' . mk) <$> takeText

instance ToText H264AdaptiveQuantization where
    toText (H264AdaptiveQuantization' ci) = original ci

instance Hashable     H264AdaptiveQuantization
instance NFData       H264AdaptiveQuantization
instance ToByteString H264AdaptiveQuantization
instance ToQuery      H264AdaptiveQuantization
instance ToHeader     H264AdaptiveQuantization

instance ToJSON H264AdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H264AdaptiveQuantization where
    parseJSON = parseJSONText "H264AdaptiveQuantization"
