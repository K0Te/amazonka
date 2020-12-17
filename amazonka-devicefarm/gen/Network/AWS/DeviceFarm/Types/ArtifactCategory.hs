{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ArtifactCategory
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DeviceFarm.Types.ArtifactCategory (
  ArtifactCategory (
    ..
    , File
    , Log
    , Screenshot
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactCategory = ArtifactCategory' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern File :: ArtifactCategory
pattern File = ArtifactCategory' "FILE"

pattern Log :: ArtifactCategory
pattern Log = ArtifactCategory' "LOG"

pattern Screenshot :: ArtifactCategory
pattern Screenshot = ArtifactCategory' "SCREENSHOT"

{-# COMPLETE
  File,
  Log,
  Screenshot,
  ArtifactCategory' #-}

instance FromText ArtifactCategory where
    parser = (ArtifactCategory' . mk) <$> takeText

instance ToText ArtifactCategory where
    toText (ArtifactCategory' ci) = original ci

instance Hashable     ArtifactCategory
instance NFData       ArtifactCategory
instance ToByteString ArtifactCategory
instance ToQuery      ArtifactCategory
instance ToHeader     ArtifactCategory

instance ToJSON ArtifactCategory where
    toJSON = toJSONText
