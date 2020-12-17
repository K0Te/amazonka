{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.VocabularyState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.VocabularyState (
  VocabularyState (
    ..
    , Failed
    , Pending
    , Ready
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VocabularyState = VocabularyState' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Failed :: VocabularyState
pattern Failed = VocabularyState' "FAILED"

pattern Pending :: VocabularyState
pattern Pending = VocabularyState' "PENDING"

pattern Ready :: VocabularyState
pattern Ready = VocabularyState' "READY"

{-# COMPLETE
  Failed,
  Pending,
  Ready,
  VocabularyState' #-}

instance FromText VocabularyState where
    parser = (VocabularyState' . mk) <$> takeText

instance ToText VocabularyState where
    toText (VocabularyState' ci) = original ci

instance Hashable     VocabularyState
instance NFData       VocabularyState
instance ToByteString VocabularyState
instance ToQuery      VocabularyState
instance ToHeader     VocabularyState

instance ToJSON VocabularyState where
    toJSON = toJSONText

instance FromJSON VocabularyState where
    parseJSON = parseJSONText "VocabularyState"
