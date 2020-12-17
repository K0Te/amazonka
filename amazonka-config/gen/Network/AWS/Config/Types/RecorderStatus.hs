{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RecorderStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.RecorderStatus (
  RecorderStatus (
    ..
    , RSFailure
    , RSPending
    , RSSuccess
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecorderStatus = RecorderStatus' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern RSFailure :: RecorderStatus
pattern RSFailure = RecorderStatus' "Failure"

pattern RSPending :: RecorderStatus
pattern RSPending = RecorderStatus' "Pending"

pattern RSSuccess :: RecorderStatus
pattern RSSuccess = RecorderStatus' "Success"

{-# COMPLETE
  RSFailure,
  RSPending,
  RSSuccess,
  RecorderStatus' #-}

instance FromText RecorderStatus where
    parser = (RecorderStatus' . mk) <$> takeText

instance ToText RecorderStatus where
    toText (RecorderStatus' ci) = original ci

instance Hashable     RecorderStatus
instance NFData       RecorderStatus
instance ToByteString RecorderStatus
instance ToQuery      RecorderStatus
instance ToHeader     RecorderStatus

instance FromJSON RecorderStatus where
    parseJSON = parseJSONText "RecorderStatus"
