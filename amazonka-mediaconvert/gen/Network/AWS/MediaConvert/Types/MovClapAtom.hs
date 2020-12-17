{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovClapAtom
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.MovClapAtom (
  MovClapAtom (
    ..
    , MExclude
    , MInclude
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When enabled, include 'clap' atom if appropriate for the video output settings.
data MovClapAtom = MovClapAtom' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern MExclude :: MovClapAtom
pattern MExclude = MovClapAtom' "EXCLUDE"

pattern MInclude :: MovClapAtom
pattern MInclude = MovClapAtom' "INCLUDE"

{-# COMPLETE
  MExclude,
  MInclude,
  MovClapAtom' #-}

instance FromText MovClapAtom where
    parser = (MovClapAtom' . mk) <$> takeText

instance ToText MovClapAtom where
    toText (MovClapAtom' ci) = original ci

instance Hashable     MovClapAtom
instance NFData       MovClapAtom
instance ToByteString MovClapAtom
instance ToQuery      MovClapAtom
instance ToHeader     MovClapAtom

instance ToJSON MovClapAtom where
    toJSON = toJSONText

instance FromJSON MovClapAtom where
    parseJSON = parseJSONText "MovClapAtom"
