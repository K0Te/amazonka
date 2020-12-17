{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.HSMStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudHSM.Types.HSMStatus (
  HSMStatus (
    ..
    , HSDegraded
    , HSPending
    , HSRunning
    , HSSuspended
    , HSTerminated
    , HSTerminating
    , HSUpdating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HSMStatus = HSMStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern HSDegraded :: HSMStatus
pattern HSDegraded = HSMStatus' "DEGRADED"

pattern HSPending :: HSMStatus
pattern HSPending = HSMStatus' "PENDING"

pattern HSRunning :: HSMStatus
pattern HSRunning = HSMStatus' "RUNNING"

pattern HSSuspended :: HSMStatus
pattern HSSuspended = HSMStatus' "SUSPENDED"

pattern HSTerminated :: HSMStatus
pattern HSTerminated = HSMStatus' "TERMINATED"

pattern HSTerminating :: HSMStatus
pattern HSTerminating = HSMStatus' "TERMINATING"

pattern HSUpdating :: HSMStatus
pattern HSUpdating = HSMStatus' "UPDATING"

{-# COMPLETE
  HSDegraded,
  HSPending,
  HSRunning,
  HSSuspended,
  HSTerminated,
  HSTerminating,
  HSUpdating,
  HSMStatus' #-}

instance FromText HSMStatus where
    parser = (HSMStatus' . mk) <$> takeText

instance ToText HSMStatus where
    toText (HSMStatus' ci) = original ci

instance Hashable     HSMStatus
instance NFData       HSMStatus
instance ToByteString HSMStatus
instance ToQuery      HSMStatus
instance ToHeader     HSMStatus

instance FromJSON HSMStatus where
    parseJSON = parseJSONText "HSMStatus"
