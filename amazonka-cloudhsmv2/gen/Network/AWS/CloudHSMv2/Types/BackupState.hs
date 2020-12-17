{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types.BackupState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudHSMv2.Types.BackupState (
  BackupState (
    ..
    , CreateInProgress
    , Deleted
    , PendingDeletion
    , Ready
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupState = BackupState' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern CreateInProgress :: BackupState
pattern CreateInProgress = BackupState' "CREATE_IN_PROGRESS"

pattern Deleted :: BackupState
pattern Deleted = BackupState' "DELETED"

pattern PendingDeletion :: BackupState
pattern PendingDeletion = BackupState' "PENDING_DELETION"

pattern Ready :: BackupState
pattern Ready = BackupState' "READY"

{-# COMPLETE
  CreateInProgress,
  Deleted,
  PendingDeletion,
  Ready,
  BackupState' #-}

instance FromText BackupState where
    parser = (BackupState' . mk) <$> takeText

instance ToText BackupState where
    toText (BackupState' ci) = original ci

instance Hashable     BackupState
instance NFData       BackupState
instance ToByteString BackupState
instance ToQuery      BackupState
instance ToHeader     BackupState

instance FromJSON BackupState where
    parseJSON = parseJSONText "BackupState"
