{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionExecutionStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodePipeline.Types.ActionExecutionStatus (
  ActionExecutionStatus (
    ..
    , AESAbandoned
    , AESFailed
    , AESInProgress
    , AESSucceeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionExecutionStatus = ActionExecutionStatus' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern AESAbandoned :: ActionExecutionStatus
pattern AESAbandoned = ActionExecutionStatus' "Abandoned"

pattern AESFailed :: ActionExecutionStatus
pattern AESFailed = ActionExecutionStatus' "Failed"

pattern AESInProgress :: ActionExecutionStatus
pattern AESInProgress = ActionExecutionStatus' "InProgress"

pattern AESSucceeded :: ActionExecutionStatus
pattern AESSucceeded = ActionExecutionStatus' "Succeeded"

{-# COMPLETE
  AESAbandoned,
  AESFailed,
  AESInProgress,
  AESSucceeded,
  ActionExecutionStatus' #-}

instance FromText ActionExecutionStatus where
    parser = (ActionExecutionStatus' . mk) <$> takeText

instance ToText ActionExecutionStatus where
    toText (ActionExecutionStatus' ci) = original ci

instance Hashable     ActionExecutionStatus
instance NFData       ActionExecutionStatus
instance ToByteString ActionExecutionStatus
instance ToQuery      ActionExecutionStatus
instance ToHeader     ActionExecutionStatus

instance FromJSON ActionExecutionStatus where
    parseJSON = parseJSONText "ActionExecutionStatus"
