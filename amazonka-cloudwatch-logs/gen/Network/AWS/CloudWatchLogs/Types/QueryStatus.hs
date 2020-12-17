{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.QueryStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudWatchLogs.Types.QueryStatus (
  QueryStatus (
    ..
    , Cancelled
    , Complete
    , Failed
    , Running
    , Scheduled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueryStatus = QueryStatus' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern Cancelled :: QueryStatus
pattern Cancelled = QueryStatus' "Cancelled"

pattern Complete :: QueryStatus
pattern Complete = QueryStatus' "Complete"

pattern Failed :: QueryStatus
pattern Failed = QueryStatus' "Failed"

pattern Running :: QueryStatus
pattern Running = QueryStatus' "Running"

pattern Scheduled :: QueryStatus
pattern Scheduled = QueryStatus' "Scheduled"

{-# COMPLETE
  Cancelled,
  Complete,
  Failed,
  Running,
  Scheduled,
  QueryStatus' #-}

instance FromText QueryStatus where
    parser = (QueryStatus' . mk) <$> takeText

instance ToText QueryStatus where
    toText (QueryStatus' ci) = original ci

instance Hashable     QueryStatus
instance NFData       QueryStatus
instance ToByteString QueryStatus
instance ToQuery      QueryStatus
instance ToHeader     QueryStatus

instance ToJSON QueryStatus where
    toJSON = toJSONText

instance FromJSON QueryStatus where
    parseJSON = parseJSONText "QueryStatus"
