{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LastUpdateStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.LastUpdateStatus (
  LastUpdateStatus (
    ..
    , LUSFailed
    , LUSInProgress
    , LUSSuccessful
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LastUpdateStatus = LastUpdateStatus' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern LUSFailed :: LastUpdateStatus
pattern LUSFailed = LastUpdateStatus' "Failed"

pattern LUSInProgress :: LastUpdateStatus
pattern LUSInProgress = LastUpdateStatus' "InProgress"

pattern LUSSuccessful :: LastUpdateStatus
pattern LUSSuccessful = LastUpdateStatus' "Successful"

{-# COMPLETE
  LUSFailed,
  LUSInProgress,
  LUSSuccessful,
  LastUpdateStatus' #-}

instance FromText LastUpdateStatus where
    parser = (LastUpdateStatus' . mk) <$> takeText

instance ToText LastUpdateStatus where
    toText (LastUpdateStatus' ci) = original ci

instance Hashable     LastUpdateStatus
instance NFData       LastUpdateStatus
instance ToByteString LastUpdateStatus
instance ToQuery      LastUpdateStatus
instance ToHeader     LastUpdateStatus

instance FromJSON LastUpdateStatus where
    parseJSON = parseJSONText "LastUpdateStatus"
