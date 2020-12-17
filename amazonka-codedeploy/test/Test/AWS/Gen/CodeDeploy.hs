{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CodeDeploy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.CodeDeploy where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.CodeDeploy
import Test.AWS.CodeDeploy.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestRemoveTagsFromOnPremisesInstances $
--             removeTagsFromOnPremisesInstances
--
--         , requestBatchGetDeploymentGroups $
--             batchGetDeploymentGroups
--
--         , requestDeleteDeploymentGroup $
--             deleteDeploymentGroup
--
--         , requestUpdateDeploymentGroup $
--             updateDeploymentGroup
--
--         , requestListOnPremisesInstances $
--             listOnPremisesInstances
--
--         , requestCreateDeploymentConfig $
--             createDeploymentConfig
--
--         , requestGetApplicationRevision $
--             getApplicationRevision
--
--         , requestGetDeployment $
--             getDeployment
--
--         , requestDeleteDeploymentConfig $
--             deleteDeploymentConfig
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetDeploymentConfig $
--             getDeploymentConfig
--
--         , requestCreateDeployment $
--             createDeployment
--
--         , requestBatchGetApplicationRevisions $
--             batchGetApplicationRevisions
--
--         , requestBatchGetDeployments $
--             batchGetDeployments
--
--         , requestGetOnPremisesInstance $
--             getOnPremisesInstance
--
--         , requestRegisterApplicationRevision $
--             registerApplicationRevision
--
--         , requestContinueDeployment $
--             continueDeployment
--
--         , requestBatchGetApplications $
--             batchGetApplications
--
--         , requestDeleteApplication $
--             deleteApplication
--
--         , requestUpdateApplication $
--             updateApplication
--
--         , requestDeleteGitHubAccountToken $
--             deleteGitHubAccountToken
--
--         , requestDeregisterOnPremisesInstance $
--             deregisterOnPremisesInstance
--
--         , requestPutLifecycleEventHookExecutionStatus $
--             putLifecycleEventHookExecutionStatus
--
--         , requestGetDeploymentTarget $
--             getDeploymentTarget
--
--         , requestCreateApplication $
--             createApplication
--
--         , requestBatchGetDeploymentTargets $
--             batchGetDeploymentTargets
--
--         , requestStopDeployment $
--             stopDeployment
--
--         , requestListGitHubAccountTokenNames $
--             listGitHubAccountTokenNames
--
--         , requestGetApplication $
--             getApplication
--
--         , requestListDeploymentGroups $
--             listDeploymentGroups
--
--         , requestBatchGetOnPremisesInstances $
--             batchGetOnPremisesInstances
--
--         , requestRegisterOnPremisesInstance $
--             registerOnPremisesInstance
--
--         , requestCreateDeploymentGroup $
--             createDeploymentGroup
--
--         , requestListDeploymentConfigs $
--             listDeploymentConfigs
--
--         , requestGetDeploymentGroup $
--             getDeploymentGroup
--
--         , requestListDeployments $
--             listDeployments
--
--         , requestTagResource $
--             tagResource
--
--         , requestListApplicationRevisions $
--             listApplicationRevisions
--
--         , requestListApplications $
--             listApplications
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteResourcesByExternalId $
--             deleteResourcesByExternalId
--
--         , requestAddTagsToOnPremisesInstances $
--             addTagsToOnPremisesInstances
--
--         , requestListDeploymentTargets $
--             listDeploymentTargets
--
--           ]

--     , testGroup "response"
--         [ responseRemoveTagsFromOnPremisesInstances $
--             removeTagsFromOnPremisesInstancesResponse
--
--         , responseBatchGetDeploymentGroups $
--             batchGetDeploymentGroupsResponse
--
--         , responseDeleteDeploymentGroup $
--             deleteDeploymentGroupResponse
--
--         , responseUpdateDeploymentGroup $
--             updateDeploymentGroupResponse
--
--         , responseListOnPremisesInstances $
--             listOnPremisesInstancesResponse
--
--         , responseCreateDeploymentConfig $
--             createDeploymentConfigResponse
--
--         , responseGetApplicationRevision $
--             getApplicationRevisionResponse
--
--         , responseGetDeployment $
--             getDeploymentResponse
--
--         , responseDeleteDeploymentConfig $
--             deleteDeploymentConfigResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetDeploymentConfig $
--             getDeploymentConfigResponse
--
--         , responseCreateDeployment $
--             createDeploymentResponse
--
--         , responseBatchGetApplicationRevisions $
--             batchGetApplicationRevisionsResponse
--
--         , responseBatchGetDeployments $
--             batchGetDeploymentsResponse
--
--         , responseGetOnPremisesInstance $
--             getOnPremisesInstanceResponse
--
--         , responseRegisterApplicationRevision $
--             registerApplicationRevisionResponse
--
--         , responseContinueDeployment $
--             continueDeploymentResponse
--
--         , responseBatchGetApplications $
--             batchGetApplicationsResponse
--
--         , responseDeleteApplication $
--             deleteApplicationResponse
--
--         , responseUpdateApplication $
--             updateApplicationResponse
--
--         , responseDeleteGitHubAccountToken $
--             deleteGitHubAccountTokenResponse
--
--         , responseDeregisterOnPremisesInstance $
--             deregisterOnPremisesInstanceResponse
--
--         , responsePutLifecycleEventHookExecutionStatus $
--             putLifecycleEventHookExecutionStatusResponse
--
--         , responseGetDeploymentTarget $
--             getDeploymentTargetResponse
--
--         , responseCreateApplication $
--             createApplicationResponse
--
--         , responseBatchGetDeploymentTargets $
--             batchGetDeploymentTargetsResponse
--
--         , responseStopDeployment $
--             stopDeploymentResponse
--
--         , responseListGitHubAccountTokenNames $
--             listGitHubAccountTokenNamesResponse
--
--         , responseGetApplication $
--             getApplicationResponse
--
--         , responseListDeploymentGroups $
--             listDeploymentGroupsResponse
--
--         , responseBatchGetOnPremisesInstances $
--             batchGetOnPremisesInstancesResponse
--
--         , responseRegisterOnPremisesInstance $
--             registerOnPremisesInstanceResponse
--
--         , responseCreateDeploymentGroup $
--             createDeploymentGroupResponse
--
--         , responseListDeploymentConfigs $
--             listDeploymentConfigsResponse
--
--         , responseGetDeploymentGroup $
--             getDeploymentGroupResponse
--
--         , responseListDeployments $
--             listDeploymentsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListApplicationRevisions $
--             listApplicationRevisionsResponse
--
--         , responseListApplications $
--             listApplicationsResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteResourcesByExternalId $
--             deleteResourcesByExternalIdResponse
--
--         , responseAddTagsToOnPremisesInstances $
--             addTagsToOnPremisesInstancesResponse
--
--         , responseListDeploymentTargets $
--             listDeploymentTargetsResponse
--
--           ]
--     ]

-- Requests

requestRemoveTagsFromOnPremisesInstances :: RemoveTagsFromOnPremisesInstances -> TestTree
requestRemoveTagsFromOnPremisesInstances = req
    "RemoveTagsFromOnPremisesInstances"
    "fixture/RemoveTagsFromOnPremisesInstances.yaml"

requestBatchGetDeploymentGroups :: BatchGetDeploymentGroups -> TestTree
requestBatchGetDeploymentGroups = req
    "BatchGetDeploymentGroups"
    "fixture/BatchGetDeploymentGroups.yaml"

requestDeleteDeploymentGroup :: DeleteDeploymentGroup -> TestTree
requestDeleteDeploymentGroup = req
    "DeleteDeploymentGroup"
    "fixture/DeleteDeploymentGroup.yaml"

requestUpdateDeploymentGroup :: UpdateDeploymentGroup -> TestTree
requestUpdateDeploymentGroup = req
    "UpdateDeploymentGroup"
    "fixture/UpdateDeploymentGroup.yaml"

requestListOnPremisesInstances :: ListOnPremisesInstances -> TestTree
requestListOnPremisesInstances = req
    "ListOnPremisesInstances"
    "fixture/ListOnPremisesInstances.yaml"

requestCreateDeploymentConfig :: CreateDeploymentConfig -> TestTree
requestCreateDeploymentConfig = req
    "CreateDeploymentConfig"
    "fixture/CreateDeploymentConfig.yaml"

requestGetApplicationRevision :: GetApplicationRevision -> TestTree
requestGetApplicationRevision = req
    "GetApplicationRevision"
    "fixture/GetApplicationRevision.yaml"

requestGetDeployment :: GetDeployment -> TestTree
requestGetDeployment = req
    "GetDeployment"
    "fixture/GetDeployment.yaml"

requestDeleteDeploymentConfig :: DeleteDeploymentConfig -> TestTree
requestDeleteDeploymentConfig = req
    "DeleteDeploymentConfig"
    "fixture/DeleteDeploymentConfig.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource = req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetDeploymentConfig :: GetDeploymentConfig -> TestTree
requestGetDeploymentConfig = req
    "GetDeploymentConfig"
    "fixture/GetDeploymentConfig.yaml"

requestCreateDeployment :: CreateDeployment -> TestTree
requestCreateDeployment = req
    "CreateDeployment"
    "fixture/CreateDeployment.yaml"

requestBatchGetApplicationRevisions :: BatchGetApplicationRevisions -> TestTree
requestBatchGetApplicationRevisions = req
    "BatchGetApplicationRevisions"
    "fixture/BatchGetApplicationRevisions.yaml"

requestBatchGetDeployments :: BatchGetDeployments -> TestTree
requestBatchGetDeployments = req
    "BatchGetDeployments"
    "fixture/BatchGetDeployments.yaml"

requestGetOnPremisesInstance :: GetOnPremisesInstance -> TestTree
requestGetOnPremisesInstance = req
    "GetOnPremisesInstance"
    "fixture/GetOnPremisesInstance.yaml"

requestRegisterApplicationRevision :: RegisterApplicationRevision -> TestTree
requestRegisterApplicationRevision = req
    "RegisterApplicationRevision"
    "fixture/RegisterApplicationRevision.yaml"

requestContinueDeployment :: ContinueDeployment -> TestTree
requestContinueDeployment = req
    "ContinueDeployment"
    "fixture/ContinueDeployment.yaml"

requestBatchGetApplications :: BatchGetApplications -> TestTree
requestBatchGetApplications = req
    "BatchGetApplications"
    "fixture/BatchGetApplications.yaml"

requestDeleteApplication :: DeleteApplication -> TestTree
requestDeleteApplication = req
    "DeleteApplication"
    "fixture/DeleteApplication.yaml"

requestUpdateApplication :: UpdateApplication -> TestTree
requestUpdateApplication = req
    "UpdateApplication"
    "fixture/UpdateApplication.yaml"

requestDeleteGitHubAccountToken :: DeleteGitHubAccountToken -> TestTree
requestDeleteGitHubAccountToken = req
    "DeleteGitHubAccountToken"
    "fixture/DeleteGitHubAccountToken.yaml"

requestDeregisterOnPremisesInstance :: DeregisterOnPremisesInstance -> TestTree
requestDeregisterOnPremisesInstance = req
    "DeregisterOnPremisesInstance"
    "fixture/DeregisterOnPremisesInstance.yaml"

requestPutLifecycleEventHookExecutionStatus :: PutLifecycleEventHookExecutionStatus -> TestTree
requestPutLifecycleEventHookExecutionStatus = req
    "PutLifecycleEventHookExecutionStatus"
    "fixture/PutLifecycleEventHookExecutionStatus.yaml"

requestGetDeploymentTarget :: GetDeploymentTarget -> TestTree
requestGetDeploymentTarget = req
    "GetDeploymentTarget"
    "fixture/GetDeploymentTarget.yaml"

requestCreateApplication :: CreateApplication -> TestTree
requestCreateApplication = req
    "CreateApplication"
    "fixture/CreateApplication.yaml"

requestBatchGetDeploymentTargets :: BatchGetDeploymentTargets -> TestTree
requestBatchGetDeploymentTargets = req
    "BatchGetDeploymentTargets"
    "fixture/BatchGetDeploymentTargets.yaml"

requestStopDeployment :: StopDeployment -> TestTree
requestStopDeployment = req
    "StopDeployment"
    "fixture/StopDeployment.yaml"

requestListGitHubAccountTokenNames :: ListGitHubAccountTokenNames -> TestTree
requestListGitHubAccountTokenNames = req
    "ListGitHubAccountTokenNames"
    "fixture/ListGitHubAccountTokenNames.yaml"

requestGetApplication :: GetApplication -> TestTree
requestGetApplication = req
    "GetApplication"
    "fixture/GetApplication.yaml"

requestListDeploymentGroups :: ListDeploymentGroups -> TestTree
requestListDeploymentGroups = req
    "ListDeploymentGroups"
    "fixture/ListDeploymentGroups.yaml"

requestBatchGetOnPremisesInstances :: BatchGetOnPremisesInstances -> TestTree
requestBatchGetOnPremisesInstances = req
    "BatchGetOnPremisesInstances"
    "fixture/BatchGetOnPremisesInstances.yaml"

requestRegisterOnPremisesInstance :: RegisterOnPremisesInstance -> TestTree
requestRegisterOnPremisesInstance = req
    "RegisterOnPremisesInstance"
    "fixture/RegisterOnPremisesInstance.yaml"

requestCreateDeploymentGroup :: CreateDeploymentGroup -> TestTree
requestCreateDeploymentGroup = req
    "CreateDeploymentGroup"
    "fixture/CreateDeploymentGroup.yaml"

requestListDeploymentConfigs :: ListDeploymentConfigs -> TestTree
requestListDeploymentConfigs = req
    "ListDeploymentConfigs"
    "fixture/ListDeploymentConfigs.yaml"

requestGetDeploymentGroup :: GetDeploymentGroup -> TestTree
requestGetDeploymentGroup = req
    "GetDeploymentGroup"
    "fixture/GetDeploymentGroup.yaml"

requestListDeployments :: ListDeployments -> TestTree
requestListDeployments = req
    "ListDeployments"
    "fixture/ListDeployments.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource = req
    "TagResource"
    "fixture/TagResource.yaml"

requestListApplicationRevisions :: ListApplicationRevisions -> TestTree
requestListApplicationRevisions = req
    "ListApplicationRevisions"
    "fixture/ListApplicationRevisions.yaml"

requestListApplications :: ListApplications -> TestTree
requestListApplications = req
    "ListApplications"
    "fixture/ListApplications.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource = req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteResourcesByExternalId :: DeleteResourcesByExternalId -> TestTree
requestDeleteResourcesByExternalId = req
    "DeleteResourcesByExternalId"
    "fixture/DeleteResourcesByExternalId.yaml"

requestAddTagsToOnPremisesInstances :: AddTagsToOnPremisesInstances -> TestTree
requestAddTagsToOnPremisesInstances = req
    "AddTagsToOnPremisesInstances"
    "fixture/AddTagsToOnPremisesInstances.yaml"

requestListDeploymentTargets :: ListDeploymentTargets -> TestTree
requestListDeploymentTargets = req
    "ListDeploymentTargets"
    "fixture/ListDeploymentTargets.yaml"

-- Responses

responseRemoveTagsFromOnPremisesInstances :: RemoveTagsFromOnPremisesInstancesResponse -> TestTree
responseRemoveTagsFromOnPremisesInstances = res
    "RemoveTagsFromOnPremisesInstancesResponse"
    "fixture/RemoveTagsFromOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy RemoveTagsFromOnPremisesInstances)

responseBatchGetDeploymentGroups :: BatchGetDeploymentGroupsResponse -> TestTree
responseBatchGetDeploymentGroups = res
    "BatchGetDeploymentGroupsResponse"
    "fixture/BatchGetDeploymentGroupsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetDeploymentGroups)

responseDeleteDeploymentGroup :: DeleteDeploymentGroupResponse -> TestTree
responseDeleteDeploymentGroup = res
    "DeleteDeploymentGroupResponse"
    "fixture/DeleteDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteDeploymentGroup)

responseUpdateDeploymentGroup :: UpdateDeploymentGroupResponse -> TestTree
responseUpdateDeploymentGroup = res
    "UpdateDeploymentGroupResponse"
    "fixture/UpdateDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy UpdateDeploymentGroup)

responseListOnPremisesInstances :: ListOnPremisesInstancesResponse -> TestTree
responseListOnPremisesInstances = res
    "ListOnPremisesInstancesResponse"
    "fixture/ListOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListOnPremisesInstances)

responseCreateDeploymentConfig :: CreateDeploymentConfigResponse -> TestTree
responseCreateDeploymentConfig = res
    "CreateDeploymentConfigResponse"
    "fixture/CreateDeploymentConfigResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateDeploymentConfig)

responseGetApplicationRevision :: GetApplicationRevisionResponse -> TestTree
responseGetApplicationRevision = res
    "GetApplicationRevisionResponse"
    "fixture/GetApplicationRevisionResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetApplicationRevision)

responseGetDeployment :: GetDeploymentResponse -> TestTree
responseGetDeployment = res
    "GetDeploymentResponse"
    "fixture/GetDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeployment)

responseDeleteDeploymentConfig :: DeleteDeploymentConfigResponse -> TestTree
responseDeleteDeploymentConfig = res
    "DeleteDeploymentConfigResponse"
    "fixture/DeleteDeploymentConfigResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteDeploymentConfig)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource = res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListTagsForResource)

responseGetDeploymentConfig :: GetDeploymentConfigResponse -> TestTree
responseGetDeploymentConfig = res
    "GetDeploymentConfigResponse"
    "fixture/GetDeploymentConfigResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeploymentConfig)

responseCreateDeployment :: CreateDeploymentResponse -> TestTree
responseCreateDeployment = res
    "CreateDeploymentResponse"
    "fixture/CreateDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateDeployment)

responseBatchGetApplicationRevisions :: BatchGetApplicationRevisionsResponse -> TestTree
responseBatchGetApplicationRevisions = res
    "BatchGetApplicationRevisionsResponse"
    "fixture/BatchGetApplicationRevisionsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetApplicationRevisions)

responseBatchGetDeployments :: BatchGetDeploymentsResponse -> TestTree
responseBatchGetDeployments = res
    "BatchGetDeploymentsResponse"
    "fixture/BatchGetDeploymentsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetDeployments)

responseGetOnPremisesInstance :: GetOnPremisesInstanceResponse -> TestTree
responseGetOnPremisesInstance = res
    "GetOnPremisesInstanceResponse"
    "fixture/GetOnPremisesInstanceResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetOnPremisesInstance)

responseRegisterApplicationRevision :: RegisterApplicationRevisionResponse -> TestTree
responseRegisterApplicationRevision = res
    "RegisterApplicationRevisionResponse"
    "fixture/RegisterApplicationRevisionResponse.proto"
    codeDeploy
    (Proxy :: Proxy RegisterApplicationRevision)

responseContinueDeployment :: ContinueDeploymentResponse -> TestTree
responseContinueDeployment = res
    "ContinueDeploymentResponse"
    "fixture/ContinueDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy ContinueDeployment)

responseBatchGetApplications :: BatchGetApplicationsResponse -> TestTree
responseBatchGetApplications = res
    "BatchGetApplicationsResponse"
    "fixture/BatchGetApplicationsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetApplications)

responseDeleteApplication :: DeleteApplicationResponse -> TestTree
responseDeleteApplication = res
    "DeleteApplicationResponse"
    "fixture/DeleteApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteApplication)

responseUpdateApplication :: UpdateApplicationResponse -> TestTree
responseUpdateApplication = res
    "UpdateApplicationResponse"
    "fixture/UpdateApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy UpdateApplication)

responseDeleteGitHubAccountToken :: DeleteGitHubAccountTokenResponse -> TestTree
responseDeleteGitHubAccountToken = res
    "DeleteGitHubAccountTokenResponse"
    "fixture/DeleteGitHubAccountTokenResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteGitHubAccountToken)

responseDeregisterOnPremisesInstance :: DeregisterOnPremisesInstanceResponse -> TestTree
responseDeregisterOnPremisesInstance = res
    "DeregisterOnPremisesInstanceResponse"
    "fixture/DeregisterOnPremisesInstanceResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeregisterOnPremisesInstance)

responsePutLifecycleEventHookExecutionStatus :: PutLifecycleEventHookExecutionStatusResponse -> TestTree
responsePutLifecycleEventHookExecutionStatus = res
    "PutLifecycleEventHookExecutionStatusResponse"
    "fixture/PutLifecycleEventHookExecutionStatusResponse.proto"
    codeDeploy
    (Proxy :: Proxy PutLifecycleEventHookExecutionStatus)

responseGetDeploymentTarget :: GetDeploymentTargetResponse -> TestTree
responseGetDeploymentTarget = res
    "GetDeploymentTargetResponse"
    "fixture/GetDeploymentTargetResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeploymentTarget)

responseCreateApplication :: CreateApplicationResponse -> TestTree
responseCreateApplication = res
    "CreateApplicationResponse"
    "fixture/CreateApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateApplication)

responseBatchGetDeploymentTargets :: BatchGetDeploymentTargetsResponse -> TestTree
responseBatchGetDeploymentTargets = res
    "BatchGetDeploymentTargetsResponse"
    "fixture/BatchGetDeploymentTargetsResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetDeploymentTargets)

responseStopDeployment :: StopDeploymentResponse -> TestTree
responseStopDeployment = res
    "StopDeploymentResponse"
    "fixture/StopDeploymentResponse.proto"
    codeDeploy
    (Proxy :: Proxy StopDeployment)

responseListGitHubAccountTokenNames :: ListGitHubAccountTokenNamesResponse -> TestTree
responseListGitHubAccountTokenNames = res
    "ListGitHubAccountTokenNamesResponse"
    "fixture/ListGitHubAccountTokenNamesResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListGitHubAccountTokenNames)

responseGetApplication :: GetApplicationResponse -> TestTree
responseGetApplication = res
    "GetApplicationResponse"
    "fixture/GetApplicationResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetApplication)

responseListDeploymentGroups :: ListDeploymentGroupsResponse -> TestTree
responseListDeploymentGroups = res
    "ListDeploymentGroupsResponse"
    "fixture/ListDeploymentGroupsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeploymentGroups)

responseBatchGetOnPremisesInstances :: BatchGetOnPremisesInstancesResponse -> TestTree
responseBatchGetOnPremisesInstances = res
    "BatchGetOnPremisesInstancesResponse"
    "fixture/BatchGetOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy BatchGetOnPremisesInstances)

responseRegisterOnPremisesInstance :: RegisterOnPremisesInstanceResponse -> TestTree
responseRegisterOnPremisesInstance = res
    "RegisterOnPremisesInstanceResponse"
    "fixture/RegisterOnPremisesInstanceResponse.proto"
    codeDeploy
    (Proxy :: Proxy RegisterOnPremisesInstance)

responseCreateDeploymentGroup :: CreateDeploymentGroupResponse -> TestTree
responseCreateDeploymentGroup = res
    "CreateDeploymentGroupResponse"
    "fixture/CreateDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy CreateDeploymentGroup)

responseListDeploymentConfigs :: ListDeploymentConfigsResponse -> TestTree
responseListDeploymentConfigs = res
    "ListDeploymentConfigsResponse"
    "fixture/ListDeploymentConfigsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeploymentConfigs)

responseGetDeploymentGroup :: GetDeploymentGroupResponse -> TestTree
responseGetDeploymentGroup = res
    "GetDeploymentGroupResponse"
    "fixture/GetDeploymentGroupResponse.proto"
    codeDeploy
    (Proxy :: Proxy GetDeploymentGroup)

responseListDeployments :: ListDeploymentsResponse -> TestTree
responseListDeployments = res
    "ListDeploymentsResponse"
    "fixture/ListDeploymentsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeployments)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource = res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    codeDeploy
    (Proxy :: Proxy TagResource)

responseListApplicationRevisions :: ListApplicationRevisionsResponse -> TestTree
responseListApplicationRevisions = res
    "ListApplicationRevisionsResponse"
    "fixture/ListApplicationRevisionsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListApplicationRevisions)

responseListApplications :: ListApplicationsResponse -> TestTree
responseListApplications = res
    "ListApplicationsResponse"
    "fixture/ListApplicationsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListApplications)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource = res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    codeDeploy
    (Proxy :: Proxy UntagResource)

responseDeleteResourcesByExternalId :: DeleteResourcesByExternalIdResponse -> TestTree
responseDeleteResourcesByExternalId = res
    "DeleteResourcesByExternalIdResponse"
    "fixture/DeleteResourcesByExternalIdResponse.proto"
    codeDeploy
    (Proxy :: Proxy DeleteResourcesByExternalId)

responseAddTagsToOnPremisesInstances :: AddTagsToOnPremisesInstancesResponse -> TestTree
responseAddTagsToOnPremisesInstances = res
    "AddTagsToOnPremisesInstancesResponse"
    "fixture/AddTagsToOnPremisesInstancesResponse.proto"
    codeDeploy
    (Proxy :: Proxy AddTagsToOnPremisesInstances)

responseListDeploymentTargets :: ListDeploymentTargetsResponse -> TestTree
responseListDeploymentTargets = res
    "ListDeploymentTargetsResponse"
    "fixture/ListDeploymentTargetsResponse.proto"
    codeDeploy
    (Proxy :: Proxy ListDeploymentTargets)
