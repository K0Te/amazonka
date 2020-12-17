{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsOutputSelection
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsOutputSelection (
  HlsOutputSelection (
    ..
    , ManifestsAndSegments
    , SegmentsOnly
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates whether the .m3u8 manifest file should be generated for this HLS output group.
data HlsOutputSelection = HlsOutputSelection' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern ManifestsAndSegments :: HlsOutputSelection
pattern ManifestsAndSegments = HlsOutputSelection' "MANIFESTS_AND_SEGMENTS"

pattern SegmentsOnly :: HlsOutputSelection
pattern SegmentsOnly = HlsOutputSelection' "SEGMENTS_ONLY"

{-# COMPLETE
  ManifestsAndSegments,
  SegmentsOnly,
  HlsOutputSelection' #-}

instance FromText HlsOutputSelection where
    parser = (HlsOutputSelection' . mk) <$> takeText

instance ToText HlsOutputSelection where
    toText (HlsOutputSelection' ci) = original ci

instance Hashable     HlsOutputSelection
instance NFData       HlsOutputSelection
instance ToByteString HlsOutputSelection
instance ToQuery      HlsOutputSelection
instance ToHeader     HlsOutputSelection

instance ToJSON HlsOutputSelection where
    toJSON = toJSONText

instance FromJSON HlsOutputSelection where
    parseJSON = parseJSONText "HlsOutputSelection"
