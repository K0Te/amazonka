{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EventResponseType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CognitoIdentityProvider.Types.EventResponseType (
  EventResponseType (
    ..
    , Failure
    , Success
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventResponseType = EventResponseType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern Failure :: EventResponseType
pattern Failure = EventResponseType' "Failure"

pattern Success :: EventResponseType
pattern Success = EventResponseType' "Success"

{-# COMPLETE
  Failure,
  Success,
  EventResponseType' #-}

instance FromText EventResponseType where
    parser = (EventResponseType' . mk) <$> takeText

instance ToText EventResponseType where
    toText (EventResponseType' ci) = original ci

instance Hashable     EventResponseType
instance NFData       EventResponseType
instance ToByteString EventResponseType
instance ToQuery      EventResponseType
instance ToHeader     EventResponseType

instance FromJSON EventResponseType where
    parseJSON = parseJSONText "EventResponseType"
