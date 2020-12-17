{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppLaunchStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.AppLaunchStatus (
  AppLaunchStatus (
    ..
    , ConfigurationInProgress
    , ConfigurationInvalid
    , DeltaLaunchFailed
    , DeltaLaunchInProgress
    , LaunchFailed
    , LaunchInProgress
    , LaunchPending
    , Launched
    , PartiallyLaunched
    , ReadyForConfiguration
    , ReadyForLaunch
    , TerminateFailed
    , TerminateInProgress
    , Terminated
    , ValidationInProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppLaunchStatus = AppLaunchStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern ConfigurationInProgress :: AppLaunchStatus
pattern ConfigurationInProgress = AppLaunchStatus' "CONFIGURATION_IN_PROGRESS"

pattern ConfigurationInvalid :: AppLaunchStatus
pattern ConfigurationInvalid = AppLaunchStatus' "CONFIGURATION_INVALID"

pattern DeltaLaunchFailed :: AppLaunchStatus
pattern DeltaLaunchFailed = AppLaunchStatus' "DELTA_LAUNCH_FAILED"

pattern DeltaLaunchInProgress :: AppLaunchStatus
pattern DeltaLaunchInProgress = AppLaunchStatus' "DELTA_LAUNCH_IN_PROGRESS"

pattern LaunchFailed :: AppLaunchStatus
pattern LaunchFailed = AppLaunchStatus' "LAUNCH_FAILED"

pattern LaunchInProgress :: AppLaunchStatus
pattern LaunchInProgress = AppLaunchStatus' "LAUNCH_IN_PROGRESS"

pattern LaunchPending :: AppLaunchStatus
pattern LaunchPending = AppLaunchStatus' "LAUNCH_PENDING"

pattern Launched :: AppLaunchStatus
pattern Launched = AppLaunchStatus' "LAUNCHED"

pattern PartiallyLaunched :: AppLaunchStatus
pattern PartiallyLaunched = AppLaunchStatus' "PARTIALLY_LAUNCHED"

pattern ReadyForConfiguration :: AppLaunchStatus
pattern ReadyForConfiguration = AppLaunchStatus' "READY_FOR_CONFIGURATION"

pattern ReadyForLaunch :: AppLaunchStatus
pattern ReadyForLaunch = AppLaunchStatus' "READY_FOR_LAUNCH"

pattern TerminateFailed :: AppLaunchStatus
pattern TerminateFailed = AppLaunchStatus' "TERMINATE_FAILED"

pattern TerminateInProgress :: AppLaunchStatus
pattern TerminateInProgress = AppLaunchStatus' "TERMINATE_IN_PROGRESS"

pattern Terminated :: AppLaunchStatus
pattern Terminated = AppLaunchStatus' "TERMINATED"

pattern ValidationInProgress :: AppLaunchStatus
pattern ValidationInProgress = AppLaunchStatus' "VALIDATION_IN_PROGRESS"

{-# COMPLETE
  ConfigurationInProgress,
  ConfigurationInvalid,
  DeltaLaunchFailed,
  DeltaLaunchInProgress,
  LaunchFailed,
  LaunchInProgress,
  LaunchPending,
  Launched,
  PartiallyLaunched,
  ReadyForConfiguration,
  ReadyForLaunch,
  TerminateFailed,
  TerminateInProgress,
  Terminated,
  ValidationInProgress,
  AppLaunchStatus' #-}

instance FromText AppLaunchStatus where
    parser = (AppLaunchStatus' . mk) <$> takeText

instance ToText AppLaunchStatus where
    toText (AppLaunchStatus' ci) = original ci

instance Hashable     AppLaunchStatus
instance NFData       AppLaunchStatus
instance ToByteString AppLaunchStatus
instance ToQuery      AppLaunchStatus
instance ToHeader     AppLaunchStatus

instance FromJSON AppLaunchStatus where
    parseJSON = parseJSONText "AppLaunchStatus"
