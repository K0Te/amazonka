{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MachineLearning.Types.RealtimeEndpointStatus (
  RealtimeEndpointStatus (
    ..
    , Failed
    , None
    , Ready
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RealtimeEndpointStatus = RealtimeEndpointStatus' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Failed :: RealtimeEndpointStatus
pattern Failed = RealtimeEndpointStatus' "FAILED"

pattern None :: RealtimeEndpointStatus
pattern None = RealtimeEndpointStatus' "NONE"

pattern Ready :: RealtimeEndpointStatus
pattern Ready = RealtimeEndpointStatus' "READY"

pattern Updating :: RealtimeEndpointStatus
pattern Updating = RealtimeEndpointStatus' "UPDATING"

{-# COMPLETE
  Failed,
  None,
  Ready,
  Updating,
  RealtimeEndpointStatus' #-}

instance FromText RealtimeEndpointStatus where
    parser = (RealtimeEndpointStatus' . mk) <$> takeText

instance ToText RealtimeEndpointStatus where
    toText (RealtimeEndpointStatus' ci) = original ci

instance Hashable     RealtimeEndpointStatus
instance NFData       RealtimeEndpointStatus
instance ToByteString RealtimeEndpointStatus
instance ToQuery      RealtimeEndpointStatus
instance ToHeader     RealtimeEndpointStatus

instance FromJSON RealtimeEndpointStatus where
    parseJSON = parseJSONText "RealtimeEndpointStatus"
