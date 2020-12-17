{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.Tenancy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkSpaces.Types.Tenancy (
  Tenancy (
    ..
    , Dedicated
    , Shared
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Tenancy = Tenancy' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern Dedicated :: Tenancy
pattern Dedicated = Tenancy' "DEDICATED"

pattern Shared :: Tenancy
pattern Shared = Tenancy' "SHARED"

{-# COMPLETE
  Dedicated,
  Shared,
  Tenancy' #-}

instance FromText Tenancy where
    parser = (Tenancy' . mk) <$> takeText

instance ToText Tenancy where
    toText (Tenancy' ci) = original ci

instance Hashable     Tenancy
instance NFData       Tenancy
instance ToByteString Tenancy
instance ToQuery      Tenancy
instance ToHeader     Tenancy

instance ToJSON Tenancy where
    toJSON = toJSONText

instance FromJSON Tenancy where
    parseJSON = parseJSONText "Tenancy"
