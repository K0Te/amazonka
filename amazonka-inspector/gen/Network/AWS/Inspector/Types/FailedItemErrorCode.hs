{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.FailedItemErrorCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Inspector.Types.FailedItemErrorCode (
  FailedItemErrorCode (
    ..
    , FIECAccessDenied
    , FIECDuplicateARN
    , FIECInternalError
    , FIECInvalidARN
    , FIECItemDoesNotExist
    , FIECLimitExceeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FailedItemErrorCode = FailedItemErrorCode' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern FIECAccessDenied :: FailedItemErrorCode
pattern FIECAccessDenied = FailedItemErrorCode' "ACCESS_DENIED"

pattern FIECDuplicateARN :: FailedItemErrorCode
pattern FIECDuplicateARN = FailedItemErrorCode' "DUPLICATE_ARN"

pattern FIECInternalError :: FailedItemErrorCode
pattern FIECInternalError = FailedItemErrorCode' "INTERNAL_ERROR"

pattern FIECInvalidARN :: FailedItemErrorCode
pattern FIECInvalidARN = FailedItemErrorCode' "INVALID_ARN"

pattern FIECItemDoesNotExist :: FailedItemErrorCode
pattern FIECItemDoesNotExist = FailedItemErrorCode' "ITEM_DOES_NOT_EXIST"

pattern FIECLimitExceeded :: FailedItemErrorCode
pattern FIECLimitExceeded = FailedItemErrorCode' "LIMIT_EXCEEDED"

{-# COMPLETE
  FIECAccessDenied,
  FIECDuplicateARN,
  FIECInternalError,
  FIECInvalidARN,
  FIECItemDoesNotExist,
  FIECLimitExceeded,
  FailedItemErrorCode' #-}

instance FromText FailedItemErrorCode where
    parser = (FailedItemErrorCode' . mk) <$> takeText

instance ToText FailedItemErrorCode where
    toText (FailedItemErrorCode' ci) = original ci

instance Hashable     FailedItemErrorCode
instance NFData       FailedItemErrorCode
instance ToByteString FailedItemErrorCode
instance ToQuery      FailedItemErrorCode
instance ToHeader     FailedItemErrorCode

instance FromJSON FailedItemErrorCode where
    parseJSON = parseJSONText "FailedItemErrorCode"
