{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentRunNotificationSNSStatusCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Inspector.Types.AssessmentRunNotificationSNSStatusCode (
  AssessmentRunNotificationSNSStatusCode (
    ..
    , AccessDenied
    , InternalError
    , Success
    , TopicDoesNotExist
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssessmentRunNotificationSNSStatusCode = AssessmentRunNotificationSNSStatusCode' (CI
                                                                                         Text)
                                                deriving (Eq, Ord, Read, Show,
                                                          Data, Typeable,
                                                          Generic)

pattern AccessDenied :: AssessmentRunNotificationSNSStatusCode
pattern AccessDenied = AssessmentRunNotificationSNSStatusCode' "ACCESS_DENIED"

pattern InternalError :: AssessmentRunNotificationSNSStatusCode
pattern InternalError = AssessmentRunNotificationSNSStatusCode' "INTERNAL_ERROR"

pattern Success :: AssessmentRunNotificationSNSStatusCode
pattern Success = AssessmentRunNotificationSNSStatusCode' "SUCCESS"

pattern TopicDoesNotExist :: AssessmentRunNotificationSNSStatusCode
pattern TopicDoesNotExist = AssessmentRunNotificationSNSStatusCode' "TOPIC_DOES_NOT_EXIST"

{-# COMPLETE
  AccessDenied,
  InternalError,
  Success,
  TopicDoesNotExist,
  AssessmentRunNotificationSNSStatusCode' #-}

instance FromText AssessmentRunNotificationSNSStatusCode where
    parser = (AssessmentRunNotificationSNSStatusCode' . mk) <$> takeText

instance ToText AssessmentRunNotificationSNSStatusCode where
    toText (AssessmentRunNotificationSNSStatusCode' ci) = original ci

instance Hashable     AssessmentRunNotificationSNSStatusCode
instance NFData       AssessmentRunNotificationSNSStatusCode
instance ToByteString AssessmentRunNotificationSNSStatusCode
instance ToQuery      AssessmentRunNotificationSNSStatusCode
instance ToHeader     AssessmentRunNotificationSNSStatusCode

instance FromJSON AssessmentRunNotificationSNSStatusCode where
    parseJSON = parseJSONText "AssessmentRunNotificationSNSStatusCode"
