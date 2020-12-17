{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.DecisionTaskTimeoutType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.DecisionTaskTimeoutType (
  DecisionTaskTimeoutType (
    ..
    , StartToClose
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DecisionTaskTimeoutType = DecisionTaskTimeoutType' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern StartToClose :: DecisionTaskTimeoutType
pattern StartToClose = DecisionTaskTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  StartToClose,
  DecisionTaskTimeoutType' #-}

instance FromText DecisionTaskTimeoutType where
    parser = (DecisionTaskTimeoutType' . mk) <$> takeText

instance ToText DecisionTaskTimeoutType where
    toText (DecisionTaskTimeoutType' ci) = original ci

instance Hashable     DecisionTaskTimeoutType
instance NFData       DecisionTaskTimeoutType
instance ToByteString DecisionTaskTimeoutType
instance ToQuery      DecisionTaskTimeoutType
instance ToHeader     DecisionTaskTimeoutType

instance FromJSON DecisionTaskTimeoutType where
    parseJSON = parseJSONText "DecisionTaskTimeoutType"
