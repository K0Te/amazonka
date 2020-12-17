{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode (
  InstanceFleetStateChangeReasonCode (
    ..
    , IFSCRCClusterTerminated
    , IFSCRCInstanceFailure
    , IFSCRCInternalError
    , IFSCRCValidationError
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceFleetStateChangeReasonCode = InstanceFleetStateChangeReasonCode' (CI
                                                                                 Text)
                                            deriving (Eq, Ord, Read, Show, Data,
                                                      Typeable, Generic)

pattern IFSCRCClusterTerminated :: InstanceFleetStateChangeReasonCode
pattern IFSCRCClusterTerminated = InstanceFleetStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern IFSCRCInstanceFailure :: InstanceFleetStateChangeReasonCode
pattern IFSCRCInstanceFailure = InstanceFleetStateChangeReasonCode' "INSTANCE_FAILURE"

pattern IFSCRCInternalError :: InstanceFleetStateChangeReasonCode
pattern IFSCRCInternalError = InstanceFleetStateChangeReasonCode' "INTERNAL_ERROR"

pattern IFSCRCValidationError :: InstanceFleetStateChangeReasonCode
pattern IFSCRCValidationError = InstanceFleetStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  IFSCRCClusterTerminated,
  IFSCRCInstanceFailure,
  IFSCRCInternalError,
  IFSCRCValidationError,
  InstanceFleetStateChangeReasonCode' #-}

instance FromText InstanceFleetStateChangeReasonCode where
    parser = (InstanceFleetStateChangeReasonCode' . mk) <$> takeText

instance ToText InstanceFleetStateChangeReasonCode where
    toText (InstanceFleetStateChangeReasonCode' ci) = original ci

instance Hashable     InstanceFleetStateChangeReasonCode
instance NFData       InstanceFleetStateChangeReasonCode
instance ToByteString InstanceFleetStateChangeReasonCode
instance ToQuery      InstanceFleetStateChangeReasonCode
instance ToHeader     InstanceFleetStateChangeReasonCode

instance FromJSON InstanceFleetStateChangeReasonCode where
    parseJSON = parseJSONText "InstanceFleetStateChangeReasonCode"
