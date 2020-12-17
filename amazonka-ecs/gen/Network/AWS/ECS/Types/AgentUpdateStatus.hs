{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.AgentUpdateStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.AgentUpdateStatus (
  AgentUpdateStatus (
    ..
    , AUSFailed
    , AUSPending
    , AUSStaged
    , AUSStaging
    , AUSUpdated
    , AUSUpdating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AgentUpdateStatus = AgentUpdateStatus' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern AUSFailed :: AgentUpdateStatus
pattern AUSFailed = AgentUpdateStatus' "FAILED"

pattern AUSPending :: AgentUpdateStatus
pattern AUSPending = AgentUpdateStatus' "PENDING"

pattern AUSStaged :: AgentUpdateStatus
pattern AUSStaged = AgentUpdateStatus' "STAGED"

pattern AUSStaging :: AgentUpdateStatus
pattern AUSStaging = AgentUpdateStatus' "STAGING"

pattern AUSUpdated :: AgentUpdateStatus
pattern AUSUpdated = AgentUpdateStatus' "UPDATED"

pattern AUSUpdating :: AgentUpdateStatus
pattern AUSUpdating = AgentUpdateStatus' "UPDATING"

{-# COMPLETE
  AUSFailed,
  AUSPending,
  AUSStaged,
  AUSStaging,
  AUSUpdated,
  AUSUpdating,
  AgentUpdateStatus' #-}

instance FromText AgentUpdateStatus where
    parser = (AgentUpdateStatus' . mk) <$> takeText

instance ToText AgentUpdateStatus where
    toText (AgentUpdateStatus' ci) = original ci

instance Hashable     AgentUpdateStatus
instance NFData       AgentUpdateStatus
instance ToByteString AgentUpdateStatus
instance ToQuery      AgentUpdateStatus
instance ToHeader     AgentUpdateStatus

instance FromJSON AgentUpdateStatus where
    parseJSON = parseJSONText "AgentUpdateStatus"
