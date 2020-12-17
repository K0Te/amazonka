{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.State
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.State (
  State (
    ..
    , Active
    , Failed
    , Inactive
    , Pending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data State = State' (CI Text)
               deriving (Eq, Ord, Read, Show, Data, Typeable,
                         Generic)

pattern Active :: State
pattern Active = State' "Active"

pattern Failed :: State
pattern Failed = State' "Failed"

pattern Inactive :: State
pattern Inactive = State' "Inactive"

pattern Pending :: State
pattern Pending = State' "Pending"

{-# COMPLETE
  Active,
  Failed,
  Inactive,
  Pending,
  State' #-}

instance FromText State where
    parser = (State' . mk) <$> takeText

instance ToText State where
    toText (State' ci) = original ci

instance Hashable     State
instance NFData       State
instance ToByteString State
instance ToQuery      State
instance ToHeader     State

instance FromJSON State where
    parseJSON = parseJSONText "State"
