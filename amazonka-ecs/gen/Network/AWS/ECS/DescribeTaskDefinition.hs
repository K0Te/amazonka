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
-- Module      : Network.AWS.ECS.DescribeTaskDefinition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a task definition. You can specify a @family@ and @revision@ to find information about a specific task definition, or you can simply specify the family to find the latest @ACTIVE@ revision in that family.
--
--
module Network.AWS.ECS.DescribeTaskDefinition
    (
    -- * Creating a Request
      describeTaskDefinition
    , DescribeTaskDefinition
    -- * Request Lenses
    , dtdInclude
    , dtdTaskDefinition

    -- * Destructuring the Response
    , describeTaskDefinitionResponse
    , DescribeTaskDefinitionResponse
    -- * Response Lenses
    , desrsTaskDefinition
    , desrsTags
    , desrsResponseStatus
    ) where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTaskDefinition' smart constructor.
data DescribeTaskDefinition = DescribeTaskDefinition'{_dtdInclude
                                                      ::
                                                      !(Maybe
                                                          [TaskDefinitionField]),
                                                      _dtdTaskDefinition ::
                                                      !Text}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'DescribeTaskDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtdInclude' - Specifies whether to see the resource tags for the task definition. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
--
-- * 'dtdTaskDefinition' - The @family@ for the latest @ACTIVE@ revision, @family@ and @revision@ (@family:revision@ ) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.
describeTaskDefinition
    :: Text -- ^ 'dtdTaskDefinition'
    -> DescribeTaskDefinition
describeTaskDefinition pTaskDefinition_
  = DescribeTaskDefinition'{_dtdInclude = Nothing,
                            _dtdTaskDefinition = pTaskDefinition_}

-- | Specifies whether to see the resource tags for the task definition. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
dtdInclude :: Lens' DescribeTaskDefinition [TaskDefinitionField]
dtdInclude = lens _dtdInclude (\ s a -> s{_dtdInclude = a}) . _Default . _Coerce

-- | The @family@ for the latest @ACTIVE@ revision, @family@ and @revision@ (@family:revision@ ) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.
dtdTaskDefinition :: Lens' DescribeTaskDefinition Text
dtdTaskDefinition = lens _dtdTaskDefinition (\ s a -> s{_dtdTaskDefinition = a})

instance AWSRequest DescribeTaskDefinition where
        type Rs DescribeTaskDefinition =
             DescribeTaskDefinitionResponse
        request = postJSON ecs
        response
          = receiveJSON
              (\ s h x ->
                 DescribeTaskDefinitionResponse' <$>
                   (x .?> "taskDefinition") <*>
                     (x .?> "tags" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable DescribeTaskDefinition where

instance NFData DescribeTaskDefinition where

instance ToHeaders DescribeTaskDefinition where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerServiceV20141113.DescribeTaskDefinition"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeTaskDefinition where
        toJSON DescribeTaskDefinition'{..}
          = object
              (catMaybes
                 [("include" .=) <$> _dtdInclude,
                  Just ("taskDefinition" .= _dtdTaskDefinition)])

instance ToPath DescribeTaskDefinition where
        toPath = const "/"

instance ToQuery DescribeTaskDefinition where
        toQuery = const mempty

-- | /See:/ 'describeTaskDefinitionResponse' smart constructor.
data DescribeTaskDefinitionResponse = DescribeTaskDefinitionResponse'{_desrsTaskDefinition
                                                                      ::
                                                                      !(Maybe
                                                                          TaskDefinition),
                                                                      _desrsTags
                                                                      ::
                                                                      !(Maybe
                                                                          [Tag]),
                                                                      _desrsResponseStatus
                                                                      :: !Int}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'DescribeTaskDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsTaskDefinition' - The full task definition description.
--
-- * 'desrsTags' - The metadata that is applied to the task definition to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeTaskDefinitionResponse
    :: Int -- ^ 'desrsResponseStatus'
    -> DescribeTaskDefinitionResponse
describeTaskDefinitionResponse pResponseStatus_
  = DescribeTaskDefinitionResponse'{_desrsTaskDefinition
                                      = Nothing,
                                    _desrsTags = Nothing,
                                    _desrsResponseStatus = pResponseStatus_}

-- | The full task definition description.
desrsTaskDefinition :: Lens' DescribeTaskDefinitionResponse (Maybe TaskDefinition)
desrsTaskDefinition = lens _desrsTaskDefinition (\ s a -> s{_desrsTaskDefinition = a})

-- | The metadata that is applied to the task definition to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
desrsTags :: Lens' DescribeTaskDefinitionResponse [Tag]
desrsTags = lens _desrsTags (\ s a -> s{_desrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeTaskDefinitionResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\ s a -> s{_desrsResponseStatus = a})

instance NFData DescribeTaskDefinitionResponse where
