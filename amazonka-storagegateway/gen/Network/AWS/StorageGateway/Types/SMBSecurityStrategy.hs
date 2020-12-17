{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.SMBSecurityStrategy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StorageGateway.Types.SMBSecurityStrategy (
  SMBSecurityStrategy (
    ..
    , SMBSSClientSpecified
    , SMBSSMandatoryEncryption
    , SMBSSMandatorySigning
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SMBSecurityStrategy = SMBSecurityStrategy' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern SMBSSClientSpecified :: SMBSecurityStrategy
pattern SMBSSClientSpecified = SMBSecurityStrategy' "ClientSpecified"

pattern SMBSSMandatoryEncryption :: SMBSecurityStrategy
pattern SMBSSMandatoryEncryption = SMBSecurityStrategy' "MandatoryEncryption"

pattern SMBSSMandatorySigning :: SMBSecurityStrategy
pattern SMBSSMandatorySigning = SMBSecurityStrategy' "MandatorySigning"

{-# COMPLETE
  SMBSSClientSpecified,
  SMBSSMandatoryEncryption,
  SMBSSMandatorySigning,
  SMBSecurityStrategy' #-}

instance FromText SMBSecurityStrategy where
    parser = (SMBSecurityStrategy' . mk) <$> takeText

instance ToText SMBSecurityStrategy where
    toText (SMBSecurityStrategy' ci) = original ci

instance Hashable     SMBSecurityStrategy
instance NFData       SMBSecurityStrategy
instance ToByteString SMBSecurityStrategy
instance ToQuery      SMBSecurityStrategy
instance ToHeader     SMBSecurityStrategy

instance ToJSON SMBSecurityStrategy where
    toJSON = toJSONText

instance FromJSON SMBSecurityStrategy where
    parseJSON = parseJSONText "SMBSecurityStrategy"
