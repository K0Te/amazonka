{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ImageState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppStream.Types.ImageState (
  ImageState (
    ..
    , ISAvailable
    , ISCopying
    , ISDeleting
    , ISFailed
    , ISPending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageState = ImageState' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern ISAvailable :: ImageState
pattern ISAvailable = ImageState' "AVAILABLE"

pattern ISCopying :: ImageState
pattern ISCopying = ImageState' "COPYING"

pattern ISDeleting :: ImageState
pattern ISDeleting = ImageState' "DELETING"

pattern ISFailed :: ImageState
pattern ISFailed = ImageState' "FAILED"

pattern ISPending :: ImageState
pattern ISPending = ImageState' "PENDING"

{-# COMPLETE
  ISAvailable,
  ISCopying,
  ISDeleting,
  ISFailed,
  ISPending,
  ImageState' #-}

instance FromText ImageState where
    parser = (ImageState' . mk) <$> takeText

instance ToText ImageState where
    toText (ImageState' ci) = original ci

instance Hashable     ImageState
instance NFData       ImageState
instance ToByteString ImageState
instance ToQuery      ImageState
instance ToHeader     ImageState

instance FromJSON ImageState where
    parseJSON = parseJSONText "ImageState"
