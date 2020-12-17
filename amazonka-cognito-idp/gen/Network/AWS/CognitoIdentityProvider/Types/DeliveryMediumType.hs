{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DeliveryMediumType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CognitoIdentityProvider.Types.DeliveryMediumType (
  DeliveryMediumType (
    ..
    , DMTEmail
    , DMTSms
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeliveryMediumType = DeliveryMediumType' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern DMTEmail :: DeliveryMediumType
pattern DMTEmail = DeliveryMediumType' "EMAIL"

pattern DMTSms :: DeliveryMediumType
pattern DMTSms = DeliveryMediumType' "SMS"

{-# COMPLETE
  DMTEmail,
  DMTSms,
  DeliveryMediumType' #-}

instance FromText DeliveryMediumType where
    parser = (DeliveryMediumType' . mk) <$> takeText

instance ToText DeliveryMediumType where
    toText (DeliveryMediumType' ci) = original ci

instance Hashable     DeliveryMediumType
instance NFData       DeliveryMediumType
instance ToByteString DeliveryMediumType
instance ToQuery      DeliveryMediumType
instance ToHeader     DeliveryMediumType

instance ToJSON DeliveryMediumType where
    toJSON = toJSONText

instance FromJSON DeliveryMediumType where
    parseJSON = parseJSONText "DeliveryMediumType"
