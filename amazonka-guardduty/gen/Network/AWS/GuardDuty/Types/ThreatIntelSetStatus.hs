{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.ThreatIntelSetStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.ThreatIntelSetStatus (
  ThreatIntelSetStatus (
    ..
    , Activating
    , Active
    , Deactivating
    , DeletePending
    , Deleted
    , Error'
    , Inactive
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ThreatIntelSetStatus = ThreatIntelSetStatus' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern Activating :: ThreatIntelSetStatus
pattern Activating = ThreatIntelSetStatus' "ACTIVATING"

pattern Active :: ThreatIntelSetStatus
pattern Active = ThreatIntelSetStatus' "ACTIVE"

pattern Deactivating :: ThreatIntelSetStatus
pattern Deactivating = ThreatIntelSetStatus' "DEACTIVATING"

pattern DeletePending :: ThreatIntelSetStatus
pattern DeletePending = ThreatIntelSetStatus' "DELETE_PENDING"

pattern Deleted :: ThreatIntelSetStatus
pattern Deleted = ThreatIntelSetStatus' "DELETED"

pattern Error' :: ThreatIntelSetStatus
pattern Error' = ThreatIntelSetStatus' "ERROR"

pattern Inactive :: ThreatIntelSetStatus
pattern Inactive = ThreatIntelSetStatus' "INACTIVE"

{-# COMPLETE
  Activating,
  Active,
  Deactivating,
  DeletePending,
  Deleted,
  Error',
  Inactive,
  ThreatIntelSetStatus' #-}

instance FromText ThreatIntelSetStatus where
    parser = (ThreatIntelSetStatus' . mk) <$> takeText

instance ToText ThreatIntelSetStatus where
    toText (ThreatIntelSetStatus' ci) = original ci

instance Hashable     ThreatIntelSetStatus
instance NFData       ThreatIntelSetStatus
instance ToByteString ThreatIntelSetStatus
instance ToQuery      ThreatIntelSetStatus
instance ToHeader     ThreatIntelSetStatus

instance FromJSON ThreatIntelSetStatus where
    parseJSON = parseJSONText "ThreatIntelSetStatus"
