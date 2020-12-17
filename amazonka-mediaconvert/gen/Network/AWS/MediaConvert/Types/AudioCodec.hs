{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioCodec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioCodec (
  AudioCodec (
    ..
    , ACAC3
    , ACAac
    , ACAiff
    , ACEAC3
    , ACEAC3Atmos
    , ACMP2
    , ACMP3
    , ACOpus
    , ACPassthrough
    , ACVorbis
    , ACWav
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of Audio codec.
data AudioCodec = AudioCodec' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern ACAC3 :: AudioCodec
pattern ACAC3 = AudioCodec' "AC3"

pattern ACAac :: AudioCodec
pattern ACAac = AudioCodec' "AAC"

pattern ACAiff :: AudioCodec
pattern ACAiff = AudioCodec' "AIFF"

pattern ACEAC3 :: AudioCodec
pattern ACEAC3 = AudioCodec' "EAC3"

pattern ACEAC3Atmos :: AudioCodec
pattern ACEAC3Atmos = AudioCodec' "EAC3_ATMOS"

pattern ACMP2 :: AudioCodec
pattern ACMP2 = AudioCodec' "MP2"

pattern ACMP3 :: AudioCodec
pattern ACMP3 = AudioCodec' "MP3"

pattern ACOpus :: AudioCodec
pattern ACOpus = AudioCodec' "OPUS"

pattern ACPassthrough :: AudioCodec
pattern ACPassthrough = AudioCodec' "PASSTHROUGH"

pattern ACVorbis :: AudioCodec
pattern ACVorbis = AudioCodec' "VORBIS"

pattern ACWav :: AudioCodec
pattern ACWav = AudioCodec' "WAV"

{-# COMPLETE
  ACAC3,
  ACAac,
  ACAiff,
  ACEAC3,
  ACEAC3Atmos,
  ACMP2,
  ACMP3,
  ACOpus,
  ACPassthrough,
  ACVorbis,
  ACWav,
  AudioCodec' #-}

instance FromText AudioCodec where
    parser = (AudioCodec' . mk) <$> takeText

instance ToText AudioCodec where
    toText (AudioCodec' ci) = original ci

instance Hashable     AudioCodec
instance NFData       AudioCodec
instance ToByteString AudioCodec
instance ToQuery      AudioCodec
instance ToHeader     AudioCodec

instance ToJSON AudioCodec where
    toJSON = toJSONText

instance FromJSON AudioCodec where
    parseJSON = parseJSONText "AudioCodec"
