{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupFilterName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ResourceGroups.Types.GroupFilterName (
  GroupFilterName (
    ..
    , GFNConfigurationType
    , GFNResourceType
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GroupFilterName = GroupFilterName' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern GFNConfigurationType :: GroupFilterName
pattern GFNConfigurationType = GroupFilterName' "configuration-type"

pattern GFNResourceType :: GroupFilterName
pattern GFNResourceType = GroupFilterName' "resource-type"

{-# COMPLETE
  GFNConfigurationType,
  GFNResourceType,
  GroupFilterName' #-}

instance FromText GroupFilterName where
    parser = (GroupFilterName' . mk) <$> takeText

instance ToText GroupFilterName where
    toText (GroupFilterName' ci) = original ci

instance Hashable     GroupFilterName
instance NFData       GroupFilterName
instance ToByteString GroupFilterName
instance ToQuery      GroupFilterName
instance ToHeader     GroupFilterName

instance ToJSON GroupFilterName where
    toJSON = toJSONText
