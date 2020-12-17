{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioChannelTag
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioChannelTag (
  AudioChannelTag (
    ..
    , C
    , CS
    , L
    , LC
    , LS
    , Lfe
    , Lsd
    , R
    , RC
    , RS
    , Rsd
    , Tcs
    , Vhc
    , Vhl
    , Vhr
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS).
data AudioChannelTag = AudioChannelTag' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern C :: AudioChannelTag
pattern C = AudioChannelTag' "C"

pattern CS :: AudioChannelTag
pattern CS = AudioChannelTag' "CS"

pattern L :: AudioChannelTag
pattern L = AudioChannelTag' "L"

pattern LC :: AudioChannelTag
pattern LC = AudioChannelTag' "LC"

pattern LS :: AudioChannelTag
pattern LS = AudioChannelTag' "LS"

pattern Lfe :: AudioChannelTag
pattern Lfe = AudioChannelTag' "LFE"

pattern Lsd :: AudioChannelTag
pattern Lsd = AudioChannelTag' "LSD"

pattern R :: AudioChannelTag
pattern R = AudioChannelTag' "R"

pattern RC :: AudioChannelTag
pattern RC = AudioChannelTag' "RC"

pattern RS :: AudioChannelTag
pattern RS = AudioChannelTag' "RS"

pattern Rsd :: AudioChannelTag
pattern Rsd = AudioChannelTag' "RSD"

pattern Tcs :: AudioChannelTag
pattern Tcs = AudioChannelTag' "TCS"

pattern Vhc :: AudioChannelTag
pattern Vhc = AudioChannelTag' "VHC"

pattern Vhl :: AudioChannelTag
pattern Vhl = AudioChannelTag' "VHL"

pattern Vhr :: AudioChannelTag
pattern Vhr = AudioChannelTag' "VHR"

{-# COMPLETE
  C,
  CS,
  L,
  LC,
  LS,
  Lfe,
  Lsd,
  R,
  RC,
  RS,
  Rsd,
  Tcs,
  Vhc,
  Vhl,
  Vhr,
  AudioChannelTag' #-}

instance FromText AudioChannelTag where
    parser = (AudioChannelTag' . mk) <$> takeText

instance ToText AudioChannelTag where
    toText (AudioChannelTag' ci) = original ci

instance Hashable     AudioChannelTag
instance NFData       AudioChannelTag
instance ToByteString AudioChannelTag
instance ToQuery      AudioChannelTag
instance ToHeader     AudioChannelTag

instance ToJSON AudioChannelTag where
    toJSON = toJSONText

instance FromJSON AudioChannelTag where
    parseJSON = parseJSONText "AudioChannelTag"
