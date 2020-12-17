{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.DataKeyPairSpec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KMS.Types.DataKeyPairSpec (
  DataKeyPairSpec (
    ..
    , DKPSEccNistP256
    , DKPSEccNistP384
    , DKPSEccNistP521
    , DKPSEccSecgP256K1
    , DKPSRsa2048
    , DKPSRsa3072
    , DKPSRsa4096
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataKeyPairSpec = DataKeyPairSpec' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern DKPSEccNistP256 :: DataKeyPairSpec
pattern DKPSEccNistP256 = DataKeyPairSpec' "ECC_NIST_P256"

pattern DKPSEccNistP384 :: DataKeyPairSpec
pattern DKPSEccNistP384 = DataKeyPairSpec' "ECC_NIST_P384"

pattern DKPSEccNistP521 :: DataKeyPairSpec
pattern DKPSEccNistP521 = DataKeyPairSpec' "ECC_NIST_P521"

pattern DKPSEccSecgP256K1 :: DataKeyPairSpec
pattern DKPSEccSecgP256K1 = DataKeyPairSpec' "ECC_SECG_P256K1"

pattern DKPSRsa2048 :: DataKeyPairSpec
pattern DKPSRsa2048 = DataKeyPairSpec' "RSA_2048"

pattern DKPSRsa3072 :: DataKeyPairSpec
pattern DKPSRsa3072 = DataKeyPairSpec' "RSA_3072"

pattern DKPSRsa4096 :: DataKeyPairSpec
pattern DKPSRsa4096 = DataKeyPairSpec' "RSA_4096"

{-# COMPLETE
  DKPSEccNistP256,
  DKPSEccNistP384,
  DKPSEccNistP521,
  DKPSEccSecgP256K1,
  DKPSRsa2048,
  DKPSRsa3072,
  DKPSRsa4096,
  DataKeyPairSpec' #-}

instance FromText DataKeyPairSpec where
    parser = (DataKeyPairSpec' . mk) <$> takeText

instance ToText DataKeyPairSpec where
    toText (DataKeyPairSpec' ci) = original ci

instance Hashable     DataKeyPairSpec
instance NFData       DataKeyPairSpec
instance ToByteString DataKeyPairSpec
instance ToQuery      DataKeyPairSpec
instance ToHeader     DataKeyPairSpec

instance ToJSON DataKeyPairSpec where
    toJSON = toJSONText

instance FromJSON DataKeyPairSpec where
    parseJSON = parseJSONText "DataKeyPairSpec"
