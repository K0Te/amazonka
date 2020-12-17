{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DeviceFarm.Types.ExecutionStatus (
  ExecutionStatus (
    ..
    , Completed
    , Pending
    , PendingConcurrency
    , PendingDevice
    , Preparing
    , Processing
    , Running
    , Scheduling
    , Stopping
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionStatus = ExecutionStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Completed :: ExecutionStatus
pattern Completed = ExecutionStatus' "COMPLETED"

pattern Pending :: ExecutionStatus
pattern Pending = ExecutionStatus' "PENDING"

pattern PendingConcurrency :: ExecutionStatus
pattern PendingConcurrency = ExecutionStatus' "PENDING_CONCURRENCY"

pattern PendingDevice :: ExecutionStatus
pattern PendingDevice = ExecutionStatus' "PENDING_DEVICE"

pattern Preparing :: ExecutionStatus
pattern Preparing = ExecutionStatus' "PREPARING"

pattern Processing :: ExecutionStatus
pattern Processing = ExecutionStatus' "PROCESSING"

pattern Running :: ExecutionStatus
pattern Running = ExecutionStatus' "RUNNING"

pattern Scheduling :: ExecutionStatus
pattern Scheduling = ExecutionStatus' "SCHEDULING"

pattern Stopping :: ExecutionStatus
pattern Stopping = ExecutionStatus' "STOPPING"

{-# COMPLETE
  Completed,
  Pending,
  PendingConcurrency,
  PendingDevice,
  Preparing,
  Processing,
  Running,
  Scheduling,
  Stopping,
  ExecutionStatus' #-}

instance FromText ExecutionStatus where
    parser = (ExecutionStatus' . mk) <$> takeText

instance ToText ExecutionStatus where
    toText (ExecutionStatus' ci) = original ci

instance Hashable     ExecutionStatus
instance NFData       ExecutionStatus
instance ToByteString ExecutionStatus
instance ToQuery      ExecutionStatus
instance ToHeader     ExecutionStatus

instance FromJSON ExecutionStatus where
    parseJSON = parseJSONText "ExecutionStatus"
