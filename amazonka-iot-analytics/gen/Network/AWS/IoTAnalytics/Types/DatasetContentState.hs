{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetContentState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoTAnalytics.Types.DatasetContentState (
  DatasetContentState (
    ..
    , DCSCreating
    , DCSFailed
    , DCSSucceeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DatasetContentState = DatasetContentState' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern DCSCreating :: DatasetContentState
pattern DCSCreating = DatasetContentState' "CREATING"

pattern DCSFailed :: DatasetContentState
pattern DCSFailed = DatasetContentState' "FAILED"

pattern DCSSucceeded :: DatasetContentState
pattern DCSSucceeded = DatasetContentState' "SUCCEEDED"

{-# COMPLETE
  DCSCreating,
  DCSFailed,
  DCSSucceeded,
  DatasetContentState' #-}

instance FromText DatasetContentState where
    parser = (DatasetContentState' . mk) <$> takeText

instance ToText DatasetContentState where
    toText (DatasetContentState' ci) = original ci

instance Hashable     DatasetContentState
instance NFData       DatasetContentState
instance ToByteString DatasetContentState
instance ToQuery      DatasetContentState
instance ToHeader     DatasetContentState

instance FromJSON DatasetContentState where
    parseJSON = parseJSONText "DatasetContentState"
