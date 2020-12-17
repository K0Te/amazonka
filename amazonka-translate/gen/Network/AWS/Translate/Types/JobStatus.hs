{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.JobStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Translate.Types.JobStatus (
  JobStatus (
    ..
    , JSCompleted
    , JSCompletedWithError
    , JSFailed
    , JSInProgress
    , JSStopRequested
    , JSStopped
    , JSSubmitted
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobStatus = JobStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern JSCompleted :: JobStatus
pattern JSCompleted = JobStatus' "COMPLETED"

pattern JSCompletedWithError :: JobStatus
pattern JSCompletedWithError = JobStatus' "COMPLETED_WITH_ERROR"

pattern JSFailed :: JobStatus
pattern JSFailed = JobStatus' "FAILED"

pattern JSInProgress :: JobStatus
pattern JSInProgress = JobStatus' "IN_PROGRESS"

pattern JSStopRequested :: JobStatus
pattern JSStopRequested = JobStatus' "STOP_REQUESTED"

pattern JSStopped :: JobStatus
pattern JSStopped = JobStatus' "STOPPED"

pattern JSSubmitted :: JobStatus
pattern JSSubmitted = JobStatus' "SUBMITTED"

{-# COMPLETE
  JSCompleted,
  JSCompletedWithError,
  JSFailed,
  JSInProgress,
  JSStopRequested,
  JSStopped,
  JSSubmitted,
  JobStatus' #-}

instance FromText JobStatus where
    parser = (JobStatus' . mk) <$> takeText

instance ToText JobStatus where
    toText (JobStatus' ci) = original ci

instance Hashable     JobStatus
instance NFData       JobStatus
instance ToByteString JobStatus
instance ToQuery      JobStatus
instance ToHeader     JobStatus

instance ToJSON JobStatus where
    toJSON = toJSONText

instance FromJSON JobStatus where
    parseJSON = parseJSONText "JobStatus"
