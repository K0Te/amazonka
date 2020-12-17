{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportPackagingType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.ReportPackagingType (
  ReportPackagingType (
    ..
    , RPTNone
    , RPTZip
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportPackagingType = ReportPackagingType' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern RPTNone :: ReportPackagingType
pattern RPTNone = ReportPackagingType' "NONE"

pattern RPTZip :: ReportPackagingType
pattern RPTZip = ReportPackagingType' "ZIP"

{-# COMPLETE
  RPTNone,
  RPTZip,
  ReportPackagingType' #-}

instance FromText ReportPackagingType where
    parser = (ReportPackagingType' . mk) <$> takeText

instance ToText ReportPackagingType where
    toText (ReportPackagingType' ci) = original ci

instance Hashable     ReportPackagingType
instance NFData       ReportPackagingType
instance ToByteString ReportPackagingType
instance ToQuery      ReportPackagingType
instance ToHeader     ReportPackagingType

instance ToJSON ReportPackagingType where
    toJSON = toJSONText

instance FromJSON ReportPackagingType where
    parseJSON = parseJSONText "ReportPackagingType"
