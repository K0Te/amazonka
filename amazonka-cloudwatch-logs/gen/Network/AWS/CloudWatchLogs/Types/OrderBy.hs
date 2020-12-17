{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.OrderBy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudWatchLogs.Types.OrderBy (
  OrderBy (
    ..
    , LastEventTime
    , LogStreamName
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrderBy = OrderBy' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern LastEventTime :: OrderBy
pattern LastEventTime = OrderBy' "LastEventTime"

pattern LogStreamName :: OrderBy
pattern LogStreamName = OrderBy' "LogStreamName"

{-# COMPLETE
  LastEventTime,
  LogStreamName,
  OrderBy' #-}

instance FromText OrderBy where
    parser = (OrderBy' . mk) <$> takeText

instance ToText OrderBy where
    toText (OrderBy' ci) = original ci

instance Hashable     OrderBy
instance NFData       OrderBy
instance ToByteString OrderBy
instance ToQuery      OrderBy
instance ToHeader     OrderBy

instance ToJSON OrderBy where
    toJSON = toJSONText
