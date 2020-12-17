{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.PidMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.PidMode (
  PidMode (
    ..
    , PMHost
    , PMTask
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PidMode = PidMode' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern PMHost :: PidMode
pattern PMHost = PidMode' "host"

pattern PMTask :: PidMode
pattern PMTask = PidMode' "task"

{-# COMPLETE
  PMHost,
  PMTask,
  PidMode' #-}

instance FromText PidMode where
    parser = (PidMode' . mk) <$> takeText

instance ToText PidMode where
    toText (PidMode' ci) = original ci

instance Hashable     PidMode
instance NFData       PidMode
instance ToByteString PidMode
instance ToQuery      PidMode
instance ToHeader     PidMode

instance ToJSON PidMode where
    toJSON = toJSONText

instance FromJSON PidMode where
    parseJSON = parseJSONText "PidMode"
