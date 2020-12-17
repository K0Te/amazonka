{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.VerifiedAttributeType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CognitoIdentityProvider.Types.VerifiedAttributeType (
  VerifiedAttributeType (
    ..
    , Email
    , PhoneNumber
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VerifiedAttributeType = VerifiedAttributeType' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern Email :: VerifiedAttributeType
pattern Email = VerifiedAttributeType' "email"

pattern PhoneNumber :: VerifiedAttributeType
pattern PhoneNumber = VerifiedAttributeType' "phone_number"

{-# COMPLETE
  Email,
  PhoneNumber,
  VerifiedAttributeType' #-}

instance FromText VerifiedAttributeType where
    parser = (VerifiedAttributeType' . mk) <$> takeText

instance ToText VerifiedAttributeType where
    toText (VerifiedAttributeType' ci) = original ci

instance Hashable     VerifiedAttributeType
instance NFData       VerifiedAttributeType
instance ToByteString VerifiedAttributeType
instance ToQuery      VerifiedAttributeType
instance ToHeader     VerifiedAttributeType

instance ToJSON VerifiedAttributeType where
    toJSON = toJSONText

instance FromJSON VerifiedAttributeType where
    parseJSON = parseJSONText "VerifiedAttributeType"
