{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.VerificationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.VerificationStatus (
  VerificationStatus (
    ..
    , VSFailed
    , VSNotStarted
    , VSPending
    , VSSuccess
    , VSTemporaryFailure
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VerificationStatus = VerificationStatus' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern VSFailed :: VerificationStatus
pattern VSFailed = VerificationStatus' "Failed"

pattern VSNotStarted :: VerificationStatus
pattern VSNotStarted = VerificationStatus' "NotStarted"

pattern VSPending :: VerificationStatus
pattern VSPending = VerificationStatus' "Pending"

pattern VSSuccess :: VerificationStatus
pattern VSSuccess = VerificationStatus' "Success"

pattern VSTemporaryFailure :: VerificationStatus
pattern VSTemporaryFailure = VerificationStatus' "TemporaryFailure"

{-# COMPLETE
  VSFailed,
  VSNotStarted,
  VSPending,
  VSSuccess,
  VSTemporaryFailure,
  VerificationStatus' #-}

instance FromText VerificationStatus where
    parser = (VerificationStatus' . mk) <$> takeText

instance ToText VerificationStatus where
    toText (VerificationStatus' ci) = original ci

instance Hashable     VerificationStatus
instance NFData       VerificationStatus
instance ToByteString VerificationStatus
instance ToQuery      VerificationStatus
instance ToHeader     VerificationStatus

instance FromXML VerificationStatus where
    parseXML = parseXMLText "VerificationStatus"
