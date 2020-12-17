{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsManifestDurationFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsManifestDurationFormat (
  HlsManifestDurationFormat (
    ..
    , HMDFFloatingPoint
    , HMDFInteger
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates whether the output manifest should use floating point values for segment duration.
data HlsManifestDurationFormat = HlsManifestDurationFormat' (CI
                                                               Text)
                                   deriving (Eq, Ord, Read, Show, Data,
                                             Typeable, Generic)

pattern HMDFFloatingPoint :: HlsManifestDurationFormat
pattern HMDFFloatingPoint = HlsManifestDurationFormat' "FLOATING_POINT"

pattern HMDFInteger :: HlsManifestDurationFormat
pattern HMDFInteger = HlsManifestDurationFormat' "INTEGER"

{-# COMPLETE
  HMDFFloatingPoint,
  HMDFInteger,
  HlsManifestDurationFormat' #-}

instance FromText HlsManifestDurationFormat where
    parser = (HlsManifestDurationFormat' . mk) <$> takeText

instance ToText HlsManifestDurationFormat where
    toText (HlsManifestDurationFormat' ci) = original ci

instance Hashable     HlsManifestDurationFormat
instance NFData       HlsManifestDurationFormat
instance ToByteString HlsManifestDurationFormat
instance ToQuery      HlsManifestDurationFormat
instance ToHeader     HlsManifestDurationFormat

instance ToJSON HlsManifestDurationFormat where
    toJSON = toJSONText

instance FromJSON HlsManifestDurationFormat where
    parseJSON = parseJSONText "HlsManifestDurationFormat"
