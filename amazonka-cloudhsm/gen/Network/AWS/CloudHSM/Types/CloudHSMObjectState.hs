{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.CloudHSMObjectState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudHSM.Types.CloudHSMObjectState (
  CloudHSMObjectState (
    ..
    , Degraded
    , Ready
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CloudHSMObjectState = CloudHSMObjectState' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Degraded :: CloudHSMObjectState
pattern Degraded = CloudHSMObjectState' "DEGRADED"

pattern Ready :: CloudHSMObjectState
pattern Ready = CloudHSMObjectState' "READY"

pattern Updating :: CloudHSMObjectState
pattern Updating = CloudHSMObjectState' "UPDATING"

{-# COMPLETE
  Degraded,
  Ready,
  Updating,
  CloudHSMObjectState' #-}

instance FromText CloudHSMObjectState where
    parser = (CloudHSMObjectState' . mk) <$> takeText

instance ToText CloudHSMObjectState where
    toText (CloudHSMObjectState' ci) = original ci

instance Hashable     CloudHSMObjectState
instance NFData       CloudHSMObjectState
instance ToByteString CloudHSMObjectState
instance ToQuery      CloudHSMObjectState
instance ToHeader     CloudHSMObjectState

instance FromJSON CloudHSMObjectState where
    parseJSON = parseJSONText "CloudHSMObjectState"
