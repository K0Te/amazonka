{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafCodecSpecification
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CmafCodecSpecification (
  CmafCodecSpecification (
    ..
    , Rfc4281
    , Rfc6381
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
data CmafCodecSpecification = CmafCodecSpecification' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Rfc4281 :: CmafCodecSpecification
pattern Rfc4281 = CmafCodecSpecification' "RFC_4281"

pattern Rfc6381 :: CmafCodecSpecification
pattern Rfc6381 = CmafCodecSpecification' "RFC_6381"

{-# COMPLETE
  Rfc4281,
  Rfc6381,
  CmafCodecSpecification' #-}

instance FromText CmafCodecSpecification where
    parser = (CmafCodecSpecification' . mk) <$> takeText

instance ToText CmafCodecSpecification where
    toText (CmafCodecSpecification' ci) = original ci

instance Hashable     CmafCodecSpecification
instance NFData       CmafCodecSpecification
instance ToByteString CmafCodecSpecification
instance ToQuery      CmafCodecSpecification
instance ToHeader     CmafCodecSpecification

instance ToJSON CmafCodecSpecification where
    toJSON = toJSONText

instance FromJSON CmafCodecSpecification where
    parseJSON = parseJSONText "CmafCodecSpecification"
