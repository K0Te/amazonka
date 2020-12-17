{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264CodecLevel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264CodecLevel (
  H264CodecLevel (
    ..
    , HAuto
    , HLevel1
    , HLevel11
    , HLevel12
    , HLevel13
    , HLevel2
    , HLevel21
    , HLevel22
    , HLevel3
    , HLevel31
    , HLevel32
    , HLevel4
    , HLevel41
    , HLevel42
    , HLevel5
    , HLevel51
    , HLevel52
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO).
data H264CodecLevel = H264CodecLevel' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern HAuto :: H264CodecLevel
pattern HAuto = H264CodecLevel' "AUTO"

pattern HLevel1 :: H264CodecLevel
pattern HLevel1 = H264CodecLevel' "LEVEL_1"

pattern HLevel11 :: H264CodecLevel
pattern HLevel11 = H264CodecLevel' "LEVEL_1_1"

pattern HLevel12 :: H264CodecLevel
pattern HLevel12 = H264CodecLevel' "LEVEL_1_2"

pattern HLevel13 :: H264CodecLevel
pattern HLevel13 = H264CodecLevel' "LEVEL_1_3"

pattern HLevel2 :: H264CodecLevel
pattern HLevel2 = H264CodecLevel' "LEVEL_2"

pattern HLevel21 :: H264CodecLevel
pattern HLevel21 = H264CodecLevel' "LEVEL_2_1"

pattern HLevel22 :: H264CodecLevel
pattern HLevel22 = H264CodecLevel' "LEVEL_2_2"

pattern HLevel3 :: H264CodecLevel
pattern HLevel3 = H264CodecLevel' "LEVEL_3"

pattern HLevel31 :: H264CodecLevel
pattern HLevel31 = H264CodecLevel' "LEVEL_3_1"

pattern HLevel32 :: H264CodecLevel
pattern HLevel32 = H264CodecLevel' "LEVEL_3_2"

pattern HLevel4 :: H264CodecLevel
pattern HLevel4 = H264CodecLevel' "LEVEL_4"

pattern HLevel41 :: H264CodecLevel
pattern HLevel41 = H264CodecLevel' "LEVEL_4_1"

pattern HLevel42 :: H264CodecLevel
pattern HLevel42 = H264CodecLevel' "LEVEL_4_2"

pattern HLevel5 :: H264CodecLevel
pattern HLevel5 = H264CodecLevel' "LEVEL_5"

pattern HLevel51 :: H264CodecLevel
pattern HLevel51 = H264CodecLevel' "LEVEL_5_1"

pattern HLevel52 :: H264CodecLevel
pattern HLevel52 = H264CodecLevel' "LEVEL_5_2"

{-# COMPLETE
  HAuto,
  HLevel1,
  HLevel11,
  HLevel12,
  HLevel13,
  HLevel2,
  HLevel21,
  HLevel22,
  HLevel3,
  HLevel31,
  HLevel32,
  HLevel4,
  HLevel41,
  HLevel42,
  HLevel5,
  HLevel51,
  HLevel52,
  H264CodecLevel' #-}

instance FromText H264CodecLevel where
    parser = (H264CodecLevel' . mk) <$> takeText

instance ToText H264CodecLevel where
    toText (H264CodecLevel' ci) = original ci

instance Hashable     H264CodecLevel
instance NFData       H264CodecLevel
instance ToByteString H264CodecLevel
instance ToQuery      H264CodecLevel
instance ToHeader     H264CodecLevel

instance ToJSON H264CodecLevel where
    toJSON = toJSONText

instance FromJSON H264CodecLevel where
    parseJSON = parseJSONText "H264CodecLevel"
