{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.ShippingLabelStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.ShippingLabelStatus (
  ShippingLabelStatus (
    ..
    , Failed
    , InProgress
    , Succeeded
    , TimedOut
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShippingLabelStatus = ShippingLabelStatus' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Failed :: ShippingLabelStatus
pattern Failed = ShippingLabelStatus' "Failed"

pattern InProgress :: ShippingLabelStatus
pattern InProgress = ShippingLabelStatus' "InProgress"

pattern Succeeded :: ShippingLabelStatus
pattern Succeeded = ShippingLabelStatus' "Succeeded"

pattern TimedOut :: ShippingLabelStatus
pattern TimedOut = ShippingLabelStatus' "TimedOut"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  TimedOut,
  ShippingLabelStatus' #-}

instance FromText ShippingLabelStatus where
    parser = (ShippingLabelStatus' . mk) <$> takeText

instance ToText ShippingLabelStatus where
    toText (ShippingLabelStatus' ci) = original ci

instance Hashable     ShippingLabelStatus
instance NFData       ShippingLabelStatus
instance ToByteString ShippingLabelStatus
instance ToQuery      ShippingLabelStatus
instance ToHeader     ShippingLabelStatus

instance FromJSON ShippingLabelStatus where
    parseJSON = parseJSONText "ShippingLabelStatus"
