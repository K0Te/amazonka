{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.EventType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.EventType (
  EventType (
    ..
    , ETBounce
    , ETClick
    , ETComplaint
    , ETDelivery
    , ETOpen
    , ETReject
    , ETRenderingFailure
    , ETSend
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventType = EventType' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern ETBounce :: EventType
pattern ETBounce = EventType' "bounce"

pattern ETClick :: EventType
pattern ETClick = EventType' "click"

pattern ETComplaint :: EventType
pattern ETComplaint = EventType' "complaint"

pattern ETDelivery :: EventType
pattern ETDelivery = EventType' "delivery"

pattern ETOpen :: EventType
pattern ETOpen = EventType' "open"

pattern ETReject :: EventType
pattern ETReject = EventType' "reject"

pattern ETRenderingFailure :: EventType
pattern ETRenderingFailure = EventType' "renderingFailure"

pattern ETSend :: EventType
pattern ETSend = EventType' "send"

{-# COMPLETE
  ETBounce,
  ETClick,
  ETComplaint,
  ETDelivery,
  ETOpen,
  ETReject,
  ETRenderingFailure,
  ETSend,
  EventType' #-}

instance FromText EventType where
    parser = (EventType' . mk) <$> takeText

instance ToText EventType where
    toText (EventType' ci) = original ci

instance Hashable     EventType
instance NFData       EventType
instance ToByteString EventType
instance ToQuery      EventType
instance ToHeader     EventType

instance FromXML EventType where
    parseXML = parseXMLText "EventType"
