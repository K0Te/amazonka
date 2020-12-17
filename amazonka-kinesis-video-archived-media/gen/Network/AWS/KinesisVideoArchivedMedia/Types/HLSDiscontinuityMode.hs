{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode (
  HLSDiscontinuityMode (
    ..
    , Always
    , Never
    , OnDiscontinuity
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HLSDiscontinuityMode = HLSDiscontinuityMode' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern Always :: HLSDiscontinuityMode
pattern Always = HLSDiscontinuityMode' "ALWAYS"

pattern Never :: HLSDiscontinuityMode
pattern Never = HLSDiscontinuityMode' "NEVER"

pattern OnDiscontinuity :: HLSDiscontinuityMode
pattern OnDiscontinuity = HLSDiscontinuityMode' "ON_DISCONTINUITY"

{-# COMPLETE
  Always,
  Never,
  OnDiscontinuity,
  HLSDiscontinuityMode' #-}

instance FromText HLSDiscontinuityMode where
    parser = (HLSDiscontinuityMode' . mk) <$> takeText

instance ToText HLSDiscontinuityMode where
    toText (HLSDiscontinuityMode' ci) = original ci

instance Hashable     HLSDiscontinuityMode
instance NFData       HLSDiscontinuityMode
instance ToByteString HLSDiscontinuityMode
instance ToQuery      HLSDiscontinuityMode
instance ToHeader     HLSDiscontinuityMode

instance ToJSON HLSDiscontinuityMode where
    toJSON = toJSONText
