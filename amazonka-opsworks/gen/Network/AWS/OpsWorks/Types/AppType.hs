{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.AppType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorks.Types.AppType (
  AppType (
    ..
    , ATAWSFlowRuby
    , ATJava
    , ATNodejs
    , ATOther
    , ATPHP
    , ATRails
    , ATStatic
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppType = AppType' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern ATAWSFlowRuby :: AppType
pattern ATAWSFlowRuby = AppType' "aws-flow-ruby"

pattern ATJava :: AppType
pattern ATJava = AppType' "java"

pattern ATNodejs :: AppType
pattern ATNodejs = AppType' "nodejs"

pattern ATOther :: AppType
pattern ATOther = AppType' "other"

pattern ATPHP :: AppType
pattern ATPHP = AppType' "php"

pattern ATRails :: AppType
pattern ATRails = AppType' "rails"

pattern ATStatic :: AppType
pattern ATStatic = AppType' "static"

{-# COMPLETE
  ATAWSFlowRuby,
  ATJava,
  ATNodejs,
  ATOther,
  ATPHP,
  ATRails,
  ATStatic,
  AppType' #-}

instance FromText AppType where
    parser = (AppType' . mk) <$> takeText

instance ToText AppType where
    toText (AppType' ci) = original ci

instance Hashable     AppType
instance NFData       AppType
instance ToByteString AppType
instance ToQuery      AppType
instance ToHeader     AppType

instance ToJSON AppType where
    toJSON = toJSONText

instance FromJSON AppType where
    parseJSON = parseJSONText "AppType"
