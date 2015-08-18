{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.Sum
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.Sum where

import           Network.AWS.Prelude

data IdentityType
    = Domain
    | EmailAddress
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText IdentityType where
    parser = takeLowerText >>= \case
        "domain" -> pure Domain
        "emailaddress" -> pure EmailAddress
        e -> fromTextError $ "Failure parsing IdentityType from value: '" <> e
           <> "'. Accepted values: Domain, EmailAddress"

instance ToText IdentityType where
    toText = \case
        Domain -> "Domain"
        EmailAddress -> "EmailAddress"

instance Hashable     IdentityType
instance ToByteString IdentityType
instance ToQuery      IdentityType
instance ToHeader     IdentityType

data NotificationType
    = Bounce
    | Complaint
    | Delivery
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText NotificationType where
    parser = takeLowerText >>= \case
        "bounce" -> pure Bounce
        "complaint" -> pure Complaint
        "delivery" -> pure Delivery
        e -> fromTextError $ "Failure parsing NotificationType from value: '" <> e
           <> "'. Accepted values: Bounce, Complaint, Delivery"

instance ToText NotificationType where
    toText = \case
        Bounce -> "Bounce"
        Complaint -> "Complaint"
        Delivery -> "Delivery"

instance Hashable     NotificationType
instance ToByteString NotificationType
instance ToQuery      NotificationType
instance ToHeader     NotificationType

data VerificationStatus
    = Failed
    | NotStarted
    | Pending
    | Success
    | TemporaryFailure
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText VerificationStatus where
    parser = takeLowerText >>= \case
        "failed" -> pure Failed
        "notstarted" -> pure NotStarted
        "pending" -> pure Pending
        "success" -> pure Success
        "temporaryfailure" -> pure TemporaryFailure
        e -> fromTextError $ "Failure parsing VerificationStatus from value: '" <> e
           <> "'. Accepted values: Failed, NotStarted, Pending, Success, TemporaryFailure"

instance ToText VerificationStatus where
    toText = \case
        Failed -> "Failed"
        NotStarted -> "NotStarted"
        Pending -> "Pending"
        Success -> "Success"
        TemporaryFailure -> "TemporaryFailure"

instance Hashable     VerificationStatus
instance ToByteString VerificationStatus
instance ToQuery      VerificationStatus
instance ToHeader     VerificationStatus

instance FromXML VerificationStatus where
    parseXML = parseXMLText "VerificationStatus"
