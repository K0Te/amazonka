{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.DataSourceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppSync.Types.DataSourceType (
  DataSourceType (
    ..
    , AWSLambda
    , AmazonDynamodb
    , AmazonElasticsearch
    , HTTP
    , None
    , RelationalDatabase
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataSourceType = DataSourceType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern AWSLambda :: DataSourceType
pattern AWSLambda = DataSourceType' "AWS_LAMBDA"

pattern AmazonDynamodb :: DataSourceType
pattern AmazonDynamodb = DataSourceType' "AMAZON_DYNAMODB"

pattern AmazonElasticsearch :: DataSourceType
pattern AmazonElasticsearch = DataSourceType' "AMAZON_ELASTICSEARCH"

pattern HTTP :: DataSourceType
pattern HTTP = DataSourceType' "HTTP"

pattern None :: DataSourceType
pattern None = DataSourceType' "NONE"

pattern RelationalDatabase :: DataSourceType
pattern RelationalDatabase = DataSourceType' "RELATIONAL_DATABASE"

{-# COMPLETE
  AWSLambda,
  AmazonDynamodb,
  AmazonElasticsearch,
  HTTP,
  None,
  RelationalDatabase,
  DataSourceType' #-}

instance FromText DataSourceType where
    parser = (DataSourceType' . mk) <$> takeText

instance ToText DataSourceType where
    toText (DataSourceType' ci) = original ci

instance Hashable     DataSourceType
instance NFData       DataSourceType
instance ToByteString DataSourceType
instance ToQuery      DataSourceType
instance ToHeader     DataSourceType

instance ToJSON DataSourceType where
    toJSON = toJSONText

instance FromJSON DataSourceType where
    parseJSON = parseJSONText "DataSourceType"
