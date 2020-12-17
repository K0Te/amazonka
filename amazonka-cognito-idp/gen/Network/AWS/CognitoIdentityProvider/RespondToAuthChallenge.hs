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
-- Module      : Network.AWS.CognitoIdentityProvider.RespondToAuthChallenge
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Responds to the authentication challenge.
--
--
module Network.AWS.CognitoIdentityProvider.RespondToAuthChallenge
    (
    -- * Creating a Request
      respondToAuthChallenge
    , RespondToAuthChallenge
    -- * Request Lenses
    , rtacClientMetadata
    , rtacAnalyticsMetadata
    , rtacChallengeResponses
    , rtacUserContextData
    , rtacSession
    , rtacClientId
    , rtacChallengeName

    -- * Destructuring the Response
    , respondToAuthChallengeResponse
    , RespondToAuthChallengeResponse
    -- * Response Lenses
    , rtacrsChallengeName
    , rtacrsChallengeParameters
    , rtacrsAuthenticationResult
    , rtacrsSession
    , rtacrsResponseStatus
    ) where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to respond to an authentication challenge.
--
--
--
-- /See:/ 'respondToAuthChallenge' smart constructor.
data RespondToAuthChallenge = RespondToAuthChallenge'{_rtacClientMetadata
                                                      ::
                                                      !(Maybe (Map Text Text)),
                                                      _rtacAnalyticsMetadata ::
                                                      !(Maybe
                                                          AnalyticsMetadataType),
                                                      _rtacChallengeResponses ::
                                                      !(Maybe (Map Text Text)),
                                                      _rtacUserContextData ::
                                                      !(Maybe
                                                          UserContextDataType),
                                                      _rtacSession ::
                                                      !(Maybe Text),
                                                      _rtacClientId ::
                                                      !(Sensitive Text),
                                                      _rtacChallengeName ::
                                                      !ChallengeNameType}
                                deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RespondToAuthChallenge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtacClientMetadata' - A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /post authentication/ , /pre token generation/ , /define auth challenge/ , /create auth challenge/ , and /verify auth challenge/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
--
-- * 'rtacAnalyticsMetadata' - The Amazon Pinpoint analytics metadata for collecting metrics for @RespondToAuthChallenge@ calls.
--
-- * 'rtacChallengeResponses' - The challenge responses. These are inputs corresponding to the value of @ChallengeName@ , for example:     * @SMS_MFA@ : @SMS_MFA_CODE@ , @USERNAME@ .     * @PASSWORD_VERIFIER@ : @PASSWORD_CLAIM_SIGNATURE@ , @PASSWORD_CLAIM_SECRET_BLOCK@ , @TIMESTAMP@ , @USERNAME@ .     * @NEW_PASSWORD_REQUIRED@ : @NEW_PASSWORD@ , any other required attributes, @USERNAME@ .      * @SOFTWARE_TOKEN_MFA@ : @USERNAME@ and @SOFTWARE_TOKEN_MFA_CODE@ are required attributes.     * @DEVICE_SRP_AUTH@ requires @USERNAME@ , @DEVICE_KEY@ , @SRP_A@ (and @SECRET_HASH@ ).     * @DEVICE_PASSWORD_VERIFIER@ requires everything that @PASSWORD_VERIFIER@ requires plus @DEVICE_KEY@ .
--
-- * 'rtacUserContextData' - Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
--
-- * 'rtacSession' - The session which should be passed both ways in challenge-response calls to the service. If @InitiateAuth@ or @RespondToAuthChallenge@ API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
--
-- * 'rtacClientId' - The app client ID.
--
-- * 'rtacChallengeName' - The challenge name. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html InitiateAuth> . @ADMIN_NO_SRP_AUTH@ is not a valid value.
respondToAuthChallenge
    :: Text -- ^ 'rtacClientId'
    -> ChallengeNameType -- ^ 'rtacChallengeName'
    -> RespondToAuthChallenge
respondToAuthChallenge pClientId_ pChallengeName_
  = RespondToAuthChallenge'{_rtacClientMetadata =
                              Nothing,
                            _rtacAnalyticsMetadata = Nothing,
                            _rtacChallengeResponses = Nothing,
                            _rtacUserContextData = Nothing,
                            _rtacSession = Nothing,
                            _rtacClientId = _Sensitive # pClientId_,
                            _rtacChallengeName = pChallengeName_}

-- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /post authentication/ , /pre token generation/ , /define auth challenge/ , /create auth challenge/ , and /verify auth challenge/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
rtacClientMetadata :: Lens' RespondToAuthChallenge (HashMap Text Text)
rtacClientMetadata = lens _rtacClientMetadata (\ s a -> s{_rtacClientMetadata = a}) . _Default . _Map

-- | The Amazon Pinpoint analytics metadata for collecting metrics for @RespondToAuthChallenge@ calls.
rtacAnalyticsMetadata :: Lens' RespondToAuthChallenge (Maybe AnalyticsMetadataType)
rtacAnalyticsMetadata = lens _rtacAnalyticsMetadata (\ s a -> s{_rtacAnalyticsMetadata = a})

-- | The challenge responses. These are inputs corresponding to the value of @ChallengeName@ , for example:     * @SMS_MFA@ : @SMS_MFA_CODE@ , @USERNAME@ .     * @PASSWORD_VERIFIER@ : @PASSWORD_CLAIM_SIGNATURE@ , @PASSWORD_CLAIM_SECRET_BLOCK@ , @TIMESTAMP@ , @USERNAME@ .     * @NEW_PASSWORD_REQUIRED@ : @NEW_PASSWORD@ , any other required attributes, @USERNAME@ .      * @SOFTWARE_TOKEN_MFA@ : @USERNAME@ and @SOFTWARE_TOKEN_MFA_CODE@ are required attributes.     * @DEVICE_SRP_AUTH@ requires @USERNAME@ , @DEVICE_KEY@ , @SRP_A@ (and @SECRET_HASH@ ).     * @DEVICE_PASSWORD_VERIFIER@ requires everything that @PASSWORD_VERIFIER@ requires plus @DEVICE_KEY@ .
rtacChallengeResponses :: Lens' RespondToAuthChallenge (HashMap Text Text)
rtacChallengeResponses = lens _rtacChallengeResponses (\ s a -> s{_rtacChallengeResponses = a}) . _Default . _Map

-- | Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
rtacUserContextData :: Lens' RespondToAuthChallenge (Maybe UserContextDataType)
rtacUserContextData = lens _rtacUserContextData (\ s a -> s{_rtacUserContextData = a})

-- | The session which should be passed both ways in challenge-response calls to the service. If @InitiateAuth@ or @RespondToAuthChallenge@ API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
rtacSession :: Lens' RespondToAuthChallenge (Maybe Text)
rtacSession = lens _rtacSession (\ s a -> s{_rtacSession = a})

-- | The app client ID.
rtacClientId :: Lens' RespondToAuthChallenge Text
rtacClientId = lens _rtacClientId (\ s a -> s{_rtacClientId = a}) . _Sensitive

-- | The challenge name. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html InitiateAuth> . @ADMIN_NO_SRP_AUTH@ is not a valid value.
rtacChallengeName :: Lens' RespondToAuthChallenge ChallengeNameType
rtacChallengeName = lens _rtacChallengeName (\ s a -> s{_rtacChallengeName = a})

instance AWSRequest RespondToAuthChallenge where
        type Rs RespondToAuthChallenge =
             RespondToAuthChallengeResponse
        request = postJSON cognitoIdentityProvider
        response
          = receiveJSON
              (\ s h x ->
                 RespondToAuthChallengeResponse' <$>
                   (x .?> "ChallengeName") <*>
                     (x .?> "ChallengeParameters" .!@ mempty)
                     <*> (x .?> "AuthenticationResult")
                     <*> (x .?> "Session")
                     <*> (pure (fromEnum s)))

instance Hashable RespondToAuthChallenge where

instance NFData RespondToAuthChallenge where

instance ToHeaders RespondToAuthChallenge where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSCognitoIdentityProviderService.RespondToAuthChallenge"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON RespondToAuthChallenge where
        toJSON RespondToAuthChallenge'{..}
          = object
              (catMaybes
                 [("ClientMetadata" .=) <$> _rtacClientMetadata,
                  ("AnalyticsMetadata" .=) <$> _rtacAnalyticsMetadata,
                  ("ChallengeResponses" .=) <$>
                    _rtacChallengeResponses,
                  ("UserContextData" .=) <$> _rtacUserContextData,
                  ("Session" .=) <$> _rtacSession,
                  Just ("ClientId" .= _rtacClientId),
                  Just ("ChallengeName" .= _rtacChallengeName)])

instance ToPath RespondToAuthChallenge where
        toPath = const "/"

instance ToQuery RespondToAuthChallenge where
        toQuery = const mempty

-- | The response to respond to the authentication challenge.
--
--
--
-- /See:/ 'respondToAuthChallengeResponse' smart constructor.
data RespondToAuthChallengeResponse = RespondToAuthChallengeResponse'{_rtacrsChallengeName
                                                                      ::
                                                                      !(Maybe
                                                                          ChallengeNameType),
                                                                      _rtacrsChallengeParameters
                                                                      ::
                                                                      !(Maybe
                                                                          (Map
                                                                             Text
                                                                             Text)),
                                                                      _rtacrsAuthenticationResult
                                                                      ::
                                                                      !(Maybe
                                                                          AuthenticationResultType),
                                                                      _rtacrsSession
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _rtacrsResponseStatus
                                                                      :: !Int}
                                        deriving (Eq, Show, Data, Typeable,
                                                  Generic)

-- | Creates a value of 'RespondToAuthChallengeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtacrsChallengeName' - The challenge name. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html InitiateAuth> .
--
-- * 'rtacrsChallengeParameters' - The challenge parameters. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html InitiateAuth> .
--
-- * 'rtacrsAuthenticationResult' - The result returned by the server in response to the request to respond to the authentication challenge.
--
-- * 'rtacrsSession' - The session which should be passed both ways in challenge-response calls to the service. If the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
--
-- * 'rtacrsResponseStatus' - -- | The response status code.
respondToAuthChallengeResponse
    :: Int -- ^ 'rtacrsResponseStatus'
    -> RespondToAuthChallengeResponse
respondToAuthChallengeResponse pResponseStatus_
  = RespondToAuthChallengeResponse'{_rtacrsChallengeName
                                      = Nothing,
                                    _rtacrsChallengeParameters = Nothing,
                                    _rtacrsAuthenticationResult = Nothing,
                                    _rtacrsSession = Nothing,
                                    _rtacrsResponseStatus = pResponseStatus_}

-- | The challenge name. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html InitiateAuth> .
rtacrsChallengeName :: Lens' RespondToAuthChallengeResponse (Maybe ChallengeNameType)
rtacrsChallengeName = lens _rtacrsChallengeName (\ s a -> s{_rtacrsChallengeName = a})

-- | The challenge parameters. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html InitiateAuth> .
rtacrsChallengeParameters :: Lens' RespondToAuthChallengeResponse (HashMap Text Text)
rtacrsChallengeParameters = lens _rtacrsChallengeParameters (\ s a -> s{_rtacrsChallengeParameters = a}) . _Default . _Map

-- | The result returned by the server in response to the request to respond to the authentication challenge.
rtacrsAuthenticationResult :: Lens' RespondToAuthChallengeResponse (Maybe AuthenticationResultType)
rtacrsAuthenticationResult = lens _rtacrsAuthenticationResult (\ s a -> s{_rtacrsAuthenticationResult = a})

-- | The session which should be passed both ways in challenge-response calls to the service. If the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
rtacrsSession :: Lens' RespondToAuthChallengeResponse (Maybe Text)
rtacrsSession = lens _rtacrsSession (\ s a -> s{_rtacrsSession = a})

-- | -- | The response status code.
rtacrsResponseStatus :: Lens' RespondToAuthChallengeResponse Int
rtacrsResponseStatus = lens _rtacrsResponseStatus (\ s a -> s{_rtacrsResponseStatus = a})

instance NFData RespondToAuthChallengeResponse where
