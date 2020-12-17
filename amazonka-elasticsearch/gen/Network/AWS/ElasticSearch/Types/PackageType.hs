{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.PackageType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticSearch.Types.PackageType (
  PackageType (
    ..
    , TxtDictionary
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PackageType = PackageType' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern TxtDictionary :: PackageType
pattern TxtDictionary = PackageType' "TXT-DICTIONARY"

{-# COMPLETE
  TxtDictionary,
  PackageType' #-}

instance FromText PackageType where
    parser = (PackageType' . mk) <$> takeText

instance ToText PackageType where
    toText (PackageType' ci) = original ci

instance Hashable     PackageType
instance NFData       PackageType
instance ToByteString PackageType
instance ToQuery      PackageType
instance ToHeader     PackageType

instance ToJSON PackageType where
    toJSON = toJSONText

instance FromJSON PackageType where
    parseJSON = parseJSONText "PackageType"
