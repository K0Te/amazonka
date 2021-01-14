{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ActionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Budgets.Types.ActionType (
  ActionType (
    ..
    , ApplyIAMPolicy
    , ApplyScpPolicy
    , RunSsmDocuments
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionType = ActionType' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern ApplyIAMPolicy :: ActionType
pattern ApplyIAMPolicy = ActionType' "APPLY_IAM_POLICY"

pattern ApplyScpPolicy :: ActionType
pattern ApplyScpPolicy = ActionType' "APPLY_SCP_POLICY"

pattern RunSsmDocuments :: ActionType
pattern RunSsmDocuments = ActionType' "RUN_SSM_DOCUMENTS"

{-# COMPLETE
  ApplyIAMPolicy,
  ApplyScpPolicy,
  RunSsmDocuments,
  ActionType' #-}

instance FromText ActionType where
    parser = (ActionType' . mk) <$> takeText

instance ToText ActionType where
    toText (ActionType' ci) = original ci

instance Hashable     ActionType
instance NFData       ActionType
instance ToByteString ActionType
instance ToQuery      ActionType
instance ToHeader     ActionType

instance ToJSON ActionType where
    toJSON = toJSONText

instance FromJSON ActionType where
    parseJSON = parseJSONText "ActionType"