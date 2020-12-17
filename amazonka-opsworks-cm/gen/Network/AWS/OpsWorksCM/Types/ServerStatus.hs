{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.ServerStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorksCM.Types.ServerStatus (
  ServerStatus (
    ..
    , BackingUp
    , ConnectionLost
    , Creating
    , Deleting
    , Failed
    , Healthy
    , Modifying
    , Restoring
    , Running
    , Setup
    , Terminated
    , UnderMaintenance
    , Unhealthy
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServerStatus = ServerStatus' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern BackingUp :: ServerStatus
pattern BackingUp = ServerStatus' "BACKING_UP"

pattern ConnectionLost :: ServerStatus
pattern ConnectionLost = ServerStatus' "CONNECTION_LOST"

pattern Creating :: ServerStatus
pattern Creating = ServerStatus' "CREATING"

pattern Deleting :: ServerStatus
pattern Deleting = ServerStatus' "DELETING"

pattern Failed :: ServerStatus
pattern Failed = ServerStatus' "FAILED"

pattern Healthy :: ServerStatus
pattern Healthy = ServerStatus' "HEALTHY"

pattern Modifying :: ServerStatus
pattern Modifying = ServerStatus' "MODIFYING"

pattern Restoring :: ServerStatus
pattern Restoring = ServerStatus' "RESTORING"

pattern Running :: ServerStatus
pattern Running = ServerStatus' "RUNNING"

pattern Setup :: ServerStatus
pattern Setup = ServerStatus' "SETUP"

pattern Terminated :: ServerStatus
pattern Terminated = ServerStatus' "TERMINATED"

pattern UnderMaintenance :: ServerStatus
pattern UnderMaintenance = ServerStatus' "UNDER_MAINTENANCE"

pattern Unhealthy :: ServerStatus
pattern Unhealthy = ServerStatus' "UNHEALTHY"

{-# COMPLETE
  BackingUp,
  ConnectionLost,
  Creating,
  Deleting,
  Failed,
  Healthy,
  Modifying,
  Restoring,
  Running,
  Setup,
  Terminated,
  UnderMaintenance,
  Unhealthy,
  ServerStatus' #-}

instance FromText ServerStatus where
    parser = (ServerStatus' . mk) <$> takeText

instance ToText ServerStatus where
    toText (ServerStatus' ci) = original ci

instance Hashable     ServerStatus
instance NFData       ServerStatus
instance ToByteString ServerStatus
instance ToQuery      ServerStatus
instance ToHeader     ServerStatus

instance FromJSON ServerStatus where
    parseJSON = parseJSONText "ServerStatus"
