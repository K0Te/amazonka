{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DecryptionMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DecryptionMode (
  DecryptionMode (
    ..
    , DMAESCbc
    , DMAESCtr
    , DMAESGCM
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the encryption mode that you used to encrypt your input files.
data DecryptionMode = DecryptionMode' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern DMAESCbc :: DecryptionMode
pattern DMAESCbc = DecryptionMode' "AES_CBC"

pattern DMAESCtr :: DecryptionMode
pattern DMAESCtr = DecryptionMode' "AES_CTR"

pattern DMAESGCM :: DecryptionMode
pattern DMAESGCM = DecryptionMode' "AES_GCM"

{-# COMPLETE
  DMAESCbc,
  DMAESCtr,
  DMAESGCM,
  DecryptionMode' #-}

instance FromText DecryptionMode where
    parser = (DecryptionMode' . mk) <$> takeText

instance ToText DecryptionMode where
    toText (DecryptionMode' ci) = original ci

instance Hashable     DecryptionMode
instance NFData       DecryptionMode
instance ToByteString DecryptionMode
instance ToQuery      DecryptionMode
instance ToHeader     DecryptionMode

instance ToJSON DecryptionMode where
    toJSON = toJSONText

instance FromJSON DecryptionMode where
    parseJSON = parseJSONText "DecryptionMode"
