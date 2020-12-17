{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProductType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.ProductType (
  ProductType (
    ..
    , CloudFormationTemplate
    , Marketplace
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProductType = ProductType' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern CloudFormationTemplate :: ProductType
pattern CloudFormationTemplate = ProductType' "CLOUD_FORMATION_TEMPLATE"

pattern Marketplace :: ProductType
pattern Marketplace = ProductType' "MARKETPLACE"

{-# COMPLETE
  CloudFormationTemplate,
  Marketplace,
  ProductType' #-}

instance FromText ProductType where
    parser = (ProductType' . mk) <$> takeText

instance ToText ProductType where
    toText (ProductType' ci) = original ci

instance Hashable     ProductType
instance NFData       ProductType
instance ToByteString ProductType
instance ToQuery      ProductType
instance ToHeader     ProductType

instance ToJSON ProductType where
    toJSON = toJSONText

instance FromJSON ProductType where
    parseJSON = parseJSONText "ProductType"
