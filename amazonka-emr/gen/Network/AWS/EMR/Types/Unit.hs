{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.Unit
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EMR.Types.Unit (
  Unit (
    ..
    , Bits
    , BitsPerSecond
    , Bytes
    , BytesPerSecond
    , Count
    , CountPerSecond
    , GigaBits
    , GigaBitsPerSecond
    , GigaBytes
    , GigaBytesPerSecond
    , KiloBits
    , KiloBitsPerSecond
    , KiloBytes
    , KiloBytesPerSecond
    , MegaBits
    , MegaBitsPerSecond
    , MegaBytes
    , MegaBytesPerSecond
    , MicroSeconds
    , MilliSeconds
    , None
    , Percent
    , Seconds
    , TeraBits
    , TeraBitsPerSecond
    , TeraBytes
    , TeraBytesPerSecond
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Unit = Unit' (CI Text)
              deriving (Eq, Ord, Read, Show, Data, Typeable,
                        Generic)

pattern Bits :: Unit
pattern Bits = Unit' "BITS"

pattern BitsPerSecond :: Unit
pattern BitsPerSecond = Unit' "BITS_PER_SECOND"

pattern Bytes :: Unit
pattern Bytes = Unit' "BYTES"

pattern BytesPerSecond :: Unit
pattern BytesPerSecond = Unit' "BYTES_PER_SECOND"

pattern Count :: Unit
pattern Count = Unit' "COUNT"

pattern CountPerSecond :: Unit
pattern CountPerSecond = Unit' "COUNT_PER_SECOND"

pattern GigaBits :: Unit
pattern GigaBits = Unit' "GIGA_BITS"

pattern GigaBitsPerSecond :: Unit
pattern GigaBitsPerSecond = Unit' "GIGA_BITS_PER_SECOND"

pattern GigaBytes :: Unit
pattern GigaBytes = Unit' "GIGA_BYTES"

pattern GigaBytesPerSecond :: Unit
pattern GigaBytesPerSecond = Unit' "GIGA_BYTES_PER_SECOND"

pattern KiloBits :: Unit
pattern KiloBits = Unit' "KILO_BITS"

pattern KiloBitsPerSecond :: Unit
pattern KiloBitsPerSecond = Unit' "KILO_BITS_PER_SECOND"

pattern KiloBytes :: Unit
pattern KiloBytes = Unit' "KILO_BYTES"

pattern KiloBytesPerSecond :: Unit
pattern KiloBytesPerSecond = Unit' "KILO_BYTES_PER_SECOND"

pattern MegaBits :: Unit
pattern MegaBits = Unit' "MEGA_BITS"

pattern MegaBitsPerSecond :: Unit
pattern MegaBitsPerSecond = Unit' "MEGA_BITS_PER_SECOND"

pattern MegaBytes :: Unit
pattern MegaBytes = Unit' "MEGA_BYTES"

pattern MegaBytesPerSecond :: Unit
pattern MegaBytesPerSecond = Unit' "MEGA_BYTES_PER_SECOND"

pattern MicroSeconds :: Unit
pattern MicroSeconds = Unit' "MICRO_SECONDS"

pattern MilliSeconds :: Unit
pattern MilliSeconds = Unit' "MILLI_SECONDS"

pattern None :: Unit
pattern None = Unit' "NONE"

pattern Percent :: Unit
pattern Percent = Unit' "PERCENT"

pattern Seconds :: Unit
pattern Seconds = Unit' "SECONDS"

pattern TeraBits :: Unit
pattern TeraBits = Unit' "TERA_BITS"

pattern TeraBitsPerSecond :: Unit
pattern TeraBitsPerSecond = Unit' "TERA_BITS_PER_SECOND"

pattern TeraBytes :: Unit
pattern TeraBytes = Unit' "TERA_BYTES"

pattern TeraBytesPerSecond :: Unit
pattern TeraBytesPerSecond = Unit' "TERA_BYTES_PER_SECOND"

{-# COMPLETE
  Bits,
  BitsPerSecond,
  Bytes,
  BytesPerSecond,
  Count,
  CountPerSecond,
  GigaBits,
  GigaBitsPerSecond,
  GigaBytes,
  GigaBytesPerSecond,
  KiloBits,
  KiloBitsPerSecond,
  KiloBytes,
  KiloBytesPerSecond,
  MegaBits,
  MegaBitsPerSecond,
  MegaBytes,
  MegaBytesPerSecond,
  MicroSeconds,
  MilliSeconds,
  None,
  Percent,
  Seconds,
  TeraBits,
  TeraBitsPerSecond,
  TeraBytes,
  TeraBytesPerSecond,
  Unit' #-}

instance FromText Unit where
    parser = (Unit' . mk) <$> takeText

instance ToText Unit where
    toText (Unit' ci) = original ci

instance Hashable     Unit
instance NFData       Unit
instance ToByteString Unit
instance ToQuery      Unit
instance ToHeader     Unit

instance ToJSON Unit where
    toJSON = toJSONText

instance FromJSON Unit where
    parseJSON = parseJSONText "Unit"
