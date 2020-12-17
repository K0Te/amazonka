{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.BounceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.BounceType (
  BounceType (
    ..
    , ContentRejected
    , DoesNotExist
    , ExceededQuota
    , MessageTooLarge
    , TemporaryFailure
    , Undefined
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BounceType = BounceType' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern ContentRejected :: BounceType
pattern ContentRejected = BounceType' "ContentRejected"

pattern DoesNotExist :: BounceType
pattern DoesNotExist = BounceType' "DoesNotExist"

pattern ExceededQuota :: BounceType
pattern ExceededQuota = BounceType' "ExceededQuota"

pattern MessageTooLarge :: BounceType
pattern MessageTooLarge = BounceType' "MessageTooLarge"

pattern TemporaryFailure :: BounceType
pattern TemporaryFailure = BounceType' "TemporaryFailure"

pattern Undefined :: BounceType
pattern Undefined = BounceType' "Undefined"

{-# COMPLETE
  ContentRejected,
  DoesNotExist,
  ExceededQuota,
  MessageTooLarge,
  TemporaryFailure,
  Undefined,
  BounceType' #-}

instance FromText BounceType where
    parser = (BounceType' . mk) <$> takeText

instance ToText BounceType where
    toText (BounceType' ci) = original ci

instance Hashable     BounceType
instance NFData       BounceType
instance ToByteString BounceType
instance ToQuery      BounceType
instance ToHeader     BounceType
