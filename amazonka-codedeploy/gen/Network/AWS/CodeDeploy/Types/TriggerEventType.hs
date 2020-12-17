{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TriggerEventType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeDeploy.Types.TriggerEventType (
  TriggerEventType (
    ..
    , DeploymentFailure
    , DeploymentReady
    , DeploymentRollback
    , DeploymentStart
    , DeploymentStop
    , DeploymentSuccess
    , InstanceFailure
    , InstanceReady
    , InstanceStart
    , InstanceSuccess
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TriggerEventType = TriggerEventType' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern DeploymentFailure :: TriggerEventType
pattern DeploymentFailure = TriggerEventType' "DeploymentFailure"

pattern DeploymentReady :: TriggerEventType
pattern DeploymentReady = TriggerEventType' "DeploymentReady"

pattern DeploymentRollback :: TriggerEventType
pattern DeploymentRollback = TriggerEventType' "DeploymentRollback"

pattern DeploymentStart :: TriggerEventType
pattern DeploymentStart = TriggerEventType' "DeploymentStart"

pattern DeploymentStop :: TriggerEventType
pattern DeploymentStop = TriggerEventType' "DeploymentStop"

pattern DeploymentSuccess :: TriggerEventType
pattern DeploymentSuccess = TriggerEventType' "DeploymentSuccess"

pattern InstanceFailure :: TriggerEventType
pattern InstanceFailure = TriggerEventType' "InstanceFailure"

pattern InstanceReady :: TriggerEventType
pattern InstanceReady = TriggerEventType' "InstanceReady"

pattern InstanceStart :: TriggerEventType
pattern InstanceStart = TriggerEventType' "InstanceStart"

pattern InstanceSuccess :: TriggerEventType
pattern InstanceSuccess = TriggerEventType' "InstanceSuccess"

{-# COMPLETE
  DeploymentFailure,
  DeploymentReady,
  DeploymentRollback,
  DeploymentStart,
  DeploymentStop,
  DeploymentSuccess,
  InstanceFailure,
  InstanceReady,
  InstanceStart,
  InstanceSuccess,
  TriggerEventType' #-}

instance FromText TriggerEventType where
    parser = (TriggerEventType' . mk) <$> takeText

instance ToText TriggerEventType where
    toText (TriggerEventType' ci) = original ci

instance Hashable     TriggerEventType
instance NFData       TriggerEventType
instance ToByteString TriggerEventType
instance ToQuery      TriggerEventType
instance ToHeader     TriggerEventType

instance ToJSON TriggerEventType where
    toJSON = toJSONText

instance FromJSON TriggerEventType where
    parseJSON = parseJSONText "TriggerEventType"
