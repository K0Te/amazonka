{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.ConflictHandlerType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppSync.Types.ConflictHandlerType (
  ConflictHandlerType (
    ..
    , CHTAutomerge
    , CHTLambda
    , CHTNone
    , CHTOptimisticConcurrency
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConflictHandlerType = ConflictHandlerType' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern CHTAutomerge :: ConflictHandlerType
pattern CHTAutomerge = ConflictHandlerType' "AUTOMERGE"

pattern CHTLambda :: ConflictHandlerType
pattern CHTLambda = ConflictHandlerType' "LAMBDA"

pattern CHTNone :: ConflictHandlerType
pattern CHTNone = ConflictHandlerType' "NONE"

pattern CHTOptimisticConcurrency :: ConflictHandlerType
pattern CHTOptimisticConcurrency = ConflictHandlerType' "OPTIMISTIC_CONCURRENCY"

{-# COMPLETE
  CHTAutomerge,
  CHTLambda,
  CHTNone,
  CHTOptimisticConcurrency,
  ConflictHandlerType' #-}

instance FromText ConflictHandlerType where
    parser = (ConflictHandlerType' . mk) <$> takeText

instance ToText ConflictHandlerType where
    toText (ConflictHandlerType' ci) = original ci

instance Hashable     ConflictHandlerType
instance NFData       ConflictHandlerType
instance ToByteString ConflictHandlerType
instance ToQuery      ConflictHandlerType
instance ToHeader     ConflictHandlerType

instance ToJSON ConflictHandlerType where
    toJSON = toJSONText

instance FromJSON ConflictHandlerType where
    parseJSON = parseJSONText "ConflictHandlerType"
