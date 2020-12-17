{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.AutoScalingPolicyState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.AutoScalingPolicyState (
  AutoScalingPolicyState (
    ..
    , Attached
    , Attaching
    , Detached
    , Detaching
    , Failed
    , Pending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutoScalingPolicyState = AutoScalingPolicyState' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Attached :: AutoScalingPolicyState
pattern Attached = AutoScalingPolicyState' "ATTACHED"

pattern Attaching :: AutoScalingPolicyState
pattern Attaching = AutoScalingPolicyState' "ATTACHING"

pattern Detached :: AutoScalingPolicyState
pattern Detached = AutoScalingPolicyState' "DETACHED"

pattern Detaching :: AutoScalingPolicyState
pattern Detaching = AutoScalingPolicyState' "DETACHING"

pattern Failed :: AutoScalingPolicyState
pattern Failed = AutoScalingPolicyState' "FAILED"

pattern Pending :: AutoScalingPolicyState
pattern Pending = AutoScalingPolicyState' "PENDING"

{-# COMPLETE
  Attached,
  Attaching,
  Detached,
  Detaching,
  Failed,
  Pending,
  AutoScalingPolicyState' #-}

instance FromText AutoScalingPolicyState where
    parser = (AutoScalingPolicyState' . mk) <$> takeText

instance ToText AutoScalingPolicyState where
    toText (AutoScalingPolicyState' ci) = original ci

instance Hashable     AutoScalingPolicyState
instance NFData       AutoScalingPolicyState
instance ToByteString AutoScalingPolicyState
instance ToQuery      AutoScalingPolicyState
instance ToHeader     AutoScalingPolicyState

instance FromJSON AutoScalingPolicyState where
    parseJSON = parseJSONText "AutoScalingPolicyState"
