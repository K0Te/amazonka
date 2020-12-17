{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is the /ACM Private CA API Reference/ . It provides descriptions, syntax, and usage examples for each of the actions and data types involved in creating and managing private certificate authorities (CA) for your organization.
--
--
-- The documentation for each action shows the Query API request parameters and the XML response. Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see <https://aws.amazon.com/tools/#SDKs AWS SDKs> .
--
module Network.AWS.CertificateManagerPCA
    (
    -- * Service Configuration
      certificateManagerPCA

    -- * Errors
    -- $errors

    -- ** InvalidTagException
    , _InvalidTagException

    -- ** InvalidRequestException
    , _InvalidRequestException

    -- ** PermissionAlreadyExistsException
    , _PermissionAlreadyExistsException

    -- ** MalformedCSRException
    , _MalformedCSRException

    -- ** RequestAlreadyProcessedException
    , _RequestAlreadyProcessedException

    -- ** MalformedCertificateException
    , _MalformedCertificateException

    -- ** RequestFailedException
    , _RequestFailedException

    -- ** CertificateMismatchException
    , _CertificateMismatchException

    -- ** TooManyTagsException
    , _TooManyTagsException

    -- ** InvalidArgsException
    , _InvalidArgsException

    -- ** RequestInProgressException
    , _RequestInProgressException

    -- ** ConcurrentModificationException
    , _ConcurrentModificationException

    -- ** InvalidNextTokenException
    , _InvalidNextTokenException

    -- ** LockoutPreventedException
    , _LockoutPreventedException

    -- ** InvalidARNException
    , _InvalidARNException

    -- ** InvalidPolicyException
    , _InvalidPolicyException

    -- ** ResourceNotFoundException
    , _ResourceNotFoundException

    -- ** InvalidStateException
    , _InvalidStateException

    -- ** LimitExceededException
    , _LimitExceededException

    -- * Waiters
    -- $waiters

    -- ** CertificateIssued
    , certificateIssued

    -- ** AuditReportCreated
    , auditReportCreated

    -- ** CertificateAuthorityCSRCreated
    , certificateAuthorityCSRCreated

    -- * Operations
    -- $operations

    -- ** ImportCertificateAuthorityCertificate 
    , module Network.AWS.CertificateManagerPCA.ImportCertificateAuthorityCertificate

    -- ** CreatePermission 
    , module Network.AWS.CertificateManagerPCA.CreatePermission

    -- ** DescribeCertificateAuthorityAuditReport 
    , module Network.AWS.CertificateManagerPCA.DescribeCertificateAuthorityAuditReport

    -- ** DeletePermission 
    , module Network.AWS.CertificateManagerPCA.DeletePermission

    -- ** RevokeCertificate 
    , module Network.AWS.CertificateManagerPCA.RevokeCertificate

    -- ** UpdateCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.UpdateCertificateAuthority

    -- ** DeleteCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.DeleteCertificateAuthority

    -- ** GetCertificateAuthorityCSR 
    , module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCSR

    -- ** CreateCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.CreateCertificateAuthority

    -- ** ListCertificateAuthorities (Paginated)
    , module Network.AWS.CertificateManagerPCA.ListCertificateAuthorities

    -- ** GetCertificate 
    , module Network.AWS.CertificateManagerPCA.GetCertificate

    -- ** TagCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.TagCertificateAuthority

    -- ** PutPolicy 
    , module Network.AWS.CertificateManagerPCA.PutPolicy

    -- ** DeletePolicy 
    , module Network.AWS.CertificateManagerPCA.DeletePolicy

    -- ** DescribeCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.DescribeCertificateAuthority

    -- ** RestoreCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.RestoreCertificateAuthority

    -- ** IssueCertificate 
    , module Network.AWS.CertificateManagerPCA.IssueCertificate

    -- ** GetCertificateAuthorityCertificate 
    , module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate

    -- ** ListPermissions (Paginated)
    , module Network.AWS.CertificateManagerPCA.ListPermissions

    -- ** UntagCertificateAuthority 
    , module Network.AWS.CertificateManagerPCA.UntagCertificateAuthority

    -- ** CreateCertificateAuthorityAuditReport 
    , module Network.AWS.CertificateManagerPCA.CreateCertificateAuthorityAuditReport

    -- ** ListTags (Paginated)
    , module Network.AWS.CertificateManagerPCA.ListTags

    -- ** GetPolicy 
    , module Network.AWS.CertificateManagerPCA.GetPolicy

    -- * Types

    -- ** ActionType
    , ActionType (..)

    -- ** AuditReportResponseFormat
    , AuditReportResponseFormat (..)

    -- ** AuditReportStatus
    , AuditReportStatus (..)

    -- ** CertificateAuthorityStatus
    , CertificateAuthorityStatus (..)

    -- ** CertificateAuthorityType
    , CertificateAuthorityType (..)

    -- ** FailureReason
    , FailureReason (..)

    -- ** KeyAlgorithm
    , KeyAlgorithm (..)

    -- ** ResourceOwner
    , ResourceOwner (..)

    -- ** RevocationReason
    , RevocationReason (..)

    -- ** SigningAlgorithm
    , SigningAlgorithm (..)

    -- ** ValidityPeriodType
    , ValidityPeriodType (..)

    -- ** ASN1Subject
    , ASN1Subject
    , asn1Subject
    , asGivenName
    , asState
    , asCommonName
    , asOrganizationalUnit
    , asCountry
    , asGenerationQualifier
    , asLocality
    , asPseudonym
    , asInitials
    , asTitle
    , asOrganization
    , asSerialNumber
    , asSurname
    , asDistinguishedNameQualifier

    -- ** CertificateAuthority
    , CertificateAuthority
    , certificateAuthority
    , caStatus
    , caFailureReason
    , caCertificateAuthorityConfiguration
    , caARN
    , caCreatedAt
    , caSerial
    , caNotBefore
    , caRestorableUntil
    , caType
    , caOwnerAccount
    , caRevocationConfiguration
    , caLastStateChangeAt
    , caNotAfter

    -- ** CertificateAuthorityConfiguration
    , CertificateAuthorityConfiguration
    , certificateAuthorityConfiguration
    , cacKeyAlgorithm
    , cacSigningAlgorithm
    , cacSubject

    -- ** CrlConfiguration
    , CrlConfiguration
    , crlConfiguration
    , ccCustomCname
    , ccExpirationInDays
    , ccS3BucketName
    , ccEnabled

    -- ** Permission
    , Permission
    , permission
    , pSourceAccount
    , pActions
    , pCreatedAt
    , pPrincipal
    , pPolicy
    , pCertificateAuthorityARN

    -- ** RevocationConfiguration
    , RevocationConfiguration
    , revocationConfiguration
    , rcCrlConfiguration

    -- ** Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- ** Validity
    , Validity
    , validity
    , vValue
    , vType
    ) where

import Network.AWS.CertificateManagerPCA.CreateCertificateAuthority
import Network.AWS.CertificateManagerPCA.CreateCertificateAuthorityAuditReport
import Network.AWS.CertificateManagerPCA.CreatePermission
import Network.AWS.CertificateManagerPCA.DeleteCertificateAuthority
import Network.AWS.CertificateManagerPCA.DeletePermission
import Network.AWS.CertificateManagerPCA.DeletePolicy
import Network.AWS.CertificateManagerPCA.DescribeCertificateAuthority
import Network.AWS.CertificateManagerPCA.DescribeCertificateAuthorityAuditReport
import Network.AWS.CertificateManagerPCA.GetCertificate
import Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCSR
import Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate
import Network.AWS.CertificateManagerPCA.GetPolicy
import Network.AWS.CertificateManagerPCA.ImportCertificateAuthorityCertificate
import Network.AWS.CertificateManagerPCA.IssueCertificate
import Network.AWS.CertificateManagerPCA.ListCertificateAuthorities
import Network.AWS.CertificateManagerPCA.ListPermissions
import Network.AWS.CertificateManagerPCA.ListTags
import Network.AWS.CertificateManagerPCA.PutPolicy
import Network.AWS.CertificateManagerPCA.RestoreCertificateAuthority
import Network.AWS.CertificateManagerPCA.RevokeCertificate
import Network.AWS.CertificateManagerPCA.TagCertificateAuthority
import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.CertificateManagerPCA.UntagCertificateAuthority
import Network.AWS.CertificateManagerPCA.UpdateCertificateAuthority
import Network.AWS.CertificateManagerPCA.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'CertificateManagerPCA'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
