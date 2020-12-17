{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.NetworkMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.NetworkMode (
  NetworkMode (
    ..
    , AWSvpc
    , Bridge
    , Host
    , None
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NetworkMode = NetworkMode' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern AWSvpc :: NetworkMode
pattern AWSvpc = NetworkMode' "awsvpc"

pattern Bridge :: NetworkMode
pattern Bridge = NetworkMode' "bridge"

pattern Host :: NetworkMode
pattern Host = NetworkMode' "host"

pattern None :: NetworkMode
pattern None = NetworkMode' "none"

{-# COMPLETE
  AWSvpc,
  Bridge,
  Host,
  None,
  NetworkMode' #-}

instance FromText NetworkMode where
    parser = (NetworkMode' . mk) <$> takeText

instance ToText NetworkMode where
    toText (NetworkMode' ci) = original ci

instance Hashable     NetworkMode
instance NFData       NetworkMode
instance ToByteString NetworkMode
instance ToQuery      NetworkMode
instance ToHeader     NetworkMode

instance ToJSON NetworkMode where
    toJSON = toJSONText

instance FromJSON NetworkMode where
    parseJSON = parseJSONText "NetworkMode"
