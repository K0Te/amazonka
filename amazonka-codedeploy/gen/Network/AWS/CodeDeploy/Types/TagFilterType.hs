{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TagFilterType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeDeploy.Types.TagFilterType (
  TagFilterType (
    ..
    , TFTKeyAndValue
    , TFTKeyOnly
    , TFTValueOnly
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TagFilterType = TagFilterType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern TFTKeyAndValue :: TagFilterType
pattern TFTKeyAndValue = TagFilterType' "KEY_AND_VALUE"

pattern TFTKeyOnly :: TagFilterType
pattern TFTKeyOnly = TagFilterType' "KEY_ONLY"

pattern TFTValueOnly :: TagFilterType
pattern TFTValueOnly = TagFilterType' "VALUE_ONLY"

{-# COMPLETE
  TFTKeyAndValue,
  TFTKeyOnly,
  TFTValueOnly,
  TagFilterType' #-}

instance FromText TagFilterType where
    parser = (TagFilterType' . mk) <$> takeText

instance ToText TagFilterType where
    toText (TagFilterType' ci) = original ci

instance Hashable     TagFilterType
instance NFData       TagFilterType
instance ToByteString TagFilterType
instance ToQuery      TagFilterType
instance ToHeader     TagFilterType

instance ToJSON TagFilterType where
    toJSON = toJSONText

instance FromJSON TagFilterType where
    parseJSON = parseJSONText "TagFilterType"
