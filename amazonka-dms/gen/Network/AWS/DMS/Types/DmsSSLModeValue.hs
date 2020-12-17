{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DmsSSLModeValue
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.DmsSSLModeValue (
  DmsSSLModeValue (
    ..
    , DSMVNone
    , DSMVRequire
    , DSMVVerifyCa
    , DSMVVerifyFull
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DmsSSLModeValue = DmsSSLModeValue' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern DSMVNone :: DmsSSLModeValue
pattern DSMVNone = DmsSSLModeValue' "none"

pattern DSMVRequire :: DmsSSLModeValue
pattern DSMVRequire = DmsSSLModeValue' "require"

pattern DSMVVerifyCa :: DmsSSLModeValue
pattern DSMVVerifyCa = DmsSSLModeValue' "verify-ca"

pattern DSMVVerifyFull :: DmsSSLModeValue
pattern DSMVVerifyFull = DmsSSLModeValue' "verify-full"

{-# COMPLETE
  DSMVNone,
  DSMVRequire,
  DSMVVerifyCa,
  DSMVVerifyFull,
  DmsSSLModeValue' #-}

instance FromText DmsSSLModeValue where
    parser = (DmsSSLModeValue' . mk) <$> takeText

instance ToText DmsSSLModeValue where
    toText (DmsSSLModeValue' ci) = original ci

instance Hashable     DmsSSLModeValue
instance NFData       DmsSSLModeValue
instance ToByteString DmsSSLModeValue
instance ToQuery      DmsSSLModeValue
instance ToHeader     DmsSSLModeValue

instance ToJSON DmsSSLModeValue where
    toJSON = toJSONText

instance FromJSON DmsSSLModeValue where
    parseJSON = parseJSONText "DmsSSLModeValue"
