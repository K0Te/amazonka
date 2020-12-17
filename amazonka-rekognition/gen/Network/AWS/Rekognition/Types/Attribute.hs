{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Attribute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.Attribute (
  Attribute (
    ..
    , All
    , Default
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Attribute = Attribute' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern All :: Attribute
pattern All = Attribute' "ALL"

pattern Default :: Attribute
pattern Default = Attribute' "DEFAULT"

{-# COMPLETE
  All,
  Default,
  Attribute' #-}

instance FromText Attribute where
    parser = (Attribute' . mk) <$> takeText

instance ToText Attribute where
    toText (Attribute' ci) = original ci

instance Hashable     Attribute
instance NFData       Attribute
instance ToByteString Attribute
instance ToQuery      Attribute
instance ToHeader     Attribute

instance ToJSON Attribute where
    toJSON = toJSONText
