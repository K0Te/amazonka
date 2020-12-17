{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.ReadWriteType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudTrail.Types.ReadWriteType (
  ReadWriteType (
    ..
    , RWTAll
    , RWTReadOnly
    , RWTWriteOnly
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReadWriteType = ReadWriteType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern RWTAll :: ReadWriteType
pattern RWTAll = ReadWriteType' "All"

pattern RWTReadOnly :: ReadWriteType
pattern RWTReadOnly = ReadWriteType' "ReadOnly"

pattern RWTWriteOnly :: ReadWriteType
pattern RWTWriteOnly = ReadWriteType' "WriteOnly"

{-# COMPLETE
  RWTAll,
  RWTReadOnly,
  RWTWriteOnly,
  ReadWriteType' #-}

instance FromText ReadWriteType where
    parser = (ReadWriteType' . mk) <$> takeText

instance ToText ReadWriteType where
    toText (ReadWriteType' ci) = original ci

instance Hashable     ReadWriteType
instance NFData       ReadWriteType
instance ToByteString ReadWriteType
instance ToQuery      ReadWriteType
instance ToHeader     ReadWriteType

instance ToJSON ReadWriteType where
    toJSON = toJSONText

instance FromJSON ReadWriteType where
    parseJSON = parseJSONText "ReadWriteType"
