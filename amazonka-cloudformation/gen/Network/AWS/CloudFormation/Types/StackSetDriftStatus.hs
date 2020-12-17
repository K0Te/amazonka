{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetDriftStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackSetDriftStatus (
  StackSetDriftStatus (
    ..
    , Drifted
    , InSync
    , NotChecked
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetDriftStatus = StackSetDriftStatus' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Drifted :: StackSetDriftStatus
pattern Drifted = StackSetDriftStatus' "DRIFTED"

pattern InSync :: StackSetDriftStatus
pattern InSync = StackSetDriftStatus' "IN_SYNC"

pattern NotChecked :: StackSetDriftStatus
pattern NotChecked = StackSetDriftStatus' "NOT_CHECKED"

{-# COMPLETE
  Drifted,
  InSync,
  NotChecked,
  StackSetDriftStatus' #-}

instance FromText StackSetDriftStatus where
    parser = (StackSetDriftStatus' . mk) <$> takeText

instance ToText StackSetDriftStatus where
    toText (StackSetDriftStatus' ci) = original ci

instance Hashable     StackSetDriftStatus
instance NFData       StackSetDriftStatus
instance ToByteString StackSetDriftStatus
instance ToQuery      StackSetDriftStatus
instance ToHeader     StackSetDriftStatus

instance FromXML StackSetDriftStatus where
    parseXML = parseXMLText "StackSetDriftStatus"
