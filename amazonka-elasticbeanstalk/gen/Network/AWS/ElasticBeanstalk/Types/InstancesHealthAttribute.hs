{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.InstancesHealthAttribute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.InstancesHealthAttribute (
  InstancesHealthAttribute (
    ..
    , All
    , ApplicationMetrics
    , AvailabilityZone
    , Causes
    , Color
    , Deployment
    , HealthStatus
    , InstanceType
    , LaunchedAt
    , RefreshedAt
    , System
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstancesHealthAttribute = InstancesHealthAttribute' (CI
                                                             Text)
                                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                                            Generic)

pattern All :: InstancesHealthAttribute
pattern All = InstancesHealthAttribute' "All"

pattern ApplicationMetrics :: InstancesHealthAttribute
pattern ApplicationMetrics = InstancesHealthAttribute' "ApplicationMetrics"

pattern AvailabilityZone :: InstancesHealthAttribute
pattern AvailabilityZone = InstancesHealthAttribute' "AvailabilityZone"

pattern Causes :: InstancesHealthAttribute
pattern Causes = InstancesHealthAttribute' "Causes"

pattern Color :: InstancesHealthAttribute
pattern Color = InstancesHealthAttribute' "Color"

pattern Deployment :: InstancesHealthAttribute
pattern Deployment = InstancesHealthAttribute' "Deployment"

pattern HealthStatus :: InstancesHealthAttribute
pattern HealthStatus = InstancesHealthAttribute' "HealthStatus"

pattern InstanceType :: InstancesHealthAttribute
pattern InstanceType = InstancesHealthAttribute' "InstanceType"

pattern LaunchedAt :: InstancesHealthAttribute
pattern LaunchedAt = InstancesHealthAttribute' "LaunchedAt"

pattern RefreshedAt :: InstancesHealthAttribute
pattern RefreshedAt = InstancesHealthAttribute' "RefreshedAt"

pattern System :: InstancesHealthAttribute
pattern System = InstancesHealthAttribute' "System"

{-# COMPLETE
  All,
  ApplicationMetrics,
  AvailabilityZone,
  Causes,
  Color,
  Deployment,
  HealthStatus,
  InstanceType,
  LaunchedAt,
  RefreshedAt,
  System,
  InstancesHealthAttribute' #-}

instance FromText InstancesHealthAttribute where
    parser = (InstancesHealthAttribute' . mk) <$> takeText

instance ToText InstancesHealthAttribute where
    toText (InstancesHealthAttribute' ci) = original ci

instance Hashable     InstancesHealthAttribute
instance NFData       InstancesHealthAttribute
instance ToByteString InstancesHealthAttribute
instance ToQuery      InstancesHealthAttribute
instance ToHeader     InstancesHealthAttribute
