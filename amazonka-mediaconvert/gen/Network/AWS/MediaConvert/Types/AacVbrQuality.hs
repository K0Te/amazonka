{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacVbrQuality
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AacVbrQuality (
  AacVbrQuality (
    ..
    , AVQHigh
    , AVQLow
    , AVQMediumHigh
    , AVQMediumLow
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | VBR Quality Level - Only used if rate_control_mode is VBR.
data AacVbrQuality = AacVbrQuality' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern AVQHigh :: AacVbrQuality
pattern AVQHigh = AacVbrQuality' "HIGH"

pattern AVQLow :: AacVbrQuality
pattern AVQLow = AacVbrQuality' "LOW"

pattern AVQMediumHigh :: AacVbrQuality
pattern AVQMediumHigh = AacVbrQuality' "MEDIUM_HIGH"

pattern AVQMediumLow :: AacVbrQuality
pattern AVQMediumLow = AacVbrQuality' "MEDIUM_LOW"

{-# COMPLETE
  AVQHigh,
  AVQLow,
  AVQMediumHigh,
  AVQMediumLow,
  AacVbrQuality' #-}

instance FromText AacVbrQuality where
    parser = (AacVbrQuality' . mk) <$> takeText

instance ToText AacVbrQuality where
    toText (AacVbrQuality' ci) = original ci

instance Hashable     AacVbrQuality
instance NFData       AacVbrQuality
instance ToByteString AacVbrQuality
instance ToQuery      AacVbrQuality
instance ToHeader     AacVbrQuality

instance ToJSON AacVbrQuality where
    toJSON = toJSONText

instance FromJSON AacVbrQuality where
    parseJSON = parseJSONText "AacVbrQuality"
