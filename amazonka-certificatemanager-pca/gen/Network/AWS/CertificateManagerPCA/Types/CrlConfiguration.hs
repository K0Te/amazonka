{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CrlConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CertificateManagerPCA.Types.CrlConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains configuration information for a certificate revocation list (CRL). Your private certificate authority (CA) creates base CRLs. Delta CRLs are not supported. You can enable CRLs for your new or an existing private CA by setting the __Enabled__ parameter to @true@ . Your private CA writes CRLs to an S3 bucket that you specify in the __S3BucketName__ parameter. You can hide the name of your bucket by specifying a value for the __CustomCname__ parameter. Your private CA copies the CNAME or the S3 bucket name to the __CRL Distribution Points__ extension of each certificate it issues. Your S3 bucket policy must give write permission to ACM Private CA. 
--
--
-- ACM Private CAA assets that are stored in Amazon S3 can be protected with encryption. For more information, see <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption Encrypting Your CRLs> .
--
-- Your private CA uses the value in the __ExpirationInDays__ parameter to calculate the __nextUpdate__ field in the CRL. The CRL is refreshed at 1/2 the age of next update or when a certificate is revoked. When a certificate is revoked, it is recorded in the next CRL that is generated and in the next audit report. Only time valid certificates are listed in the CRL. Expired certificates are not included. 
--
-- CRLs contain the following fields:
--
--     * __Version__ : The current version number defined in RFC 5280 is V2. The integer value is 0x1. 
--
--     * __Signature Algorithm__ : The name of the algorithm used to sign the CRL.
--
--     * __Issuer__ : The X.500 distinguished name of your private CA that issued the CRL.
--
--     * __Last Update__ : The issue date and time of this CRL.
--
--     * __Next Update__ : The day and time by which the next CRL will be issued.
--
--     * __Revoked Certificates__ : List of revoked certificates. Each list item contains the following information.
--
--     * __Serial Number__ : The serial number, in hexadecimal format, of the revoked certificate.
--
--     * __Revocation Date__ : Date and time the certificate was revoked.
--
--     * __CRL Entry Extensions__ : Optional extensions for the CRL entry.
--
--     * __X509v3 CRL Reason Code__ : Reason the certificate was revoked.
--
--
--
--
--
--     * __CRL Extensions__ : Optional extensions for the CRL.
--
--     * __X509v3 Authority Key Identifier__ : Identifies the public key associated with the private key used to sign the certificate.
--
--     * __X509v3 CRL Number:__ : Decimal sequence number for the CRL.
--
--
--
--     * __Signature Algorithm__ : Algorithm used by your private CA to sign the CRL.
--
--     * __Signature Value__ : Signature computed over the CRL.
--
--
--
-- Certificate revocation lists created by ACM Private CA are DER-encoded. You can use the following OpenSSL command to list a CRL.
--
-- @openssl crl -inform DER -text -in /crl_path/ -noout@ 
--
--
-- /See:/ 'crlConfiguration' smart constructor.
data CrlConfiguration = CrlConfiguration'{_ccCustomCname
                                          :: !(Maybe Text),
                                          _ccExpirationInDays :: !(Maybe Nat),
                                          _ccS3BucketName :: !(Maybe Text),
                                          _ccEnabled :: !Bool}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CrlConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCustomCname' - Name inserted into the certificate __CRL Distribution Points__ extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public.
--
-- * 'ccExpirationInDays' - Number of days until a certificate expires.
--
-- * 'ccS3BucketName' - Name of the S3 bucket that contains the CRL. If you do not provide a value for the __CustomCname__ argument, the name of your S3 bucket is placed into the __CRL Distribution Points__ extension of the issued certificate. You can change the name of your bucket by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority> action. You must specify a bucket policy that allows ACM Private CA to write the CRL to your bucket.
--
-- * 'ccEnabled' - Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. You can use this value to enable certificate revocation for a new CA when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action or for an existing CA when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority> action. 
crlConfiguration
    :: Bool -- ^ 'ccEnabled'
    -> CrlConfiguration
crlConfiguration pEnabled_
  = CrlConfiguration'{_ccCustomCname = Nothing,
                      _ccExpirationInDays = Nothing,
                      _ccS3BucketName = Nothing, _ccEnabled = pEnabled_}

-- | Name inserted into the certificate __CRL Distribution Points__ extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public.
ccCustomCname :: Lens' CrlConfiguration (Maybe Text)
ccCustomCname = lens _ccCustomCname (\ s a -> s{_ccCustomCname = a})

-- | Number of days until a certificate expires.
ccExpirationInDays :: Lens' CrlConfiguration (Maybe Natural)
ccExpirationInDays = lens _ccExpirationInDays (\ s a -> s{_ccExpirationInDays = a}) . mapping _Nat

-- | Name of the S3 bucket that contains the CRL. If you do not provide a value for the __CustomCname__ argument, the name of your S3 bucket is placed into the __CRL Distribution Points__ extension of the issued certificate. You can change the name of your bucket by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority> action. You must specify a bucket policy that allows ACM Private CA to write the CRL to your bucket.
ccS3BucketName :: Lens' CrlConfiguration (Maybe Text)
ccS3BucketName = lens _ccS3BucketName (\ s a -> s{_ccS3BucketName = a})

-- | Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. You can use this value to enable certificate revocation for a new CA when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action or for an existing CA when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority> action. 
ccEnabled :: Lens' CrlConfiguration Bool
ccEnabled = lens _ccEnabled (\ s a -> s{_ccEnabled = a})

instance FromJSON CrlConfiguration where
        parseJSON
          = withObject "CrlConfiguration"
              (\ x ->
                 CrlConfiguration' <$>
                   (x .:? "CustomCname") <*> (x .:? "ExpirationInDays")
                     <*> (x .:? "S3BucketName")
                     <*> (x .: "Enabled"))

instance Hashable CrlConfiguration where

instance NFData CrlConfiguration where

instance ToJSON CrlConfiguration where
        toJSON CrlConfiguration'{..}
          = object
              (catMaybes
                 [("CustomCname" .=) <$> _ccCustomCname,
                  ("ExpirationInDays" .=) <$> _ccExpirationInDays,
                  ("S3BucketName" .=) <$> _ccS3BucketName,
                  Just ("Enabled" .= _ccEnabled)])
