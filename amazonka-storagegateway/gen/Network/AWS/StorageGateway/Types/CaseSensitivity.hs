{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.CaseSensitivity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StorageGateway.Types.CaseSensitivity (
  CaseSensitivity (
    ..
    , CaseSensitive
    , ClientSpecified
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CaseSensitivity = CaseSensitivity' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern CaseSensitive :: CaseSensitivity
pattern CaseSensitive = CaseSensitivity' "CaseSensitive"

pattern ClientSpecified :: CaseSensitivity
pattern ClientSpecified = CaseSensitivity' "ClientSpecified"

{-# COMPLETE
  CaseSensitive,
  ClientSpecified,
  CaseSensitivity' #-}

instance FromText CaseSensitivity where
    parser = (CaseSensitivity' . mk) <$> takeText

instance ToText CaseSensitivity where
    toText (CaseSensitivity' ci) = original ci

instance Hashable     CaseSensitivity
instance NFData       CaseSensitivity
instance ToByteString CaseSensitivity
instance ToQuery      CaseSensitivity
instance ToHeader     CaseSensitivity

instance ToJSON CaseSensitivity where
    toJSON = toJSONText

instance FromJSON CaseSensitivity where
    parseJSON = parseJSONText "CaseSensitivity"
