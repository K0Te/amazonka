{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ImageBuilderStateChangeReasonCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppStream.Types.ImageBuilderStateChangeReasonCode (
  ImageBuilderStateChangeReasonCode (
    ..
    , ImageUnavailable
    , InternalError
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageBuilderStateChangeReasonCode = ImageBuilderStateChangeReasonCode' (CI
                                                                               Text)
                                           deriving (Eq, Ord, Read, Show, Data,
                                                     Typeable, Generic)

pattern ImageUnavailable :: ImageBuilderStateChangeReasonCode
pattern ImageUnavailable = ImageBuilderStateChangeReasonCode' "IMAGE_UNAVAILABLE"

pattern InternalError :: ImageBuilderStateChangeReasonCode
pattern InternalError = ImageBuilderStateChangeReasonCode' "INTERNAL_ERROR"

{-# COMPLETE
  ImageUnavailable,
  InternalError,
  ImageBuilderStateChangeReasonCode' #-}

instance FromText ImageBuilderStateChangeReasonCode where
    parser = (ImageBuilderStateChangeReasonCode' . mk) <$> takeText

instance ToText ImageBuilderStateChangeReasonCode where
    toText (ImageBuilderStateChangeReasonCode' ci) = original ci

instance Hashable     ImageBuilderStateChangeReasonCode
instance NFData       ImageBuilderStateChangeReasonCode
instance ToByteString ImageBuilderStateChangeReasonCode
instance ToQuery      ImageBuilderStateChangeReasonCode
instance ToHeader     ImageBuilderStateChangeReasonCode

instance FromJSON ImageBuilderStateChangeReasonCode where
    parseJSON = parseJSONText "ImageBuilderStateChangeReasonCode"
