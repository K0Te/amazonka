{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProjectStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.ProjectStatus (
  ProjectStatus (
    ..
    , PSCreated
    , PSCreating
    , PSDeleting
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectStatus = ProjectStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern PSCreated :: ProjectStatus
pattern PSCreated = ProjectStatus' "CREATED"

pattern PSCreating :: ProjectStatus
pattern PSCreating = ProjectStatus' "CREATING"

pattern PSDeleting :: ProjectStatus
pattern PSDeleting = ProjectStatus' "DELETING"

{-# COMPLETE
  PSCreated,
  PSCreating,
  PSDeleting,
  ProjectStatus' #-}

instance FromText ProjectStatus where
    parser = (ProjectStatus' . mk) <$> takeText

instance ToText ProjectStatus where
    toText (ProjectStatus' ci) = original ci

instance Hashable     ProjectStatus
instance NFData       ProjectStatus
instance ToByteString ProjectStatus
instance ToQuery      ProjectStatus
instance ToHeader     ProjectStatus

instance FromJSON ProjectStatus where
    parseJSON = parseJSONText "ProjectStatus"
