{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildPhaseType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.BuildPhaseType (
  BuildPhaseType (
    ..
    , BPTBuild
    , BPTCompleted
    , BPTDownloadSource
    , BPTFinalizing
    , BPTInstall
    , BPTPostBuild
    , BPTPreBuild
    , BPTProvisioning
    , BPTQueued
    , BPTSubmitted
    , BPTUploadArtifacts
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BuildPhaseType = BuildPhaseType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern BPTBuild :: BuildPhaseType
pattern BPTBuild = BuildPhaseType' "BUILD"

pattern BPTCompleted :: BuildPhaseType
pattern BPTCompleted = BuildPhaseType' "COMPLETED"

pattern BPTDownloadSource :: BuildPhaseType
pattern BPTDownloadSource = BuildPhaseType' "DOWNLOAD_SOURCE"

pattern BPTFinalizing :: BuildPhaseType
pattern BPTFinalizing = BuildPhaseType' "FINALIZING"

pattern BPTInstall :: BuildPhaseType
pattern BPTInstall = BuildPhaseType' "INSTALL"

pattern BPTPostBuild :: BuildPhaseType
pattern BPTPostBuild = BuildPhaseType' "POST_BUILD"

pattern BPTPreBuild :: BuildPhaseType
pattern BPTPreBuild = BuildPhaseType' "PRE_BUILD"

pattern BPTProvisioning :: BuildPhaseType
pattern BPTProvisioning = BuildPhaseType' "PROVISIONING"

pattern BPTQueued :: BuildPhaseType
pattern BPTQueued = BuildPhaseType' "QUEUED"

pattern BPTSubmitted :: BuildPhaseType
pattern BPTSubmitted = BuildPhaseType' "SUBMITTED"

pattern BPTUploadArtifacts :: BuildPhaseType
pattern BPTUploadArtifacts = BuildPhaseType' "UPLOAD_ARTIFACTS"

{-# COMPLETE
  BPTBuild,
  BPTCompleted,
  BPTDownloadSource,
  BPTFinalizing,
  BPTInstall,
  BPTPostBuild,
  BPTPreBuild,
  BPTProvisioning,
  BPTQueued,
  BPTSubmitted,
  BPTUploadArtifacts,
  BuildPhaseType' #-}

instance FromText BuildPhaseType where
    parser = (BuildPhaseType' . mk) <$> takeText

instance ToText BuildPhaseType where
    toText (BuildPhaseType' ci) = original ci

instance Hashable     BuildPhaseType
instance NFData       BuildPhaseType
instance ToByteString BuildPhaseType
instance ToQuery      BuildPhaseType
instance ToHeader     BuildPhaseType

instance FromJSON BuildPhaseType where
    parseJSON = parseJSONText "BuildPhaseType"
