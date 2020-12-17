{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImageRequiredTenancy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkSpaces.Types.WorkspaceImageRequiredTenancy (
  WorkspaceImageRequiredTenancy (
    ..
    , WIRTDedicated
    , WIRTDefault
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkspaceImageRequiredTenancy = WorkspaceImageRequiredTenancy' (CI
                                                                       Text)
                                       deriving (Eq, Ord, Read, Show, Data,
                                                 Typeable, Generic)

pattern WIRTDedicated :: WorkspaceImageRequiredTenancy
pattern WIRTDedicated = WorkspaceImageRequiredTenancy' "DEDICATED"

pattern WIRTDefault :: WorkspaceImageRequiredTenancy
pattern WIRTDefault = WorkspaceImageRequiredTenancy' "DEFAULT"

{-# COMPLETE
  WIRTDedicated,
  WIRTDefault,
  WorkspaceImageRequiredTenancy' #-}

instance FromText WorkspaceImageRequiredTenancy where
    parser = (WorkspaceImageRequiredTenancy' . mk) <$> takeText

instance ToText WorkspaceImageRequiredTenancy where
    toText (WorkspaceImageRequiredTenancy' ci) = original ci

instance Hashable     WorkspaceImageRequiredTenancy
instance NFData       WorkspaceImageRequiredTenancy
instance ToByteString WorkspaceImageRequiredTenancy
instance ToQuery      WorkspaceImageRequiredTenancy
instance ToHeader     WorkspaceImageRequiredTenancy

instance FromJSON WorkspaceImageRequiredTenancy where
    parseJSON = parseJSONText "WorkspaceImageRequiredTenancy"
