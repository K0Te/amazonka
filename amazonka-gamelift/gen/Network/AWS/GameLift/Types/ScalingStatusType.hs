{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.ScalingStatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.ScalingStatusType (
  ScalingStatusType (
    ..
    , Active
    , DeleteRequested
    , Deleted
    , Deleting
    , Error'
    , UpdateRequested
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingStatusType = ScalingStatusType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern Active :: ScalingStatusType
pattern Active = ScalingStatusType' "ACTIVE"

pattern DeleteRequested :: ScalingStatusType
pattern DeleteRequested = ScalingStatusType' "DELETE_REQUESTED"

pattern Deleted :: ScalingStatusType
pattern Deleted = ScalingStatusType' "DELETED"

pattern Deleting :: ScalingStatusType
pattern Deleting = ScalingStatusType' "DELETING"

pattern Error' :: ScalingStatusType
pattern Error' = ScalingStatusType' "ERROR"

pattern UpdateRequested :: ScalingStatusType
pattern UpdateRequested = ScalingStatusType' "UPDATE_REQUESTED"

pattern Updating :: ScalingStatusType
pattern Updating = ScalingStatusType' "UPDATING"

{-# COMPLETE
  Active,
  DeleteRequested,
  Deleted,
  Deleting,
  Error',
  UpdateRequested,
  Updating,
  ScalingStatusType' #-}

instance FromText ScalingStatusType where
    parser = (ScalingStatusType' . mk) <$> takeText

instance ToText ScalingStatusType where
    toText (ScalingStatusType' ci) = original ci

instance Hashable     ScalingStatusType
instance NFData       ScalingStatusType
instance ToByteString ScalingStatusType
instance ToQuery      ScalingStatusType
instance ToHeader     ScalingStatusType

instance ToJSON ScalingStatusType where
    toJSON = toJSONText

instance FromJSON ScalingStatusType where
    parseJSON = parseJSONText "ScalingStatusType"
