{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.IoTData
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.IoTData where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.IoTData
import Test.AWS.IoTData.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetThingShadow $
--             getThingShadow
--
--         , requestListNamedShadowsForThing $
--             listNamedShadowsForThing
--
--         , requestDeleteThingShadow $
--             deleteThingShadow
--
--         , requestUpdateThingShadow $
--             updateThingShadow
--
--         , requestPublish $
--             publish
--
--           ]

--     , testGroup "response"
--         [ responseGetThingShadow $
--             getThingShadowResponse
--
--         , responseListNamedShadowsForThing $
--             listNamedShadowsForThingResponse
--
--         , responseDeleteThingShadow $
--             deleteThingShadowResponse
--
--         , responseUpdateThingShadow $
--             updateThingShadowResponse
--
--         , responsePublish $
--             publishResponse
--
--           ]
--     ]

-- Requests

requestGetThingShadow :: GetThingShadow -> TestTree
requestGetThingShadow = req
    "GetThingShadow"
    "fixture/GetThingShadow.yaml"

requestListNamedShadowsForThing :: ListNamedShadowsForThing -> TestTree
requestListNamedShadowsForThing = req
    "ListNamedShadowsForThing"
    "fixture/ListNamedShadowsForThing.yaml"

requestDeleteThingShadow :: DeleteThingShadow -> TestTree
requestDeleteThingShadow = req
    "DeleteThingShadow"
    "fixture/DeleteThingShadow.yaml"

requestUpdateThingShadow :: UpdateThingShadow -> TestTree
requestUpdateThingShadow = req
    "UpdateThingShadow"
    "fixture/UpdateThingShadow.yaml"

requestPublish :: Publish -> TestTree
requestPublish = req
    "Publish"
    "fixture/Publish.yaml"

-- Responses

responseGetThingShadow :: GetThingShadowResponse -> TestTree
responseGetThingShadow = res
    "GetThingShadowResponse"
    "fixture/GetThingShadowResponse.proto"
    ioTData
    (Proxy :: Proxy GetThingShadow)

responseListNamedShadowsForThing :: ListNamedShadowsForThingResponse -> TestTree
responseListNamedShadowsForThing = res
    "ListNamedShadowsForThingResponse"
    "fixture/ListNamedShadowsForThingResponse.proto"
    ioTData
    (Proxy :: Proxy ListNamedShadowsForThing)

responseDeleteThingShadow :: DeleteThingShadowResponse -> TestTree
responseDeleteThingShadow = res
    "DeleteThingShadowResponse"
    "fixture/DeleteThingShadowResponse.proto"
    ioTData
    (Proxy :: Proxy DeleteThingShadow)

responseUpdateThingShadow :: UpdateThingShadowResponse -> TestTree
responseUpdateThingShadow = res
    "UpdateThingShadowResponse"
    "fixture/UpdateThingShadowResponse.proto"
    ioTData
    (Proxy :: Proxy UpdateThingShadow)

responsePublish :: PublishResponse -> TestTree
responsePublish = res
    "PublishResponse"
    "fixture/PublishResponse.proto"
    ioTData
    (Proxy :: Proxy Publish)
