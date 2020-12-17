{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause (
  ScheduleActivityTaskFailedCause (
    ..
    , SATFCActivityCreationRateExceeded
    , SATFCActivityIdAlreadyInUse
    , SATFCActivityTypeDeprecated
    , SATFCActivityTypeDoesNotExist
    , SATFCDefaultHeartbeatTimeoutUndefined
    , SATFCDefaultScheduleToCloseTimeoutUndefined
    , SATFCDefaultScheduleToStartTimeoutUndefined
    , SATFCDefaultStartToCloseTimeoutUndefined
    , SATFCDefaultTaskListUndefined
    , SATFCOpenActivitiesLimitExceeded
    , SATFCOperationNotPermitted
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScheduleActivityTaskFailedCause = ScheduleActivityTaskFailedCause' (CI
                                                                           Text)
                                         deriving (Eq, Ord, Read, Show, Data,
                                                   Typeable, Generic)

pattern SATFCActivityCreationRateExceeded :: ScheduleActivityTaskFailedCause
pattern SATFCActivityCreationRateExceeded = ScheduleActivityTaskFailedCause' "ACTIVITY_CREATION_RATE_EXCEEDED"

pattern SATFCActivityIdAlreadyInUse :: ScheduleActivityTaskFailedCause
pattern SATFCActivityIdAlreadyInUse = ScheduleActivityTaskFailedCause' "ACTIVITY_ID_ALREADY_IN_USE"

pattern SATFCActivityTypeDeprecated :: ScheduleActivityTaskFailedCause
pattern SATFCActivityTypeDeprecated = ScheduleActivityTaskFailedCause' "ACTIVITY_TYPE_DEPRECATED"

pattern SATFCActivityTypeDoesNotExist :: ScheduleActivityTaskFailedCause
pattern SATFCActivityTypeDoesNotExist = ScheduleActivityTaskFailedCause' "ACTIVITY_TYPE_DOES_NOT_EXIST"

pattern SATFCDefaultHeartbeatTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern SATFCDefaultHeartbeatTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED"

pattern SATFCDefaultScheduleToCloseTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern SATFCDefaultScheduleToCloseTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern SATFCDefaultScheduleToStartTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern SATFCDefaultScheduleToStartTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED"

pattern SATFCDefaultStartToCloseTimeoutUndefined :: ScheduleActivityTaskFailedCause
pattern SATFCDefaultStartToCloseTimeoutUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern SATFCDefaultTaskListUndefined :: ScheduleActivityTaskFailedCause
pattern SATFCDefaultTaskListUndefined = ScheduleActivityTaskFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern SATFCOpenActivitiesLimitExceeded :: ScheduleActivityTaskFailedCause
pattern SATFCOpenActivitiesLimitExceeded = ScheduleActivityTaskFailedCause' "OPEN_ACTIVITIES_LIMIT_EXCEEDED"

pattern SATFCOperationNotPermitted :: ScheduleActivityTaskFailedCause
pattern SATFCOperationNotPermitted = ScheduleActivityTaskFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  SATFCActivityCreationRateExceeded,
  SATFCActivityIdAlreadyInUse,
  SATFCActivityTypeDeprecated,
  SATFCActivityTypeDoesNotExist,
  SATFCDefaultHeartbeatTimeoutUndefined,
  SATFCDefaultScheduleToCloseTimeoutUndefined,
  SATFCDefaultScheduleToStartTimeoutUndefined,
  SATFCDefaultStartToCloseTimeoutUndefined,
  SATFCDefaultTaskListUndefined,
  SATFCOpenActivitiesLimitExceeded,
  SATFCOperationNotPermitted,
  ScheduleActivityTaskFailedCause' #-}

instance FromText ScheduleActivityTaskFailedCause where
    parser = (ScheduleActivityTaskFailedCause' . mk) <$> takeText

instance ToText ScheduleActivityTaskFailedCause where
    toText (ScheduleActivityTaskFailedCause' ci) = original ci

instance Hashable     ScheduleActivityTaskFailedCause
instance NFData       ScheduleActivityTaskFailedCause
instance ToByteString ScheduleActivityTaskFailedCause
instance ToQuery      ScheduleActivityTaskFailedCause
instance ToHeader     ScheduleActivityTaskFailedCause

instance FromJSON ScheduleActivityTaskFailedCause where
    parseJSON = parseJSONText "ScheduleActivityTaskFailedCause"
