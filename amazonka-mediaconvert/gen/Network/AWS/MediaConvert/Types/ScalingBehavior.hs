{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ScalingBehavior
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ScalingBehavior (
  ScalingBehavior (
    ..
    , SBDefault
    , SBStretchToOutput
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify how the service handles outputs that have a different aspect ratio from the input aspect ratio. Choose Stretch to output (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit. Keep the setting Default (DEFAULT) to have the service letterbox your video instead. This setting overrides any value that you specify for the setting Selection placement (position) in this output.
data ScalingBehavior = ScalingBehavior' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern SBDefault :: ScalingBehavior
pattern SBDefault = ScalingBehavior' "DEFAULT"

pattern SBStretchToOutput :: ScalingBehavior
pattern SBStretchToOutput = ScalingBehavior' "STRETCH_TO_OUTPUT"

{-# COMPLETE
  SBDefault,
  SBStretchToOutput,
  ScalingBehavior' #-}

instance FromText ScalingBehavior where
    parser = (ScalingBehavior' . mk) <$> takeText

instance ToText ScalingBehavior where
    toText (ScalingBehavior' ci) = original ci

instance Hashable     ScalingBehavior
instance NFData       ScalingBehavior
instance ToByteString ScalingBehavior
instance ToQuery      ScalingBehavior
instance ToHeader     ScalingBehavior

instance ToJSON ScalingBehavior where
    toJSON = toJSONText

instance FromJSON ScalingBehavior where
    parseJSON = parseJSONText "ScalingBehavior"
