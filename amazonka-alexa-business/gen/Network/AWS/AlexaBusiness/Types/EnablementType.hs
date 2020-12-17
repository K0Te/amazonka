{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.EnablementType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.EnablementType (
  EnablementType (
    ..
    , ETEnabled
    , ETPending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnablementType = EnablementType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern ETEnabled :: EnablementType
pattern ETEnabled = EnablementType' "ENABLED"

pattern ETPending :: EnablementType
pattern ETPending = EnablementType' "PENDING"

{-# COMPLETE
  ETEnabled,
  ETPending,
  EnablementType' #-}

instance FromText EnablementType where
    parser = (EnablementType' . mk) <$> takeText

instance ToText EnablementType where
    toText (EnablementType' ci) = original ci

instance Hashable     EnablementType
instance NFData       EnablementType
instance ToByteString EnablementType
instance ToQuery      EnablementType
instance ToHeader     EnablementType

instance FromJSON EnablementType where
    parseJSON = parseJSONText "EnablementType"
