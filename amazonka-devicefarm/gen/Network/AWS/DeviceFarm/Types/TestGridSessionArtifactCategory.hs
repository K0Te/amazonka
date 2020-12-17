{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionArtifactCategory
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DeviceFarm.Types.TestGridSessionArtifactCategory (
  TestGridSessionArtifactCategory (
    ..
    , TGSACLog
    , TGSACVideo
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TestGridSessionArtifactCategory = TestGridSessionArtifactCategory' (CI
                                                                           Text)
                                         deriving (Eq, Ord, Read, Show, Data,
                                                   Typeable, Generic)

pattern TGSACLog :: TestGridSessionArtifactCategory
pattern TGSACLog = TestGridSessionArtifactCategory' "LOG"

pattern TGSACVideo :: TestGridSessionArtifactCategory
pattern TGSACVideo = TestGridSessionArtifactCategory' "VIDEO"

{-# COMPLETE
  TGSACLog,
  TGSACVideo,
  TestGridSessionArtifactCategory' #-}

instance FromText TestGridSessionArtifactCategory where
    parser = (TestGridSessionArtifactCategory' . mk) <$> takeText

instance ToText TestGridSessionArtifactCategory where
    toText (TestGridSessionArtifactCategory' ci) = original ci

instance Hashable     TestGridSessionArtifactCategory
instance NFData       TestGridSessionArtifactCategory
instance ToByteString TestGridSessionArtifactCategory
instance ToQuery      TestGridSessionArtifactCategory
instance ToHeader     TestGridSessionArtifactCategory

instance ToJSON TestGridSessionArtifactCategory where
    toJSON = toJSONText
