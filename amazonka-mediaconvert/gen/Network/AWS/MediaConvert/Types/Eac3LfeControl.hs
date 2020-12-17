{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3LfeControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Eac3LfeControl (
  Eac3LfeControl (
    ..
    , ELCLfe
    , ELCNoLfe
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When encoding 3/2 audio, controls whether the LFE channel is enabled
data Eac3LfeControl = Eac3LfeControl' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern ELCLfe :: Eac3LfeControl
pattern ELCLfe = Eac3LfeControl' "LFE"

pattern ELCNoLfe :: Eac3LfeControl
pattern ELCNoLfe = Eac3LfeControl' "NO_LFE"

{-# COMPLETE
  ELCLfe,
  ELCNoLfe,
  Eac3LfeControl' #-}

instance FromText Eac3LfeControl where
    parser = (Eac3LfeControl' . mk) <$> takeText

instance ToText Eac3LfeControl where
    toText (Eac3LfeControl' ci) = original ci

instance Hashable     Eac3LfeControl
instance NFData       Eac3LfeControl
instance ToByteString Eac3LfeControl
instance ToQuery      Eac3LfeControl
instance ToHeader     Eac3LfeControl

instance ToJSON Eac3LfeControl where
    toJSON = toJSONText

instance FromJSON Eac3LfeControl where
    parseJSON = parseJSONText "Eac3LfeControl"
