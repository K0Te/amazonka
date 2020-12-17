{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafManifestDurationFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CmafManifestDurationFormat (
  CmafManifestDurationFormat (
    ..
    , FloatingPoint
    , Integer
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates whether the output manifest should use floating point values for segment duration.
data CmafManifestDurationFormat = CmafManifestDurationFormat' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern FloatingPoint :: CmafManifestDurationFormat
pattern FloatingPoint = CmafManifestDurationFormat' "FLOATING_POINT"

pattern Integer :: CmafManifestDurationFormat
pattern Integer = CmafManifestDurationFormat' "INTEGER"

{-# COMPLETE
  FloatingPoint,
  Integer,
  CmafManifestDurationFormat' #-}

instance FromText CmafManifestDurationFormat where
    parser = (CmafManifestDurationFormat' . mk) <$> takeText

instance ToText CmafManifestDurationFormat where
    toText (CmafManifestDurationFormat' ci) = original ci

instance Hashable     CmafManifestDurationFormat
instance NFData       CmafManifestDurationFormat
instance ToByteString CmafManifestDurationFormat
instance ToQuery      CmafManifestDurationFormat
instance ToHeader     CmafManifestDurationFormat

instance ToJSON CmafManifestDurationFormat where
    toJSON = toJSONText

instance FromJSON CmafManifestDurationFormat where
    parseJSON = parseJSONText "CmafManifestDurationFormat"
