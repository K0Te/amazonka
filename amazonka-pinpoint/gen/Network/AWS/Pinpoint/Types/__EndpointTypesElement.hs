{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.__EndpointTypesElement
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.__EndpointTypesElement (
  __EndpointTypesElement (
    ..
    , ADM
    , APNS
    , APNSSandbox
    , APNSVoip
    , APNSVoipSandbox
    , Baidu
    , Custom
    , Email
    , GCM
    , Push
    , Sms
    , Voice
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data __EndpointTypesElement = __EndpointTypesElement' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern ADM :: __EndpointTypesElement
pattern ADM = __EndpointTypesElement' "ADM"

pattern APNS :: __EndpointTypesElement
pattern APNS = __EndpointTypesElement' "APNS"

pattern APNSSandbox :: __EndpointTypesElement
pattern APNSSandbox = __EndpointTypesElement' "APNS_SANDBOX"

pattern APNSVoip :: __EndpointTypesElement
pattern APNSVoip = __EndpointTypesElement' "APNS_VOIP"

pattern APNSVoipSandbox :: __EndpointTypesElement
pattern APNSVoipSandbox = __EndpointTypesElement' "APNS_VOIP_SANDBOX"

pattern Baidu :: __EndpointTypesElement
pattern Baidu = __EndpointTypesElement' "BAIDU"

pattern Custom :: __EndpointTypesElement
pattern Custom = __EndpointTypesElement' "CUSTOM"

pattern Email :: __EndpointTypesElement
pattern Email = __EndpointTypesElement' "EMAIL"

pattern GCM :: __EndpointTypesElement
pattern GCM = __EndpointTypesElement' "GCM"

pattern Push :: __EndpointTypesElement
pattern Push = __EndpointTypesElement' "PUSH"

pattern Sms :: __EndpointTypesElement
pattern Sms = __EndpointTypesElement' "SMS"

pattern Voice :: __EndpointTypesElement
pattern Voice = __EndpointTypesElement' "VOICE"

{-# COMPLETE
  ADM,
  APNS,
  APNSSandbox,
  APNSVoip,
  APNSVoipSandbox,
  Baidu,
  Custom,
  Email,
  GCM,
  Push,
  Sms,
  Voice,
  __EndpointTypesElement' #-}

instance FromText __EndpointTypesElement where
    parser = (__EndpointTypesElement' . mk) <$> takeText

instance ToText __EndpointTypesElement where
    toText (__EndpointTypesElement' ci) = original ci

instance Hashable     __EndpointTypesElement
instance NFData       __EndpointTypesElement
instance ToByteString __EndpointTypesElement
instance ToQuery      __EndpointTypesElement
instance ToHeader     __EndpointTypesElement

instance ToJSON __EndpointTypesElement where
    toJSON = toJSONText

instance FromJSON __EndpointTypesElement where
    parseJSON = parseJSONText "__EndpointTypesElement"
