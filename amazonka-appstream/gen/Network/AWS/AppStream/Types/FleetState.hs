{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.FleetState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppStream.Types.FleetState (
  FleetState (
    ..
    , Running
    , Starting
    , Stopped
    , Stopping
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FleetState = FleetState' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern Running :: FleetState
pattern Running = FleetState' "RUNNING"

pattern Starting :: FleetState
pattern Starting = FleetState' "STARTING"

pattern Stopped :: FleetState
pattern Stopped = FleetState' "STOPPED"

pattern Stopping :: FleetState
pattern Stopping = FleetState' "STOPPING"

{-# COMPLETE
  Running,
  Starting,
  Stopped,
  Stopping,
  FleetState' #-}

instance FromText FleetState where
    parser = (FleetState' . mk) <$> takeText

instance ToText FleetState where
    toText (FleetState' ci) = original ci

instance Hashable     FleetState
instance NFData       FleetState
instance ToByteString FleetState
instance ToQuery      FleetState
instance ToHeader     FleetState

instance FromJSON FleetState where
    parseJSON = parseJSONText "FleetState"
