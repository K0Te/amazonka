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
-- Module      : Network.AWS.CognitoIdentity.CreateIdentityPool
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The keys for @SupportedLoginProviders@ are as follows:
--
--
--     * Facebook: @graph.facebook.com@ 
--
--     * Google: @accounts.google.com@ 
--
--     * Amazon: @www.amazon.com@ 
--
--     * Twitter: @api.twitter.com@ 
--
--     * Digits: @www.digits.com@ 
--
--
--
-- You must use AWS Developer credentials to call this API.
--
module Network.AWS.CognitoIdentity.CreateIdentityPool
    (
    -- * Creating a Request
      createIdentityPool
    , CreateIdentityPool
    -- * Request Lenses
    , cipSamlProviderARNs
    , cipSupportedLoginProviders
    , cipAllowClassicFlow
    , cipDeveloperProviderName
    , cipIdentityPoolTags
    , cipOpenIdConnectProviderARNs
    , cipCognitoIdentityProviders
    , cipIdentityPoolName
    , cipAllowUnauthenticatedIdentities

    -- * Destructuring the Response
    , identityPool
    , IdentityPool
    -- * Response Lenses
    , ipSamlProviderARNs
    , ipSupportedLoginProviders
    , ipAllowClassicFlow
    , ipDeveloperProviderName
    , ipIdentityPoolTags
    , ipOpenIdConnectProviderARNs
    , ipCognitoIdentityProviders
    , ipIdentityPoolId
    , ipIdentityPoolName
    , ipAllowUnauthenticatedIdentities
    ) where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the CreateIdentityPool action.
--
--
--
-- /See:/ 'createIdentityPool' smart constructor.
data CreateIdentityPool = CreateIdentityPool'{_cipSamlProviderARNs
                                              :: !(Maybe [Text]),
                                              _cipSupportedLoginProviders ::
                                              !(Maybe (Map Text Text)),
                                              _cipAllowClassicFlow ::
                                              !(Maybe Bool),
                                              _cipDeveloperProviderName ::
                                              !(Maybe Text),
                                              _cipIdentityPoolTags ::
                                              !(Maybe (Map Text Text)),
                                              _cipOpenIdConnectProviderARNs ::
                                              !(Maybe [Text]),
                                              _cipCognitoIdentityProviders ::
                                              !(Maybe
                                                  [CognitoIdentityProvider]),
                                              _cipIdentityPoolName :: !Text,
                                              _cipAllowUnauthenticatedIdentities
                                              :: !Bool}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateIdentityPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cipSamlProviderARNs' - An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
--
-- * 'cipSupportedLoginProviders' - Optional key:value pairs mapping provider names to provider app IDs.
--
-- * 'cipAllowClassicFlow' - Enables or disables the Basic (Classic) authentication flow. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html Identity Pools (Federated Identities) Authentication Flow> in the /Amazon Cognito Developer Guide/ .
--
-- * 'cipDeveloperProviderName' - The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the @DeveloperProviderName@ , you can use letters as well as period (@.@ ), underscore (@_@ ), and dash (@-@ ). Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.
--
-- * 'cipIdentityPoolTags' - Tags to assign to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.
--
-- * 'cipOpenIdConnectProviderARNs' - A list of OpendID Connect provider ARNs.
--
-- * 'cipCognitoIdentityProviders' - An array of Amazon Cognito user pools and their client IDs.
--
-- * 'cipIdentityPoolName' - A string that you provide.
--
-- * 'cipAllowUnauthenticatedIdentities' - TRUE if the identity pool supports unauthenticated logins.
createIdentityPool
    :: Text -- ^ 'cipIdentityPoolName'
    -> Bool -- ^ 'cipAllowUnauthenticatedIdentities'
    -> CreateIdentityPool
createIdentityPool pIdentityPoolName_
  pAllowUnauthenticatedIdentities_
  = CreateIdentityPool'{_cipSamlProviderARNs = Nothing,
                        _cipSupportedLoginProviders = Nothing,
                        _cipAllowClassicFlow = Nothing,
                        _cipDeveloperProviderName = Nothing,
                        _cipIdentityPoolTags = Nothing,
                        _cipOpenIdConnectProviderARNs = Nothing,
                        _cipCognitoIdentityProviders = Nothing,
                        _cipIdentityPoolName = pIdentityPoolName_,
                        _cipAllowUnauthenticatedIdentities =
                          pAllowUnauthenticatedIdentities_}

-- | An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
cipSamlProviderARNs :: Lens' CreateIdentityPool [Text]
cipSamlProviderARNs = lens _cipSamlProviderARNs (\ s a -> s{_cipSamlProviderARNs = a}) . _Default . _Coerce

-- | Optional key:value pairs mapping provider names to provider app IDs.
cipSupportedLoginProviders :: Lens' CreateIdentityPool (HashMap Text Text)
cipSupportedLoginProviders = lens _cipSupportedLoginProviders (\ s a -> s{_cipSupportedLoginProviders = a}) . _Default . _Map

-- | Enables or disables the Basic (Classic) authentication flow. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html Identity Pools (Federated Identities) Authentication Flow> in the /Amazon Cognito Developer Guide/ .
cipAllowClassicFlow :: Lens' CreateIdentityPool (Maybe Bool)
cipAllowClassicFlow = lens _cipAllowClassicFlow (\ s a -> s{_cipAllowClassicFlow = a})

-- | The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the @DeveloperProviderName@ , you can use letters as well as period (@.@ ), underscore (@_@ ), and dash (@-@ ). Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.
cipDeveloperProviderName :: Lens' CreateIdentityPool (Maybe Text)
cipDeveloperProviderName = lens _cipDeveloperProviderName (\ s a -> s{_cipDeveloperProviderName = a})

-- | Tags to assign to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.
cipIdentityPoolTags :: Lens' CreateIdentityPool (HashMap Text Text)
cipIdentityPoolTags = lens _cipIdentityPoolTags (\ s a -> s{_cipIdentityPoolTags = a}) . _Default . _Map

-- | A list of OpendID Connect provider ARNs.
cipOpenIdConnectProviderARNs :: Lens' CreateIdentityPool [Text]
cipOpenIdConnectProviderARNs = lens _cipOpenIdConnectProviderARNs (\ s a -> s{_cipOpenIdConnectProviderARNs = a}) . _Default . _Coerce

-- | An array of Amazon Cognito user pools and their client IDs.
cipCognitoIdentityProviders :: Lens' CreateIdentityPool [CognitoIdentityProvider]
cipCognitoIdentityProviders = lens _cipCognitoIdentityProviders (\ s a -> s{_cipCognitoIdentityProviders = a}) . _Default . _Coerce

-- | A string that you provide.
cipIdentityPoolName :: Lens' CreateIdentityPool Text
cipIdentityPoolName = lens _cipIdentityPoolName (\ s a -> s{_cipIdentityPoolName = a})

-- | TRUE if the identity pool supports unauthenticated logins.
cipAllowUnauthenticatedIdentities :: Lens' CreateIdentityPool Bool
cipAllowUnauthenticatedIdentities = lens _cipAllowUnauthenticatedIdentities (\ s a -> s{_cipAllowUnauthenticatedIdentities = a})

instance AWSRequest CreateIdentityPool where
        type Rs CreateIdentityPool = IdentityPool
        request = postJSON cognitoIdentity
        response = receiveJSON (\ s h x -> eitherParseJSON x)

instance Hashable CreateIdentityPool where

instance NFData CreateIdentityPool where

instance ToHeaders CreateIdentityPool where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSCognitoIdentityService.CreateIdentityPool" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateIdentityPool where
        toJSON CreateIdentityPool'{..}
          = object
              (catMaybes
                 [("SamlProviderARNs" .=) <$> _cipSamlProviderARNs,
                  ("SupportedLoginProviders" .=) <$>
                    _cipSupportedLoginProviders,
                  ("AllowClassicFlow" .=) <$> _cipAllowClassicFlow,
                  ("DeveloperProviderName" .=) <$>
                    _cipDeveloperProviderName,
                  ("IdentityPoolTags" .=) <$> _cipIdentityPoolTags,
                  ("OpenIdConnectProviderARNs" .=) <$>
                    _cipOpenIdConnectProviderARNs,
                  ("CognitoIdentityProviders" .=) <$>
                    _cipCognitoIdentityProviders,
                  Just ("IdentityPoolName" .= _cipIdentityPoolName),
                  Just
                    ("AllowUnauthenticatedIdentities" .=
                       _cipAllowUnauthenticatedIdentities)])

instance ToPath CreateIdentityPool where
        toPath = const "/"

instance ToQuery CreateIdentityPool where
        toQuery = const mempty
