{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode (
  InstanceGroupStateChangeReasonCode (
    ..
    , ClusterTerminated
    , InstanceFailure
    , InternalError
    , ValidationError
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceGroupStateChangeReasonCode = InstanceGroupStateChangeReasonCode' (CI
                                                                                 Text)
                                            deriving (Eq, Ord, Read, Show, Data,
                                                      Typeable, Generic)

pattern ClusterTerminated :: InstanceGroupStateChangeReasonCode
pattern ClusterTerminated = InstanceGroupStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern InstanceFailure :: InstanceGroupStateChangeReasonCode
pattern InstanceFailure = InstanceGroupStateChangeReasonCode' "INSTANCE_FAILURE"

pattern InternalError :: InstanceGroupStateChangeReasonCode
pattern InternalError = InstanceGroupStateChangeReasonCode' "INTERNAL_ERROR"

pattern ValidationError :: InstanceGroupStateChangeReasonCode
pattern ValidationError = InstanceGroupStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  ClusterTerminated,
  InstanceFailure,
  InternalError,
  ValidationError,
  InstanceGroupStateChangeReasonCode' #-}

instance FromText InstanceGroupStateChangeReasonCode where
    parser = (InstanceGroupStateChangeReasonCode' . mk) <$> takeText

instance ToText InstanceGroupStateChangeReasonCode where
    toText (InstanceGroupStateChangeReasonCode' ci) = original ci

instance Hashable     InstanceGroupStateChangeReasonCode
instance NFData       InstanceGroupStateChangeReasonCode
instance ToByteString InstanceGroupStateChangeReasonCode
instance ToQuery      InstanceGroupStateChangeReasonCode
instance ToHeader     InstanceGroupStateChangeReasonCode

instance FromJSON InstanceGroupStateChangeReasonCode where
    parseJSON = parseJSONText "InstanceGroupStateChangeReasonCode"
