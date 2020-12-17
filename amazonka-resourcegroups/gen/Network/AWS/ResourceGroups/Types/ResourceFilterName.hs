{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.ResourceFilterName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ResourceGroups.Types.ResourceFilterName (
  ResourceFilterName (
    ..
    , ResourceType
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceFilterName = ResourceFilterName' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern ResourceType :: ResourceFilterName
pattern ResourceType = ResourceFilterName' "resource-type"

{-# COMPLETE
  ResourceType,
  ResourceFilterName' #-}

instance FromText ResourceFilterName where
    parser = (ResourceFilterName' . mk) <$> takeText

instance ToText ResourceFilterName where
    toText (ResourceFilterName' ci) = original ci

instance Hashable     ResourceFilterName
instance NFData       ResourceFilterName
instance ToByteString ResourceFilterName
instance ToQuery      ResourceFilterName
instance ToHeader     ResourceFilterName

instance ToJSON ResourceFilterName where
    toJSON = toJSONText
