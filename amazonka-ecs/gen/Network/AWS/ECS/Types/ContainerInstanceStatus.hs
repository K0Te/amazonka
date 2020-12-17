{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerInstanceStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerInstanceStatus (
  ContainerInstanceStatus (
    ..
    , Active
    , Deregistering
    , Draining
    , Registering
    , RegistrationFailed
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerInstanceStatus = ContainerInstanceStatus' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern Active :: ContainerInstanceStatus
pattern Active = ContainerInstanceStatus' "ACTIVE"

pattern Deregistering :: ContainerInstanceStatus
pattern Deregistering = ContainerInstanceStatus' "DEREGISTERING"

pattern Draining :: ContainerInstanceStatus
pattern Draining = ContainerInstanceStatus' "DRAINING"

pattern Registering :: ContainerInstanceStatus
pattern Registering = ContainerInstanceStatus' "REGISTERING"

pattern RegistrationFailed :: ContainerInstanceStatus
pattern RegistrationFailed = ContainerInstanceStatus' "REGISTRATION_FAILED"

{-# COMPLETE
  Active,
  Deregistering,
  Draining,
  Registering,
  RegistrationFailed,
  ContainerInstanceStatus' #-}

instance FromText ContainerInstanceStatus where
    parser = (ContainerInstanceStatus' . mk) <$> takeText

instance ToText ContainerInstanceStatus where
    toText (ContainerInstanceStatus' ci) = original ci

instance Hashable     ContainerInstanceStatus
instance NFData       ContainerInstanceStatus
instance ToByteString ContainerInstanceStatus
instance ToQuery      ContainerInstanceStatus
instance ToHeader     ContainerInstanceStatus

instance ToJSON ContainerInstanceStatus where
    toJSON = toJSONText
