{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType (
  ExplicitAuthFlowsType (
    ..
    , EAFTAdminNoSrpAuth
    , EAFTAllowAdminUserPasswordAuth
    , EAFTAllowCustomAuth
    , EAFTAllowRefreshTokenAuth
    , EAFTAllowUserPasswordAuth
    , EAFTAllowUserSrpAuth
    , EAFTCustomAuthFlowOnly
    , EAFTUserPasswordAuth
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExplicitAuthFlowsType = ExplicitAuthFlowsType' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern EAFTAdminNoSrpAuth :: ExplicitAuthFlowsType
pattern EAFTAdminNoSrpAuth = ExplicitAuthFlowsType' "ADMIN_NO_SRP_AUTH"

pattern EAFTAllowAdminUserPasswordAuth :: ExplicitAuthFlowsType
pattern EAFTAllowAdminUserPasswordAuth = ExplicitAuthFlowsType' "ALLOW_ADMIN_USER_PASSWORD_AUTH"

pattern EAFTAllowCustomAuth :: ExplicitAuthFlowsType
pattern EAFTAllowCustomAuth = ExplicitAuthFlowsType' "ALLOW_CUSTOM_AUTH"

pattern EAFTAllowRefreshTokenAuth :: ExplicitAuthFlowsType
pattern EAFTAllowRefreshTokenAuth = ExplicitAuthFlowsType' "ALLOW_REFRESH_TOKEN_AUTH"

pattern EAFTAllowUserPasswordAuth :: ExplicitAuthFlowsType
pattern EAFTAllowUserPasswordAuth = ExplicitAuthFlowsType' "ALLOW_USER_PASSWORD_AUTH"

pattern EAFTAllowUserSrpAuth :: ExplicitAuthFlowsType
pattern EAFTAllowUserSrpAuth = ExplicitAuthFlowsType' "ALLOW_USER_SRP_AUTH"

pattern EAFTCustomAuthFlowOnly :: ExplicitAuthFlowsType
pattern EAFTCustomAuthFlowOnly = ExplicitAuthFlowsType' "CUSTOM_AUTH_FLOW_ONLY"

pattern EAFTUserPasswordAuth :: ExplicitAuthFlowsType
pattern EAFTUserPasswordAuth = ExplicitAuthFlowsType' "USER_PASSWORD_AUTH"

{-# COMPLETE
  EAFTAdminNoSrpAuth,
  EAFTAllowAdminUserPasswordAuth,
  EAFTAllowCustomAuth,
  EAFTAllowRefreshTokenAuth,
  EAFTAllowUserPasswordAuth,
  EAFTAllowUserSrpAuth,
  EAFTCustomAuthFlowOnly,
  EAFTUserPasswordAuth,
  ExplicitAuthFlowsType' #-}

instance FromText ExplicitAuthFlowsType where
    parser = (ExplicitAuthFlowsType' . mk) <$> takeText

instance ToText ExplicitAuthFlowsType where
    toText (ExplicitAuthFlowsType' ci) = original ci

instance Hashable     ExplicitAuthFlowsType
instance NFData       ExplicitAuthFlowsType
instance ToByteString ExplicitAuthFlowsType
instance ToQuery      ExplicitAuthFlowsType
instance ToHeader     ExplicitAuthFlowsType

instance ToJSON ExplicitAuthFlowsType where
    toJSON = toJSONText

instance FromJSON ExplicitAuthFlowsType where
    parseJSON = parseJSONText "ExplicitAuthFlowsType"
