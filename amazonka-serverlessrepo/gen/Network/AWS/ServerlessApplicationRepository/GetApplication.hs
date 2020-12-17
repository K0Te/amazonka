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
-- Module      : Network.AWS.ServerlessApplicationRepository.GetApplication
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified application.
--
--
module Network.AWS.ServerlessApplicationRepository.GetApplication
    (
    -- * Creating a Request
      getApplication
    , GetApplication
    -- * Request Lenses
    , gaSemanticVersion
    , gaApplicationId

    -- * Destructuring the Response
    , getApplicationResponse
    , GetApplicationResponse
    -- * Response Lenses
    , garsCreationTime
    , garsHomePageURL
    , garsLicenseURL
    , garsReadmeURL
    , garsApplicationId
    , garsName
    , garsVersion
    , garsAuthor
    , garsLabels
    , garsVerifiedAuthorURL
    , garsDescription
    , garsSpdxLicenseId
    , garsIsVerifiedAuthor
    , garsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'getApplication' smart constructor.
data GetApplication = GetApplication'{_gaSemanticVersion
                                      :: !(Maybe Text),
                                      _gaApplicationId :: !Text}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaSemanticVersion' - The semantic version of the application to get.
--
-- * 'gaApplicationId' - The Amazon Resource Name (ARN) of the application.
getApplication
    :: Text -- ^ 'gaApplicationId'
    -> GetApplication
getApplication pApplicationId_
  = GetApplication'{_gaSemanticVersion = Nothing,
                    _gaApplicationId = pApplicationId_}

-- | The semantic version of the application to get.
gaSemanticVersion :: Lens' GetApplication (Maybe Text)
gaSemanticVersion = lens _gaSemanticVersion (\ s a -> s{_gaSemanticVersion = a})

-- | The Amazon Resource Name (ARN) of the application.
gaApplicationId :: Lens' GetApplication Text
gaApplicationId = lens _gaApplicationId (\ s a -> s{_gaApplicationId = a})

instance AWSRequest GetApplication where
        type Rs GetApplication = GetApplicationResponse
        request = get serverlessApplicationRepository
        response
          = receiveJSON
              (\ s h x ->
                 GetApplicationResponse' <$>
                   (x .?> "creationTime") <*> (x .?> "homePageUrl") <*>
                     (x .?> "licenseUrl")
                     <*> (x .?> "readmeUrl")
                     <*> (x .?> "applicationId")
                     <*> (x .?> "name")
                     <*> (x .?> "version")
                     <*> (x .?> "author")
                     <*> (x .?> "labels" .!@ mempty)
                     <*> (x .?> "verifiedAuthorUrl")
                     <*> (x .?> "description")
                     <*> (x .?> "spdxLicenseId")
                     <*> (x .?> "isVerifiedAuthor")
                     <*> (pure (fromEnum s)))

instance Hashable GetApplication where

instance NFData GetApplication where

instance ToHeaders GetApplication where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath GetApplication where
        toPath GetApplication'{..}
          = mconcat ["/applications/", toBS _gaApplicationId]

instance ToQuery GetApplication where
        toQuery GetApplication'{..}
          = mconcat ["semanticVersion" =: _gaSemanticVersion]

-- | /See:/ 'getApplicationResponse' smart constructor.
data GetApplicationResponse = GetApplicationResponse'{_garsCreationTime
                                                      :: !(Maybe Text),
                                                      _garsHomePageURL ::
                                                      !(Maybe Text),
                                                      _garsLicenseURL ::
                                                      !(Maybe Text),
                                                      _garsReadmeURL ::
                                                      !(Maybe Text),
                                                      _garsApplicationId ::
                                                      !(Maybe Text),
                                                      _garsName ::
                                                      !(Maybe Text),
                                                      _garsVersion ::
                                                      !(Maybe Version),
                                                      _garsAuthor ::
                                                      !(Maybe Text),
                                                      _garsLabels ::
                                                      !(Maybe [Text]),
                                                      _garsVerifiedAuthorURL ::
                                                      !(Maybe Text),
                                                      _garsDescription ::
                                                      !(Maybe Text),
                                                      _garsSpdxLicenseId ::
                                                      !(Maybe Text),
                                                      _garsIsVerifiedAuthor ::
                                                      !(Maybe Bool),
                                                      _garsResponseStatus ::
                                                      !Int}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'GetApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garsCreationTime' - The date and time this resource was created.
--
-- * 'garsHomePageURL' - A URL with more information about the application, for example the location of your GitHub repository for the application.
--
-- * 'garsLicenseURL' - A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
--
-- * 'garsReadmeURL' - A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
--
-- * 'garsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'garsName' - The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
--
-- * 'garsVersion' - Version information about the application.
--
-- * 'garsAuthor' - The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
--
-- * 'garsLabels' - Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
--
-- * 'garsVerifiedAuthorURL' - The URL to the public profile of a verified author. This URL is submitted by the author.
--
-- * 'garsDescription' - The description of the application. Minimum length=1. Maximum length=256
--
-- * 'garsSpdxLicenseId' - A valid identifier from https://spdx.org/licenses/.
--
-- * 'garsIsVerifiedAuthor' - Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
--
-- * 'garsResponseStatus' - -- | The response status code.
getApplicationResponse
    :: Int -- ^ 'garsResponseStatus'
    -> GetApplicationResponse
getApplicationResponse pResponseStatus_
  = GetApplicationResponse'{_garsCreationTime =
                              Nothing,
                            _garsHomePageURL = Nothing,
                            _garsLicenseURL = Nothing, _garsReadmeURL = Nothing,
                            _garsApplicationId = Nothing, _garsName = Nothing,
                            _garsVersion = Nothing, _garsAuthor = Nothing,
                            _garsLabels = Nothing,
                            _garsVerifiedAuthorURL = Nothing,
                            _garsDescription = Nothing,
                            _garsSpdxLicenseId = Nothing,
                            _garsIsVerifiedAuthor = Nothing,
                            _garsResponseStatus = pResponseStatus_}

-- | The date and time this resource was created.
garsCreationTime :: Lens' GetApplicationResponse (Maybe Text)
garsCreationTime = lens _garsCreationTime (\ s a -> s{_garsCreationTime = a})

-- | A URL with more information about the application, for example the location of your GitHub repository for the application.
garsHomePageURL :: Lens' GetApplicationResponse (Maybe Text)
garsHomePageURL = lens _garsHomePageURL (\ s a -> s{_garsHomePageURL = a})

-- | A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
garsLicenseURL :: Lens' GetApplicationResponse (Maybe Text)
garsLicenseURL = lens _garsLicenseURL (\ s a -> s{_garsLicenseURL = a})

-- | A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
garsReadmeURL :: Lens' GetApplicationResponse (Maybe Text)
garsReadmeURL = lens _garsReadmeURL (\ s a -> s{_garsReadmeURL = a})

-- | The application Amazon Resource Name (ARN).
garsApplicationId :: Lens' GetApplicationResponse (Maybe Text)
garsApplicationId = lens _garsApplicationId (\ s a -> s{_garsApplicationId = a})

-- | The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
garsName :: Lens' GetApplicationResponse (Maybe Text)
garsName = lens _garsName (\ s a -> s{_garsName = a})

-- | Version information about the application.
garsVersion :: Lens' GetApplicationResponse (Maybe Version)
garsVersion = lens _garsVersion (\ s a -> s{_garsVersion = a})

-- | The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
garsAuthor :: Lens' GetApplicationResponse (Maybe Text)
garsAuthor = lens _garsAuthor (\ s a -> s{_garsAuthor = a})

-- | Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
garsLabels :: Lens' GetApplicationResponse [Text]
garsLabels = lens _garsLabels (\ s a -> s{_garsLabels = a}) . _Default . _Coerce

-- | The URL to the public profile of a verified author. This URL is submitted by the author.
garsVerifiedAuthorURL :: Lens' GetApplicationResponse (Maybe Text)
garsVerifiedAuthorURL = lens _garsVerifiedAuthorURL (\ s a -> s{_garsVerifiedAuthorURL = a})

-- | The description of the application. Minimum length=1. Maximum length=256
garsDescription :: Lens' GetApplicationResponse (Maybe Text)
garsDescription = lens _garsDescription (\ s a -> s{_garsDescription = a})

-- | A valid identifier from https://spdx.org/licenses/.
garsSpdxLicenseId :: Lens' GetApplicationResponse (Maybe Text)
garsSpdxLicenseId = lens _garsSpdxLicenseId (\ s a -> s{_garsSpdxLicenseId = a})

-- | Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
garsIsVerifiedAuthor :: Lens' GetApplicationResponse (Maybe Bool)
garsIsVerifiedAuthor = lens _garsIsVerifiedAuthor (\ s a -> s{_garsIsVerifiedAuthor = a})

-- | -- | The response status code.
garsResponseStatus :: Lens' GetApplicationResponse Int
garsResponseStatus = lens _garsResponseStatus (\ s a -> s{_garsResponseStatus = a})

instance NFData GetApplicationResponse where
