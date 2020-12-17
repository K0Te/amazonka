{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsNielsenId3
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.M2tsNielsenId3 (
  M2tsNielsenId3 (
    ..
    , MNIInsert
    , MNINone
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
data M2tsNielsenId3 = M2tsNielsenId3' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern MNIInsert :: M2tsNielsenId3
pattern MNIInsert = M2tsNielsenId3' "INSERT"

pattern MNINone :: M2tsNielsenId3
pattern MNINone = M2tsNielsenId3' "NONE"

{-# COMPLETE
  MNIInsert,
  MNINone,
  M2tsNielsenId3' #-}

instance FromText M2tsNielsenId3 where
    parser = (M2tsNielsenId3' . mk) <$> takeText

instance ToText M2tsNielsenId3 where
    toText (M2tsNielsenId3' ci) = original ci

instance Hashable     M2tsNielsenId3
instance NFData       M2tsNielsenId3
instance ToByteString M2tsNielsenId3
instance ToQuery      M2tsNielsenId3
instance ToHeader     M2tsNielsenId3

instance ToJSON M2tsNielsenId3 where
    toJSON = toJSONText

instance FromJSON M2tsNielsenId3 where
    parseJSON = parseJSONText "M2tsNielsenId3"
