{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.ModelStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.ModelStatus (
  ModelStatus (
    ..
    , MSCompleted
    , MSFailed
    , MSInProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelStatus = ModelStatus' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern MSCompleted :: ModelStatus
pattern MSCompleted = ModelStatus' "COMPLETED"

pattern MSFailed :: ModelStatus
pattern MSFailed = ModelStatus' "FAILED"

pattern MSInProgress :: ModelStatus
pattern MSInProgress = ModelStatus' "IN_PROGRESS"

{-# COMPLETE
  MSCompleted,
  MSFailed,
  MSInProgress,
  ModelStatus' #-}

instance FromText ModelStatus where
    parser = (ModelStatus' . mk) <$> takeText

instance ToText ModelStatus where
    toText (ModelStatus' ci) = original ci

instance Hashable     ModelStatus
instance NFData       ModelStatus
instance ToByteString ModelStatus
instance ToQuery      ModelStatus
instance ToHeader     ModelStatus

instance ToJSON ModelStatus where
    toJSON = toJSONText

instance FromJSON ModelStatus where
    parseJSON = parseJSONText "ModelStatus"
