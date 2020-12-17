{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ResourceCountGroupKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.ResourceCountGroupKey (
  ResourceCountGroupKey (
    ..
    , RCGKAWSRegion
    , RCGKAccountId
    , RCGKResourceType
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceCountGroupKey = ResourceCountGroupKey' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern RCGKAWSRegion :: ResourceCountGroupKey
pattern RCGKAWSRegion = ResourceCountGroupKey' "AWS_REGION"

pattern RCGKAccountId :: ResourceCountGroupKey
pattern RCGKAccountId = ResourceCountGroupKey' "ACCOUNT_ID"

pattern RCGKResourceType :: ResourceCountGroupKey
pattern RCGKResourceType = ResourceCountGroupKey' "RESOURCE_TYPE"

{-# COMPLETE
  RCGKAWSRegion,
  RCGKAccountId,
  RCGKResourceType,
  ResourceCountGroupKey' #-}

instance FromText ResourceCountGroupKey where
    parser = (ResourceCountGroupKey' . mk) <$> takeText

instance ToText ResourceCountGroupKey where
    toText (ResourceCountGroupKey' ci) = original ci

instance Hashable     ResourceCountGroupKey
instance NFData       ResourceCountGroupKey
instance ToByteString ResourceCountGroupKey
instance ToQuery      ResourceCountGroupKey
instance ToHeader     ResourceCountGroupKey

instance ToJSON ResourceCountGroupKey where
    toJSON = toJSONText
