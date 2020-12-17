{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackSetOperationResultStatus (
  StackSetOperationResultStatus (
    ..
    , Cancelled
    , Failed
    , Pending
    , Running
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetOperationResultStatus = StackSetOperationResultStatus' (CI
                                                                       Text)
                                       deriving (Eq, Ord, Read, Show, Data,
                                                 Typeable, Generic)

pattern Cancelled :: StackSetOperationResultStatus
pattern Cancelled = StackSetOperationResultStatus' "CANCELLED"

pattern Failed :: StackSetOperationResultStatus
pattern Failed = StackSetOperationResultStatus' "FAILED"

pattern Pending :: StackSetOperationResultStatus
pattern Pending = StackSetOperationResultStatus' "PENDING"

pattern Running :: StackSetOperationResultStatus
pattern Running = StackSetOperationResultStatus' "RUNNING"

pattern Succeeded :: StackSetOperationResultStatus
pattern Succeeded = StackSetOperationResultStatus' "SUCCEEDED"

{-# COMPLETE
  Cancelled,
  Failed,
  Pending,
  Running,
  Succeeded,
  StackSetOperationResultStatus' #-}

instance FromText StackSetOperationResultStatus where
    parser = (StackSetOperationResultStatus' . mk) <$> takeText

instance ToText StackSetOperationResultStatus where
    toText (StackSetOperationResultStatus' ci) = original ci

instance Hashable     StackSetOperationResultStatus
instance NFData       StackSetOperationResultStatus
instance ToByteString StackSetOperationResultStatus
instance ToQuery      StackSetOperationResultStatus
instance ToHeader     StackSetOperationResultStatus

instance FromXML StackSetOperationResultStatus where
    parseXML = parseXMLText "StackSetOperationResultStatus"
