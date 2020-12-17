{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp9FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Vp9FramerateConversionAlgorithm (
  Vp9FramerateConversionAlgorithm (
    ..
    , VFCADuplicateDrop
    , VFCAFrameformer
    , VFCAInterpolate
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
data Vp9FramerateConversionAlgorithm = Vp9FramerateConversionAlgorithm' (CI
                                                                           Text)
                                         deriving (Eq, Ord, Read, Show, Data,
                                                   Typeable, Generic)

pattern VFCADuplicateDrop :: Vp9FramerateConversionAlgorithm
pattern VFCADuplicateDrop = Vp9FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern VFCAFrameformer :: Vp9FramerateConversionAlgorithm
pattern VFCAFrameformer = Vp9FramerateConversionAlgorithm' "FRAMEFORMER"

pattern VFCAInterpolate :: Vp9FramerateConversionAlgorithm
pattern VFCAInterpolate = Vp9FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  VFCADuplicateDrop,
  VFCAFrameformer,
  VFCAInterpolate,
  Vp9FramerateConversionAlgorithm' #-}

instance FromText Vp9FramerateConversionAlgorithm where
    parser = (Vp9FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText Vp9FramerateConversionAlgorithm where
    toText (Vp9FramerateConversionAlgorithm' ci) = original ci

instance Hashable     Vp9FramerateConversionAlgorithm
instance NFData       Vp9FramerateConversionAlgorithm
instance ToByteString Vp9FramerateConversionAlgorithm
instance ToQuery      Vp9FramerateConversionAlgorithm
instance ToHeader     Vp9FramerateConversionAlgorithm

instance ToJSON Vp9FramerateConversionAlgorithm where
    toJSON = toJSONText

instance FromJSON Vp9FramerateConversionAlgorithm where
    parseJSON = parseJSONText "Vp9FramerateConversionAlgorithm"
