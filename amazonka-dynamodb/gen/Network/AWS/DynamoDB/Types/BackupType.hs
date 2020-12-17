{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.BackupType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.BackupType (
  BackupType (
    ..
    , AWSBackup
    , System
    , User
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupType = BackupType' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern AWSBackup :: BackupType
pattern AWSBackup = BackupType' "AWS_BACKUP"

pattern System :: BackupType
pattern System = BackupType' "SYSTEM"

pattern User :: BackupType
pattern User = BackupType' "USER"

{-# COMPLETE
  AWSBackup,
  System,
  User,
  BackupType' #-}

instance FromText BackupType where
    parser = (BackupType' . mk) <$> takeText

instance ToText BackupType where
    toText (BackupType' ci) = original ci

instance Hashable     BackupType
instance NFData       BackupType
instance ToByteString BackupType
instance ToQuery      BackupType
instance ToHeader     BackupType

instance FromJSON BackupType where
    parseJSON = parseJSONText "BackupType"
