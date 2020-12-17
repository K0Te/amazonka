{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostAndUsageReport.Types.CompressionFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CostAndUsageReport.Types.CompressionFormat (
  CompressionFormat (
    ..
    , CFGzip
    , CFParquet
    , CFZip
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The compression format that AWS uses for the report.
--
--
data CompressionFormat = CompressionFormat' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern CFGzip :: CompressionFormat
pattern CFGzip = CompressionFormat' "GZIP"

pattern CFParquet :: CompressionFormat
pattern CFParquet = CompressionFormat' "Parquet"

pattern CFZip :: CompressionFormat
pattern CFZip = CompressionFormat' "ZIP"

{-# COMPLETE
  CFGzip,
  CFParquet,
  CFZip,
  CompressionFormat' #-}

instance FromText CompressionFormat where
    parser = (CompressionFormat' . mk) <$> takeText

instance ToText CompressionFormat where
    toText (CompressionFormat' ci) = original ci

instance Hashable     CompressionFormat
instance NFData       CompressionFormat
instance ToByteString CompressionFormat
instance ToQuery      CompressionFormat
instance ToHeader     CompressionFormat

instance ToJSON CompressionFormat where
    toJSON = toJSONText

instance FromJSON CompressionFormat where
    parseJSON = parseJSONText "CompressionFormat"
