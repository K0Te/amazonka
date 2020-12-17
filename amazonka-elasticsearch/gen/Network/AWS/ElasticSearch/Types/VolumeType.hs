{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.VolumeType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticSearch.Types.VolumeType (
  VolumeType (
    ..
    , GP2
    , IO1
    , Standard
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of EBS volume, standard, gp2, or io1. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> for more information.
--
--
data VolumeType = VolumeType' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern GP2 :: VolumeType
pattern GP2 = VolumeType' "gp2"

pattern IO1 :: VolumeType
pattern IO1 = VolumeType' "io1"

pattern Standard :: VolumeType
pattern Standard = VolumeType' "standard"

{-# COMPLETE
  GP2,
  IO1,
  Standard,
  VolumeType' #-}

instance FromText VolumeType where
    parser = (VolumeType' . mk) <$> takeText

instance ToText VolumeType where
    toText (VolumeType' ci) = original ci

instance Hashable     VolumeType
instance NFData       VolumeType
instance ToByteString VolumeType
instance ToQuery      VolumeType
instance ToHeader     VolumeType

instance ToJSON VolumeType where
    toJSON = toJSONText

instance FromJSON VolumeType where
    parseJSON = parseJSONText "VolumeType"
