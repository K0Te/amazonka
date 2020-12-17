{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeploymentRolloutState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.DeploymentRolloutState (
  DeploymentRolloutState (
    ..
    , Completed
    , Failed
    , InProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentRolloutState = DeploymentRolloutState' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Completed :: DeploymentRolloutState
pattern Completed = DeploymentRolloutState' "COMPLETED"

pattern Failed :: DeploymentRolloutState
pattern Failed = DeploymentRolloutState' "FAILED"

pattern InProgress :: DeploymentRolloutState
pattern InProgress = DeploymentRolloutState' "IN_PROGRESS"

{-# COMPLETE
  Completed,
  Failed,
  InProgress,
  DeploymentRolloutState' #-}

instance FromText DeploymentRolloutState where
    parser = (DeploymentRolloutState' . mk) <$> takeText

instance ToText DeploymentRolloutState where
    toText (DeploymentRolloutState' ci) = original ci

instance Hashable     DeploymentRolloutState
instance NFData       DeploymentRolloutState
instance ToByteString DeploymentRolloutState
instance ToQuery      DeploymentRolloutState
instance ToHeader     DeploymentRolloutState

instance FromJSON DeploymentRolloutState where
    parseJSON = parseJSONText "DeploymentRolloutState"
