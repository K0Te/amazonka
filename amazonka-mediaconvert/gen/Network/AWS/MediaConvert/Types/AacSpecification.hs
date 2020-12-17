{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacSpecification
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AacSpecification (
  AacSpecification (
    ..
    , ASMPEG2
    , ASMPEG4
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
data AacSpecification = AacSpecification' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern ASMPEG2 :: AacSpecification
pattern ASMPEG2 = AacSpecification' "MPEG2"

pattern ASMPEG4 :: AacSpecification
pattern ASMPEG4 = AacSpecification' "MPEG4"

{-# COMPLETE
  ASMPEG2,
  ASMPEG4,
  AacSpecification' #-}

instance FromText AacSpecification where
    parser = (AacSpecification' . mk) <$> takeText

instance ToText AacSpecification where
    toText (AacSpecification' ci) = original ci

instance Hashable     AacSpecification
instance NFData       AacSpecification
instance ToByteString AacSpecification
instance ToQuery      AacSpecification
instance ToHeader     AacSpecification

instance ToJSON AacSpecification where
    toJSON = toJSONText

instance FromJSON AacSpecification where
    parseJSON = parseJSONText "AacSpecification"
