{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.StackInstanceStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.StackInstanceStatus (
  StackInstanceStatus (
    ..
    , Current
    , Inoperable
    , Outdated
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackInstanceStatus = StackInstanceStatus' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Current :: StackInstanceStatus
pattern Current = StackInstanceStatus' "CURRENT"

pattern Inoperable :: StackInstanceStatus
pattern Inoperable = StackInstanceStatus' "INOPERABLE"

pattern Outdated :: StackInstanceStatus
pattern Outdated = StackInstanceStatus' "OUTDATED"

{-# COMPLETE
  Current,
  Inoperable,
  Outdated,
  StackInstanceStatus' #-}

instance FromText StackInstanceStatus where
    parser = (StackInstanceStatus' . mk) <$> takeText

instance ToText StackInstanceStatus where
    toText (StackInstanceStatus' ci) = original ci

instance Hashable     StackInstanceStatus
instance NFData       StackInstanceStatus
instance ToByteString StackInstanceStatus
instance ToQuery      StackInstanceStatus
instance ToHeader     StackInstanceStatus

instance FromJSON StackInstanceStatus where
    parseJSON = parseJSONText "StackInstanceStatus"
