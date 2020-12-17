{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus (
  LifecyclePolicyPreviewStatus (
    ..
    , LPPSComplete
    , LPPSExpired
    , LPPSFailed
    , LPPSInProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LifecyclePolicyPreviewStatus = LifecyclePolicyPreviewStatus' (CI
                                                                     Text)
                                      deriving (Eq, Ord, Read, Show, Data,
                                                Typeable, Generic)

pattern LPPSComplete :: LifecyclePolicyPreviewStatus
pattern LPPSComplete = LifecyclePolicyPreviewStatus' "COMPLETE"

pattern LPPSExpired :: LifecyclePolicyPreviewStatus
pattern LPPSExpired = LifecyclePolicyPreviewStatus' "EXPIRED"

pattern LPPSFailed :: LifecyclePolicyPreviewStatus
pattern LPPSFailed = LifecyclePolicyPreviewStatus' "FAILED"

pattern LPPSInProgress :: LifecyclePolicyPreviewStatus
pattern LPPSInProgress = LifecyclePolicyPreviewStatus' "IN_PROGRESS"

{-# COMPLETE
  LPPSComplete,
  LPPSExpired,
  LPPSFailed,
  LPPSInProgress,
  LifecyclePolicyPreviewStatus' #-}

instance FromText LifecyclePolicyPreviewStatus where
    parser = (LifecyclePolicyPreviewStatus' . mk) <$> takeText

instance ToText LifecyclePolicyPreviewStatus where
    toText (LifecyclePolicyPreviewStatus' ci) = original ci

instance Hashable     LifecyclePolicyPreviewStatus
instance NFData       LifecyclePolicyPreviewStatus
instance ToByteString LifecyclePolicyPreviewStatus
instance ToQuery      LifecyclePolicyPreviewStatus
instance ToHeader     LifecyclePolicyPreviewStatus

instance FromJSON LifecyclePolicyPreviewStatus where
    parseJSON = parseJSONText "LifecyclePolicyPreviewStatus"
