{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.LookupAttributeKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudTrail.Types.LookupAttributeKey (
  LookupAttributeKey (
    ..
    , AccessKeyId
    , EventId
    , EventName
    , EventSource
    , ReadOnly
    , ResourceName
    , ResourceType
    , Username
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LookupAttributeKey = LookupAttributeKey' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern AccessKeyId :: LookupAttributeKey
pattern AccessKeyId = LookupAttributeKey' "AccessKeyId"

pattern EventId :: LookupAttributeKey
pattern EventId = LookupAttributeKey' "EventId"

pattern EventName :: LookupAttributeKey
pattern EventName = LookupAttributeKey' "EventName"

pattern EventSource :: LookupAttributeKey
pattern EventSource = LookupAttributeKey' "EventSource"

pattern ReadOnly :: LookupAttributeKey
pattern ReadOnly = LookupAttributeKey' "ReadOnly"

pattern ResourceName :: LookupAttributeKey
pattern ResourceName = LookupAttributeKey' "ResourceName"

pattern ResourceType :: LookupAttributeKey
pattern ResourceType = LookupAttributeKey' "ResourceType"

pattern Username :: LookupAttributeKey
pattern Username = LookupAttributeKey' "Username"

{-# COMPLETE
  AccessKeyId,
  EventId,
  EventName,
  EventSource,
  ReadOnly,
  ResourceName,
  ResourceType,
  Username,
  LookupAttributeKey' #-}

instance FromText LookupAttributeKey where
    parser = (LookupAttributeKey' . mk) <$> takeText

instance ToText LookupAttributeKey where
    toText (LookupAttributeKey' ci) = original ci

instance Hashable     LookupAttributeKey
instance NFData       LookupAttributeKey
instance ToByteString LookupAttributeKey
instance ToQuery      LookupAttributeKey
instance ToHeader     LookupAttributeKey

instance ToJSON LookupAttributeKey where
    toJSON = toJSONText
