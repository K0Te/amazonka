{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DeviceFarm.Types.TestGridSessionStatus (
  TestGridSessionStatus (
    ..
    , Active
    , Closed
    , Errored
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TestGridSessionStatus = TestGridSessionStatus' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern Active :: TestGridSessionStatus
pattern Active = TestGridSessionStatus' "ACTIVE"

pattern Closed :: TestGridSessionStatus
pattern Closed = TestGridSessionStatus' "CLOSED"

pattern Errored :: TestGridSessionStatus
pattern Errored = TestGridSessionStatus' "ERRORED"

{-# COMPLETE
  Active,
  Closed,
  Errored,
  TestGridSessionStatus' #-}

instance FromText TestGridSessionStatus where
    parser = (TestGridSessionStatus' . mk) <$> takeText

instance ToText TestGridSessionStatus where
    toText (TestGridSessionStatus' ci) = original ci

instance Hashable     TestGridSessionStatus
instance NFData       TestGridSessionStatus
instance ToByteString TestGridSessionStatus
instance ToQuery      TestGridSessionStatus
instance ToHeader     TestGridSessionStatus

instance ToJSON TestGridSessionStatus where
    toJSON = toJSONText

instance FromJSON TestGridSessionStatus where
    parseJSON = parseJSONText "TestGridSessionStatus"
