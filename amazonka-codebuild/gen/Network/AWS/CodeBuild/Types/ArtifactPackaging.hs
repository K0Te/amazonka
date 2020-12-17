{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ArtifactPackaging
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.ArtifactPackaging (
  ArtifactPackaging (
    ..
    , None
    , Zip
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactPackaging = ArtifactPackaging' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern None :: ArtifactPackaging
pattern None = ArtifactPackaging' "NONE"

pattern Zip :: ArtifactPackaging
pattern Zip = ArtifactPackaging' "ZIP"

{-# COMPLETE
  None,
  Zip,
  ArtifactPackaging' #-}

instance FromText ArtifactPackaging where
    parser = (ArtifactPackaging' . mk) <$> takeText

instance ToText ArtifactPackaging where
    toText (ArtifactPackaging' ci) = original ci

instance Hashable     ArtifactPackaging
instance NFData       ArtifactPackaging
instance ToByteString ArtifactPackaging
instance ToQuery      ArtifactPackaging
instance ToHeader     ArtifactPackaging

instance ToJSON ArtifactPackaging where
    toJSON = toJSONText

instance FromJSON ArtifactPackaging where
    parseJSON = parseJSONText "ArtifactPackaging"
