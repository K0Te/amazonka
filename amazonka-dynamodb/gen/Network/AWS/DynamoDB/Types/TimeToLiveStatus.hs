{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.TimeToLiveStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.TimeToLiveStatus (
  TimeToLiveStatus (
    ..
    , Disabled
    , Disabling
    , Enabled
    , Enabling
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TimeToLiveStatus = TimeToLiveStatus' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Disabled :: TimeToLiveStatus
pattern Disabled = TimeToLiveStatus' "DISABLED"

pattern Disabling :: TimeToLiveStatus
pattern Disabling = TimeToLiveStatus' "DISABLING"

pattern Enabled :: TimeToLiveStatus
pattern Enabled = TimeToLiveStatus' "ENABLED"

pattern Enabling :: TimeToLiveStatus
pattern Enabling = TimeToLiveStatus' "ENABLING"

{-# COMPLETE
  Disabled,
  Disabling,
  Enabled,
  Enabling,
  TimeToLiveStatus' #-}

instance FromText TimeToLiveStatus where
    parser = (TimeToLiveStatus' . mk) <$> takeText

instance ToText TimeToLiveStatus where
    toText (TimeToLiveStatus' ci) = original ci

instance Hashable     TimeToLiveStatus
instance NFData       TimeToLiveStatus
instance ToByteString TimeToLiveStatus
instance ToQuery      TimeToLiveStatus
instance ToHeader     TimeToLiveStatus

instance FromJSON TimeToLiveStatus where
    parseJSON = parseJSONText "TimeToLiveStatus"
