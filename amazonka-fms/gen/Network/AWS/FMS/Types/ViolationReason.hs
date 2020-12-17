{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.ViolationReason
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types.ViolationReason (
  ViolationReason (
    ..
    , MissingExpectedRouteTable
    , MissingFirewall
    , MissingFirewallSubnetInAz
    , NetworkFirewallPolicyModified
    , ResourceIncorrectWebACL
    , ResourceMissingSecurityGroup
    , ResourceMissingShieldProtection
    , ResourceMissingWebACL
    , ResourceMissingWebACLOrShieldProtection
    , ResourceViolatesAuditSecurityGroup
    , SecurityGroupRedundant
    , SecurityGroupUnused
    , WebACLMissingRuleGroup
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ViolationReason = ViolationReason' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern MissingExpectedRouteTable :: ViolationReason
pattern MissingExpectedRouteTable = ViolationReason' "MISSING_EXPECTED_ROUTE_TABLE"

pattern MissingFirewall :: ViolationReason
pattern MissingFirewall = ViolationReason' "MISSING_FIREWALL"

pattern MissingFirewallSubnetInAz :: ViolationReason
pattern MissingFirewallSubnetInAz = ViolationReason' "MISSING_FIREWALL_SUBNET_IN_AZ"

pattern NetworkFirewallPolicyModified :: ViolationReason
pattern NetworkFirewallPolicyModified = ViolationReason' "NETWORK_FIREWALL_POLICY_MODIFIED"

pattern ResourceIncorrectWebACL :: ViolationReason
pattern ResourceIncorrectWebACL = ViolationReason' "RESOURCE_INCORRECT_WEB_ACL"

pattern ResourceMissingSecurityGroup :: ViolationReason
pattern ResourceMissingSecurityGroup = ViolationReason' "RESOURCE_MISSING_SECURITY_GROUP"

pattern ResourceMissingShieldProtection :: ViolationReason
pattern ResourceMissingShieldProtection = ViolationReason' "RESOURCE_MISSING_SHIELD_PROTECTION"

pattern ResourceMissingWebACL :: ViolationReason
pattern ResourceMissingWebACL = ViolationReason' "RESOURCE_MISSING_WEB_ACL"

pattern ResourceMissingWebACLOrShieldProtection :: ViolationReason
pattern ResourceMissingWebACLOrShieldProtection = ViolationReason' "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"

pattern ResourceViolatesAuditSecurityGroup :: ViolationReason
pattern ResourceViolatesAuditSecurityGroup = ViolationReason' "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"

pattern SecurityGroupRedundant :: ViolationReason
pattern SecurityGroupRedundant = ViolationReason' "SECURITY_GROUP_REDUNDANT"

pattern SecurityGroupUnused :: ViolationReason
pattern SecurityGroupUnused = ViolationReason' "SECURITY_GROUP_UNUSED"

pattern WebACLMissingRuleGroup :: ViolationReason
pattern WebACLMissingRuleGroup = ViolationReason' "WEB_ACL_MISSING_RULE_GROUP"

{-# COMPLETE
  MissingExpectedRouteTable,
  MissingFirewall,
  MissingFirewallSubnetInAz,
  NetworkFirewallPolicyModified,
  ResourceIncorrectWebACL,
  ResourceMissingSecurityGroup,
  ResourceMissingShieldProtection,
  ResourceMissingWebACL,
  ResourceMissingWebACLOrShieldProtection,
  ResourceViolatesAuditSecurityGroup,
  SecurityGroupRedundant,
  SecurityGroupUnused,
  WebACLMissingRuleGroup,
  ViolationReason' #-}

instance FromText ViolationReason where
    parser = (ViolationReason' . mk) <$> takeText

instance ToText ViolationReason where
    toText (ViolationReason' ci) = original ci

instance Hashable     ViolationReason
instance NFData       ViolationReason
instance ToByteString ViolationReason
instance ToQuery      ViolationReason
instance ToHeader     ViolationReason

instance FromJSON ViolationReason where
    parseJSON = parseJSONText "ViolationReason"
