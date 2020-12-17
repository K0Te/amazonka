{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types.ClusterState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudHSMv2.Types.ClusterState (
  ClusterState (
    ..
    , CSActive
    , CSCreateInProgress
    , CSDegraded
    , CSDeleteInProgress
    , CSDeleted
    , CSInitializeInProgress
    , CSInitialized
    , CSUninitialized
    , CSUpdateInProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClusterState = ClusterState' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern CSActive :: ClusterState
pattern CSActive = ClusterState' "ACTIVE"

pattern CSCreateInProgress :: ClusterState
pattern CSCreateInProgress = ClusterState' "CREATE_IN_PROGRESS"

pattern CSDegraded :: ClusterState
pattern CSDegraded = ClusterState' "DEGRADED"

pattern CSDeleteInProgress :: ClusterState
pattern CSDeleteInProgress = ClusterState' "DELETE_IN_PROGRESS"

pattern CSDeleted :: ClusterState
pattern CSDeleted = ClusterState' "DELETED"

pattern CSInitializeInProgress :: ClusterState
pattern CSInitializeInProgress = ClusterState' "INITIALIZE_IN_PROGRESS"

pattern CSInitialized :: ClusterState
pattern CSInitialized = ClusterState' "INITIALIZED"

pattern CSUninitialized :: ClusterState
pattern CSUninitialized = ClusterState' "UNINITIALIZED"

pattern CSUpdateInProgress :: ClusterState
pattern CSUpdateInProgress = ClusterState' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  CSActive,
  CSCreateInProgress,
  CSDegraded,
  CSDeleteInProgress,
  CSDeleted,
  CSInitializeInProgress,
  CSInitialized,
  CSUninitialized,
  CSUpdateInProgress,
  ClusterState' #-}

instance FromText ClusterState where
    parser = (ClusterState' . mk) <$> takeText

instance ToText ClusterState where
    toText (ClusterState' ci) = original ci

instance Hashable     ClusterState
instance NFData       ClusterState
instance ToByteString ClusterState
instance ToQuery      ClusterState
instance ToHeader     ClusterState

instance FromJSON ClusterState where
    parseJSON = parseJSONText "ClusterState"
