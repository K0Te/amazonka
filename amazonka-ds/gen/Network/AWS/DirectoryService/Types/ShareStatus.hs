{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.ShareStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DirectoryService.Types.ShareStatus (
  ShareStatus (
    ..
    , SSDeleted
    , SSDeleting
    , SSPendingAcceptance
    , SSRejectFailed
    , SSRejected
    , SSRejecting
    , SSShareFailed
    , SSShared
    , SSSharing
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShareStatus = ShareStatus' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern SSDeleted :: ShareStatus
pattern SSDeleted = ShareStatus' "Deleted"

pattern SSDeleting :: ShareStatus
pattern SSDeleting = ShareStatus' "Deleting"

pattern SSPendingAcceptance :: ShareStatus
pattern SSPendingAcceptance = ShareStatus' "PendingAcceptance"

pattern SSRejectFailed :: ShareStatus
pattern SSRejectFailed = ShareStatus' "RejectFailed"

pattern SSRejected :: ShareStatus
pattern SSRejected = ShareStatus' "Rejected"

pattern SSRejecting :: ShareStatus
pattern SSRejecting = ShareStatus' "Rejecting"

pattern SSShareFailed :: ShareStatus
pattern SSShareFailed = ShareStatus' "ShareFailed"

pattern SSShared :: ShareStatus
pattern SSShared = ShareStatus' "Shared"

pattern SSSharing :: ShareStatus
pattern SSSharing = ShareStatus' "Sharing"

{-# COMPLETE
  SSDeleted,
  SSDeleting,
  SSPendingAcceptance,
  SSRejectFailed,
  SSRejected,
  SSRejecting,
  SSShareFailed,
  SSShared,
  SSSharing,
  ShareStatus' #-}

instance FromText ShareStatus where
    parser = (ShareStatus' . mk) <$> takeText

instance ToText ShareStatus where
    toText (ShareStatus' ci) = original ci

instance Hashable     ShareStatus
instance NFData       ShareStatus
instance ToByteString ShareStatus
instance ToQuery      ShareStatus
instance ToHeader     ShareStatus

instance FromJSON ShareStatus where
    parseJSON = parseJSONText "ShareStatus"
