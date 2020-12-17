{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.STS.GetSessionToken
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a set of temporary credentials for an AWS account or IAM user. The credentials consist of an access key ID, a secret access key, and a security token. Typically, you use @GetSessionToken@ if you want to use MFA to protect programmatic calls to specific AWS API operations like Amazon EC2 @StopInstances@ . MFA-enabled IAM users would need to call @GetSessionToken@ and submit an MFA code that is associated with their MFA device. Using the temporary security credentials that are returned from the call, IAM users can then make programmatic calls to API operations that require MFA authentication. If you do not supply a correct MFA code, then the API returns an access denied error. For a comparison of @GetSessionToken@ with the other API operations that produce temporary credentials, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html Requesting Temporary Security Credentials> and <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison Comparing the AWS STS API operations> in the /IAM User Guide/ .
--
--
-- __Session Duration__ 
--
-- The @GetSessionToken@ operation must be called by using the long-term AWS security credentials of the AWS account root user or an IAM user. Credentials that are created by IAM users are valid for the duration that you specify. This duration can range from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds (12 hours). Credentials based on account credentials can range from 900 seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour. 
--
-- __Permissions__ 
--
-- The temporary security credentials created by @GetSessionToken@ can be used to make API calls to any AWS service with the following exceptions:
--
--     * You cannot call any IAM API operations unless MFA authentication information is included in the request.
--
--     * You cannot call any STS API /except/ @AssumeRole@ or @GetCallerIdentity@ .
--
--
--
-- The credentials that are returned by @GetSessionToken@ are based on permissions associated with the user whose credentials were used to call the operation. If @GetSessionToken@ is called using AWS account root user credentials, the temporary credentials have root user permissions. Similarly, if @GetSessionToken@ is called using the credentials of an IAM user, the temporary credentials have the same permissions as the IAM user. 
--
-- For more information about using @GetSessionToken@ to create temporary credentials, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken Temporary Credentials for Users in Untrusted Environments> in the /IAM User Guide/ . 
--
module Network.AWS.STS.GetSessionToken
    (
    -- * Creating a Request
      getSessionToken
    , GetSessionToken
    -- * Request Lenses
    , gstTokenCode
    , gstDurationSeconds
    , gstSerialNumber

    -- * Destructuring the Response
    , getSessionTokenResponse
    , GetSessionTokenResponse
    -- * Response Lenses
    , gstrsCredentials
    , gstrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.STS.Types

-- | /See:/ 'getSessionToken' smart constructor.
data GetSessionToken = GetSessionToken'{_gstTokenCode
                                        :: !(Maybe Text),
                                        _gstDurationSeconds :: !(Maybe Nat),
                                        _gstSerialNumber :: !(Maybe Text)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSessionToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstTokenCode' - The value provided by the MFA device, if MFA is required. If any policy requires the IAM user to submit an MFA code, specify this value. If MFA authentication is required, the user must provide a code when requesting a set of temporary security credentials. A user who fails to provide the code receives an "access denied" response when requesting resources that require MFA authentication. The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.
--
-- * 'gstDurationSeconds' - The duration, in seconds, that the credentials should remain valid. Acceptable durations for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12 hours) as the default. Sessions for AWS account owners are restricted to a maximum of 3,600 seconds (one hour). If the duration is longer than one hour, the session for AWS account owners defaults to one hour.
--
-- * 'gstSerialNumber' - The identification number of the MFA device that is associated with the IAM user who is making the @GetSessionToken@ call. Specify this value if the IAM user has a policy that requires MFA authentication. The value is either the serial number for a hardware device (such as @GAHT12345678@ ) or an Amazon Resource Name (ARN) for a virtual device (such as @arn:aws:iam::123456789012:mfa/user@ ). You can find the device for an IAM user by going to the AWS Management Console and viewing the user's security credentials.  The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-
getSessionToken
    :: GetSessionToken
getSessionToken
  = GetSessionToken'{_gstTokenCode = Nothing,
                     _gstDurationSeconds = Nothing,
                     _gstSerialNumber = Nothing}

-- | The value provided by the MFA device, if MFA is required. If any policy requires the IAM user to submit an MFA code, specify this value. If MFA authentication is required, the user must provide a code when requesting a set of temporary security credentials. A user who fails to provide the code receives an "access denied" response when requesting resources that require MFA authentication. The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.
gstTokenCode :: Lens' GetSessionToken (Maybe Text)
gstTokenCode = lens _gstTokenCode (\ s a -> s{_gstTokenCode = a})

-- | The duration, in seconds, that the credentials should remain valid. Acceptable durations for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12 hours) as the default. Sessions for AWS account owners are restricted to a maximum of 3,600 seconds (one hour). If the duration is longer than one hour, the session for AWS account owners defaults to one hour.
gstDurationSeconds :: Lens' GetSessionToken (Maybe Natural)
gstDurationSeconds = lens _gstDurationSeconds (\ s a -> s{_gstDurationSeconds = a}) . mapping _Nat

-- | The identification number of the MFA device that is associated with the IAM user who is making the @GetSessionToken@ call. Specify this value if the IAM user has a policy that requires MFA authentication. The value is either the serial number for a hardware device (such as @GAHT12345678@ ) or an Amazon Resource Name (ARN) for a virtual device (such as @arn:aws:iam::123456789012:mfa/user@ ). You can find the device for an IAM user by going to the AWS Management Console and viewing the user's security credentials.  The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-
gstSerialNumber :: Lens' GetSessionToken (Maybe Text)
gstSerialNumber = lens _gstSerialNumber (\ s a -> s{_gstSerialNumber = a})

instance AWSRequest GetSessionToken where
        type Rs GetSessionToken = GetSessionTokenResponse
        request = postQuery sts
        response
          = receiveXMLWrapper "GetSessionTokenResult"
              (\ s h x ->
                 GetSessionTokenResponse' <$>
                   (x .@? "Credentials") <*> (pure (fromEnum s)))

instance Hashable GetSessionToken where

instance NFData GetSessionToken where

instance ToHeaders GetSessionToken where
        toHeaders = const mempty

instance ToPath GetSessionToken where
        toPath = const "/"

instance ToQuery GetSessionToken where
        toQuery GetSessionToken'{..}
          = mconcat
              ["Action" =: ("GetSessionToken" :: ByteString),
               "Version" =: ("2011-06-15" :: ByteString),
               "TokenCode" =: _gstTokenCode,
               "DurationSeconds" =: _gstDurationSeconds,
               "SerialNumber" =: _gstSerialNumber]

-- | Contains the response to a successful 'GetSessionToken' request, including temporary AWS credentials that can be used to make AWS requests. 
--
--
--
-- /See:/ 'getSessionTokenResponse' smart constructor.
data GetSessionTokenResponse = GetSessionTokenResponse'{_gstrsCredentials
                                                        :: !(Maybe AuthEnv),
                                                        _gstrsResponseStatus ::
                                                        !Int}
                                 deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSessionTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstrsCredentials' - The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.
--
-- * 'gstrsResponseStatus' - -- | The response status code.
getSessionTokenResponse
    :: Int -- ^ 'gstrsResponseStatus'
    -> GetSessionTokenResponse
getSessionTokenResponse pResponseStatus_
  = GetSessionTokenResponse'{_gstrsCredentials =
                               Nothing,
                             _gstrsResponseStatus = pResponseStatus_}

-- | The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.
gstrsCredentials :: Lens' GetSessionTokenResponse (Maybe AuthEnv)
gstrsCredentials = lens _gstrsCredentials (\ s a -> s{_gstrsCredentials = a})

-- | -- | The response status code.
gstrsResponseStatus :: Lens' GetSessionTokenResponse Int
gstrsResponseStatus = lens _gstrsResponseStatus (\ s a -> s{_gstrsResponseStatus = a})

instance NFData GetSessionTokenResponse where
