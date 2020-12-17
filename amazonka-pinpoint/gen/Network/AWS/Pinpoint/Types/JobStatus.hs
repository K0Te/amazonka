{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JobStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.JobStatus (
  JobStatus (
    ..
    , JSCompleted
    , JSCompleting
    , JSCreated
    , JSFailed
    , JSFailing
    , JSInitializing
    , JSPendingJob
    , JSPreparingForInitialization
    , JSProcessing
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobStatus = JobStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern JSCompleted :: JobStatus
pattern JSCompleted = JobStatus' "COMPLETED"

pattern JSCompleting :: JobStatus
pattern JSCompleting = JobStatus' "COMPLETING"

pattern JSCreated :: JobStatus
pattern JSCreated = JobStatus' "CREATED"

pattern JSFailed :: JobStatus
pattern JSFailed = JobStatus' "FAILED"

pattern JSFailing :: JobStatus
pattern JSFailing = JobStatus' "FAILING"

pattern JSInitializing :: JobStatus
pattern JSInitializing = JobStatus' "INITIALIZING"

pattern JSPendingJob :: JobStatus
pattern JSPendingJob = JobStatus' "PENDING_JOB"

pattern JSPreparingForInitialization :: JobStatus
pattern JSPreparingForInitialization = JobStatus' "PREPARING_FOR_INITIALIZATION"

pattern JSProcessing :: JobStatus
pattern JSProcessing = JobStatus' "PROCESSING"

{-# COMPLETE
  JSCompleted,
  JSCompleting,
  JSCreated,
  JSFailed,
  JSFailing,
  JSInitializing,
  JSPendingJob,
  JSPreparingForInitialization,
  JSProcessing,
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

instance FromJSON JobStatus where
    parseJSON = parseJSONText "JobStatus"
