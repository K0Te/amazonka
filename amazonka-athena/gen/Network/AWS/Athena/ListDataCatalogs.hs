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
-- Module      : Network.AWS.Athena.ListDataCatalogs
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the data catalogs in the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListDataCatalogs
    (
    -- * Creating a Request
      listDataCatalogs
    , ListDataCatalogs
    -- * Request Lenses
    , ldcNextToken
    , ldcMaxResults

    -- * Destructuring the Response
    , listDataCatalogsResponse
    , ListDataCatalogsResponse
    -- * Response Lenses
    , ldcrsDataCatalogsSummary
    , ldcrsNextToken
    , ldcrsResponseStatus
    ) where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDataCatalogs' smart constructor.
data ListDataCatalogs = ListDataCatalogs'{_ldcNextToken
                                          :: !(Maybe Text),
                                          _ldcMaxResults :: !(Maybe Nat)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDataCatalogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcNextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
--
-- * 'ldcMaxResults' - Specifies the maximum number of data catalogs to return.
listDataCatalogs
    :: ListDataCatalogs
listDataCatalogs
  = ListDataCatalogs'{_ldcNextToken = Nothing,
                      _ldcMaxResults = Nothing}

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
ldcNextToken :: Lens' ListDataCatalogs (Maybe Text)
ldcNextToken = lens _ldcNextToken (\ s a -> s{_ldcNextToken = a})

-- | Specifies the maximum number of data catalogs to return.
ldcMaxResults :: Lens' ListDataCatalogs (Maybe Natural)
ldcMaxResults = lens _ldcMaxResults (\ s a -> s{_ldcMaxResults = a}) . mapping _Nat

instance AWSPager ListDataCatalogs where
        page rq rs
          | stop (rs ^. ldcrsNextToken) = Nothing
          | stop (rs ^. ldcrsDataCatalogsSummary) = Nothing
          | otherwise =
            Just $ rq & ldcNextToken .~ rs ^. ldcrsNextToken

instance AWSRequest ListDataCatalogs where
        type Rs ListDataCatalogs = ListDataCatalogsResponse
        request = postJSON athena
        response
          = receiveJSON
              (\ s h x ->
                 ListDataCatalogsResponse' <$>
                   (x .?> "DataCatalogsSummary" .!@ mempty) <*>
                     (x .?> "NextToken")
                     <*> (pure (fromEnum s)))

instance Hashable ListDataCatalogs where

instance NFData ListDataCatalogs where

instance ToHeaders ListDataCatalogs where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonAthena.ListDataCatalogs" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON ListDataCatalogs where
        toJSON ListDataCatalogs'{..}
          = object
              (catMaybes
                 [("NextToken" .=) <$> _ldcNextToken,
                  ("MaxResults" .=) <$> _ldcMaxResults])

instance ToPath ListDataCatalogs where
        toPath = const "/"

instance ToQuery ListDataCatalogs where
        toQuery = const mempty

-- | /See:/ 'listDataCatalogsResponse' smart constructor.
data ListDataCatalogsResponse = ListDataCatalogsResponse'{_ldcrsDataCatalogsSummary
                                                          ::
                                                          !(Maybe
                                                              [DataCatalogSummary]),
                                                          _ldcrsNextToken ::
                                                          !(Maybe Text),
                                                          _ldcrsResponseStatus
                                                          :: !Int}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'ListDataCatalogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcrsDataCatalogsSummary' - A summary list of data catalogs.
--
-- * 'ldcrsNextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
--
-- * 'ldcrsResponseStatus' - -- | The response status code.
listDataCatalogsResponse
    :: Int -- ^ 'ldcrsResponseStatus'
    -> ListDataCatalogsResponse
listDataCatalogsResponse pResponseStatus_
  = ListDataCatalogsResponse'{_ldcrsDataCatalogsSummary
                                = Nothing,
                              _ldcrsNextToken = Nothing,
                              _ldcrsResponseStatus = pResponseStatus_}

-- | A summary list of data catalogs.
ldcrsDataCatalogsSummary :: Lens' ListDataCatalogsResponse [DataCatalogSummary]
ldcrsDataCatalogsSummary = lens _ldcrsDataCatalogsSummary (\ s a -> s{_ldcrsDataCatalogsSummary = a}) . _Default . _Coerce

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
ldcrsNextToken :: Lens' ListDataCatalogsResponse (Maybe Text)
ldcrsNextToken = lens _ldcrsNextToken (\ s a -> s{_ldcrsNextToken = a})

-- | -- | The response status code.
ldcrsResponseStatus :: Lens' ListDataCatalogsResponse Int
ldcrsResponseStatus = lens _ldcrsResponseStatus (\ s a -> s{_ldcrsResponseStatus = a})

instance NFData ListDataCatalogsResponse where
