{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Include
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.Include (
  Include (
    ..
    , All
    , Any
    , None
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Include = Include' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern All :: Include
pattern All = Include' "ALL"

pattern Any :: Include
pattern Any = Include' "ANY"

pattern None :: Include
pattern None = Include' "NONE"

{-# COMPLETE
  All,
  Any,
  None,
  Include' #-}

instance FromText Include where
    parser = (Include' . mk) <$> takeText

instance ToText Include where
    toText (Include' ci) = original ci

instance Hashable     Include
instance NFData       Include
instance ToByteString Include
instance ToQuery      Include
instance ToHeader     Include

instance ToJSON Include where
    toJSON = toJSONText

instance FromJSON Include where
    parseJSON = parseJSONText "Include"
