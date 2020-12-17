{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerCondition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerCondition (
  ContainerCondition (
    ..
    , Complete
    , Healthy
    , Start
    , Success
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerCondition = ContainerCondition' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Complete :: ContainerCondition
pattern Complete = ContainerCondition' "COMPLETE"

pattern Healthy :: ContainerCondition
pattern Healthy = ContainerCondition' "HEALTHY"

pattern Start :: ContainerCondition
pattern Start = ContainerCondition' "START"

pattern Success :: ContainerCondition
pattern Success = ContainerCondition' "SUCCESS"

{-# COMPLETE
  Complete,
  Healthy,
  Start,
  Success,
  ContainerCondition' #-}

instance FromText ContainerCondition where
    parser = (ContainerCondition' . mk) <$> takeText

instance ToText ContainerCondition where
    toText (ContainerCondition' ci) = original ci

instance Hashable     ContainerCondition
instance NFData       ContainerCondition
instance ToByteString ContainerCondition
instance ToQuery      ContainerCondition
instance ToHeader     ContainerCondition

instance ToJSON ContainerCondition where
    toJSON = toJSONText

instance FromJSON ContainerCondition where
    parseJSON = parseJSONText "ContainerCondition"
