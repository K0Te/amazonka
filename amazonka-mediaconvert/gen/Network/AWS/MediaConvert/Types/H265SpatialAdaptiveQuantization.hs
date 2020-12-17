{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization (
  H265SpatialAdaptiveQuantization (
    ..
    , HSAQDisabled
    , HSAQEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
data H265SpatialAdaptiveQuantization = H265SpatialAdaptiveQuantization' (CI
                                                                           Text)
                                         deriving (Eq, Ord, Read, Show, Data,
                                                   Typeable, Generic)

pattern HSAQDisabled :: H265SpatialAdaptiveQuantization
pattern HSAQDisabled = H265SpatialAdaptiveQuantization' "DISABLED"

pattern HSAQEnabled :: H265SpatialAdaptiveQuantization
pattern HSAQEnabled = H265SpatialAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  HSAQDisabled,
  HSAQEnabled,
  H265SpatialAdaptiveQuantization' #-}

instance FromText H265SpatialAdaptiveQuantization where
    parser = (H265SpatialAdaptiveQuantization' . mk) <$> takeText

instance ToText H265SpatialAdaptiveQuantization where
    toText (H265SpatialAdaptiveQuantization' ci) = original ci

instance Hashable     H265SpatialAdaptiveQuantization
instance NFData       H265SpatialAdaptiveQuantization
instance ToByteString H265SpatialAdaptiveQuantization
instance ToQuery      H265SpatialAdaptiveQuantization
instance ToHeader     H265SpatialAdaptiveQuantization

instance ToJSON H265SpatialAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H265SpatialAdaptiveQuantization where
    parseJSON = parseJSONText "H265SpatialAdaptiveQuantization"
