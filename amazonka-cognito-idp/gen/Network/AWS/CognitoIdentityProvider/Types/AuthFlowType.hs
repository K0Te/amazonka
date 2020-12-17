{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AuthFlowType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CognitoIdentityProvider.Types.AuthFlowType (
  AuthFlowType (
    ..
    , AdminNoSrpAuth
    , AdminUserPasswordAuth
    , CustomAuth
    , RefreshToken
    , RefreshTokenAuth
    , UserPasswordAuth
    , UserSrpAuth
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthFlowType = AuthFlowType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern AdminNoSrpAuth :: AuthFlowType
pattern AdminNoSrpAuth = AuthFlowType' "ADMIN_NO_SRP_AUTH"

pattern AdminUserPasswordAuth :: AuthFlowType
pattern AdminUserPasswordAuth = AuthFlowType' "ADMIN_USER_PASSWORD_AUTH"

pattern CustomAuth :: AuthFlowType
pattern CustomAuth = AuthFlowType' "CUSTOM_AUTH"

pattern RefreshToken :: AuthFlowType
pattern RefreshToken = AuthFlowType' "REFRESH_TOKEN"

pattern RefreshTokenAuth :: AuthFlowType
pattern RefreshTokenAuth = AuthFlowType' "REFRESH_TOKEN_AUTH"

pattern UserPasswordAuth :: AuthFlowType
pattern UserPasswordAuth = AuthFlowType' "USER_PASSWORD_AUTH"

pattern UserSrpAuth :: AuthFlowType
pattern UserSrpAuth = AuthFlowType' "USER_SRP_AUTH"

{-# COMPLETE
  AdminNoSrpAuth,
  AdminUserPasswordAuth,
  CustomAuth,
  RefreshToken,
  RefreshTokenAuth,
  UserPasswordAuth,
  UserSrpAuth,
  AuthFlowType' #-}

instance FromText AuthFlowType where
    parser = (AuthFlowType' . mk) <$> takeText

instance ToText AuthFlowType where
    toText (AuthFlowType' ci) = original ci

instance Hashable     AuthFlowType
instance NFData       AuthFlowType
instance ToByteString AuthFlowType
instance ToQuery      AuthFlowType
instance ToHeader     AuthFlowType

instance ToJSON AuthFlowType where
    toJSON = toJSONText
