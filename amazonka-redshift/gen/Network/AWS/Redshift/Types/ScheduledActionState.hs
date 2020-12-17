{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ScheduledActionState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.ScheduledActionState (
  ScheduledActionState (
    ..
    , SASActive
    , SASDisabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data ScheduledActionState = ScheduledActionState' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern SASActive :: ScheduledActionState
pattern SASActive = ScheduledActionState' "ACTIVE"

pattern SASDisabled :: ScheduledActionState
pattern SASDisabled = ScheduledActionState' "DISABLED"

{-# COMPLETE
  SASActive,
  SASDisabled,
  ScheduledActionState' #-}

instance FromText ScheduledActionState where
    parser = (ScheduledActionState' . mk) <$> takeText

instance ToText ScheduledActionState where
    toText (ScheduledActionState' ci) = original ci

instance Hashable     ScheduledActionState
instance NFData       ScheduledActionState
instance ToByteString ScheduledActionState
instance ToQuery      ScheduledActionState
instance ToHeader     ScheduledActionState

instance FromXML ScheduledActionState where
    parseXML = parseXMLText "ScheduledActionState"
