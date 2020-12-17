{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MxfProfile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.MxfProfile (
  MxfProfile (
    ..
    , MPD10
    , MPOP1A
    , MPXdcam
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the MXF profile, also called shim, for this output. When you choose Auto, MediaConvert chooses a profile based on the video codec and resolution. For a list of codecs supported with each MXF profile, see https://docs.aws.amazon.com/mediaconvert/latest/ug/codecs-supported-with-each-mxf-profile.html. For more information about the automatic selection behavior, see https://docs.aws.amazon.com/mediaconvert/latest/ug/default-automatic-selection-of-mxf-profiles.html.
data MxfProfile = MxfProfile' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern MPD10 :: MxfProfile
pattern MPD10 = MxfProfile' "D_10"

pattern MPOP1A :: MxfProfile
pattern MPOP1A = MxfProfile' "OP1A"

pattern MPXdcam :: MxfProfile
pattern MPXdcam = MxfProfile' "XDCAM"

{-# COMPLETE
  MPD10,
  MPOP1A,
  MPXdcam,
  MxfProfile' #-}

instance FromText MxfProfile where
    parser = (MxfProfile' . mk) <$> takeText

instance ToText MxfProfile where
    toText (MxfProfile' ci) = original ci

instance Hashable     MxfProfile
instance NFData       MxfProfile
instance ToByteString MxfProfile
instance ToQuery      MxfProfile
instance ToHeader     MxfProfile

instance ToJSON MxfProfile where
    toJSON = toJSONText

instance FromJSON MxfProfile where
    parseJSON = parseJSONText "MxfProfile"
