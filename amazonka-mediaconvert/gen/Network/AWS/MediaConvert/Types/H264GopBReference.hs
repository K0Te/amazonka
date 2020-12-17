{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264GopBReference
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264GopBReference (
  H264GopBReference (
    ..
    , HGBRGDisabled
    , HGBRGEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If enable, use reference B frames for GOP structures that have B frames > 1.
data H264GopBReference = H264GopBReference' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern HGBRGDisabled :: H264GopBReference
pattern HGBRGDisabled = H264GopBReference' "DISABLED"

pattern HGBRGEnabled :: H264GopBReference
pattern HGBRGEnabled = H264GopBReference' "ENABLED"

{-# COMPLETE
  HGBRGDisabled,
  HGBRGEnabled,
  H264GopBReference' #-}

instance FromText H264GopBReference where
    parser = (H264GopBReference' . mk) <$> takeText

instance ToText H264GopBReference where
    toText (H264GopBReference' ci) = original ci

instance Hashable     H264GopBReference
instance NFData       H264GopBReference
instance ToByteString H264GopBReference
instance ToQuery      H264GopBReference
instance ToHeader     H264GopBReference

instance ToJSON H264GopBReference where
    toJSON = toJSONText

instance FromJSON H264GopBReference where
    parseJSON = parseJSONText "H264GopBReference"
