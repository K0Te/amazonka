{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ValidationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ValidationStatus (
  ValidationStatus (
    ..
    , Failed
    , InProgress
    , Pending
    , ReadyForValidation
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ValidationStatus = ValidationStatus' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Failed :: ValidationStatus
pattern Failed = ValidationStatus' "FAILED"

pattern InProgress :: ValidationStatus
pattern InProgress = ValidationStatus' "IN_PROGRESS"

pattern Pending :: ValidationStatus
pattern Pending = ValidationStatus' "PENDING"

pattern ReadyForValidation :: ValidationStatus
pattern ReadyForValidation = ValidationStatus' "READY_FOR_VALIDATION"

pattern Succeeded :: ValidationStatus
pattern Succeeded = ValidationStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Pending,
  ReadyForValidation,
  Succeeded,
  ValidationStatus' #-}

instance FromText ValidationStatus where
    parser = (ValidationStatus' . mk) <$> takeText

instance ToText ValidationStatus where
    toText (ValidationStatus' ci) = original ci

instance Hashable     ValidationStatus
instance NFData       ValidationStatus
instance ToByteString ValidationStatus
instance ToQuery      ValidationStatus
instance ToHeader     ValidationStatus

instance ToJSON ValidationStatus where
    toJSON = toJSONText

instance FromJSON ValidationStatus where
    parseJSON = parseJSONText "ValidationStatus"
