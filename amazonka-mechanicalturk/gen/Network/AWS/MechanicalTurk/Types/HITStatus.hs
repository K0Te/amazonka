{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.HITStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MechanicalTurk.Types.HITStatus (
  HITStatus (
    ..
    , HITSAssignable
    , HITSDisposed
    , HITSReviewable
    , HITSReviewing
    , HITSUnassignable
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HITStatus = HITStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern HITSAssignable :: HITStatus
pattern HITSAssignable = HITStatus' "Assignable"

pattern HITSDisposed :: HITStatus
pattern HITSDisposed = HITStatus' "Disposed"

pattern HITSReviewable :: HITStatus
pattern HITSReviewable = HITStatus' "Reviewable"

pattern HITSReviewing :: HITStatus
pattern HITSReviewing = HITStatus' "Reviewing"

pattern HITSUnassignable :: HITStatus
pattern HITSUnassignable = HITStatus' "Unassignable"

{-# COMPLETE
  HITSAssignable,
  HITSDisposed,
  HITSReviewable,
  HITSReviewing,
  HITSUnassignable,
  HITStatus' #-}

instance FromText HITStatus where
    parser = (HITStatus' . mk) <$> takeText

instance ToText HITStatus where
    toText (HITStatus' ci) = original ci

instance Hashable     HITStatus
instance NFData       HITStatus
instance ToByteString HITStatus
instance ToQuery      HITStatus
instance ToHeader     HITStatus

instance FromJSON HITStatus where
    parseJSON = parseJSONText "HITStatus"
