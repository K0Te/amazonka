{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix (
  Eac3AtmosStereoDownmix (
    ..
    , DPL2
    , NotIndicated
    , Stereo
    , Surround
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose how the service does stereo downmixing.
data Eac3AtmosStereoDownmix = Eac3AtmosStereoDownmix' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern DPL2 :: Eac3AtmosStereoDownmix
pattern DPL2 = Eac3AtmosStereoDownmix' "DPL2"

pattern NotIndicated :: Eac3AtmosStereoDownmix
pattern NotIndicated = Eac3AtmosStereoDownmix' "NOT_INDICATED"

pattern Stereo :: Eac3AtmosStereoDownmix
pattern Stereo = Eac3AtmosStereoDownmix' "STEREO"

pattern Surround :: Eac3AtmosStereoDownmix
pattern Surround = Eac3AtmosStereoDownmix' "SURROUND"

{-# COMPLETE
  DPL2,
  NotIndicated,
  Stereo,
  Surround,
  Eac3AtmosStereoDownmix' #-}

instance FromText Eac3AtmosStereoDownmix where
    parser = (Eac3AtmosStereoDownmix' . mk) <$> takeText

instance ToText Eac3AtmosStereoDownmix where
    toText (Eac3AtmosStereoDownmix' ci) = original ci

instance Hashable     Eac3AtmosStereoDownmix
instance NFData       Eac3AtmosStereoDownmix
instance ToByteString Eac3AtmosStereoDownmix
instance ToQuery      Eac3AtmosStereoDownmix
instance ToHeader     Eac3AtmosStereoDownmix

instance ToJSON Eac3AtmosStereoDownmix where
    toJSON = toJSONText

instance FromJSON Eac3AtmosStereoDownmix where
    parseJSON = parseJSONText "Eac3AtmosStereoDownmix"
