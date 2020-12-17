{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.GeoRestrictionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFront.Types.GeoRestrictionType (
  GeoRestrictionType (
    ..
    , GRTBlacklist
    , GRTNone
    , GRTWhitelist
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GeoRestrictionType = GeoRestrictionType' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern GRTBlacklist :: GeoRestrictionType
pattern GRTBlacklist = GeoRestrictionType' "blacklist"

pattern GRTNone :: GeoRestrictionType
pattern GRTNone = GeoRestrictionType' "none"

pattern GRTWhitelist :: GeoRestrictionType
pattern GRTWhitelist = GeoRestrictionType' "whitelist"

{-# COMPLETE
  GRTBlacklist,
  GRTNone,
  GRTWhitelist,
  GeoRestrictionType' #-}

instance FromText GeoRestrictionType where
    parser = (GeoRestrictionType' . mk) <$> takeText

instance ToText GeoRestrictionType where
    toText (GeoRestrictionType' ci) = original ci

instance Hashable     GeoRestrictionType
instance NFData       GeoRestrictionType
instance ToByteString GeoRestrictionType
instance ToQuery      GeoRestrictionType
instance ToHeader     GeoRestrictionType

instance FromXML GeoRestrictionType where
    parseXML = parseXMLText "GeoRestrictionType"

instance ToXML GeoRestrictionType where
    toXML = toXMLText
