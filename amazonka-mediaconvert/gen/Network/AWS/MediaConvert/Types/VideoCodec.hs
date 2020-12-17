{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoCodec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.VideoCodec (
  VideoCodec (
    ..
    , AV1
    , AvcIntra
    , FrameCapture
    , H264
    , H265
    , MPEG2
    , Prores
    , VC3
    , VP8
    , VP9
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of video codec
data VideoCodec = VideoCodec' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern AV1 :: VideoCodec
pattern AV1 = VideoCodec' "AV1"

pattern AvcIntra :: VideoCodec
pattern AvcIntra = VideoCodec' "AVC_INTRA"

pattern FrameCapture :: VideoCodec
pattern FrameCapture = VideoCodec' "FRAME_CAPTURE"

pattern H264 :: VideoCodec
pattern H264 = VideoCodec' "H_264"

pattern H265 :: VideoCodec
pattern H265 = VideoCodec' "H_265"

pattern MPEG2 :: VideoCodec
pattern MPEG2 = VideoCodec' "MPEG2"

pattern Prores :: VideoCodec
pattern Prores = VideoCodec' "PRORES"

pattern VC3 :: VideoCodec
pattern VC3 = VideoCodec' "VC3"

pattern VP8 :: VideoCodec
pattern VP8 = VideoCodec' "VP8"

pattern VP9 :: VideoCodec
pattern VP9 = VideoCodec' "VP9"

{-# COMPLETE
  AV1,
  AvcIntra,
  FrameCapture,
  H264,
  H265,
  MPEG2,
  Prores,
  VC3,
  VP8,
  VP9,
  VideoCodec' #-}

instance FromText VideoCodec where
    parser = (VideoCodec' . mk) <$> takeText

instance ToText VideoCodec where
    toText (VideoCodec' ci) = original ci

instance Hashable     VideoCodec
instance NFData       VideoCodec
instance ToByteString VideoCodec
instance ToQuery      VideoCodec
instance ToHeader     VideoCodec

instance ToJSON VideoCodec where
    toJSON = toJSONText

instance FromJSON VideoCodec where
    parseJSON = parseJSONText "VideoCodec"
