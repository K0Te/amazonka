{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.EC2TagFilterType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeDeploy.Types.EC2TagFilterType (
  EC2TagFilterType (
    ..
    , KeyAndValue
    , KeyOnly
    , ValueOnly
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EC2TagFilterType = EC2TagFilterType' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern KeyAndValue :: EC2TagFilterType
pattern KeyAndValue = EC2TagFilterType' "KEY_AND_VALUE"

pattern KeyOnly :: EC2TagFilterType
pattern KeyOnly = EC2TagFilterType' "KEY_ONLY"

pattern ValueOnly :: EC2TagFilterType
pattern ValueOnly = EC2TagFilterType' "VALUE_ONLY"

{-# COMPLETE
  KeyAndValue,
  KeyOnly,
  ValueOnly,
  EC2TagFilterType' #-}

instance FromText EC2TagFilterType where
    parser = (EC2TagFilterType' . mk) <$> takeText

instance ToText EC2TagFilterType where
    toText (EC2TagFilterType' ci) = original ci

instance Hashable     EC2TagFilterType
instance NFData       EC2TagFilterType
instance ToByteString EC2TagFilterType
instance ToQuery      EC2TagFilterType
instance ToHeader     EC2TagFilterType

instance ToJSON EC2TagFilterType where
    toJSON = toJSONText

instance FromJSON EC2TagFilterType where
    parseJSON = parseJSONText "EC2TagFilterType"
