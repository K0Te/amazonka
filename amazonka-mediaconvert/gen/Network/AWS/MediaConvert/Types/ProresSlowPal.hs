{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresSlowPal
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresSlowPal (
  ProresSlowPal (
    ..
    , PSPDisabled
    , PSPEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
data ProresSlowPal = ProresSlowPal' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern PSPDisabled :: ProresSlowPal
pattern PSPDisabled = ProresSlowPal' "DISABLED"

pattern PSPEnabled :: ProresSlowPal
pattern PSPEnabled = ProresSlowPal' "ENABLED"

{-# COMPLETE
  PSPDisabled,
  PSPEnabled,
  ProresSlowPal' #-}

instance FromText ProresSlowPal where
    parser = (ProresSlowPal' . mk) <$> takeText

instance ToText ProresSlowPal where
    toText (ProresSlowPal' ci) = original ci

instance Hashable     ProresSlowPal
instance NFData       ProresSlowPal
instance ToByteString ProresSlowPal
instance ToQuery      ProresSlowPal
instance ToHeader     ProresSlowPal

instance ToJSON ProresSlowPal where
    toJSON = toJSONText

instance FromJSON ProresSlowPal where
    parseJSON = parseJSONText "ProresSlowPal"