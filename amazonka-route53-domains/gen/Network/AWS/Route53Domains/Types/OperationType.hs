{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.OperationType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53Domains.Types.OperationType (
  OperationType (
    ..
    , AddDNSsec
    , ChangeDomainOwner
    , ChangePrivacyProtection
    , DeleteDomain
    , DisableAutorenew
    , DomainLock
    , EnableAutorenew
    , ExpireDomain
    , InternalTransferInDomain
    , InternalTransferOutDomain
    , PushDomain
    , RegisterDomain
    , RemoveDNSsec
    , RenewDomain
    , TransferInDomain
    , TransferOutDomain
    , UpdateDomainContact
    , UpdateNameserver
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationType = OperationType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern AddDNSsec :: OperationType
pattern AddDNSsec = OperationType' "ADD_DNSSEC"

pattern ChangeDomainOwner :: OperationType
pattern ChangeDomainOwner = OperationType' "CHANGE_DOMAIN_OWNER"

pattern ChangePrivacyProtection :: OperationType
pattern ChangePrivacyProtection = OperationType' "CHANGE_PRIVACY_PROTECTION"

pattern DeleteDomain :: OperationType
pattern DeleteDomain = OperationType' "DELETE_DOMAIN"

pattern DisableAutorenew :: OperationType
pattern DisableAutorenew = OperationType' "DISABLE_AUTORENEW"

pattern DomainLock :: OperationType
pattern DomainLock = OperationType' "DOMAIN_LOCK"

pattern EnableAutorenew :: OperationType
pattern EnableAutorenew = OperationType' "ENABLE_AUTORENEW"

pattern ExpireDomain :: OperationType
pattern ExpireDomain = OperationType' "EXPIRE_DOMAIN"

pattern InternalTransferInDomain :: OperationType
pattern InternalTransferInDomain = OperationType' "INTERNAL_TRANSFER_IN_DOMAIN"

pattern InternalTransferOutDomain :: OperationType
pattern InternalTransferOutDomain = OperationType' "INTERNAL_TRANSFER_OUT_DOMAIN"

pattern PushDomain :: OperationType
pattern PushDomain = OperationType' "PUSH_DOMAIN"

pattern RegisterDomain :: OperationType
pattern RegisterDomain = OperationType' "REGISTER_DOMAIN"

pattern RemoveDNSsec :: OperationType
pattern RemoveDNSsec = OperationType' "REMOVE_DNSSEC"

pattern RenewDomain :: OperationType
pattern RenewDomain = OperationType' "RENEW_DOMAIN"

pattern TransferInDomain :: OperationType
pattern TransferInDomain = OperationType' "TRANSFER_IN_DOMAIN"

pattern TransferOutDomain :: OperationType
pattern TransferOutDomain = OperationType' "TRANSFER_OUT_DOMAIN"

pattern UpdateDomainContact :: OperationType
pattern UpdateDomainContact = OperationType' "UPDATE_DOMAIN_CONTACT"

pattern UpdateNameserver :: OperationType
pattern UpdateNameserver = OperationType' "UPDATE_NAMESERVER"

{-# COMPLETE
  AddDNSsec,
  ChangeDomainOwner,
  ChangePrivacyProtection,
  DeleteDomain,
  DisableAutorenew,
  DomainLock,
  EnableAutorenew,
  ExpireDomain,
  InternalTransferInDomain,
  InternalTransferOutDomain,
  PushDomain,
  RegisterDomain,
  RemoveDNSsec,
  RenewDomain,
  TransferInDomain,
  TransferOutDomain,
  UpdateDomainContact,
  UpdateNameserver,
  OperationType' #-}

instance FromText OperationType where
    parser = (OperationType' . mk) <$> takeText

instance ToText OperationType where
    toText (OperationType' ci) = original ci

instance Hashable     OperationType
instance NFData       OperationType
instance ToByteString OperationType
instance ToQuery      OperationType
instance ToHeader     OperationType

instance FromJSON OperationType where
    parseJSON = parseJSONText "OperationType"
