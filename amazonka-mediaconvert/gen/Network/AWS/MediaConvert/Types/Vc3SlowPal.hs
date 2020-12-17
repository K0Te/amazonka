{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3SlowPal
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Vc3SlowPal (
  Vc3SlowPal (
    ..
    , VSPDisabled
    , VSPEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
data Vc3SlowPal = Vc3SlowPal' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern VSPDisabled :: Vc3SlowPal
pattern VSPDisabled = Vc3SlowPal' "DISABLED"

pattern VSPEnabled :: Vc3SlowPal
pattern VSPEnabled = Vc3SlowPal' "ENABLED"

{-# COMPLETE
  VSPDisabled,
  VSPEnabled,
  Vc3SlowPal' #-}

instance FromText Vc3SlowPal where
    parser = (Vc3SlowPal' . mk) <$> takeText

instance ToText Vc3SlowPal where
    toText (Vc3SlowPal' ci) = original ci

instance Hashable     Vc3SlowPal
instance NFData       Vc3SlowPal
instance ToByteString Vc3SlowPal
instance ToQuery      Vc3SlowPal
instance ToHeader     Vc3SlowPal

instance ToJSON Vc3SlowPal where
    toJSON = toJSONText

instance FromJSON Vc3SlowPal where
    parseJSON = parseJSONText "Vc3SlowPal"
