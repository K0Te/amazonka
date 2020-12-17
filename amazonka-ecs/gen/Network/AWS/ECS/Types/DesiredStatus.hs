{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DesiredStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.DesiredStatus (
  DesiredStatus (
    ..
    , Pending
    , Running
    , Stopped
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DesiredStatus = DesiredStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Pending :: DesiredStatus
pattern Pending = DesiredStatus' "PENDING"

pattern Running :: DesiredStatus
pattern Running = DesiredStatus' "RUNNING"

pattern Stopped :: DesiredStatus
pattern Stopped = DesiredStatus' "STOPPED"

{-# COMPLETE
  Pending,
  Running,
  Stopped,
  DesiredStatus' #-}

instance FromText DesiredStatus where
    parser = (DesiredStatus' . mk) <$> takeText

instance ToText DesiredStatus where
    toText (DesiredStatus' ci) = original ci

instance Hashable     DesiredStatus
instance NFData       DesiredStatus
instance ToByteString DesiredStatus
instance ToQuery      DesiredStatus
instance ToHeader     DesiredStatus

instance ToJSON DesiredStatus where
    toJSON = toJSONText
