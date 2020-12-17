{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus (
  CertificateAuthorityStatus (
    ..
    , Active
    , Creating
    , Deleted
    , Disabled
    , Expired
    , Failed
    , PendingCertificate
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateAuthorityStatus = CertificateAuthorityStatus' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern Active :: CertificateAuthorityStatus
pattern Active = CertificateAuthorityStatus' "ACTIVE"

pattern Creating :: CertificateAuthorityStatus
pattern Creating = CertificateAuthorityStatus' "CREATING"

pattern Deleted :: CertificateAuthorityStatus
pattern Deleted = CertificateAuthorityStatus' "DELETED"

pattern Disabled :: CertificateAuthorityStatus
pattern Disabled = CertificateAuthorityStatus' "DISABLED"

pattern Expired :: CertificateAuthorityStatus
pattern Expired = CertificateAuthorityStatus' "EXPIRED"

pattern Failed :: CertificateAuthorityStatus
pattern Failed = CertificateAuthorityStatus' "FAILED"

pattern PendingCertificate :: CertificateAuthorityStatus
pattern PendingCertificate = CertificateAuthorityStatus' "PENDING_CERTIFICATE"

{-# COMPLETE
  Active,
  Creating,
  Deleted,
  Disabled,
  Expired,
  Failed,
  PendingCertificate,
  CertificateAuthorityStatus' #-}

instance FromText CertificateAuthorityStatus where
    parser = (CertificateAuthorityStatus' . mk) <$> takeText

instance ToText CertificateAuthorityStatus where
    toText (CertificateAuthorityStatus' ci) = original ci

instance Hashable     CertificateAuthorityStatus
instance NFData       CertificateAuthorityStatus
instance ToByteString CertificateAuthorityStatus
instance ToQuery      CertificateAuthorityStatus
instance ToHeader     CertificateAuthorityStatus

instance ToJSON CertificateAuthorityStatus where
    toJSON = toJSONText

instance FromJSON CertificateAuthorityStatus where
    parseJSON = parseJSONText "CertificateAuthorityStatus"
