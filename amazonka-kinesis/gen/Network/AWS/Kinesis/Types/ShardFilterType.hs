{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.ShardFilterType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Kinesis.Types.ShardFilterType (
  ShardFilterType (
    ..
    , AfterShardId
    , AtLatest
    , AtTimestamp
    , AtTrimHorizon
    , FromTimestamp
    , FromTrimHorizon
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShardFilterType = ShardFilterType' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern AfterShardId :: ShardFilterType
pattern AfterShardId = ShardFilterType' "AFTER_SHARD_ID"

pattern AtLatest :: ShardFilterType
pattern AtLatest = ShardFilterType' "AT_LATEST"

pattern AtTimestamp :: ShardFilterType
pattern AtTimestamp = ShardFilterType' "AT_TIMESTAMP"

pattern AtTrimHorizon :: ShardFilterType
pattern AtTrimHorizon = ShardFilterType' "AT_TRIM_HORIZON"

pattern FromTimestamp :: ShardFilterType
pattern FromTimestamp = ShardFilterType' "FROM_TIMESTAMP"

pattern FromTrimHorizon :: ShardFilterType
pattern FromTrimHorizon = ShardFilterType' "FROM_TRIM_HORIZON"

{-# COMPLETE
  AfterShardId,
  AtLatest,
  AtTimestamp,
  AtTrimHorizon,
  FromTimestamp,
  FromTrimHorizon,
  ShardFilterType' #-}

instance FromText ShardFilterType where
    parser = (ShardFilterType' . mk) <$> takeText

instance ToText ShardFilterType where
    toText (ShardFilterType' ci) = original ci

instance Hashable     ShardFilterType
instance NFData       ShardFilterType
instance ToByteString ShardFilterType
instance ToQuery      ShardFilterType
instance ToHeader     ShardFilterType

instance ToJSON ShardFilterType where
    toJSON = toJSONText
