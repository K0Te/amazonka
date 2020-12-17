{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoTAnalytics.Types.DatasetStatus (
  DatasetStatus (
    ..
    , Active
    , Creating
    , Deleting
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DatasetStatus = DatasetStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Active :: DatasetStatus
pattern Active = DatasetStatus' "ACTIVE"

pattern Creating :: DatasetStatus
pattern Creating = DatasetStatus' "CREATING"

pattern Deleting :: DatasetStatus
pattern Deleting = DatasetStatus' "DELETING"

{-# COMPLETE
  Active,
  Creating,
  Deleting,
  DatasetStatus' #-}

instance FromText DatasetStatus where
    parser = (DatasetStatus' . mk) <$> takeText

instance ToText DatasetStatus where
    toText (DatasetStatus' ci) = original ci

instance Hashable     DatasetStatus
instance NFData       DatasetStatus
instance ToByteString DatasetStatus
instance ToQuery      DatasetStatus
instance ToHeader     DatasetStatus

instance FromJSON DatasetStatus where
    parseJSON = parseJSONText "DatasetStatus"
