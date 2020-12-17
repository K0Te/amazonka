{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.MemberPermissions
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Cloud9.Types.MemberPermissions (
  MemberPermissions (
    ..
    , MPReadOnly
    , MPReadWrite
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MemberPermissions = MemberPermissions' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern MPReadOnly :: MemberPermissions
pattern MPReadOnly = MemberPermissions' "read-only"

pattern MPReadWrite :: MemberPermissions
pattern MPReadWrite = MemberPermissions' "read-write"

{-# COMPLETE
  MPReadOnly,
  MPReadWrite,
  MemberPermissions' #-}

instance FromText MemberPermissions where
    parser = (MemberPermissions' . mk) <$> takeText

instance ToText MemberPermissions where
    toText (MemberPermissions' ci) = original ci

instance Hashable     MemberPermissions
instance NFData       MemberPermissions
instance ToByteString MemberPermissions
instance ToQuery      MemberPermissions
instance ToHeader     MemberPermissions

instance ToJSON MemberPermissions where
    toJSON = toJSONText
