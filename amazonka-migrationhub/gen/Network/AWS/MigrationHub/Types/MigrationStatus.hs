{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.MigrationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MigrationHub.Types.MigrationStatus (
  MigrationStatus (
    ..
    , MSCompleted
    , MSFailed
    , MSInProgress
    , MSNotStarted
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MigrationStatus = MigrationStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern MSCompleted :: MigrationStatus
pattern MSCompleted = MigrationStatus' "COMPLETED"

pattern MSFailed :: MigrationStatus
pattern MSFailed = MigrationStatus' "FAILED"

pattern MSInProgress :: MigrationStatus
pattern MSInProgress = MigrationStatus' "IN_PROGRESS"

pattern MSNotStarted :: MigrationStatus
pattern MSNotStarted = MigrationStatus' "NOT_STARTED"

{-# COMPLETE
  MSCompleted,
  MSFailed,
  MSInProgress,
  MSNotStarted,
  MigrationStatus' #-}

instance FromText MigrationStatus where
    parser = (MigrationStatus' . mk) <$> takeText

instance ToText MigrationStatus where
    toText (MigrationStatus' ci) = original ci

instance Hashable     MigrationStatus
instance NFData       MigrationStatus
instance ToByteString MigrationStatus
instance ToQuery      MigrationStatus
instance ToHeader     MigrationStatus

instance ToJSON MigrationStatus where
    toJSON = toJSONText

instance FromJSON MigrationStatus where
    parseJSON = parseJSONText "MigrationStatus"
