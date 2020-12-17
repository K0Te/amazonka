{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.IPSetStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.IPSetStatus (
  IPSetStatus (
    ..
    , ISSActivating
    , ISSActive
    , ISSDeactivating
    , ISSDeletePending
    , ISSDeleted
    , ISSError'
    , ISSInactive
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPSetStatus = IPSetStatus' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern ISSActivating :: IPSetStatus
pattern ISSActivating = IPSetStatus' "ACTIVATING"

pattern ISSActive :: IPSetStatus
pattern ISSActive = IPSetStatus' "ACTIVE"

pattern ISSDeactivating :: IPSetStatus
pattern ISSDeactivating = IPSetStatus' "DEACTIVATING"

pattern ISSDeletePending :: IPSetStatus
pattern ISSDeletePending = IPSetStatus' "DELETE_PENDING"

pattern ISSDeleted :: IPSetStatus
pattern ISSDeleted = IPSetStatus' "DELETED"

pattern ISSError' :: IPSetStatus
pattern ISSError' = IPSetStatus' "ERROR"

pattern ISSInactive :: IPSetStatus
pattern ISSInactive = IPSetStatus' "INACTIVE"

{-# COMPLETE
  ISSActivating,
  ISSActive,
  ISSDeactivating,
  ISSDeletePending,
  ISSDeleted,
  ISSError',
  ISSInactive,
  IPSetStatus' #-}

instance FromText IPSetStatus where
    parser = (IPSetStatus' . mk) <$> takeText

instance ToText IPSetStatus where
    toText (IPSetStatus' ci) = original ci

instance Hashable     IPSetStatus
instance NFData       IPSetStatus
instance ToByteString IPSetStatus
instance ToQuery      IPSetStatus
instance ToHeader     IPSetStatus

instance FromJSON IPSetStatus where
    parseJSON = parseJSONText "IPSetStatus"
