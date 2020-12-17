{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.LexStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.LexModels.Types.LexStatus (
  LexStatus (
    ..
    , LSBuilding
    , LSFailed
    , LSNotBuilt
    , LSReady
    , LSReadyBasicTesting
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LexStatus = LexStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern LSBuilding :: LexStatus
pattern LSBuilding = LexStatus' "BUILDING"

pattern LSFailed :: LexStatus
pattern LSFailed = LexStatus' "FAILED"

pattern LSNotBuilt :: LexStatus
pattern LSNotBuilt = LexStatus' "NOT_BUILT"

pattern LSReady :: LexStatus
pattern LSReady = LexStatus' "READY"

pattern LSReadyBasicTesting :: LexStatus
pattern LSReadyBasicTesting = LexStatus' "READY_BASIC_TESTING"

{-# COMPLETE
  LSBuilding,
  LSFailed,
  LSNotBuilt,
  LSReady,
  LSReadyBasicTesting,
  LexStatus' #-}

instance FromText LexStatus where
    parser = (LexStatus' . mk) <$> takeText

instance ToText LexStatus where
    toText (LexStatus' ci) = original ci

instance Hashable     LexStatus
instance NFData       LexStatus
instance ToByteString LexStatus
instance ToQuery      LexStatus
instance ToHeader     LexStatus

instance FromJSON LexStatus where
    parseJSON = parseJSONText "LexStatus"
