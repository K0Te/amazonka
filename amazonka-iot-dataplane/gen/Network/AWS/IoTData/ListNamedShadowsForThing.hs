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
-- Module      : Network.AWS.IoTData.ListNamedShadowsForThing
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the shadows for the specified thing.
--
--
module Network.AWS.IoTData.ListNamedShadowsForThing
    (
    -- * Creating a Request
      listNamedShadowsForThing
    , ListNamedShadowsForThing
    -- * Request Lenses
    , lnsftNextToken
    , lnsftPageSize
    , lnsftThingName

    -- * Destructuring the Response
    , listNamedShadowsForThingResponse
    , ListNamedShadowsForThingResponse
    -- * Response Lenses
    , lnsftrsResults
    , lnsftrsNextToken
    , lnsftrsTimestamp
    , lnsftrsResponseStatus
    ) where

import Network.AWS.IoTData.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listNamedShadowsForThing' smart constructor.
data ListNamedShadowsForThing = ListNamedShadowsForThing'{_lnsftNextToken
                                                          :: !(Maybe Text),
                                                          _lnsftPageSize ::
                                                          !(Maybe Nat),
                                                          _lnsftThingName ::
                                                          !Text}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'ListNamedShadowsForThing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnsftNextToken' - The token to retrieve the next set of results.
--
-- * 'lnsftPageSize' - The result page size.
--
-- * 'lnsftThingName' - The name of the thing.
listNamedShadowsForThing
    :: Text -- ^ 'lnsftThingName'
    -> ListNamedShadowsForThing
listNamedShadowsForThing pThingName_
  = ListNamedShadowsForThing'{_lnsftNextToken =
                                Nothing,
                              _lnsftPageSize = Nothing,
                              _lnsftThingName = pThingName_}

-- | The token to retrieve the next set of results.
lnsftNextToken :: Lens' ListNamedShadowsForThing (Maybe Text)
lnsftNextToken = lens _lnsftNextToken (\ s a -> s{_lnsftNextToken = a})

-- | The result page size.
lnsftPageSize :: Lens' ListNamedShadowsForThing (Maybe Natural)
lnsftPageSize = lens _lnsftPageSize (\ s a -> s{_lnsftPageSize = a}) . mapping _Nat

-- | The name of the thing.
lnsftThingName :: Lens' ListNamedShadowsForThing Text
lnsftThingName = lens _lnsftThingName (\ s a -> s{_lnsftThingName = a})

instance AWSRequest ListNamedShadowsForThing where
        type Rs ListNamedShadowsForThing =
             ListNamedShadowsForThingResponse
        request = get ioTData
        response
          = receiveJSON
              (\ s h x ->
                 ListNamedShadowsForThingResponse' <$>
                   (x .?> "results" .!@ mempty) <*> (x .?> "nextToken")
                     <*> (x .?> "timestamp")
                     <*> (pure (fromEnum s)))

instance Hashable ListNamedShadowsForThing where

instance NFData ListNamedShadowsForThing where

instance ToHeaders ListNamedShadowsForThing where
        toHeaders = const mempty

instance ToPath ListNamedShadowsForThing where
        toPath ListNamedShadowsForThing'{..}
          = mconcat
              ["/api/things/shadow/ListNamedShadowsForThing/",
               toBS _lnsftThingName]

instance ToQuery ListNamedShadowsForThing where
        toQuery ListNamedShadowsForThing'{..}
          = mconcat
              ["nextToken" =: _lnsftNextToken,
               "pageSize" =: _lnsftPageSize]

-- | /See:/ 'listNamedShadowsForThingResponse' smart constructor.
data ListNamedShadowsForThingResponse = ListNamedShadowsForThingResponse'{_lnsftrsResults
                                                                          ::
                                                                          !(Maybe
                                                                              [Text]),
                                                                          _lnsftrsNextToken
                                                                          ::
                                                                          !(Maybe
                                                                              Text),
                                                                          _lnsftrsTimestamp
                                                                          ::
                                                                          !(Maybe
                                                                              Integer),
                                                                          _lnsftrsResponseStatus
                                                                          ::
                                                                          !Int}
                                          deriving (Eq, Read, Show, Data,
                                                    Typeable, Generic)

-- | Creates a value of 'ListNamedShadowsForThingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnsftrsResults' - The list of shadows for the specified thing.
--
-- * 'lnsftrsNextToken' - The token for the next set of results, or null if there are no additional results.
--
-- * 'lnsftrsTimestamp' - The Epoch date and time the response was generated by AWS IoT.
--
-- * 'lnsftrsResponseStatus' - -- | The response status code.
listNamedShadowsForThingResponse
    :: Int -- ^ 'lnsftrsResponseStatus'
    -> ListNamedShadowsForThingResponse
listNamedShadowsForThingResponse pResponseStatus_
  = ListNamedShadowsForThingResponse'{_lnsftrsResults =
                                        Nothing,
                                      _lnsftrsNextToken = Nothing,
                                      _lnsftrsTimestamp = Nothing,
                                      _lnsftrsResponseStatus = pResponseStatus_}

-- | The list of shadows for the specified thing.
lnsftrsResults :: Lens' ListNamedShadowsForThingResponse [Text]
lnsftrsResults = lens _lnsftrsResults (\ s a -> s{_lnsftrsResults = a}) . _Default . _Coerce

-- | The token for the next set of results, or null if there are no additional results.
lnsftrsNextToken :: Lens' ListNamedShadowsForThingResponse (Maybe Text)
lnsftrsNextToken = lens _lnsftrsNextToken (\ s a -> s{_lnsftrsNextToken = a})

-- | The Epoch date and time the response was generated by AWS IoT.
lnsftrsTimestamp :: Lens' ListNamedShadowsForThingResponse (Maybe Integer)
lnsftrsTimestamp = lens _lnsftrsTimestamp (\ s a -> s{_lnsftrsTimestamp = a})

-- | -- | The response status code.
lnsftrsResponseStatus :: Lens' ListNamedShadowsForThingResponse Int
lnsftrsResponseStatus = lens _lnsftrsResponseStatus (\ s a -> s{_lnsftrsResponseStatus = a})

instance NFData ListNamedShadowsForThingResponse
         where
