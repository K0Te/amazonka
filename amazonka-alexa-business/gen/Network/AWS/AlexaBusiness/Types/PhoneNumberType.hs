{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.PhoneNumberType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.PhoneNumberType (
  PhoneNumberType (
    ..
    , PNTHome
    , PNTMobile
    , PNTWork
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PhoneNumberType = PhoneNumberType' (CI Text)
                         deriving (Eq, Ord, Show, Data, Typeable, Generic)

pattern PNTHome :: PhoneNumberType
pattern PNTHome = PhoneNumberType' "HOME"

pattern PNTMobile :: PhoneNumberType
pattern PNTMobile = PhoneNumberType' "MOBILE"

pattern PNTWork :: PhoneNumberType
pattern PNTWork = PhoneNumberType' "WORK"

{-# COMPLETE
  PNTHome,
  PNTMobile,
  PNTWork,
  PhoneNumberType' #-}

instance FromText PhoneNumberType where
    parser = (PhoneNumberType' . mk) <$> takeText

instance ToText PhoneNumberType where
    toText (PhoneNumberType' ci) = original ci

instance Hashable     PhoneNumberType
instance NFData       PhoneNumberType
instance ToByteString PhoneNumberType
instance ToQuery      PhoneNumberType
instance ToHeader     PhoneNumberType

instance ToJSON PhoneNumberType where
    toJSON = toJSONText

instance FromJSON PhoneNumberType where
    parseJSON = parseJSONText "PhoneNumberType"
