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
-- Module      : Network.AWS.Greengrass.CreateFunctionDefinitionVersion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a Lambda function definition that has already been defined.
module Network.AWS.Greengrass.CreateFunctionDefinitionVersion
    (
    -- * Creating a Request
      createFunctionDefinitionVersion
    , CreateFunctionDefinitionVersion
    -- * Request Lenses
    , cfdvAmznClientToken
    , cfdvDefaultConfig
    , cfdvFunctions
    , cfdvFunctionDefinitionId

    -- * Destructuring the Response
    , createFunctionDefinitionVersionResponse
    , CreateFunctionDefinitionVersionResponse
    -- * Response Lenses
    , cfdvrsARN
    , cfdvrsCreationTimestamp
    , cfdvrsVersion
    , cfdvrsId
    , cfdvrsResponseStatus
    ) where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Information needed to create a function definition version.
--
-- /See:/ 'createFunctionDefinitionVersion' smart constructor.
data CreateFunctionDefinitionVersion = CreateFunctionDefinitionVersion'{_cfdvAmznClientToken
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _cfdvDefaultConfig
                                                                        ::
                                                                        !(Maybe
                                                                            FunctionDefaultConfig),
                                                                        _cfdvFunctions
                                                                        ::
                                                                        !(Maybe
                                                                            [Function]),
                                                                        _cfdvFunctionDefinitionId
                                                                        ::
                                                                        !Text}
                                         deriving (Eq, Read, Show, Data,
                                                   Typeable, Generic)

-- | Creates a value of 'CreateFunctionDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cfdvDefaultConfig' - The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
--
-- * 'cfdvFunctions' - A list of Lambda functions in this function definition version.
--
-- * 'cfdvFunctionDefinitionId' - The ID of the Lambda function definition.
createFunctionDefinitionVersion
    :: Text -- ^ 'cfdvFunctionDefinitionId'
    -> CreateFunctionDefinitionVersion
createFunctionDefinitionVersion
  pFunctionDefinitionId_
  = CreateFunctionDefinitionVersion'{_cfdvAmznClientToken
                                       = Nothing,
                                     _cfdvDefaultConfig = Nothing,
                                     _cfdvFunctions = Nothing,
                                     _cfdvFunctionDefinitionId =
                                       pFunctionDefinitionId_}

-- | A client token used to correlate requests and responses.
cfdvAmznClientToken :: Lens' CreateFunctionDefinitionVersion (Maybe Text)
cfdvAmznClientToken = lens _cfdvAmznClientToken (\ s a -> s{_cfdvAmznClientToken = a})

-- | The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
cfdvDefaultConfig :: Lens' CreateFunctionDefinitionVersion (Maybe FunctionDefaultConfig)
cfdvDefaultConfig = lens _cfdvDefaultConfig (\ s a -> s{_cfdvDefaultConfig = a})

-- | A list of Lambda functions in this function definition version.
cfdvFunctions :: Lens' CreateFunctionDefinitionVersion [Function]
cfdvFunctions = lens _cfdvFunctions (\ s a -> s{_cfdvFunctions = a}) . _Default . _Coerce

-- | The ID of the Lambda function definition.
cfdvFunctionDefinitionId :: Lens' CreateFunctionDefinitionVersion Text
cfdvFunctionDefinitionId = lens _cfdvFunctionDefinitionId (\ s a -> s{_cfdvFunctionDefinitionId = a})

instance AWSRequest CreateFunctionDefinitionVersion
         where
        type Rs CreateFunctionDefinitionVersion =
             CreateFunctionDefinitionVersionResponse
        request = postJSON greengrass
        response
          = receiveJSON
              (\ s h x ->
                 CreateFunctionDefinitionVersionResponse' <$>
                   (x .?> "Arn") <*> (x .?> "CreationTimestamp") <*>
                     (x .?> "Version")
                     <*> (x .?> "Id")
                     <*> (pure (fromEnum s)))

instance Hashable CreateFunctionDefinitionVersion
         where

instance NFData CreateFunctionDefinitionVersion where

instance ToHeaders CreateFunctionDefinitionVersion
         where
        toHeaders CreateFunctionDefinitionVersion'{..}
          = mconcat
              ["X-Amzn-Client-Token" =# _cfdvAmznClientToken,
               "Content-Type" =#
                 ("application/x-amz-json-1.1" :: ByteString)]

instance ToJSON CreateFunctionDefinitionVersion where
        toJSON CreateFunctionDefinitionVersion'{..}
          = object
              (catMaybes
                 [("DefaultConfig" .=) <$> _cfdvDefaultConfig,
                  ("Functions" .=) <$> _cfdvFunctions])

instance ToPath CreateFunctionDefinitionVersion where
        toPath CreateFunctionDefinitionVersion'{..}
          = mconcat
              ["/greengrass/definition/functions/",
               toBS _cfdvFunctionDefinitionId, "/versions"]

instance ToQuery CreateFunctionDefinitionVersion
         where
        toQuery = const mempty

-- | /See:/ 'createFunctionDefinitionVersionResponse' smart constructor.
data CreateFunctionDefinitionVersionResponse = CreateFunctionDefinitionVersionResponse'{_cfdvrsARN
                                                                                        ::
                                                                                        !(Maybe
                                                                                            Text),
                                                                                        _cfdvrsCreationTimestamp
                                                                                        ::
                                                                                        !(Maybe
                                                                                            Text),
                                                                                        _cfdvrsVersion
                                                                                        ::
                                                                                        !(Maybe
                                                                                            Text),
                                                                                        _cfdvrsId
                                                                                        ::
                                                                                        !(Maybe
                                                                                            Text),
                                                                                        _cfdvrsResponseStatus
                                                                                        ::
                                                                                        !Int}
                                                 deriving (Eq, Read, Show, Data,
                                                           Typeable, Generic)

-- | Creates a value of 'CreateFunctionDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdvrsARN' - The ARN of the version.
--
-- * 'cfdvrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'cfdvrsVersion' - The ID of the version.
--
-- * 'cfdvrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'cfdvrsResponseStatus' - -- | The response status code.
createFunctionDefinitionVersionResponse
    :: Int -- ^ 'cfdvrsResponseStatus'
    -> CreateFunctionDefinitionVersionResponse
createFunctionDefinitionVersionResponse
  pResponseStatus_
  = CreateFunctionDefinitionVersionResponse'{_cfdvrsARN
                                               = Nothing,
                                             _cfdvrsCreationTimestamp = Nothing,
                                             _cfdvrsVersion = Nothing,
                                             _cfdvrsId = Nothing,
                                             _cfdvrsResponseStatus =
                                               pResponseStatus_}

-- | The ARN of the version.
cfdvrsARN :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrsARN = lens _cfdvrsARN (\ s a -> s{_cfdvrsARN = a})

-- | The time, in milliseconds since the epoch, when the version was created.
cfdvrsCreationTimestamp :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrsCreationTimestamp = lens _cfdvrsCreationTimestamp (\ s a -> s{_cfdvrsCreationTimestamp = a})

-- | The ID of the version.
cfdvrsVersion :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrsVersion = lens _cfdvrsVersion (\ s a -> s{_cfdvrsVersion = a})

-- | The ID of the parent definition that the version is associated with.
cfdvrsId :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrsId = lens _cfdvrsId (\ s a -> s{_cfdvrsId = a})

-- | -- | The response status code.
cfdvrsResponseStatus :: Lens' CreateFunctionDefinitionVersionResponse Int
cfdvrsResponseStatus = lens _cfdvrsResponseStatus (\ s a -> s{_cfdvrsResponseStatus = a})

instance NFData
           CreateFunctionDefinitionVersionResponse
         where
