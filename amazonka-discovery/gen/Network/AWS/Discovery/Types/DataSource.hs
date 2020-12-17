{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.DataSource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Discovery.Types.DataSource (
  DataSource (
    ..
    , Agent
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataSource = DataSource' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern Agent :: DataSource
pattern Agent = DataSource' "AGENT"

{-# COMPLETE
  Agent,
  DataSource' #-}

instance FromText DataSource where
    parser = (DataSource' . mk) <$> takeText

instance ToText DataSource where
    toText (DataSource' ci) = original ci

instance Hashable     DataSource
instance NFData       DataSource
instance ToByteString DataSource
instance ToQuery      DataSource
instance ToHeader     DataSource

instance FromJSON DataSource where
    parseJSON = parseJSONText "DataSource"
