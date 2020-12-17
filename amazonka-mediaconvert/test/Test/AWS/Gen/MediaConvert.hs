{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MediaConvert
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.MediaConvert where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.MediaConvert
import Test.AWS.MediaConvert.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeletePreset $
--             deletePreset
--
--         , requestUpdatePreset $
--             updatePreset
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestListQueues $
--             listQueues
--
--         , requestDeleteQueue $
--             deleteQueue
--
--         , requestUpdateQueue $
--             updateQueue
--
--         , requestGetPreset $
--             getPreset
--
--         , requestCreateJob $
--             createJob
--
--         , requestListJobs $
--             listJobs
--
--         , requestGetJob $
--             getJob
--
--         , requestCreatePreset $
--             createPreset
--
--         , requestListPresets $
--             listPresets
--
--         , requestDisassociateCertificate $
--             disassociateCertificate
--
--         , requestGetQueue $
--             getQueue
--
--         , requestDescribeEndpoints $
--             describeEndpoints
--
--         , requestCreateQueue $
--             createQueue
--
--         , requestTagResource $
--             tagResource
--
--         , requestCreateJobTemplate $
--             createJobTemplate
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteJobTemplate $
--             deleteJobTemplate
--
--         , requestUpdateJobTemplate $
--             updateJobTemplate
--
--         , requestListJobTemplates $
--             listJobTemplates
--
--         , requestGetJobTemplate $
--             getJobTemplate
--
--         , requestAssociateCertificate $
--             associateCertificate
--
--         , requestCancelJob $
--             cancelJob
--
--           ]

--     , testGroup "response"
--         [ responseDeletePreset $
--             deletePresetResponse
--
--         , responseUpdatePreset $
--             updatePresetResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseListQueues $
--             listQueuesResponse
--
--         , responseDeleteQueue $
--             deleteQueueResponse
--
--         , responseUpdateQueue $
--             updateQueueResponse
--
--         , responseGetPreset $
--             getPresetResponse
--
--         , responseCreateJob $
--             createJobResponse
--
--         , responseListJobs $
--             listJobsResponse
--
--         , responseGetJob $
--             getJobResponse
--
--         , responseCreatePreset $
--             createPresetResponse
--
--         , responseListPresets $
--             listPresetsResponse
--
--         , responseDisassociateCertificate $
--             disassociateCertificateResponse
--
--         , responseGetQueue $
--             getQueueResponse
--
--         , responseDescribeEndpoints $
--             describeEndpointsResponse
--
--         , responseCreateQueue $
--             createQueueResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseCreateJobTemplate $
--             createJobTemplateResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteJobTemplate $
--             deleteJobTemplateResponse
--
--         , responseUpdateJobTemplate $
--             updateJobTemplateResponse
--
--         , responseListJobTemplates $
--             listJobTemplatesResponse
--
--         , responseGetJobTemplate $
--             getJobTemplateResponse
--
--         , responseAssociateCertificate $
--             associateCertificateResponse
--
--         , responseCancelJob $
--             cancelJobResponse
--
--           ]
--     ]

-- Requests

requestDeletePreset :: DeletePreset -> TestTree
requestDeletePreset = req
    "DeletePreset"
    "fixture/DeletePreset.yaml"

requestUpdatePreset :: UpdatePreset -> TestTree
requestUpdatePreset = req
    "UpdatePreset"
    "fixture/UpdatePreset.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource = req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestListQueues :: ListQueues -> TestTree
requestListQueues = req
    "ListQueues"
    "fixture/ListQueues.yaml"

requestDeleteQueue :: DeleteQueue -> TestTree
requestDeleteQueue = req
    "DeleteQueue"
    "fixture/DeleteQueue.yaml"

requestUpdateQueue :: UpdateQueue -> TestTree
requestUpdateQueue = req
    "UpdateQueue"
    "fixture/UpdateQueue.yaml"

requestGetPreset :: GetPreset -> TestTree
requestGetPreset = req
    "GetPreset"
    "fixture/GetPreset.yaml"

requestCreateJob :: CreateJob -> TestTree
requestCreateJob = req
    "CreateJob"
    "fixture/CreateJob.yaml"

requestListJobs :: ListJobs -> TestTree
requestListJobs = req
    "ListJobs"
    "fixture/ListJobs.yaml"

requestGetJob :: GetJob -> TestTree
requestGetJob = req
    "GetJob"
    "fixture/GetJob.yaml"

requestCreatePreset :: CreatePreset -> TestTree
requestCreatePreset = req
    "CreatePreset"
    "fixture/CreatePreset.yaml"

requestListPresets :: ListPresets -> TestTree
requestListPresets = req
    "ListPresets"
    "fixture/ListPresets.yaml"

requestDisassociateCertificate :: DisassociateCertificate -> TestTree
requestDisassociateCertificate = req
    "DisassociateCertificate"
    "fixture/DisassociateCertificate.yaml"

requestGetQueue :: GetQueue -> TestTree
requestGetQueue = req
    "GetQueue"
    "fixture/GetQueue.yaml"

requestDescribeEndpoints :: DescribeEndpoints -> TestTree
requestDescribeEndpoints = req
    "DescribeEndpoints"
    "fixture/DescribeEndpoints.yaml"

requestCreateQueue :: CreateQueue -> TestTree
requestCreateQueue = req
    "CreateQueue"
    "fixture/CreateQueue.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource = req
    "TagResource"
    "fixture/TagResource.yaml"

requestCreateJobTemplate :: CreateJobTemplate -> TestTree
requestCreateJobTemplate = req
    "CreateJobTemplate"
    "fixture/CreateJobTemplate.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource = req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteJobTemplate :: DeleteJobTemplate -> TestTree
requestDeleteJobTemplate = req
    "DeleteJobTemplate"
    "fixture/DeleteJobTemplate.yaml"

requestUpdateJobTemplate :: UpdateJobTemplate -> TestTree
requestUpdateJobTemplate = req
    "UpdateJobTemplate"
    "fixture/UpdateJobTemplate.yaml"

requestListJobTemplates :: ListJobTemplates -> TestTree
requestListJobTemplates = req
    "ListJobTemplates"
    "fixture/ListJobTemplates.yaml"

requestGetJobTemplate :: GetJobTemplate -> TestTree
requestGetJobTemplate = req
    "GetJobTemplate"
    "fixture/GetJobTemplate.yaml"

requestAssociateCertificate :: AssociateCertificate -> TestTree
requestAssociateCertificate = req
    "AssociateCertificate"
    "fixture/AssociateCertificate.yaml"

requestCancelJob :: CancelJob -> TestTree
requestCancelJob = req
    "CancelJob"
    "fixture/CancelJob.yaml"

-- Responses

responseDeletePreset :: DeletePresetResponse -> TestTree
responseDeletePreset = res
    "DeletePresetResponse"
    "fixture/DeletePresetResponse.proto"
    mediaConvert
    (Proxy :: Proxy DeletePreset)

responseUpdatePreset :: UpdatePresetResponse -> TestTree
responseUpdatePreset = res
    "UpdatePresetResponse"
    "fixture/UpdatePresetResponse.proto"
    mediaConvert
    (Proxy :: Proxy UpdatePreset)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource = res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    mediaConvert
    (Proxy :: Proxy ListTagsForResource)

responseListQueues :: ListQueuesResponse -> TestTree
responseListQueues = res
    "ListQueuesResponse"
    "fixture/ListQueuesResponse.proto"
    mediaConvert
    (Proxy :: Proxy ListQueues)

responseDeleteQueue :: DeleteQueueResponse -> TestTree
responseDeleteQueue = res
    "DeleteQueueResponse"
    "fixture/DeleteQueueResponse.proto"
    mediaConvert
    (Proxy :: Proxy DeleteQueue)

responseUpdateQueue :: UpdateQueueResponse -> TestTree
responseUpdateQueue = res
    "UpdateQueueResponse"
    "fixture/UpdateQueueResponse.proto"
    mediaConvert
    (Proxy :: Proxy UpdateQueue)

responseGetPreset :: GetPresetResponse -> TestTree
responseGetPreset = res
    "GetPresetResponse"
    "fixture/GetPresetResponse.proto"
    mediaConvert
    (Proxy :: Proxy GetPreset)

responseCreateJob :: CreateJobResponse -> TestTree
responseCreateJob = res
    "CreateJobResponse"
    "fixture/CreateJobResponse.proto"
    mediaConvert
    (Proxy :: Proxy CreateJob)

responseListJobs :: ListJobsResponse -> TestTree
responseListJobs = res
    "ListJobsResponse"
    "fixture/ListJobsResponse.proto"
    mediaConvert
    (Proxy :: Proxy ListJobs)

responseGetJob :: GetJobResponse -> TestTree
responseGetJob = res
    "GetJobResponse"
    "fixture/GetJobResponse.proto"
    mediaConvert
    (Proxy :: Proxy GetJob)

responseCreatePreset :: CreatePresetResponse -> TestTree
responseCreatePreset = res
    "CreatePresetResponse"
    "fixture/CreatePresetResponse.proto"
    mediaConvert
    (Proxy :: Proxy CreatePreset)

responseListPresets :: ListPresetsResponse -> TestTree
responseListPresets = res
    "ListPresetsResponse"
    "fixture/ListPresetsResponse.proto"
    mediaConvert
    (Proxy :: Proxy ListPresets)

responseDisassociateCertificate :: DisassociateCertificateResponse -> TestTree
responseDisassociateCertificate = res
    "DisassociateCertificateResponse"
    "fixture/DisassociateCertificateResponse.proto"
    mediaConvert
    (Proxy :: Proxy DisassociateCertificate)

responseGetQueue :: GetQueueResponse -> TestTree
responseGetQueue = res
    "GetQueueResponse"
    "fixture/GetQueueResponse.proto"
    mediaConvert
    (Proxy :: Proxy GetQueue)

responseDescribeEndpoints :: DescribeEndpointsResponse -> TestTree
responseDescribeEndpoints = res
    "DescribeEndpointsResponse"
    "fixture/DescribeEndpointsResponse.proto"
    mediaConvert
    (Proxy :: Proxy DescribeEndpoints)

responseCreateQueue :: CreateQueueResponse -> TestTree
responseCreateQueue = res
    "CreateQueueResponse"
    "fixture/CreateQueueResponse.proto"
    mediaConvert
    (Proxy :: Proxy CreateQueue)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource = res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    mediaConvert
    (Proxy :: Proxy TagResource)

responseCreateJobTemplate :: CreateJobTemplateResponse -> TestTree
responseCreateJobTemplate = res
    "CreateJobTemplateResponse"
    "fixture/CreateJobTemplateResponse.proto"
    mediaConvert
    (Proxy :: Proxy CreateJobTemplate)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource = res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    mediaConvert
    (Proxy :: Proxy UntagResource)

responseDeleteJobTemplate :: DeleteJobTemplateResponse -> TestTree
responseDeleteJobTemplate = res
    "DeleteJobTemplateResponse"
    "fixture/DeleteJobTemplateResponse.proto"
    mediaConvert
    (Proxy :: Proxy DeleteJobTemplate)

responseUpdateJobTemplate :: UpdateJobTemplateResponse -> TestTree
responseUpdateJobTemplate = res
    "UpdateJobTemplateResponse"
    "fixture/UpdateJobTemplateResponse.proto"
    mediaConvert
    (Proxy :: Proxy UpdateJobTemplate)

responseListJobTemplates :: ListJobTemplatesResponse -> TestTree
responseListJobTemplates = res
    "ListJobTemplatesResponse"
    "fixture/ListJobTemplatesResponse.proto"
    mediaConvert
    (Proxy :: Proxy ListJobTemplates)

responseGetJobTemplate :: GetJobTemplateResponse -> TestTree
responseGetJobTemplate = res
    "GetJobTemplateResponse"
    "fixture/GetJobTemplateResponse.proto"
    mediaConvert
    (Proxy :: Proxy GetJobTemplate)

responseAssociateCertificate :: AssociateCertificateResponse -> TestTree
responseAssociateCertificate = res
    "AssociateCertificateResponse"
    "fixture/AssociateCertificateResponse.proto"
    mediaConvert
    (Proxy :: Proxy AssociateCertificate)

responseCancelJob :: CancelJobResponse -> TestTree
responseCancelJob = res
    "CancelJobResponse"
    "fixture/CancelJobResponse.proto"
    mediaConvert
    (Proxy :: Proxy CancelJob)
