{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.DomainControllerStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DirectoryService.Types.DomainControllerStatus (
  DomainControllerStatus (
    ..
    , Active
    , Creating
    , Deleted
    , Deleting
    , Failed
    , Impaired
    , Restoring
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainControllerStatus = DomainControllerStatus' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Active :: DomainControllerStatus
pattern Active = DomainControllerStatus' "Active"

pattern Creating :: DomainControllerStatus
pattern Creating = DomainControllerStatus' "Creating"

pattern Deleted :: DomainControllerStatus
pattern Deleted = DomainControllerStatus' "Deleted"

pattern Deleting :: DomainControllerStatus
pattern Deleting = DomainControllerStatus' "Deleting"

pattern Failed :: DomainControllerStatus
pattern Failed = DomainControllerStatus' "Failed"

pattern Impaired :: DomainControllerStatus
pattern Impaired = DomainControllerStatus' "Impaired"

pattern Restoring :: DomainControllerStatus
pattern Restoring = DomainControllerStatus' "Restoring"

{-# COMPLETE
  Active,
  Creating,
  Deleted,
  Deleting,
  Failed,
  Impaired,
  Restoring,
  DomainControllerStatus' #-}

instance FromText DomainControllerStatus where
    parser = (DomainControllerStatus' . mk) <$> takeText

instance ToText DomainControllerStatus where
    toText (DomainControllerStatus' ci) = original ci

instance Hashable     DomainControllerStatus
instance NFData       DomainControllerStatus
instance ToByteString DomainControllerStatus
instance ToQuery      DomainControllerStatus
instance ToHeader     DomainControllerStatus

instance FromJSON DomainControllerStatus where
    parseJSON = parseJSONText "DomainControllerStatus"
