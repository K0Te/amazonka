{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.LastUpdateStatusReasonCode (
  LastUpdateStatusReasonCode (
    ..
    , LUSRCEniLimitExceeded
    , LUSRCImageAccessDenied
    , LUSRCImageDeleted
    , LUSRCInsufficientRolePermissions
    , LUSRCInternalError
    , LUSRCInvalidConfiguration
    , LUSRCInvalidImage
    , LUSRCInvalidSecurityGroup
    , LUSRCInvalidSubnet
    , LUSRCSubnetOutOfIPAddresses
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LastUpdateStatusReasonCode = LastUpdateStatusReasonCode' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern LUSRCEniLimitExceeded :: LastUpdateStatusReasonCode
pattern LUSRCEniLimitExceeded = LastUpdateStatusReasonCode' "EniLimitExceeded"

pattern LUSRCImageAccessDenied :: LastUpdateStatusReasonCode
pattern LUSRCImageAccessDenied = LastUpdateStatusReasonCode' "ImageAccessDenied"

pattern LUSRCImageDeleted :: LastUpdateStatusReasonCode
pattern LUSRCImageDeleted = LastUpdateStatusReasonCode' "ImageDeleted"

pattern LUSRCInsufficientRolePermissions :: LastUpdateStatusReasonCode
pattern LUSRCInsufficientRolePermissions = LastUpdateStatusReasonCode' "InsufficientRolePermissions"

pattern LUSRCInternalError :: LastUpdateStatusReasonCode
pattern LUSRCInternalError = LastUpdateStatusReasonCode' "InternalError"

pattern LUSRCInvalidConfiguration :: LastUpdateStatusReasonCode
pattern LUSRCInvalidConfiguration = LastUpdateStatusReasonCode' "InvalidConfiguration"

pattern LUSRCInvalidImage :: LastUpdateStatusReasonCode
pattern LUSRCInvalidImage = LastUpdateStatusReasonCode' "InvalidImage"

pattern LUSRCInvalidSecurityGroup :: LastUpdateStatusReasonCode
pattern LUSRCInvalidSecurityGroup = LastUpdateStatusReasonCode' "InvalidSecurityGroup"

pattern LUSRCInvalidSubnet :: LastUpdateStatusReasonCode
pattern LUSRCInvalidSubnet = LastUpdateStatusReasonCode' "InvalidSubnet"

pattern LUSRCSubnetOutOfIPAddresses :: LastUpdateStatusReasonCode
pattern LUSRCSubnetOutOfIPAddresses = LastUpdateStatusReasonCode' "SubnetOutOfIPAddresses"

{-# COMPLETE
  LUSRCEniLimitExceeded,
  LUSRCImageAccessDenied,
  LUSRCImageDeleted,
  LUSRCInsufficientRolePermissions,
  LUSRCInternalError,
  LUSRCInvalidConfiguration,
  LUSRCInvalidImage,
  LUSRCInvalidSecurityGroup,
  LUSRCInvalidSubnet,
  LUSRCSubnetOutOfIPAddresses,
  LastUpdateStatusReasonCode' #-}

instance FromText LastUpdateStatusReasonCode where
    parser = (LastUpdateStatusReasonCode' . mk) <$> takeText

instance ToText LastUpdateStatusReasonCode where
    toText (LastUpdateStatusReasonCode' ci) = original ci

instance Hashable     LastUpdateStatusReasonCode
instance NFData       LastUpdateStatusReasonCode
instance ToByteString LastUpdateStatusReasonCode
instance ToQuery      LastUpdateStatusReasonCode
instance ToHeader     LastUpdateStatusReasonCode

instance FromJSON LastUpdateStatusReasonCode where
    parseJSON = parseJSONText "LastUpdateStatusReasonCode"
