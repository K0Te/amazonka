{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MechanicalTurk.Types.ReviewableHITStatus (
  ReviewableHITStatus (
    ..
    , Reviewable
    , Reviewing
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReviewableHITStatus = ReviewableHITStatus' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Reviewable :: ReviewableHITStatus
pattern Reviewable = ReviewableHITStatus' "Reviewable"

pattern Reviewing :: ReviewableHITStatus
pattern Reviewing = ReviewableHITStatus' "Reviewing"

{-# COMPLETE
  Reviewable,
  Reviewing,
  ReviewableHITStatus' #-}

instance FromText ReviewableHITStatus where
    parser = (ReviewableHITStatus' . mk) <$> takeText

instance ToText ReviewableHITStatus where
    toText (ReviewableHITStatus' ci) = original ci

instance Hashable     ReviewableHITStatus
instance NFData       ReviewableHITStatus
instance ToByteString ReviewableHITStatus
instance ToQuery      ReviewableHITStatus
instance ToHeader     ReviewableHITStatus

instance ToJSON ReviewableHITStatus where
    toJSON = toJSONText
