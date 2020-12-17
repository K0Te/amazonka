{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ProjectionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.ProjectionType (
  ProjectionType (
    ..
    , PTAll
    , PTInclude
    , PTKeysOnly
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectionType = ProjectionType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern PTAll :: ProjectionType
pattern PTAll = ProjectionType' "ALL"

pattern PTInclude :: ProjectionType
pattern PTInclude = ProjectionType' "INCLUDE"

pattern PTKeysOnly :: ProjectionType
pattern PTKeysOnly = ProjectionType' "KEYS_ONLY"

{-# COMPLETE
  PTAll,
  PTInclude,
  PTKeysOnly,
  ProjectionType' #-}

instance FromText ProjectionType where
    parser = (ProjectionType' . mk) <$> takeText

instance ToText ProjectionType where
    toText (ProjectionType' ci) = original ci

instance Hashable     ProjectionType
instance NFData       ProjectionType
instance ToByteString ProjectionType
instance ToQuery      ProjectionType
instance ToHeader     ProjectionType

instance ToJSON ProjectionType where
    toJSON = toJSONText

instance FromJSON ProjectionType where
    parseJSON = parseJSONText "ProjectionType"
