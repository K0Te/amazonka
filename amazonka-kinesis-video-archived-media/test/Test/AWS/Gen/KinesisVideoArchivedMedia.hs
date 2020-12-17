{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.KinesisVideoArchivedMedia
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.KinesisVideoArchivedMedia where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.KinesisVideoArchivedMedia
import Test.AWS.KinesisVideoArchivedMedia.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetHLSStreamingSessionURL $
--             getHLSStreamingSessionURL
--
--         , requestGetClip $
--             getClip
--
--         , requestGetMediaForFragmentList $
--             getMediaForFragmentList
--
--         , requestListFragments $
--             listFragments
--
--         , requestGetDASHStreamingSessionURL $
--             getDASHStreamingSessionURL
--
--           ]

--     , testGroup "response"
--         [ responseGetHLSStreamingSessionURL $
--             getHLSStreamingSessionURLResponse
--
--         , responseGetClip $
--             getClipResponse
--
--         , responseGetMediaForFragmentList $
--             getMediaForFragmentListResponse
--
--         , responseListFragments $
--             listFragmentsResponse
--
--         , responseGetDASHStreamingSessionURL $
--             getDASHStreamingSessionURLResponse
--
--           ]
--     ]

-- Requests

requestGetHLSStreamingSessionURL :: GetHLSStreamingSessionURL -> TestTree
requestGetHLSStreamingSessionURL = req
    "GetHLSStreamingSessionURL"
    "fixture/GetHLSStreamingSessionURL.yaml"

requestGetClip :: GetClip -> TestTree
requestGetClip = req
    "GetClip"
    "fixture/GetClip.yaml"

requestGetMediaForFragmentList :: GetMediaForFragmentList -> TestTree
requestGetMediaForFragmentList = req
    "GetMediaForFragmentList"
    "fixture/GetMediaForFragmentList.yaml"

requestListFragments :: ListFragments -> TestTree
requestListFragments = req
    "ListFragments"
    "fixture/ListFragments.yaml"

requestGetDASHStreamingSessionURL :: GetDASHStreamingSessionURL -> TestTree
requestGetDASHStreamingSessionURL = req
    "GetDASHStreamingSessionURL"
    "fixture/GetDASHStreamingSessionURL.yaml"

-- Responses

responseGetHLSStreamingSessionURL :: GetHLSStreamingSessionURLResponse -> TestTree
responseGetHLSStreamingSessionURL = res
    "GetHLSStreamingSessionURLResponse"
    "fixture/GetHLSStreamingSessionURLResponse.proto"
    kinesisVideoArchivedMedia
    (Proxy :: Proxy GetHLSStreamingSessionURL)

responseListFragments :: ListFragmentsResponse -> TestTree
responseListFragments = res
    "ListFragmentsResponse"
    "fixture/ListFragmentsResponse.proto"
    kinesisVideoArchivedMedia
    (Proxy :: Proxy ListFragments)

responseGetDASHStreamingSessionURL :: GetDASHStreamingSessionURLResponse -> TestTree
responseGetDASHStreamingSessionURL = res
    "GetDASHStreamingSessionURLResponse"
    "fixture/GetDASHStreamingSessionURLResponse.proto"
    kinesisVideoArchivedMedia
    (Proxy :: Proxy GetDASHStreamingSessionURL)
