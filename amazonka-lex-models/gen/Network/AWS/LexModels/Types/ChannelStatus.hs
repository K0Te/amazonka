{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.ChannelStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.LexModels.Types.ChannelStatus (
  ChannelStatus (
    ..
    , Created
    , Failed
    , InProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChannelStatus = ChannelStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Created :: ChannelStatus
pattern Created = ChannelStatus' "CREATED"

pattern Failed :: ChannelStatus
pattern Failed = ChannelStatus' "FAILED"

pattern InProgress :: ChannelStatus
pattern InProgress = ChannelStatus' "IN_PROGRESS"

{-# COMPLETE
  Created,
  Failed,
  InProgress,
  ChannelStatus' #-}

instance FromText ChannelStatus where
    parser = (ChannelStatus' . mk) <$> takeText

instance ToText ChannelStatus where
    toText (ChannelStatus' ci) = original ci

instance Hashable     ChannelStatus
instance NFData       ChannelStatus
instance ToByteString ChannelStatus
instance ToQuery      ChannelStatus
instance ToHeader     ChannelStatus

instance FromJSON ChannelStatus where
    parseJSON = parseJSONText "ChannelStatus"
