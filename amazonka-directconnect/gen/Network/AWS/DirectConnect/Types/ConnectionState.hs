{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.ConnectionState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DirectConnect.Types.ConnectionState (
  ConnectionState (
    ..
    , CSAvailable
    , CSDeleted
    , CSDeleting
    , CSDown
    , CSOrdering
    , CSPending
    , CSRejected
    , CSRequested
    , CSUnknown
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionState = ConnectionState' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern CSAvailable :: ConnectionState
pattern CSAvailable = ConnectionState' "available"

pattern CSDeleted :: ConnectionState
pattern CSDeleted = ConnectionState' "deleted"

pattern CSDeleting :: ConnectionState
pattern CSDeleting = ConnectionState' "deleting"

pattern CSDown :: ConnectionState
pattern CSDown = ConnectionState' "down"

pattern CSOrdering :: ConnectionState
pattern CSOrdering = ConnectionState' "ordering"

pattern CSPending :: ConnectionState
pattern CSPending = ConnectionState' "pending"

pattern CSRejected :: ConnectionState
pattern CSRejected = ConnectionState' "rejected"

pattern CSRequested :: ConnectionState
pattern CSRequested = ConnectionState' "requested"

pattern CSUnknown :: ConnectionState
pattern CSUnknown = ConnectionState' "unknown"

{-# COMPLETE
  CSAvailable,
  CSDeleted,
  CSDeleting,
  CSDown,
  CSOrdering,
  CSPending,
  CSRejected,
  CSRequested,
  CSUnknown,
  ConnectionState' #-}

instance FromText ConnectionState where
    parser = (ConnectionState' . mk) <$> takeText

instance ToText ConnectionState where
    toText (ConnectionState' ci) = original ci

instance Hashable     ConnectionState
instance NFData       ConnectionState
instance ToByteString ConnectionState
instance ToQuery      ConnectionState
instance ToHeader     ConnectionState

instance FromJSON ConnectionState where
    parseJSON = parseJSONText "ConnectionState"
