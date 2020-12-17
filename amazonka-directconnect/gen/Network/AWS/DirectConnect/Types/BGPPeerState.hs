{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.BGPPeerState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DirectConnect.Types.BGPPeerState (
  BGPPeerState (
    ..
    , Available
    , Deleted
    , Deleting
    , Pending
    , Verifying
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BGPPeerState = BGPPeerState' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Available :: BGPPeerState
pattern Available = BGPPeerState' "available"

pattern Deleted :: BGPPeerState
pattern Deleted = BGPPeerState' "deleted"

pattern Deleting :: BGPPeerState
pattern Deleting = BGPPeerState' "deleting"

pattern Pending :: BGPPeerState
pattern Pending = BGPPeerState' "pending"

pattern Verifying :: BGPPeerState
pattern Verifying = BGPPeerState' "verifying"

{-# COMPLETE
  Available,
  Deleted,
  Deleting,
  Pending,
  Verifying,
  BGPPeerState' #-}

instance FromText BGPPeerState where
    parser = (BGPPeerState' . mk) <$> takeText

instance ToText BGPPeerState where
    toText (BGPPeerState' ci) = original ci

instance Hashable     BGPPeerState
instance NFData       BGPPeerState
instance ToByteString BGPPeerState
instance ToQuery      BGPPeerState
instance ToHeader     BGPPeerState

instance FromJSON BGPPeerState where
    parseJSON = parseJSONText "BGPPeerState"
