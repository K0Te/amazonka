{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.WebhookBuildType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.WebhookBuildType (
  WebhookBuildType (
    ..
    , Build
    , BuildBatch
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WebhookBuildType = WebhookBuildType' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Build :: WebhookBuildType
pattern Build = WebhookBuildType' "BUILD"

pattern BuildBatch :: WebhookBuildType
pattern BuildBatch = WebhookBuildType' "BUILD_BATCH"

{-# COMPLETE
  Build,
  BuildBatch,
  WebhookBuildType' #-}

instance FromText WebhookBuildType where
    parser = (WebhookBuildType' . mk) <$> takeText

instance ToText WebhookBuildType where
    toText (WebhookBuildType' ci) = original ci

instance Hashable     WebhookBuildType
instance NFData       WebhookBuildType
instance ToByteString WebhookBuildType
instance ToQuery      WebhookBuildType
instance ToHeader     WebhookBuildType

instance ToJSON WebhookBuildType where
    toJSON = toJSONText

instance FromJSON WebhookBuildType where
    parseJSON = parseJSONText "WebhookBuildType"
