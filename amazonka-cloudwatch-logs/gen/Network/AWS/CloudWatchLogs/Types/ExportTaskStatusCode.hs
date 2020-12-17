{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode (
  ExportTaskStatusCode (
    ..
    , ETSCCancelled
    , ETSCCompleted
    , ETSCFailed
    , ETSCPending
    , ETSCPendingCancel
    , ETSCRunning
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportTaskStatusCode = ExportTaskStatusCode' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern ETSCCancelled :: ExportTaskStatusCode
pattern ETSCCancelled = ExportTaskStatusCode' "CANCELLED"

pattern ETSCCompleted :: ExportTaskStatusCode
pattern ETSCCompleted = ExportTaskStatusCode' "COMPLETED"

pattern ETSCFailed :: ExportTaskStatusCode
pattern ETSCFailed = ExportTaskStatusCode' "FAILED"

pattern ETSCPending :: ExportTaskStatusCode
pattern ETSCPending = ExportTaskStatusCode' "PENDING"

pattern ETSCPendingCancel :: ExportTaskStatusCode
pattern ETSCPendingCancel = ExportTaskStatusCode' "PENDING_CANCEL"

pattern ETSCRunning :: ExportTaskStatusCode
pattern ETSCRunning = ExportTaskStatusCode' "RUNNING"

{-# COMPLETE
  ETSCCancelled,
  ETSCCompleted,
  ETSCFailed,
  ETSCPending,
  ETSCPendingCancel,
  ETSCRunning,
  ExportTaskStatusCode' #-}

instance FromText ExportTaskStatusCode where
    parser = (ExportTaskStatusCode' . mk) <$> takeText

instance ToText ExportTaskStatusCode where
    toText (ExportTaskStatusCode' ci) = original ci

instance Hashable     ExportTaskStatusCode
instance NFData       ExportTaskStatusCode
instance ToByteString ExportTaskStatusCode
instance ToQuery      ExportTaskStatusCode
instance ToHeader     ExportTaskStatusCode

instance ToJSON ExportTaskStatusCode where
    toJSON = toJSONText

instance FromJSON ExportTaskStatusCode where
    parseJSON = parseJSONText "ExportTaskStatusCode"
