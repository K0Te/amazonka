{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.PersonTrackingSortBy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.PersonTrackingSortBy (
  PersonTrackingSortBy (
    ..
    , Index
    , Timestamp
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PersonTrackingSortBy = PersonTrackingSortBy' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern Index :: PersonTrackingSortBy
pattern Index = PersonTrackingSortBy' "INDEX"

pattern Timestamp :: PersonTrackingSortBy
pattern Timestamp = PersonTrackingSortBy' "TIMESTAMP"

{-# COMPLETE
  Index,
  Timestamp,
  PersonTrackingSortBy' #-}

instance FromText PersonTrackingSortBy where
    parser = (PersonTrackingSortBy' . mk) <$> takeText

instance ToText PersonTrackingSortBy where
    toText (PersonTrackingSortBy' ci) = original ci

instance Hashable     PersonTrackingSortBy
instance NFData       PersonTrackingSortBy
instance ToByteString PersonTrackingSortBy
instance ToQuery      PersonTrackingSortBy
instance ToHeader     PersonTrackingSortBy

instance ToJSON PersonTrackingSortBy where
    toJSON = toJSONText
