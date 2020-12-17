{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.ShardIteratorType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Kinesis.Types.ShardIteratorType (
  ShardIteratorType (
    ..
    , SITAfterSequenceNumber
    , SITAtSequenceNumber
    , SITAtTimestamp
    , SITLatest
    , SITTrimHorizon
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShardIteratorType = ShardIteratorType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern SITAfterSequenceNumber :: ShardIteratorType
pattern SITAfterSequenceNumber = ShardIteratorType' "AFTER_SEQUENCE_NUMBER"

pattern SITAtSequenceNumber :: ShardIteratorType
pattern SITAtSequenceNumber = ShardIteratorType' "AT_SEQUENCE_NUMBER"

pattern SITAtTimestamp :: ShardIteratorType
pattern SITAtTimestamp = ShardIteratorType' "AT_TIMESTAMP"

pattern SITLatest :: ShardIteratorType
pattern SITLatest = ShardIteratorType' "LATEST"

pattern SITTrimHorizon :: ShardIteratorType
pattern SITTrimHorizon = ShardIteratorType' "TRIM_HORIZON"

{-# COMPLETE
  SITAfterSequenceNumber,
  SITAtSequenceNumber,
  SITAtTimestamp,
  SITLatest,
  SITTrimHorizon,
  ShardIteratorType' #-}

instance FromText ShardIteratorType where
    parser = (ShardIteratorType' . mk) <$> takeText

instance ToText ShardIteratorType where
    toText (ShardIteratorType' ci) = original ci

instance Hashable     ShardIteratorType
instance NFData       ShardIteratorType
instance ToByteString ShardIteratorType
instance ToQuery      ShardIteratorType
instance ToHeader     ShardIteratorType

instance ToJSON ShardIteratorType where
    toJSON = toJSONText
