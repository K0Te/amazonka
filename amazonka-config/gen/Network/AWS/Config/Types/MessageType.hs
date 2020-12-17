{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.MessageType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.MessageType (
  MessageType (
    ..
    , ConfigurationItemChangeNotification
    , ConfigurationSnapshotDeliveryCompleted
    , OversizedConfigurationItemChangeNotification
    , ScheduledNotification
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageType = MessageType' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern ConfigurationItemChangeNotification :: MessageType
pattern ConfigurationItemChangeNotification = MessageType' "ConfigurationItemChangeNotification"

pattern ConfigurationSnapshotDeliveryCompleted :: MessageType
pattern ConfigurationSnapshotDeliveryCompleted = MessageType' "ConfigurationSnapshotDeliveryCompleted"

pattern OversizedConfigurationItemChangeNotification :: MessageType
pattern OversizedConfigurationItemChangeNotification = MessageType' "OversizedConfigurationItemChangeNotification"

pattern ScheduledNotification :: MessageType
pattern ScheduledNotification = MessageType' "ScheduledNotification"

{-# COMPLETE
  ConfigurationItemChangeNotification,
  ConfigurationSnapshotDeliveryCompleted,
  OversizedConfigurationItemChangeNotification,
  ScheduledNotification,
  MessageType' #-}

instance FromText MessageType where
    parser = (MessageType' . mk) <$> takeText

instance ToText MessageType where
    toText (MessageType' ci) = original ci

instance Hashable     MessageType
instance NFData       MessageType
instance ToByteString MessageType
instance ToQuery      MessageType
instance ToHeader     MessageType

instance ToJSON MessageType where
    toJSON = toJSONText

instance FromJSON MessageType where
    parseJSON = parseJSONText "MessageType"
