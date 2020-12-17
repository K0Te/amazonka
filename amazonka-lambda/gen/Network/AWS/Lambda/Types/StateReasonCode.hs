{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.StateReasonCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.StateReasonCode (
  StateReasonCode (
    ..
    , Creating
    , EniLimitExceeded
    , Idle
    , ImageAccessDenied
    , ImageDeleted
    , InsufficientRolePermissions
    , InternalError
    , InvalidConfiguration
    , InvalidImage
    , InvalidSecurityGroup
    , InvalidSubnet
    , Restoring
    , SubnetOutOfIPAddresses
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StateReasonCode = StateReasonCode' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Creating :: StateReasonCode
pattern Creating = StateReasonCode' "Creating"

pattern EniLimitExceeded :: StateReasonCode
pattern EniLimitExceeded = StateReasonCode' "EniLimitExceeded"

pattern Idle :: StateReasonCode
pattern Idle = StateReasonCode' "Idle"

pattern ImageAccessDenied :: StateReasonCode
pattern ImageAccessDenied = StateReasonCode' "ImageAccessDenied"

pattern ImageDeleted :: StateReasonCode
pattern ImageDeleted = StateReasonCode' "ImageDeleted"

pattern InsufficientRolePermissions :: StateReasonCode
pattern InsufficientRolePermissions = StateReasonCode' "InsufficientRolePermissions"

pattern InternalError :: StateReasonCode
pattern InternalError = StateReasonCode' "InternalError"

pattern InvalidConfiguration :: StateReasonCode
pattern InvalidConfiguration = StateReasonCode' "InvalidConfiguration"

pattern InvalidImage :: StateReasonCode
pattern InvalidImage = StateReasonCode' "InvalidImage"

pattern InvalidSecurityGroup :: StateReasonCode
pattern InvalidSecurityGroup = StateReasonCode' "InvalidSecurityGroup"

pattern InvalidSubnet :: StateReasonCode
pattern InvalidSubnet = StateReasonCode' "InvalidSubnet"

pattern Restoring :: StateReasonCode
pattern Restoring = StateReasonCode' "Restoring"

pattern SubnetOutOfIPAddresses :: StateReasonCode
pattern SubnetOutOfIPAddresses = StateReasonCode' "SubnetOutOfIPAddresses"

{-# COMPLETE
  Creating,
  EniLimitExceeded,
  Idle,
  ImageAccessDenied,
  ImageDeleted,
  InsufficientRolePermissions,
  InternalError,
  InvalidConfiguration,
  InvalidImage,
  InvalidSecurityGroup,
  InvalidSubnet,
  Restoring,
  SubnetOutOfIPAddresses,
  StateReasonCode' #-}

instance FromText StateReasonCode where
    parser = (StateReasonCode' . mk) <$> takeText

instance ToText StateReasonCode where
    toText (StateReasonCode' ci) = original ci

instance Hashable     StateReasonCode
instance NFData       StateReasonCode
instance ToByteString StateReasonCode
instance ToQuery      StateReasonCode
instance ToHeader     StateReasonCode

instance FromJSON StateReasonCode where
    parseJSON = parseJSONText "StateReasonCode"
