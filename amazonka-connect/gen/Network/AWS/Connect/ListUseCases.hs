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
-- Module      : Network.AWS.Connect.ListUseCases
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- List the use cases. 
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListUseCases
    (
    -- * Creating a Request
      listUseCases
    , ListUseCases
    -- * Request Lenses
    , lucNextToken
    , lucMaxResults
    , lucInstanceId
    , lucIntegrationAssociationId

    -- * Destructuring the Response
    , listUseCasesResponse
    , ListUseCasesResponse
    -- * Response Lenses
    , lucrsUseCaseSummaryList
    , lucrsNextToken
    , lucrsResponseStatus
    ) where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides summary information about the use cases for the specified Amazon Connect AppIntegration association.
--
--
--
-- /See:/ 'listUseCases' smart constructor.
data ListUseCases = ListUseCases'{_lucNextToken ::
                                  !(Maybe Text),
                                  _lucMaxResults :: !(Maybe Nat),
                                  _lucInstanceId :: !Text,
                                  _lucIntegrationAssociationId :: !Text}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUseCases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lucNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lucMaxResults' - The maximimum number of results to return per page.
--
-- * 'lucInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'lucIntegrationAssociationId' - The identifier for the integration association.
listUseCases
    :: Text -- ^ 'lucInstanceId'
    -> Text -- ^ 'lucIntegrationAssociationId'
    -> ListUseCases
listUseCases pInstanceId_ pIntegrationAssociationId_
  = ListUseCases'{_lucNextToken = Nothing,
                  _lucMaxResults = Nothing,
                  _lucInstanceId = pInstanceId_,
                  _lucIntegrationAssociationId =
                    pIntegrationAssociationId_}

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lucNextToken :: Lens' ListUseCases (Maybe Text)
lucNextToken = lens _lucNextToken (\ s a -> s{_lucNextToken = a})

-- | The maximimum number of results to return per page.
lucMaxResults :: Lens' ListUseCases (Maybe Natural)
lucMaxResults = lens _lucMaxResults (\ s a -> s{_lucMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lucInstanceId :: Lens' ListUseCases Text
lucInstanceId = lens _lucInstanceId (\ s a -> s{_lucInstanceId = a})

-- | The identifier for the integration association.
lucIntegrationAssociationId :: Lens' ListUseCases Text
lucIntegrationAssociationId = lens _lucIntegrationAssociationId (\ s a -> s{_lucIntegrationAssociationId = a})

instance AWSPager ListUseCases where
        page rq rs
          | stop (rs ^. lucrsNextToken) = Nothing
          | stop (rs ^. lucrsUseCaseSummaryList) = Nothing
          | otherwise =
            Just $ rq & lucNextToken .~ rs ^. lucrsNextToken

instance AWSRequest ListUseCases where
        type Rs ListUseCases = ListUseCasesResponse
        request = get connect
        response
          = receiveJSON
              (\ s h x ->
                 ListUseCasesResponse' <$>
                   (x .?> "UseCaseSummaryList" .!@ mempty) <*>
                     (x .?> "NextToken")
                     <*> (pure (fromEnum s)))

instance Hashable ListUseCases where

instance NFData ListUseCases where

instance ToHeaders ListUseCases where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath ListUseCases where
        toPath ListUseCases'{..}
          = mconcat
              ["/instance/", toBS _lucInstanceId,
               "/integration-associations/",
               toBS _lucIntegrationAssociationId, "/use-cases"]

instance ToQuery ListUseCases where
        toQuery ListUseCases'{..}
          = mconcat
              ["nextToken" =: _lucNextToken,
               "maxResults" =: _lucMaxResults]

-- | /See:/ 'listUseCasesResponse' smart constructor.
data ListUseCasesResponse = ListUseCasesResponse'{_lucrsUseCaseSummaryList
                                                  :: !(Maybe [UseCase]),
                                                  _lucrsNextToken ::
                                                  !(Maybe Text),
                                                  _lucrsResponseStatus :: !Int}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUseCasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lucrsUseCaseSummaryList' - The use cases.
--
-- * 'lucrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lucrsResponseStatus' - -- | The response status code.
listUseCasesResponse
    :: Int -- ^ 'lucrsResponseStatus'
    -> ListUseCasesResponse
listUseCasesResponse pResponseStatus_
  = ListUseCasesResponse'{_lucrsUseCaseSummaryList =
                            Nothing,
                          _lucrsNextToken = Nothing,
                          _lucrsResponseStatus = pResponseStatus_}

-- | The use cases.
lucrsUseCaseSummaryList :: Lens' ListUseCasesResponse [UseCase]
lucrsUseCaseSummaryList = lens _lucrsUseCaseSummaryList (\ s a -> s{_lucrsUseCaseSummaryList = a}) . _Default . _Coerce

-- | If there are additional results, this is the token for the next set of results.
lucrsNextToken :: Lens' ListUseCasesResponse (Maybe Text)
lucrsNextToken = lens _lucrsNextToken (\ s a -> s{_lucrsNextToken = a})

-- | -- | The response status code.
lucrsResponseStatus :: Lens' ListUseCasesResponse Int
lucrsResponseStatus = lens _lucrsResponseStatus (\ s a -> s{_lucrsResponseStatus = a})

instance NFData ListUseCasesResponse where
