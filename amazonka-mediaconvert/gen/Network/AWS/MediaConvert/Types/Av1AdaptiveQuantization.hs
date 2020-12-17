{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Av1AdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Av1AdaptiveQuantization (
  Av1AdaptiveQuantization (
    ..
    , High
    , Higher
    , Low
    , Max
    , Medium
    , Off
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to Spatial adaptive quantization (spatialAdaptiveQuantization).
data Av1AdaptiveQuantization = Av1AdaptiveQuantization' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern High :: Av1AdaptiveQuantization
pattern High = Av1AdaptiveQuantization' "HIGH"

pattern Higher :: Av1AdaptiveQuantization
pattern Higher = Av1AdaptiveQuantization' "HIGHER"

pattern Low :: Av1AdaptiveQuantization
pattern Low = Av1AdaptiveQuantization' "LOW"

pattern Max :: Av1AdaptiveQuantization
pattern Max = Av1AdaptiveQuantization' "MAX"

pattern Medium :: Av1AdaptiveQuantization
pattern Medium = Av1AdaptiveQuantization' "MEDIUM"

pattern Off :: Av1AdaptiveQuantization
pattern Off = Av1AdaptiveQuantization' "OFF"

{-# COMPLETE
  High,
  Higher,
  Low,
  Max,
  Medium,
  Off,
  Av1AdaptiveQuantization' #-}

instance FromText Av1AdaptiveQuantization where
    parser = (Av1AdaptiveQuantization' . mk) <$> takeText

instance ToText Av1AdaptiveQuantization where
    toText (Av1AdaptiveQuantization' ci) = original ci

instance Hashable     Av1AdaptiveQuantization
instance NFData       Av1AdaptiveQuantization
instance ToByteString Av1AdaptiveQuantization
instance ToQuery      Av1AdaptiveQuantization
instance ToHeader     Av1AdaptiveQuantization

instance ToJSON Av1AdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON Av1AdaptiveQuantization where
    parseJSON = parseJSONText "Av1AdaptiveQuantization"
