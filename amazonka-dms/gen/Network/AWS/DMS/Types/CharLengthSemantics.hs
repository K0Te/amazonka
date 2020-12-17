{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.CharLengthSemantics
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.CharLengthSemantics (
  CharLengthSemantics (
    ..
    , Byte
    , Char
    , Default
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CharLengthSemantics = CharLengthSemantics' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Byte :: CharLengthSemantics
pattern Byte = CharLengthSemantics' "byte"

pattern Char :: CharLengthSemantics
pattern Char = CharLengthSemantics' "char"

pattern Default :: CharLengthSemantics
pattern Default = CharLengthSemantics' "default"

{-# COMPLETE
  Byte,
  Char,
  Default,
  CharLengthSemantics' #-}

instance FromText CharLengthSemantics where
    parser = (CharLengthSemantics' . mk) <$> takeText

instance ToText CharLengthSemantics where
    toText (CharLengthSemantics' ci) = original ci

instance Hashable     CharLengthSemantics
instance NFData       CharLengthSemantics
instance ToByteString CharLengthSemantics
instance ToQuery      CharLengthSemantics
instance ToHeader     CharLengthSemantics

instance ToJSON CharLengthSemantics where
    toJSON = toJSONText

instance FromJSON CharLengthSemantics where
    parseJSON = parseJSONText "CharLengthSemantics"
