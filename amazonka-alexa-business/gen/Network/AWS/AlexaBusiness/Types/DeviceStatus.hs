{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.DeviceStatus (
  DeviceStatus (
    ..
    , Deregistered
    , Failed
    , Pending
    , Ready
    , WasOffline
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceStatus = DeviceStatus' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Deregistered :: DeviceStatus
pattern Deregistered = DeviceStatus' "DEREGISTERED"

pattern Failed :: DeviceStatus
pattern Failed = DeviceStatus' "FAILED"

pattern Pending :: DeviceStatus
pattern Pending = DeviceStatus' "PENDING"

pattern Ready :: DeviceStatus
pattern Ready = DeviceStatus' "READY"

pattern WasOffline :: DeviceStatus
pattern WasOffline = DeviceStatus' "WAS_OFFLINE"

{-# COMPLETE
  Deregistered,
  Failed,
  Pending,
  Ready,
  WasOffline,
  DeviceStatus' #-}

instance FromText DeviceStatus where
    parser = (DeviceStatus' . mk) <$> takeText

instance ToText DeviceStatus where
    toText (DeviceStatus' ci) = original ci

instance Hashable     DeviceStatus
instance NFData       DeviceStatus
instance ToByteString DeviceStatus
instance ToQuery      DeviceStatus
instance ToHeader     DeviceStatus

instance FromJSON DeviceStatus where
    parseJSON = parseJSONText "DeviceStatus"
