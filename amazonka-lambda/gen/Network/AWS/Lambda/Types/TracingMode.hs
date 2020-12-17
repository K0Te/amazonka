{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.TracingMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.TracingMode (
  TracingMode (
    ..
    , TMActive
    , TMPassThrough
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TracingMode = TracingMode' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern TMActive :: TracingMode
pattern TMActive = TracingMode' "Active"

pattern TMPassThrough :: TracingMode
pattern TMPassThrough = TracingMode' "PassThrough"

{-# COMPLETE
  TMActive,
  TMPassThrough,
  TracingMode' #-}

instance FromText TracingMode where
    parser = (TracingMode' . mk) <$> takeText

instance ToText TracingMode where
    toText (TracingMode' ci) = original ci

instance Hashable     TracingMode
instance NFData       TracingMode
instance ToByteString TracingMode
instance ToQuery      TracingMode
instance ToHeader     TracingMode

instance ToJSON TracingMode where
    toJSON = toJSONText

instance FromJSON TracingMode where
    parseJSON = parseJSONText "TracingMode"
