{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.AppStatus (
  AppStatus (
    ..
    , Active
    , Creating
    , DeleteFailed
    , Deleted
    , Deleting
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppStatus = AppStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern Active :: AppStatus
pattern Active = AppStatus' "ACTIVE"

pattern Creating :: AppStatus
pattern Creating = AppStatus' "CREATING"

pattern DeleteFailed :: AppStatus
pattern DeleteFailed = AppStatus' "DELETE_FAILED"

pattern Deleted :: AppStatus
pattern Deleted = AppStatus' "DELETED"

pattern Deleting :: AppStatus
pattern Deleting = AppStatus' "DELETING"

pattern Updating :: AppStatus
pattern Updating = AppStatus' "UPDATING"

{-# COMPLETE
  Active,
  Creating,
  DeleteFailed,
  Deleted,
  Deleting,
  Updating,
  AppStatus' #-}

instance FromText AppStatus where
    parser = (AppStatus' . mk) <$> takeText

instance ToText AppStatus where
    toText (AppStatus' ci) = original ci

instance Hashable     AppStatus
instance NFData       AppStatus
instance ToByteString AppStatus
instance ToQuery      AppStatus
instance ToHeader     AppStatus

instance FromJSON AppStatus where
    parseJSON = parseJSONText "AppStatus"
