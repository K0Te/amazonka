{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReturnConsumedCapacity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.ReturnConsumedCapacity (
  ReturnConsumedCapacity (
    ..
    , RCCIndexes
    , RCCNone
    , RCCTotal
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Determines the level of detail about provisioned throughput consumption that is returned in the response:
--
--
--     * @INDEXES@ - The response includes the aggregate @ConsumedCapacity@ for the operation, together with @ConsumedCapacity@ for each table and secondary index that was accessed.
--
-- Note that some operations, such as @GetItem@ and @BatchGetItem@ , do not access any indexes at all. In these cases, specifying @INDEXES@ will only return @ConsumedCapacity@ information for table(s).
--
--     * @TOTAL@ - The response includes only the aggregate @ConsumedCapacity@ for the operation.
--
--     * @NONE@ - No @ConsumedCapacity@ details are included in the response.
--
--
--
data ReturnConsumedCapacity = ReturnConsumedCapacity' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern RCCIndexes :: ReturnConsumedCapacity
pattern RCCIndexes = ReturnConsumedCapacity' "INDEXES"

pattern RCCNone :: ReturnConsumedCapacity
pattern RCCNone = ReturnConsumedCapacity' "NONE"

pattern RCCTotal :: ReturnConsumedCapacity
pattern RCCTotal = ReturnConsumedCapacity' "TOTAL"

{-# COMPLETE
  RCCIndexes,
  RCCNone,
  RCCTotal,
  ReturnConsumedCapacity' #-}

instance FromText ReturnConsumedCapacity where
    parser = (ReturnConsumedCapacity' . mk) <$> takeText

instance ToText ReturnConsumedCapacity where
    toText (ReturnConsumedCapacity' ci) = original ci

instance Hashable     ReturnConsumedCapacity
instance NFData       ReturnConsumedCapacity
instance ToByteString ReturnConsumedCapacity
instance ToQuery      ReturnConsumedCapacity
instance ToHeader     ReturnConsumedCapacity

instance ToJSON ReturnConsumedCapacity where
    toJSON = toJSONText
