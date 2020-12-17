{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ImageStateChangeReasonCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppStream.Types.ImageStateChangeReasonCode (
  ImageStateChangeReasonCode (
    ..
    , ISCRCImageBuilderNotAvailable
    , ISCRCImageCopyFailure
    , ISCRCInternalError
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageStateChangeReasonCode = ImageStateChangeReasonCode' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern ISCRCImageBuilderNotAvailable :: ImageStateChangeReasonCode
pattern ISCRCImageBuilderNotAvailable = ImageStateChangeReasonCode' "IMAGE_BUILDER_NOT_AVAILABLE"

pattern ISCRCImageCopyFailure :: ImageStateChangeReasonCode
pattern ISCRCImageCopyFailure = ImageStateChangeReasonCode' "IMAGE_COPY_FAILURE"

pattern ISCRCInternalError :: ImageStateChangeReasonCode
pattern ISCRCInternalError = ImageStateChangeReasonCode' "INTERNAL_ERROR"

{-# COMPLETE
  ISCRCImageBuilderNotAvailable,
  ISCRCImageCopyFailure,
  ISCRCInternalError,
  ImageStateChangeReasonCode' #-}

instance FromText ImageStateChangeReasonCode where
    parser = (ImageStateChangeReasonCode' . mk) <$> takeText

instance ToText ImageStateChangeReasonCode where
    toText (ImageStateChangeReasonCode' ci) = original ci

instance Hashable     ImageStateChangeReasonCode
instance NFData       ImageStateChangeReasonCode
instance ToByteString ImageStateChangeReasonCode
instance ToQuery      ImageStateChangeReasonCode
instance ToHeader     ImageStateChangeReasonCode

instance FromJSON ImageStateChangeReasonCode where
    parseJSON = parseJSONText "ImageStateChangeReasonCode"
