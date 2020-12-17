{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StepState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.StepState (
  StepState (
    ..
    , SSCancelPending
    , SSCancelled
    , SSCompleted
    , SSFailed
    , SSInterrupted
    , SSPending
    , SSRunning
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StepState = StepState' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern SSCancelPending :: StepState
pattern SSCancelPending = StepState' "CANCEL_PENDING"

pattern SSCancelled :: StepState
pattern SSCancelled = StepState' "CANCELLED"

pattern SSCompleted :: StepState
pattern SSCompleted = StepState' "COMPLETED"

pattern SSFailed :: StepState
pattern SSFailed = StepState' "FAILED"

pattern SSInterrupted :: StepState
pattern SSInterrupted = StepState' "INTERRUPTED"

pattern SSPending :: StepState
pattern SSPending = StepState' "PENDING"

pattern SSRunning :: StepState
pattern SSRunning = StepState' "RUNNING"

{-# COMPLETE
  SSCancelPending,
  SSCancelled,
  SSCompleted,
  SSFailed,
  SSInterrupted,
  SSPending,
  SSRunning,
  StepState' #-}

instance FromText StepState where
    parser = (StepState' . mk) <$> takeText

instance ToText StepState where
    toText (StepState' ci) = original ci

instance Hashable     StepState
instance NFData       StepState
instance ToByteString StepState
instance ToQuery      StepState
instance ToHeader     StepState

instance ToJSON StepState where
    toJSON = toJSONText

instance FromJSON StepState where
    parseJSON = parseJSONText "StepState"
