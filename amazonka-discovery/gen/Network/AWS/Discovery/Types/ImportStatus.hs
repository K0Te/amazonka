{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ImportStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Discovery.Types.ImportStatus (
  ImportStatus (
    ..
    , DeleteComplete
    , DeleteFailed
    , DeleteFailedLimitExceeded
    , DeleteInProgress
    , ImportComplete
    , ImportCompleteWithErrors
    , ImportFailed
    , ImportFailedRecordLimitExceeded
    , ImportFailedServerLimitExceeded
    , ImportInProgress
    , InternalError
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImportStatus = ImportStatus' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern DeleteComplete :: ImportStatus
pattern DeleteComplete = ImportStatus' "DELETE_COMPLETE"

pattern DeleteFailed :: ImportStatus
pattern DeleteFailed = ImportStatus' "DELETE_FAILED"

pattern DeleteFailedLimitExceeded :: ImportStatus
pattern DeleteFailedLimitExceeded = ImportStatus' "DELETE_FAILED_LIMIT_EXCEEDED"

pattern DeleteInProgress :: ImportStatus
pattern DeleteInProgress = ImportStatus' "DELETE_IN_PROGRESS"

pattern ImportComplete :: ImportStatus
pattern ImportComplete = ImportStatus' "IMPORT_COMPLETE"

pattern ImportCompleteWithErrors :: ImportStatus
pattern ImportCompleteWithErrors = ImportStatus' "IMPORT_COMPLETE_WITH_ERRORS"

pattern ImportFailed :: ImportStatus
pattern ImportFailed = ImportStatus' "IMPORT_FAILED"

pattern ImportFailedRecordLimitExceeded :: ImportStatus
pattern ImportFailedRecordLimitExceeded = ImportStatus' "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED"

pattern ImportFailedServerLimitExceeded :: ImportStatus
pattern ImportFailedServerLimitExceeded = ImportStatus' "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED"

pattern ImportInProgress :: ImportStatus
pattern ImportInProgress = ImportStatus' "IMPORT_IN_PROGRESS"

pattern InternalError :: ImportStatus
pattern InternalError = ImportStatus' "INTERNAL_ERROR"

{-# COMPLETE
  DeleteComplete,
  DeleteFailed,
  DeleteFailedLimitExceeded,
  DeleteInProgress,
  ImportComplete,
  ImportCompleteWithErrors,
  ImportFailed,
  ImportFailedRecordLimitExceeded,
  ImportFailedServerLimitExceeded,
  ImportInProgress,
  InternalError,
  ImportStatus' #-}

instance FromText ImportStatus where
    parser = (ImportStatus' . mk) <$> takeText

instance ToText ImportStatus where
    toText (ImportStatus' ci) = original ci

instance Hashable     ImportStatus
instance NFData       ImportStatus
instance ToByteString ImportStatus
instance ToQuery      ImportStatus
instance ToHeader     ImportStatus

instance FromJSON ImportStatus where
    parseJSON = parseJSONText "ImportStatus"
