{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AgentHealthCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Inspector.Types.AgentHealthCode (
  AgentHealthCode (
    ..
    , Idle
    , Running
    , Shutdown
    , Throttled
    , Unhealthy
    , Unknown
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AgentHealthCode = AgentHealthCode' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Idle :: AgentHealthCode
pattern Idle = AgentHealthCode' "IDLE"

pattern Running :: AgentHealthCode
pattern Running = AgentHealthCode' "RUNNING"

pattern Shutdown :: AgentHealthCode
pattern Shutdown = AgentHealthCode' "SHUTDOWN"

pattern Throttled :: AgentHealthCode
pattern Throttled = AgentHealthCode' "THROTTLED"

pattern Unhealthy :: AgentHealthCode
pattern Unhealthy = AgentHealthCode' "UNHEALTHY"

pattern Unknown :: AgentHealthCode
pattern Unknown = AgentHealthCode' "UNKNOWN"

{-# COMPLETE
  Idle,
  Running,
  Shutdown,
  Throttled,
  Unhealthy,
  Unknown,
  AgentHealthCode' #-}

instance FromText AgentHealthCode where
    parser = (AgentHealthCode' . mk) <$> takeText

instance ToText AgentHealthCode where
    toText (AgentHealthCode' ci) = original ci

instance Hashable     AgentHealthCode
instance NFData       AgentHealthCode
instance ToByteString AgentHealthCode
instance ToQuery      AgentHealthCode
instance ToHeader     AgentHealthCode

instance ToJSON AgentHealthCode where
    toJSON = toJSONText

instance FromJSON AgentHealthCode where
    parseJSON = parseJSONText "AgentHealthCode"
