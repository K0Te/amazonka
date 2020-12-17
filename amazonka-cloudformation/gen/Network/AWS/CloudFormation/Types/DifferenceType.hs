{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.DifferenceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.DifferenceType (
  DifferenceType (
    ..
    , DTAdd
    , DTNotEqual
    , DTRemove
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DifferenceType = DifferenceType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern DTAdd :: DifferenceType
pattern DTAdd = DifferenceType' "ADD"

pattern DTNotEqual :: DifferenceType
pattern DTNotEqual = DifferenceType' "NOT_EQUAL"

pattern DTRemove :: DifferenceType
pattern DTRemove = DifferenceType' "REMOVE"

{-# COMPLETE
  DTAdd,
  DTNotEqual,
  DTRemove,
  DifferenceType' #-}

instance FromText DifferenceType where
    parser = (DifferenceType' . mk) <$> takeText

instance ToText DifferenceType where
    toText (DifferenceType' ci) = original ci

instance Hashable     DifferenceType
instance NFData       DifferenceType
instance ToByteString DifferenceType
instance ToQuery      DifferenceType
instance ToHeader     DifferenceType

instance FromXML DifferenceType where
    parseXML = parseXMLText "DifferenceType"
