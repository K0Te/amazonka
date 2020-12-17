{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.EntityStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MachineLearning.Types.EntityStatus (
  EntityStatus (
    ..
    , ESCompleted
    , ESDeleted
    , ESFailed
    , ESInprogress
    , ESPending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Object status with the following possible values:
--
--
--     * @PENDING@     * @INPROGRESS@     * @FAILED@     * @COMPLETED@     * @DELETED@ 
--
data EntityStatus = EntityStatus' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern ESCompleted :: EntityStatus
pattern ESCompleted = EntityStatus' "COMPLETED"

pattern ESDeleted :: EntityStatus
pattern ESDeleted = EntityStatus' "DELETED"

pattern ESFailed :: EntityStatus
pattern ESFailed = EntityStatus' "FAILED"

pattern ESInprogress :: EntityStatus
pattern ESInprogress = EntityStatus' "INPROGRESS"

pattern ESPending :: EntityStatus
pattern ESPending = EntityStatus' "PENDING"

{-# COMPLETE
  ESCompleted,
  ESDeleted,
  ESFailed,
  ESInprogress,
  ESPending,
  EntityStatus' #-}

instance FromText EntityStatus where
    parser = (EntityStatus' . mk) <$> takeText

instance ToText EntityStatus where
    toText (EntityStatus' ci) = original ci

instance Hashable     EntityStatus
instance NFData       EntityStatus
instance ToByteString EntityStatus
instance ToQuery      EntityStatus
instance ToHeader     EntityStatus

instance FromJSON EntityStatus where
    parseJSON = parseJSONText "EntityStatus"
