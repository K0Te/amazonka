{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.ParallelDataStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Translate.Types.ParallelDataStatus (
  ParallelDataStatus (
    ..
    , Active
    , Creating
    , Deleting
    , Failed
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParallelDataStatus = ParallelDataStatus' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Active :: ParallelDataStatus
pattern Active = ParallelDataStatus' "ACTIVE"

pattern Creating :: ParallelDataStatus
pattern Creating = ParallelDataStatus' "CREATING"

pattern Deleting :: ParallelDataStatus
pattern Deleting = ParallelDataStatus' "DELETING"

pattern Failed :: ParallelDataStatus
pattern Failed = ParallelDataStatus' "FAILED"

pattern Updating :: ParallelDataStatus
pattern Updating = ParallelDataStatus' "UPDATING"

{-# COMPLETE
  Active,
  Creating,
  Deleting,
  Failed,
  Updating,
  ParallelDataStatus' #-}

instance FromText ParallelDataStatus where
    parser = (ParallelDataStatus' . mk) <$> takeText

instance ToText ParallelDataStatus where
    toText (ParallelDataStatus' ci) = original ci

instance Hashable     ParallelDataStatus
instance NFData       ParallelDataStatus
instance ToByteString ParallelDataStatus
instance ToQuery      ParallelDataStatus
instance ToHeader     ParallelDataStatus

instance FromJSON ParallelDataStatus where
    parseJSON = parseJSONText "ParallelDataStatus"
