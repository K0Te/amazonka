{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppReplicationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.AppReplicationStatus (
  AppReplicationStatus (
    ..
    , ARSConfigurationInProgress
    , ARSConfigurationInvalid
    , ARSDeltaReplicated
    , ARSDeltaReplicationFailed
    , ARSDeltaReplicationInProgress
    , ARSPartiallyReplicated
    , ARSReadyForConfiguration
    , ARSReadyForReplication
    , ARSReplicated
    , ARSReplicationFailed
    , ARSReplicationInProgress
    , ARSReplicationPending
    , ARSReplicationStopFailed
    , ARSReplicationStopped
    , ARSReplicationStopping
    , ARSValidationInProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppReplicationStatus = AppReplicationStatus' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern ARSConfigurationInProgress :: AppReplicationStatus
pattern ARSConfigurationInProgress = AppReplicationStatus' "CONFIGURATION_IN_PROGRESS"

pattern ARSConfigurationInvalid :: AppReplicationStatus
pattern ARSConfigurationInvalid = AppReplicationStatus' "CONFIGURATION_INVALID"

pattern ARSDeltaReplicated :: AppReplicationStatus
pattern ARSDeltaReplicated = AppReplicationStatus' "DELTA_REPLICATED"

pattern ARSDeltaReplicationFailed :: AppReplicationStatus
pattern ARSDeltaReplicationFailed = AppReplicationStatus' "DELTA_REPLICATION_FAILED"

pattern ARSDeltaReplicationInProgress :: AppReplicationStatus
pattern ARSDeltaReplicationInProgress = AppReplicationStatus' "DELTA_REPLICATION_IN_PROGRESS"

pattern ARSPartiallyReplicated :: AppReplicationStatus
pattern ARSPartiallyReplicated = AppReplicationStatus' "PARTIALLY_REPLICATED"

pattern ARSReadyForConfiguration :: AppReplicationStatus
pattern ARSReadyForConfiguration = AppReplicationStatus' "READY_FOR_CONFIGURATION"

pattern ARSReadyForReplication :: AppReplicationStatus
pattern ARSReadyForReplication = AppReplicationStatus' "READY_FOR_REPLICATION"

pattern ARSReplicated :: AppReplicationStatus
pattern ARSReplicated = AppReplicationStatus' "REPLICATED"

pattern ARSReplicationFailed :: AppReplicationStatus
pattern ARSReplicationFailed = AppReplicationStatus' "REPLICATION_FAILED"

pattern ARSReplicationInProgress :: AppReplicationStatus
pattern ARSReplicationInProgress = AppReplicationStatus' "REPLICATION_IN_PROGRESS"

pattern ARSReplicationPending :: AppReplicationStatus
pattern ARSReplicationPending = AppReplicationStatus' "REPLICATION_PENDING"

pattern ARSReplicationStopFailed :: AppReplicationStatus
pattern ARSReplicationStopFailed = AppReplicationStatus' "REPLICATION_STOP_FAILED"

pattern ARSReplicationStopped :: AppReplicationStatus
pattern ARSReplicationStopped = AppReplicationStatus' "REPLICATION_STOPPED"

pattern ARSReplicationStopping :: AppReplicationStatus
pattern ARSReplicationStopping = AppReplicationStatus' "REPLICATION_STOPPING"

pattern ARSValidationInProgress :: AppReplicationStatus
pattern ARSValidationInProgress = AppReplicationStatus' "VALIDATION_IN_PROGRESS"

{-# COMPLETE
  ARSConfigurationInProgress,
  ARSConfigurationInvalid,
  ARSDeltaReplicated,
  ARSDeltaReplicationFailed,
  ARSDeltaReplicationInProgress,
  ARSPartiallyReplicated,
  ARSReadyForConfiguration,
  ARSReadyForReplication,
  ARSReplicated,
  ARSReplicationFailed,
  ARSReplicationInProgress,
  ARSReplicationPending,
  ARSReplicationStopFailed,
  ARSReplicationStopped,
  ARSReplicationStopping,
  ARSValidationInProgress,
  AppReplicationStatus' #-}

instance FromText AppReplicationStatus where
    parser = (AppReplicationStatus' . mk) <$> takeText

instance ToText AppReplicationStatus where
    toText (AppReplicationStatus' ci) = original ci

instance Hashable     AppReplicationStatus
instance NFData       AppReplicationStatus
instance ToByteString AppReplicationStatus
instance ToQuery      AppReplicationStatus
instance ToHeader     AppReplicationStatus

instance FromJSON AppReplicationStatus where
    parseJSON = parseJSONText "AppReplicationStatus"
