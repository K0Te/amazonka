{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DeinterlacerControl (
  DeinterlacerControl (
    ..
    , ForceAllFrames
    , Normal
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | - When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video.
data DeinterlacerControl = DeinterlacerControl' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern ForceAllFrames :: DeinterlacerControl
pattern ForceAllFrames = DeinterlacerControl' "FORCE_ALL_FRAMES"

pattern Normal :: DeinterlacerControl
pattern Normal = DeinterlacerControl' "NORMAL"

{-# COMPLETE
  ForceAllFrames,
  Normal,
  DeinterlacerControl' #-}

instance FromText DeinterlacerControl where
    parser = (DeinterlacerControl' . mk) <$> takeText

instance ToText DeinterlacerControl where
    toText (DeinterlacerControl' ci) = original ci

instance Hashable     DeinterlacerControl
instance NFData       DeinterlacerControl
instance ToByteString DeinterlacerControl
instance ToQuery      DeinterlacerControl
instance ToHeader     DeinterlacerControl

instance ToJSON DeinterlacerControl where
    toJSON = toJSONText

instance FromJSON DeinterlacerControl where
    parseJSON = parseJSONText "DeinterlacerControl"
