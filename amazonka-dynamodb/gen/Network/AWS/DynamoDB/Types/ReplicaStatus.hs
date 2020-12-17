{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReplicaStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.ReplicaStatus (
  ReplicaStatus (
    ..
    , RSActive
    , RSCreating
    , RSCreationFailed
    , RSDeleting
    , RSInaccessibleEncryptionCredentials
    , RSRegionDisabled
    , RSUpdating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplicaStatus = ReplicaStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern RSActive :: ReplicaStatus
pattern RSActive = ReplicaStatus' "ACTIVE"

pattern RSCreating :: ReplicaStatus
pattern RSCreating = ReplicaStatus' "CREATING"

pattern RSCreationFailed :: ReplicaStatus
pattern RSCreationFailed = ReplicaStatus' "CREATION_FAILED"

pattern RSDeleting :: ReplicaStatus
pattern RSDeleting = ReplicaStatus' "DELETING"

pattern RSInaccessibleEncryptionCredentials :: ReplicaStatus
pattern RSInaccessibleEncryptionCredentials = ReplicaStatus' "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

pattern RSRegionDisabled :: ReplicaStatus
pattern RSRegionDisabled = ReplicaStatus' "REGION_DISABLED"

pattern RSUpdating :: ReplicaStatus
pattern RSUpdating = ReplicaStatus' "UPDATING"

{-# COMPLETE
  RSActive,
  RSCreating,
  RSCreationFailed,
  RSDeleting,
  RSInaccessibleEncryptionCredentials,
  RSRegionDisabled,
  RSUpdating,
  ReplicaStatus' #-}

instance FromText ReplicaStatus where
    parser = (ReplicaStatus' . mk) <$> takeText

instance ToText ReplicaStatus where
    toText (ReplicaStatus' ci) = original ci

instance Hashable     ReplicaStatus
instance NFData       ReplicaStatus
instance ToByteString ReplicaStatus
instance ToQuery      ReplicaStatus
instance ToHeader     ReplicaStatus

instance FromJSON ReplicaStatus where
    parseJSON = parseJSONText "ReplicaStatus"
