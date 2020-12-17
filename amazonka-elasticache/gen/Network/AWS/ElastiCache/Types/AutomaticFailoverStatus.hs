{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElastiCache.Types.AutomaticFailoverStatus (
  AutomaticFailoverStatus (
    ..
    , AFSDisabled
    , AFSDisabling
    , AFSEnabled
    , AFSEnabling
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomaticFailoverStatus = AutomaticFailoverStatus' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern AFSDisabled :: AutomaticFailoverStatus
pattern AFSDisabled = AutomaticFailoverStatus' "disabled"

pattern AFSDisabling :: AutomaticFailoverStatus
pattern AFSDisabling = AutomaticFailoverStatus' "disabling"

pattern AFSEnabled :: AutomaticFailoverStatus
pattern AFSEnabled = AutomaticFailoverStatus' "enabled"

pattern AFSEnabling :: AutomaticFailoverStatus
pattern AFSEnabling = AutomaticFailoverStatus' "enabling"

{-# COMPLETE
  AFSDisabled,
  AFSDisabling,
  AFSEnabled,
  AFSEnabling,
  AutomaticFailoverStatus' #-}

instance FromText AutomaticFailoverStatus where
    parser = (AutomaticFailoverStatus' . mk) <$> takeText

instance ToText AutomaticFailoverStatus where
    toText (AutomaticFailoverStatus' ci) = original ci

instance Hashable     AutomaticFailoverStatus
instance NFData       AutomaticFailoverStatus
instance ToByteString AutomaticFailoverStatus
instance ToQuery      AutomaticFailoverStatus
instance ToHeader     AutomaticFailoverStatus

instance FromXML AutomaticFailoverStatus where
    parseXML = parseXMLText "AutomaticFailoverStatus"
