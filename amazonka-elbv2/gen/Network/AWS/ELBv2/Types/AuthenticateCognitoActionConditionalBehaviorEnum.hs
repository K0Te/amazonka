{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum (
  AuthenticateCognitoActionConditionalBehaviorEnum (
    ..
    , Allow
    , Authenticate
    , Deny
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthenticateCognitoActionConditionalBehaviorEnum = AuthenticateCognitoActionConditionalBehaviorEnum' (CI
                                                                                                             Text)
                                                          deriving (Eq, Ord,
                                                                    Read, Show,
                                                                    Data,
                                                                    Typeable,
                                                                    Generic)

pattern Allow :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern Allow = AuthenticateCognitoActionConditionalBehaviorEnum' "allow"

pattern Authenticate :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern Authenticate = AuthenticateCognitoActionConditionalBehaviorEnum' "authenticate"

pattern Deny :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern Deny = AuthenticateCognitoActionConditionalBehaviorEnum' "deny"

{-# COMPLETE
  Allow,
  Authenticate,
  Deny,
  AuthenticateCognitoActionConditionalBehaviorEnum' #-}

instance FromText AuthenticateCognitoActionConditionalBehaviorEnum where
    parser = (AuthenticateCognitoActionConditionalBehaviorEnum' . mk) <$> takeText

instance ToText AuthenticateCognitoActionConditionalBehaviorEnum where
    toText (AuthenticateCognitoActionConditionalBehaviorEnum' ci) = original ci

instance Hashable     AuthenticateCognitoActionConditionalBehaviorEnum
instance NFData       AuthenticateCognitoActionConditionalBehaviorEnum
instance ToByteString AuthenticateCognitoActionConditionalBehaviorEnum
instance ToQuery      AuthenticateCognitoActionConditionalBehaviorEnum
instance ToHeader     AuthenticateCognitoActionConditionalBehaviorEnum

instance FromXML AuthenticateCognitoActionConditionalBehaviorEnum where
    parseXML = parseXMLText "AuthenticateCognitoActionConditionalBehaviorEnum"
