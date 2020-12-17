{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigRuleComplianceSummaryGroupKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.ConfigRuleComplianceSummaryGroupKey (
  ConfigRuleComplianceSummaryGroupKey (
    ..
    , AWSRegion
    , AccountId
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfigRuleComplianceSummaryGroupKey = ConfigRuleComplianceSummaryGroupKey' (CI
                                                                                   Text)
                                             deriving (Eq, Ord, Read, Show,
                                                       Data, Typeable, Generic)

pattern AWSRegion :: ConfigRuleComplianceSummaryGroupKey
pattern AWSRegion = ConfigRuleComplianceSummaryGroupKey' "AWS_REGION"

pattern AccountId :: ConfigRuleComplianceSummaryGroupKey
pattern AccountId = ConfigRuleComplianceSummaryGroupKey' "ACCOUNT_ID"

{-# COMPLETE
  AWSRegion,
  AccountId,
  ConfigRuleComplianceSummaryGroupKey' #-}

instance FromText ConfigRuleComplianceSummaryGroupKey where
    parser = (ConfigRuleComplianceSummaryGroupKey' . mk) <$> takeText

instance ToText ConfigRuleComplianceSummaryGroupKey where
    toText (ConfigRuleComplianceSummaryGroupKey' ci) = original ci

instance Hashable     ConfigRuleComplianceSummaryGroupKey
instance NFData       ConfigRuleComplianceSummaryGroupKey
instance ToByteString ConfigRuleComplianceSummaryGroupKey
instance ToQuery      ConfigRuleComplianceSummaryGroupKey
instance ToHeader     ConfigRuleComplianceSummaryGroupKey

instance ToJSON ConfigRuleComplianceSummaryGroupKey where
    toJSON = toJSONText
