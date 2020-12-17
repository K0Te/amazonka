{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsEncryptionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsEncryptionType (
  HlsEncryptionType (
    ..
    , HETAES128
    , HETSampleAES
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
data HlsEncryptionType = HlsEncryptionType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern HETAES128 :: HlsEncryptionType
pattern HETAES128 = HlsEncryptionType' "AES128"

pattern HETSampleAES :: HlsEncryptionType
pattern HETSampleAES = HlsEncryptionType' "SAMPLE_AES"

{-# COMPLETE
  HETAES128,
  HETSampleAES,
  HlsEncryptionType' #-}

instance FromText HlsEncryptionType where
    parser = (HlsEncryptionType' . mk) <$> takeText

instance ToText HlsEncryptionType where
    toText (HlsEncryptionType' ci) = original ci

instance Hashable     HlsEncryptionType
instance NFData       HlsEncryptionType
instance ToByteString HlsEncryptionType
instance ToQuery      HlsEncryptionType
instance ToHeader     HlsEncryptionType

instance ToJSON HlsEncryptionType where
    toJSON = toJSONText

instance FromJSON HlsEncryptionType where
    parseJSON = parseJSONText "HlsEncryptionType"
