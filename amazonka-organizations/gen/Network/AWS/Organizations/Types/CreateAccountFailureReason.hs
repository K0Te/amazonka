{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.CreateAccountFailureReason
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Organizations.Types.CreateAccountFailureReason (
  CreateAccountFailureReason (
    ..
    , AccountLimitExceeded
    , ConcurrentAccountModification
    , EmailAlreadyExists
    , GovcloudAccountAlreadyExists
    , InternalFailure
    , InvalidAddress
    , InvalidEmail
    , MissingBusinessValidation
    , MissingPaymentInstrument
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CreateAccountFailureReason = CreateAccountFailureReason' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern AccountLimitExceeded :: CreateAccountFailureReason
pattern AccountLimitExceeded = CreateAccountFailureReason' "ACCOUNT_LIMIT_EXCEEDED"

pattern ConcurrentAccountModification :: CreateAccountFailureReason
pattern ConcurrentAccountModification = CreateAccountFailureReason' "CONCURRENT_ACCOUNT_MODIFICATION"

pattern EmailAlreadyExists :: CreateAccountFailureReason
pattern EmailAlreadyExists = CreateAccountFailureReason' "EMAIL_ALREADY_EXISTS"

pattern GovcloudAccountAlreadyExists :: CreateAccountFailureReason
pattern GovcloudAccountAlreadyExists = CreateAccountFailureReason' "GOVCLOUD_ACCOUNT_ALREADY_EXISTS"

pattern InternalFailure :: CreateAccountFailureReason
pattern InternalFailure = CreateAccountFailureReason' "INTERNAL_FAILURE"

pattern InvalidAddress :: CreateAccountFailureReason
pattern InvalidAddress = CreateAccountFailureReason' "INVALID_ADDRESS"

pattern InvalidEmail :: CreateAccountFailureReason
pattern InvalidEmail = CreateAccountFailureReason' "INVALID_EMAIL"

pattern MissingBusinessValidation :: CreateAccountFailureReason
pattern MissingBusinessValidation = CreateAccountFailureReason' "MISSING_BUSINESS_VALIDATION"

pattern MissingPaymentInstrument :: CreateAccountFailureReason
pattern MissingPaymentInstrument = CreateAccountFailureReason' "MISSING_PAYMENT_INSTRUMENT"

{-# COMPLETE
  AccountLimitExceeded,
  ConcurrentAccountModification,
  EmailAlreadyExists,
  GovcloudAccountAlreadyExists,
  InternalFailure,
  InvalidAddress,
  InvalidEmail,
  MissingBusinessValidation,
  MissingPaymentInstrument,
  CreateAccountFailureReason' #-}

instance FromText CreateAccountFailureReason where
    parser = (CreateAccountFailureReason' . mk) <$> takeText

instance ToText CreateAccountFailureReason where
    toText (CreateAccountFailureReason' ci) = original ci

instance Hashable     CreateAccountFailureReason
instance NFData       CreateAccountFailureReason
instance ToByteString CreateAccountFailureReason
instance ToQuery      CreateAccountFailureReason
instance ToHeader     CreateAccountFailureReason

instance FromJSON CreateAccountFailureReason where
    parseJSON = parseJSONText "CreateAccountFailureReason"
