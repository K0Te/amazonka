{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionResult
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DeviceFarm.Types.ExecutionResult (
  ExecutionResult (
    ..
    , ERErrored
    , ERFailed
    , ERPassed
    , ERPending
    , ERSkipped
    , ERStopped
    , ERWarned
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionResult = ExecutionResult' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern ERErrored :: ExecutionResult
pattern ERErrored = ExecutionResult' "ERRORED"

pattern ERFailed :: ExecutionResult
pattern ERFailed = ExecutionResult' "FAILED"

pattern ERPassed :: ExecutionResult
pattern ERPassed = ExecutionResult' "PASSED"

pattern ERPending :: ExecutionResult
pattern ERPending = ExecutionResult' "PENDING"

pattern ERSkipped :: ExecutionResult
pattern ERSkipped = ExecutionResult' "SKIPPED"

pattern ERStopped :: ExecutionResult
pattern ERStopped = ExecutionResult' "STOPPED"

pattern ERWarned :: ExecutionResult
pattern ERWarned = ExecutionResult' "WARNED"

{-# COMPLETE
  ERErrored,
  ERFailed,
  ERPassed,
  ERPending,
  ERSkipped,
  ERStopped,
  ERWarned,
  ExecutionResult' #-}

instance FromText ExecutionResult where
    parser = (ExecutionResult' . mk) <$> takeText

instance ToText ExecutionResult where
    toText (ExecutionResult' ci) = original ci

instance Hashable     ExecutionResult
instance NFData       ExecutionResult
instance ToByteString ExecutionResult
instance ToQuery      ExecutionResult
instance ToHeader     ExecutionResult

instance FromJSON ExecutionResult where
    parseJSON = parseJSONText "ExecutionResult"
