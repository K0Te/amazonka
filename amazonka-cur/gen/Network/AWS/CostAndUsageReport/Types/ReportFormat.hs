{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostAndUsageReport.Types.ReportFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CostAndUsageReport.Types.ReportFormat (
  ReportFormat (
    ..
    , Parquet
    , TextORcsv
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The format that AWS saves the report in.
--
--
data ReportFormat = ReportFormat' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Parquet :: ReportFormat
pattern Parquet = ReportFormat' "Parquet"

pattern TextORcsv :: ReportFormat
pattern TextORcsv = ReportFormat' "textORcsv"

{-# COMPLETE
  Parquet,
  TextORcsv,
  ReportFormat' #-}

instance FromText ReportFormat where
    parser = (ReportFormat' . mk) <$> takeText

instance ToText ReportFormat where
    toText (ReportFormat' ci) = original ci

instance Hashable     ReportFormat
instance NFData       ReportFormat
instance ToByteString ReportFormat
instance ToQuery      ReportFormat
instance ToHeader     ReportFormat

instance ToJSON ReportFormat where
    toJSON = toJSONText

instance FromJSON ReportFormat where
    parseJSON = parseJSONText "ReportFormat"
