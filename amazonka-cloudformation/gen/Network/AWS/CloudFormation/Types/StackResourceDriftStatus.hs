{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackResourceDriftStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackResourceDriftStatus (
  StackResourceDriftStatus (
    ..
    , SRDSDeleted
    , SRDSInSync
    , SRDSModified
    , SRDSNotChecked
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackResourceDriftStatus = StackResourceDriftStatus' (CI
                                                             Text)
                                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                                            Generic)

pattern SRDSDeleted :: StackResourceDriftStatus
pattern SRDSDeleted = StackResourceDriftStatus' "DELETED"

pattern SRDSInSync :: StackResourceDriftStatus
pattern SRDSInSync = StackResourceDriftStatus' "IN_SYNC"

pattern SRDSModified :: StackResourceDriftStatus
pattern SRDSModified = StackResourceDriftStatus' "MODIFIED"

pattern SRDSNotChecked :: StackResourceDriftStatus
pattern SRDSNotChecked = StackResourceDriftStatus' "NOT_CHECKED"

{-# COMPLETE
  SRDSDeleted,
  SRDSInSync,
  SRDSModified,
  SRDSNotChecked,
  StackResourceDriftStatus' #-}

instance FromText StackResourceDriftStatus where
    parser = (StackResourceDriftStatus' . mk) <$> takeText

instance ToText StackResourceDriftStatus where
    toText (StackResourceDriftStatus' ci) = original ci

instance Hashable     StackResourceDriftStatus
instance NFData       StackResourceDriftStatus
instance ToByteString StackResourceDriftStatus
instance ToQuery      StackResourceDriftStatus
instance ToHeader     StackResourceDriftStatus

instance FromXML StackResourceDriftStatus where
    parseXML = parseXMLText "StackResourceDriftStatus"
