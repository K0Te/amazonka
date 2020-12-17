{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.EncryptionStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.XRay.Types.EncryptionStatus (
  EncryptionStatus (
    ..
    , Active
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionStatus = EncryptionStatus' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Active :: EncryptionStatus
pattern Active = EncryptionStatus' "ACTIVE"

pattern Updating :: EncryptionStatus
pattern Updating = EncryptionStatus' "UPDATING"

{-# COMPLETE
  Active,
  Updating,
  EncryptionStatus' #-}

instance FromText EncryptionStatus where
    parser = (EncryptionStatus' . mk) <$> takeText

instance ToText EncryptionStatus where
    toText (EncryptionStatus' ci) = original ci

instance Hashable     EncryptionStatus
instance NFData       EncryptionStatus
instance ToByteString EncryptionStatus
instance ToQuery      EncryptionStatus
instance ToHeader     EncryptionStatus

instance FromJSON EncryptionStatus where
    parseJSON = parseJSONText "EncryptionStatus"
