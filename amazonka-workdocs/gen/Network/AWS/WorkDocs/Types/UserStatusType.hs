{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.UserStatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkDocs.Types.UserStatusType (
  UserStatusType (
    ..
    , Active
    , Inactive
    , Pending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserStatusType = UserStatusType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Active :: UserStatusType
pattern Active = UserStatusType' "ACTIVE"

pattern Inactive :: UserStatusType
pattern Inactive = UserStatusType' "INACTIVE"

pattern Pending :: UserStatusType
pattern Pending = UserStatusType' "PENDING"

{-# COMPLETE
  Active,
  Inactive,
  Pending,
  UserStatusType' #-}

instance FromText UserStatusType where
    parser = (UserStatusType' . mk) <$> takeText

instance ToText UserStatusType where
    toText (UserStatusType' ci) = original ci

instance Hashable     UserStatusType
instance NFData       UserStatusType
instance ToByteString UserStatusType
instance ToQuery      UserStatusType
instance ToHeader     UserStatusType

instance FromJSON UserStatusType where
    parseJSON = parseJSONText "UserStatusType"
