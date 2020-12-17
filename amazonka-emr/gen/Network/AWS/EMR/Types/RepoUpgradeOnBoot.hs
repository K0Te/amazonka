{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.RepoUpgradeOnBoot
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.RepoUpgradeOnBoot (
  RepoUpgradeOnBoot (
    ..
    , RUOBNone
    , RUOBSecurity
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RepoUpgradeOnBoot = RepoUpgradeOnBoot' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern RUOBNone :: RepoUpgradeOnBoot
pattern RUOBNone = RepoUpgradeOnBoot' "NONE"

pattern RUOBSecurity :: RepoUpgradeOnBoot
pattern RUOBSecurity = RepoUpgradeOnBoot' "SECURITY"

{-# COMPLETE
  RUOBNone,
  RUOBSecurity,
  RepoUpgradeOnBoot' #-}

instance FromText RepoUpgradeOnBoot where
    parser = (RepoUpgradeOnBoot' . mk) <$> takeText

instance ToText RepoUpgradeOnBoot where
    toText (RepoUpgradeOnBoot' ci) = original ci

instance Hashable     RepoUpgradeOnBoot
instance NFData       RepoUpgradeOnBoot
instance ToByteString RepoUpgradeOnBoot
instance ToQuery      RepoUpgradeOnBoot
instance ToHeader     RepoUpgradeOnBoot

instance ToJSON RepoUpgradeOnBoot where
    toJSON = toJSONText

instance FromJSON RepoUpgradeOnBoot where
    parseJSON = parseJSONText "RepoUpgradeOnBoot"
