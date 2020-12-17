{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthAttribute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthAttribute (
  EnvironmentHealthAttribute (
    ..
    , EHAAll
    , EHAApplicationMetrics
    , EHACauses
    , EHAColor
    , EHAHealthStatus
    , EHAInstancesHealth
    , EHARefreshedAt
    , EHAStatus
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentHealthAttribute = EnvironmentHealthAttribute' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern EHAAll :: EnvironmentHealthAttribute
pattern EHAAll = EnvironmentHealthAttribute' "All"

pattern EHAApplicationMetrics :: EnvironmentHealthAttribute
pattern EHAApplicationMetrics = EnvironmentHealthAttribute' "ApplicationMetrics"

pattern EHACauses :: EnvironmentHealthAttribute
pattern EHACauses = EnvironmentHealthAttribute' "Causes"

pattern EHAColor :: EnvironmentHealthAttribute
pattern EHAColor = EnvironmentHealthAttribute' "Color"

pattern EHAHealthStatus :: EnvironmentHealthAttribute
pattern EHAHealthStatus = EnvironmentHealthAttribute' "HealthStatus"

pattern EHAInstancesHealth :: EnvironmentHealthAttribute
pattern EHAInstancesHealth = EnvironmentHealthAttribute' "InstancesHealth"

pattern EHARefreshedAt :: EnvironmentHealthAttribute
pattern EHARefreshedAt = EnvironmentHealthAttribute' "RefreshedAt"

pattern EHAStatus :: EnvironmentHealthAttribute
pattern EHAStatus = EnvironmentHealthAttribute' "Status"

{-# COMPLETE
  EHAAll,
  EHAApplicationMetrics,
  EHACauses,
  EHAColor,
  EHAHealthStatus,
  EHAInstancesHealth,
  EHARefreshedAt,
  EHAStatus,
  EnvironmentHealthAttribute' #-}

instance FromText EnvironmentHealthAttribute where
    parser = (EnvironmentHealthAttribute' . mk) <$> takeText

instance ToText EnvironmentHealthAttribute where
    toText (EnvironmentHealthAttribute' ci) = original ci

instance Hashable     EnvironmentHealthAttribute
instance NFData       EnvironmentHealthAttribute
instance ToByteString EnvironmentHealthAttribute
instance ToQuery      EnvironmentHealthAttribute
instance ToHeader     EnvironmentHealthAttribute
