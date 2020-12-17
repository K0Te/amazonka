{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProductViewFilterBy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.ProductViewFilterBy (
  ProductViewFilterBy (
    ..
    , PVFBFullTextSearch
    , PVFBOwner
    , PVFBProductType
    , PVFBSourceProductId
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProductViewFilterBy = ProductViewFilterBy' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern PVFBFullTextSearch :: ProductViewFilterBy
pattern PVFBFullTextSearch = ProductViewFilterBy' "FullTextSearch"

pattern PVFBOwner :: ProductViewFilterBy
pattern PVFBOwner = ProductViewFilterBy' "Owner"

pattern PVFBProductType :: ProductViewFilterBy
pattern PVFBProductType = ProductViewFilterBy' "ProductType"

pattern PVFBSourceProductId :: ProductViewFilterBy
pattern PVFBSourceProductId = ProductViewFilterBy' "SourceProductId"

{-# COMPLETE
  PVFBFullTextSearch,
  PVFBOwner,
  PVFBProductType,
  PVFBSourceProductId,
  ProductViewFilterBy' #-}

instance FromText ProductViewFilterBy where
    parser = (ProductViewFilterBy' . mk) <$> takeText

instance ToText ProductViewFilterBy where
    toText (ProductViewFilterBy' ci) = original ci

instance Hashable     ProductViewFilterBy
instance NFData       ProductViewFilterBy
instance ToByteString ProductViewFilterBy
instance ToQuery      ProductViewFilterBy
instance ToHeader     ProductViewFilterBy

instance ToJSON ProductViewFilterBy where
    toJSON = toJSONText
