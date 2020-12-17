{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DMS
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.DMS where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.DMS
import Test.AWS.DMS.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteReplicationInstance $
--             deleteReplicationInstance
--
--         , requestRebootReplicationInstance $
--             rebootReplicationInstance
--
--         , requestReloadTables $
--             reloadTables
--
--         , requestStartReplicationTaskAssessment $
--             startReplicationTaskAssessment
--
--         , requestDeleteReplicationTaskAssessmentRun $
--             deleteReplicationTaskAssessmentRun
--
--         , requestCreateEndpoint $
--             createEndpoint
--
--         , requestDescribeSchemas $
--             describeSchemas
--
--         , requestDeleteConnection $
--             deleteConnection
--
--         , requestModifyEventSubscription $
--             modifyEventSubscription
--
--         , requestDescribeReplicationInstanceTaskLogs $
--             describeReplicationInstanceTaskLogs
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestDeleteEndpoint $
--             deleteEndpoint
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDescribeEndpointTypes $
--             describeEndpointTypes
--
--         , requestDeleteReplicationTask $
--             deleteReplicationTask
--
--         , requestDescribeReplicationTaskAssessmentRuns $
--             describeReplicationTaskAssessmentRuns
--
--         , requestDescribeReplicationTaskAssessmentResults $
--             describeReplicationTaskAssessmentResults
--
--         , requestTestConnection $
--             testConnection
--
--         , requestDescribeConnections $
--             describeConnections
--
--         , requestMoveReplicationTask $
--             moveReplicationTask
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestModifyEndpoint $
--             modifyEndpoint
--
--         , requestCreateEventSubscription $
--             createEventSubscription
--
--         , requestDescribeCertificates $
--             describeCertificates
--
--         , requestStartReplicationTaskAssessmentRun $
--             startReplicationTaskAssessmentRun
--
--         , requestDeleteEventSubscription $
--             deleteEventSubscription
--
--         , requestDescribeTableStatistics $
--             describeTableStatistics
--
--         , requestDescribeReplicationSubnetGroups $
--             describeReplicationSubnetGroups
--
--         , requestStartReplicationTask $
--             startReplicationTask
--
--         , requestDescribeEventSubscriptions $
--             describeEventSubscriptions
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestCreateReplicationSubnetGroup $
--             createReplicationSubnetGroup
--
--         , requestDescribeApplicableIndividualAssessments $
--             describeApplicableIndividualAssessments
--
--         , requestDeleteCertificate $
--             deleteCertificate
--
--         , requestRefreshSchemas $
--             refreshSchemas
--
--         , requestDescribeReplicationTasks $
--             describeReplicationTasks
--
--         , requestDescribeEventCategories $
--             describeEventCategories
--
--         , requestDescribeOrderableReplicationInstances $
--             describeOrderableReplicationInstances
--
--         , requestDescribePendingMaintenanceActions $
--             describePendingMaintenanceActions
--
--         , requestCreateReplicationTask $
--             createReplicationTask
--
--         , requestDescribeEndpoints $
--             describeEndpoints
--
--         , requestModifyReplicationInstance $
--             modifyReplicationInstance
--
--         , requestImportCertificate $
--             importCertificate
--
--         , requestCancelReplicationTaskAssessmentRun $
--             cancelReplicationTaskAssessmentRun
--
--         , requestModifyReplicationSubnetGroup $
--             modifyReplicationSubnetGroup
--
--         , requestDescribeReplicationTaskIndividualAssessments $
--             describeReplicationTaskIndividualAssessments
--
--         , requestApplyPendingMaintenanceAction $
--             applyPendingMaintenanceAction
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestDescribeReplicationInstances $
--             describeReplicationInstances
--
--         , requestDescribeRefreshSchemasStatus $
--             describeRefreshSchemasStatus
--
--         , requestStopReplicationTask $
--             stopReplicationTask
--
--         , requestModifyReplicationTask $
--             modifyReplicationTask
--
--         , requestCreateReplicationInstance $
--             createReplicationInstance
--
--         , requestDeleteReplicationSubnetGroup $
--             deleteReplicationSubnetGroup
--
--           ]

--     , testGroup "response"
--         [ responseDeleteReplicationInstance $
--             deleteReplicationInstanceResponse
--
--         , responseRebootReplicationInstance $
--             rebootReplicationInstanceResponse
--
--         , responseReloadTables $
--             reloadTablesResponse
--
--         , responseStartReplicationTaskAssessment $
--             startReplicationTaskAssessmentResponse
--
--         , responseDeleteReplicationTaskAssessmentRun $
--             deleteReplicationTaskAssessmentRunResponse
--
--         , responseCreateEndpoint $
--             createEndpointResponse
--
--         , responseDescribeSchemas $
--             describeSchemasResponse
--
--         , responseDeleteConnection $
--             deleteConnectionResponse
--
--         , responseModifyEventSubscription $
--             modifyEventSubscriptionResponse
--
--         , responseDescribeReplicationInstanceTaskLogs $
--             describeReplicationInstanceTaskLogsResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseDeleteEndpoint $
--             deleteEndpointResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDescribeEndpointTypes $
--             describeEndpointTypesResponse
--
--         , responseDeleteReplicationTask $
--             deleteReplicationTaskResponse
--
--         , responseDescribeReplicationTaskAssessmentRuns $
--             describeReplicationTaskAssessmentRunsResponse
--
--         , responseDescribeReplicationTaskAssessmentResults $
--             describeReplicationTaskAssessmentResultsResponse
--
--         , responseTestConnection $
--             testConnectionResponse
--
--         , responseDescribeConnections $
--             describeConnectionsResponse
--
--         , responseMoveReplicationTask $
--             moveReplicationTaskResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseModifyEndpoint $
--             modifyEndpointResponse
--
--         , responseCreateEventSubscription $
--             createEventSubscriptionResponse
--
--         , responseDescribeCertificates $
--             describeCertificatesResponse
--
--         , responseStartReplicationTaskAssessmentRun $
--             startReplicationTaskAssessmentRunResponse
--
--         , responseDeleteEventSubscription $
--             deleteEventSubscriptionResponse
--
--         , responseDescribeTableStatistics $
--             describeTableStatisticsResponse
--
--         , responseDescribeReplicationSubnetGroups $
--             describeReplicationSubnetGroupsResponse
--
--         , responseStartReplicationTask $
--             startReplicationTaskResponse
--
--         , responseDescribeEventSubscriptions $
--             describeEventSubscriptionsResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseCreateReplicationSubnetGroup $
--             createReplicationSubnetGroupResponse
--
--         , responseDescribeApplicableIndividualAssessments $
--             describeApplicableIndividualAssessmentsResponse
--
--         , responseDeleteCertificate $
--             deleteCertificateResponse
--
--         , responseRefreshSchemas $
--             refreshSchemasResponse
--
--         , responseDescribeReplicationTasks $
--             describeReplicationTasksResponse
--
--         , responseDescribeEventCategories $
--             describeEventCategoriesResponse
--
--         , responseDescribeOrderableReplicationInstances $
--             describeOrderableReplicationInstancesResponse
--
--         , responseDescribePendingMaintenanceActions $
--             describePendingMaintenanceActionsResponse
--
--         , responseCreateReplicationTask $
--             createReplicationTaskResponse
--
--         , responseDescribeEndpoints $
--             describeEndpointsResponse
--
--         , responseModifyReplicationInstance $
--             modifyReplicationInstanceResponse
--
--         , responseImportCertificate $
--             importCertificateResponse
--
--         , responseCancelReplicationTaskAssessmentRun $
--             cancelReplicationTaskAssessmentRunResponse
--
--         , responseModifyReplicationSubnetGroup $
--             modifyReplicationSubnetGroupResponse
--
--         , responseDescribeReplicationTaskIndividualAssessments $
--             describeReplicationTaskIndividualAssessmentsResponse
--
--         , responseApplyPendingMaintenanceAction $
--             applyPendingMaintenanceActionResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseDescribeReplicationInstances $
--             describeReplicationInstancesResponse
--
--         , responseDescribeRefreshSchemasStatus $
--             describeRefreshSchemasStatusResponse
--
--         , responseStopReplicationTask $
--             stopReplicationTaskResponse
--
--         , responseModifyReplicationTask $
--             modifyReplicationTaskResponse
--
--         , responseCreateReplicationInstance $
--             createReplicationInstanceResponse
--
--         , responseDeleteReplicationSubnetGroup $
--             deleteReplicationSubnetGroupResponse
--
--           ]
--     ]

-- Requests

requestDeleteReplicationInstance :: DeleteReplicationInstance -> TestTree
requestDeleteReplicationInstance = req
    "DeleteReplicationInstance"
    "fixture/DeleteReplicationInstance.yaml"

requestRebootReplicationInstance :: RebootReplicationInstance -> TestTree
requestRebootReplicationInstance = req
    "RebootReplicationInstance"
    "fixture/RebootReplicationInstance.yaml"

requestReloadTables :: ReloadTables -> TestTree
requestReloadTables = req
    "ReloadTables"
    "fixture/ReloadTables.yaml"

requestStartReplicationTaskAssessment :: StartReplicationTaskAssessment -> TestTree
requestStartReplicationTaskAssessment = req
    "StartReplicationTaskAssessment"
    "fixture/StartReplicationTaskAssessment.yaml"

requestDeleteReplicationTaskAssessmentRun :: DeleteReplicationTaskAssessmentRun -> TestTree
requestDeleteReplicationTaskAssessmentRun = req
    "DeleteReplicationTaskAssessmentRun"
    "fixture/DeleteReplicationTaskAssessmentRun.yaml"

requestCreateEndpoint :: CreateEndpoint -> TestTree
requestCreateEndpoint = req
    "CreateEndpoint"
    "fixture/CreateEndpoint.yaml"

requestDescribeSchemas :: DescribeSchemas -> TestTree
requestDescribeSchemas = req
    "DescribeSchemas"
    "fixture/DescribeSchemas.yaml"

requestDeleteConnection :: DeleteConnection -> TestTree
requestDeleteConnection = req
    "DeleteConnection"
    "fixture/DeleteConnection.yaml"

requestModifyEventSubscription :: ModifyEventSubscription -> TestTree
requestModifyEventSubscription = req
    "ModifyEventSubscription"
    "fixture/ModifyEventSubscription.yaml"

requestDescribeReplicationInstanceTaskLogs :: DescribeReplicationInstanceTaskLogs -> TestTree
requestDescribeReplicationInstanceTaskLogs = req
    "DescribeReplicationInstanceTaskLogs"
    "fixture/DescribeReplicationInstanceTaskLogs.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents = req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint = req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource = req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDescribeEndpointTypes :: DescribeEndpointTypes -> TestTree
requestDescribeEndpointTypes = req
    "DescribeEndpointTypes"
    "fixture/DescribeEndpointTypes.yaml"

requestDeleteReplicationTask :: DeleteReplicationTask -> TestTree
requestDeleteReplicationTask = req
    "DeleteReplicationTask"
    "fixture/DeleteReplicationTask.yaml"

requestDescribeReplicationTaskAssessmentRuns :: DescribeReplicationTaskAssessmentRuns -> TestTree
requestDescribeReplicationTaskAssessmentRuns = req
    "DescribeReplicationTaskAssessmentRuns"
    "fixture/DescribeReplicationTaskAssessmentRuns.yaml"

requestDescribeReplicationTaskAssessmentResults :: DescribeReplicationTaskAssessmentResults -> TestTree
requestDescribeReplicationTaskAssessmentResults = req
    "DescribeReplicationTaskAssessmentResults"
    "fixture/DescribeReplicationTaskAssessmentResults.yaml"

requestTestConnection :: TestConnection -> TestTree
requestTestConnection = req
    "TestConnection"
    "fixture/TestConnection.yaml"

requestDescribeConnections :: DescribeConnections -> TestTree
requestDescribeConnections = req
    "DescribeConnections"
    "fixture/DescribeConnections.yaml"

requestMoveReplicationTask :: MoveReplicationTask -> TestTree
requestMoveReplicationTask = req
    "MoveReplicationTask"
    "fixture/MoveReplicationTask.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource = req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestModifyEndpoint :: ModifyEndpoint -> TestTree
requestModifyEndpoint = req
    "ModifyEndpoint"
    "fixture/ModifyEndpoint.yaml"

requestCreateEventSubscription :: CreateEventSubscription -> TestTree
requestCreateEventSubscription = req
    "CreateEventSubscription"
    "fixture/CreateEventSubscription.yaml"

requestDescribeCertificates :: DescribeCertificates -> TestTree
requestDescribeCertificates = req
    "DescribeCertificates"
    "fixture/DescribeCertificates.yaml"

requestStartReplicationTaskAssessmentRun :: StartReplicationTaskAssessmentRun -> TestTree
requestStartReplicationTaskAssessmentRun = req
    "StartReplicationTaskAssessmentRun"
    "fixture/StartReplicationTaskAssessmentRun.yaml"

requestDeleteEventSubscription :: DeleteEventSubscription -> TestTree
requestDeleteEventSubscription = req
    "DeleteEventSubscription"
    "fixture/DeleteEventSubscription.yaml"

requestDescribeTableStatistics :: DescribeTableStatistics -> TestTree
requestDescribeTableStatistics = req
    "DescribeTableStatistics"
    "fixture/DescribeTableStatistics.yaml"

requestDescribeReplicationSubnetGroups :: DescribeReplicationSubnetGroups -> TestTree
requestDescribeReplicationSubnetGroups = req
    "DescribeReplicationSubnetGroups"
    "fixture/DescribeReplicationSubnetGroups.yaml"

requestStartReplicationTask :: StartReplicationTask -> TestTree
requestStartReplicationTask = req
    "StartReplicationTask"
    "fixture/StartReplicationTask.yaml"

requestDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
requestDescribeEventSubscriptions = req
    "DescribeEventSubscriptions"
    "fixture/DescribeEventSubscriptions.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource = req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestCreateReplicationSubnetGroup :: CreateReplicationSubnetGroup -> TestTree
requestCreateReplicationSubnetGroup = req
    "CreateReplicationSubnetGroup"
    "fixture/CreateReplicationSubnetGroup.yaml"

requestDescribeApplicableIndividualAssessments :: DescribeApplicableIndividualAssessments -> TestTree
requestDescribeApplicableIndividualAssessments = req
    "DescribeApplicableIndividualAssessments"
    "fixture/DescribeApplicableIndividualAssessments.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate = req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestRefreshSchemas :: RefreshSchemas -> TestTree
requestRefreshSchemas = req
    "RefreshSchemas"
    "fixture/RefreshSchemas.yaml"

requestDescribeReplicationTasks :: DescribeReplicationTasks -> TestTree
requestDescribeReplicationTasks = req
    "DescribeReplicationTasks"
    "fixture/DescribeReplicationTasks.yaml"

requestDescribeEventCategories :: DescribeEventCategories -> TestTree
requestDescribeEventCategories = req
    "DescribeEventCategories"
    "fixture/DescribeEventCategories.yaml"

requestDescribeOrderableReplicationInstances :: DescribeOrderableReplicationInstances -> TestTree
requestDescribeOrderableReplicationInstances = req
    "DescribeOrderableReplicationInstances"
    "fixture/DescribeOrderableReplicationInstances.yaml"

requestDescribePendingMaintenanceActions :: DescribePendingMaintenanceActions -> TestTree
requestDescribePendingMaintenanceActions = req
    "DescribePendingMaintenanceActions"
    "fixture/DescribePendingMaintenanceActions.yaml"

requestCreateReplicationTask :: CreateReplicationTask -> TestTree
requestCreateReplicationTask = req
    "CreateReplicationTask"
    "fixture/CreateReplicationTask.yaml"

requestDescribeEndpoints :: DescribeEndpoints -> TestTree
requestDescribeEndpoints = req
    "DescribeEndpoints"
    "fixture/DescribeEndpoints.yaml"

requestModifyReplicationInstance :: ModifyReplicationInstance -> TestTree
requestModifyReplicationInstance = req
    "ModifyReplicationInstance"
    "fixture/ModifyReplicationInstance.yaml"

requestImportCertificate :: ImportCertificate -> TestTree
requestImportCertificate = req
    "ImportCertificate"
    "fixture/ImportCertificate.yaml"

requestCancelReplicationTaskAssessmentRun :: CancelReplicationTaskAssessmentRun -> TestTree
requestCancelReplicationTaskAssessmentRun = req
    "CancelReplicationTaskAssessmentRun"
    "fixture/CancelReplicationTaskAssessmentRun.yaml"

requestModifyReplicationSubnetGroup :: ModifyReplicationSubnetGroup -> TestTree
requestModifyReplicationSubnetGroup = req
    "ModifyReplicationSubnetGroup"
    "fixture/ModifyReplicationSubnetGroup.yaml"

requestDescribeReplicationTaskIndividualAssessments :: DescribeReplicationTaskIndividualAssessments -> TestTree
requestDescribeReplicationTaskIndividualAssessments = req
    "DescribeReplicationTaskIndividualAssessments"
    "fixture/DescribeReplicationTaskIndividualAssessments.yaml"

requestApplyPendingMaintenanceAction :: ApplyPendingMaintenanceAction -> TestTree
requestApplyPendingMaintenanceAction = req
    "ApplyPendingMaintenanceAction"
    "fixture/ApplyPendingMaintenanceAction.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes = req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestDescribeReplicationInstances :: DescribeReplicationInstances -> TestTree
requestDescribeReplicationInstances = req
    "DescribeReplicationInstances"
    "fixture/DescribeReplicationInstances.yaml"

requestDescribeRefreshSchemasStatus :: DescribeRefreshSchemasStatus -> TestTree
requestDescribeRefreshSchemasStatus = req
    "DescribeRefreshSchemasStatus"
    "fixture/DescribeRefreshSchemasStatus.yaml"

requestStopReplicationTask :: StopReplicationTask -> TestTree
requestStopReplicationTask = req
    "StopReplicationTask"
    "fixture/StopReplicationTask.yaml"

requestModifyReplicationTask :: ModifyReplicationTask -> TestTree
requestModifyReplicationTask = req
    "ModifyReplicationTask"
    "fixture/ModifyReplicationTask.yaml"

requestCreateReplicationInstance :: CreateReplicationInstance -> TestTree
requestCreateReplicationInstance = req
    "CreateReplicationInstance"
    "fixture/CreateReplicationInstance.yaml"

requestDeleteReplicationSubnetGroup :: DeleteReplicationSubnetGroup -> TestTree
requestDeleteReplicationSubnetGroup = req
    "DeleteReplicationSubnetGroup"
    "fixture/DeleteReplicationSubnetGroup.yaml"

-- Responses

responseDeleteReplicationInstance :: DeleteReplicationInstanceResponse -> TestTree
responseDeleteReplicationInstance = res
    "DeleteReplicationInstanceResponse"
    "fixture/DeleteReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationInstance)

responseRebootReplicationInstance :: RebootReplicationInstanceResponse -> TestTree
responseRebootReplicationInstance = res
    "RebootReplicationInstanceResponse"
    "fixture/RebootReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy RebootReplicationInstance)

responseReloadTables :: ReloadTablesResponse -> TestTree
responseReloadTables = res
    "ReloadTablesResponse"
    "fixture/ReloadTablesResponse.proto"
    dms
    (Proxy :: Proxy ReloadTables)

responseStartReplicationTaskAssessment :: StartReplicationTaskAssessmentResponse -> TestTree
responseStartReplicationTaskAssessment = res
    "StartReplicationTaskAssessmentResponse"
    "fixture/StartReplicationTaskAssessmentResponse.proto"
    dms
    (Proxy :: Proxy StartReplicationTaskAssessment)

responseDeleteReplicationTaskAssessmentRun :: DeleteReplicationTaskAssessmentRunResponse -> TestTree
responseDeleteReplicationTaskAssessmentRun = res
    "DeleteReplicationTaskAssessmentRunResponse"
    "fixture/DeleteReplicationTaskAssessmentRunResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationTaskAssessmentRun)

responseCreateEndpoint :: CreateEndpointResponse -> TestTree
responseCreateEndpoint = res
    "CreateEndpointResponse"
    "fixture/CreateEndpointResponse.proto"
    dms
    (Proxy :: Proxy CreateEndpoint)

responseDescribeSchemas :: DescribeSchemasResponse -> TestTree
responseDescribeSchemas = res
    "DescribeSchemasResponse"
    "fixture/DescribeSchemasResponse.proto"
    dms
    (Proxy :: Proxy DescribeSchemas)

responseDeleteConnection :: DeleteConnectionResponse -> TestTree
responseDeleteConnection = res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse.proto"
    dms
    (Proxy :: Proxy DeleteConnection)

responseModifyEventSubscription :: ModifyEventSubscriptionResponse -> TestTree
responseModifyEventSubscription = res
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse.proto"
    dms
    (Proxy :: Proxy ModifyEventSubscription)

responseDescribeReplicationInstanceTaskLogs :: DescribeReplicationInstanceTaskLogsResponse -> TestTree
responseDescribeReplicationInstanceTaskLogs = res
    "DescribeReplicationInstanceTaskLogsResponse"
    "fixture/DescribeReplicationInstanceTaskLogsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationInstanceTaskLogs)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents = res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    dms
    (Proxy :: Proxy DescribeEvents)

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint = res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    dms
    (Proxy :: Proxy DeleteEndpoint)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource = res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    dms
    (Proxy :: Proxy ListTagsForResource)

responseDescribeEndpointTypes :: DescribeEndpointTypesResponse -> TestTree
responseDescribeEndpointTypes = res
    "DescribeEndpointTypesResponse"
    "fixture/DescribeEndpointTypesResponse.proto"
    dms
    (Proxy :: Proxy DescribeEndpointTypes)

responseDeleteReplicationTask :: DeleteReplicationTaskResponse -> TestTree
responseDeleteReplicationTask = res
    "DeleteReplicationTaskResponse"
    "fixture/DeleteReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationTask)

responseDescribeReplicationTaskAssessmentRuns :: DescribeReplicationTaskAssessmentRunsResponse -> TestTree
responseDescribeReplicationTaskAssessmentRuns = res
    "DescribeReplicationTaskAssessmentRunsResponse"
    "fixture/DescribeReplicationTaskAssessmentRunsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTaskAssessmentRuns)

responseDescribeReplicationTaskAssessmentResults :: DescribeReplicationTaskAssessmentResultsResponse -> TestTree
responseDescribeReplicationTaskAssessmentResults = res
    "DescribeReplicationTaskAssessmentResultsResponse"
    "fixture/DescribeReplicationTaskAssessmentResultsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTaskAssessmentResults)

responseTestConnection :: TestConnectionResponse -> TestTree
responseTestConnection = res
    "TestConnectionResponse"
    "fixture/TestConnectionResponse.proto"
    dms
    (Proxy :: Proxy TestConnection)

responseDescribeConnections :: DescribeConnectionsResponse -> TestTree
responseDescribeConnections = res
    "DescribeConnectionsResponse"
    "fixture/DescribeConnectionsResponse.proto"
    dms
    (Proxy :: Proxy DescribeConnections)

responseMoveReplicationTask :: MoveReplicationTaskResponse -> TestTree
responseMoveReplicationTask = res
    "MoveReplicationTaskResponse"
    "fixture/MoveReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy MoveReplicationTask)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource = res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    dms
    (Proxy :: Proxy RemoveTagsFromResource)

responseModifyEndpoint :: ModifyEndpointResponse -> TestTree
responseModifyEndpoint = res
    "ModifyEndpointResponse"
    "fixture/ModifyEndpointResponse.proto"
    dms
    (Proxy :: Proxy ModifyEndpoint)

responseCreateEventSubscription :: CreateEventSubscriptionResponse -> TestTree
responseCreateEventSubscription = res
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse.proto"
    dms
    (Proxy :: Proxy CreateEventSubscription)

responseDescribeCertificates :: DescribeCertificatesResponse -> TestTree
responseDescribeCertificates = res
    "DescribeCertificatesResponse"
    "fixture/DescribeCertificatesResponse.proto"
    dms
    (Proxy :: Proxy DescribeCertificates)

responseStartReplicationTaskAssessmentRun :: StartReplicationTaskAssessmentRunResponse -> TestTree
responseStartReplicationTaskAssessmentRun = res
    "StartReplicationTaskAssessmentRunResponse"
    "fixture/StartReplicationTaskAssessmentRunResponse.proto"
    dms
    (Proxy :: Proxy StartReplicationTaskAssessmentRun)

responseDeleteEventSubscription :: DeleteEventSubscriptionResponse -> TestTree
responseDeleteEventSubscription = res
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse.proto"
    dms
    (Proxy :: Proxy DeleteEventSubscription)

responseDescribeTableStatistics :: DescribeTableStatisticsResponse -> TestTree
responseDescribeTableStatistics = res
    "DescribeTableStatisticsResponse"
    "fixture/DescribeTableStatisticsResponse.proto"
    dms
    (Proxy :: Proxy DescribeTableStatistics)

responseDescribeReplicationSubnetGroups :: DescribeReplicationSubnetGroupsResponse -> TestTree
responseDescribeReplicationSubnetGroups = res
    "DescribeReplicationSubnetGroupsResponse"
    "fixture/DescribeReplicationSubnetGroupsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationSubnetGroups)

responseStartReplicationTask :: StartReplicationTaskResponse -> TestTree
responseStartReplicationTask = res
    "StartReplicationTaskResponse"
    "fixture/StartReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy StartReplicationTask)

responseDescribeEventSubscriptions :: DescribeEventSubscriptionsResponse -> TestTree
responseDescribeEventSubscriptions = res
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse.proto"
    dms
    (Proxy :: Proxy DescribeEventSubscriptions)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource = res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    dms
    (Proxy :: Proxy AddTagsToResource)

responseCreateReplicationSubnetGroup :: CreateReplicationSubnetGroupResponse -> TestTree
responseCreateReplicationSubnetGroup = res
    "CreateReplicationSubnetGroupResponse"
    "fixture/CreateReplicationSubnetGroupResponse.proto"
    dms
    (Proxy :: Proxy CreateReplicationSubnetGroup)

responseDescribeApplicableIndividualAssessments :: DescribeApplicableIndividualAssessmentsResponse -> TestTree
responseDescribeApplicableIndividualAssessments = res
    "DescribeApplicableIndividualAssessmentsResponse"
    "fixture/DescribeApplicableIndividualAssessmentsResponse.proto"
    dms
    (Proxy :: Proxy DescribeApplicableIndividualAssessments)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate = res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    dms
    (Proxy :: Proxy DeleteCertificate)

responseRefreshSchemas :: RefreshSchemasResponse -> TestTree
responseRefreshSchemas = res
    "RefreshSchemasResponse"
    "fixture/RefreshSchemasResponse.proto"
    dms
    (Proxy :: Proxy RefreshSchemas)

responseDescribeReplicationTasks :: DescribeReplicationTasksResponse -> TestTree
responseDescribeReplicationTasks = res
    "DescribeReplicationTasksResponse"
    "fixture/DescribeReplicationTasksResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTasks)

responseDescribeEventCategories :: DescribeEventCategoriesResponse -> TestTree
responseDescribeEventCategories = res
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse.proto"
    dms
    (Proxy :: Proxy DescribeEventCategories)

responseDescribeOrderableReplicationInstances :: DescribeOrderableReplicationInstancesResponse -> TestTree
responseDescribeOrderableReplicationInstances = res
    "DescribeOrderableReplicationInstancesResponse"
    "fixture/DescribeOrderableReplicationInstancesResponse.proto"
    dms
    (Proxy :: Proxy DescribeOrderableReplicationInstances)

responseDescribePendingMaintenanceActions :: DescribePendingMaintenanceActionsResponse -> TestTree
responseDescribePendingMaintenanceActions = res
    "DescribePendingMaintenanceActionsResponse"
    "fixture/DescribePendingMaintenanceActionsResponse.proto"
    dms
    (Proxy :: Proxy DescribePendingMaintenanceActions)

responseCreateReplicationTask :: CreateReplicationTaskResponse -> TestTree
responseCreateReplicationTask = res
    "CreateReplicationTaskResponse"
    "fixture/CreateReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy CreateReplicationTask)

responseDescribeEndpoints :: DescribeEndpointsResponse -> TestTree
responseDescribeEndpoints = res
    "DescribeEndpointsResponse"
    "fixture/DescribeEndpointsResponse.proto"
    dms
    (Proxy :: Proxy DescribeEndpoints)

responseModifyReplicationInstance :: ModifyReplicationInstanceResponse -> TestTree
responseModifyReplicationInstance = res
    "ModifyReplicationInstanceResponse"
    "fixture/ModifyReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy ModifyReplicationInstance)

responseImportCertificate :: ImportCertificateResponse -> TestTree
responseImportCertificate = res
    "ImportCertificateResponse"
    "fixture/ImportCertificateResponse.proto"
    dms
    (Proxy :: Proxy ImportCertificate)

responseCancelReplicationTaskAssessmentRun :: CancelReplicationTaskAssessmentRunResponse -> TestTree
responseCancelReplicationTaskAssessmentRun = res
    "CancelReplicationTaskAssessmentRunResponse"
    "fixture/CancelReplicationTaskAssessmentRunResponse.proto"
    dms
    (Proxy :: Proxy CancelReplicationTaskAssessmentRun)

responseModifyReplicationSubnetGroup :: ModifyReplicationSubnetGroupResponse -> TestTree
responseModifyReplicationSubnetGroup = res
    "ModifyReplicationSubnetGroupResponse"
    "fixture/ModifyReplicationSubnetGroupResponse.proto"
    dms
    (Proxy :: Proxy ModifyReplicationSubnetGroup)

responseDescribeReplicationTaskIndividualAssessments :: DescribeReplicationTaskIndividualAssessmentsResponse -> TestTree
responseDescribeReplicationTaskIndividualAssessments = res
    "DescribeReplicationTaskIndividualAssessmentsResponse"
    "fixture/DescribeReplicationTaskIndividualAssessmentsResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationTaskIndividualAssessments)

responseApplyPendingMaintenanceAction :: ApplyPendingMaintenanceActionResponse -> TestTree
responseApplyPendingMaintenanceAction = res
    "ApplyPendingMaintenanceActionResponse"
    "fixture/ApplyPendingMaintenanceActionResponse.proto"
    dms
    (Proxy :: Proxy ApplyPendingMaintenanceAction)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes = res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    dms
    (Proxy :: Proxy DescribeAccountAttributes)

responseDescribeReplicationInstances :: DescribeReplicationInstancesResponse -> TestTree
responseDescribeReplicationInstances = res
    "DescribeReplicationInstancesResponse"
    "fixture/DescribeReplicationInstancesResponse.proto"
    dms
    (Proxy :: Proxy DescribeReplicationInstances)

responseDescribeRefreshSchemasStatus :: DescribeRefreshSchemasStatusResponse -> TestTree
responseDescribeRefreshSchemasStatus = res
    "DescribeRefreshSchemasStatusResponse"
    "fixture/DescribeRefreshSchemasStatusResponse.proto"
    dms
    (Proxy :: Proxy DescribeRefreshSchemasStatus)

responseStopReplicationTask :: StopReplicationTaskResponse -> TestTree
responseStopReplicationTask = res
    "StopReplicationTaskResponse"
    "fixture/StopReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy StopReplicationTask)

responseModifyReplicationTask :: ModifyReplicationTaskResponse -> TestTree
responseModifyReplicationTask = res
    "ModifyReplicationTaskResponse"
    "fixture/ModifyReplicationTaskResponse.proto"
    dms
    (Proxy :: Proxy ModifyReplicationTask)

responseCreateReplicationInstance :: CreateReplicationInstanceResponse -> TestTree
responseCreateReplicationInstance = res
    "CreateReplicationInstanceResponse"
    "fixture/CreateReplicationInstanceResponse.proto"
    dms
    (Proxy :: Proxy CreateReplicationInstance)

responseDeleteReplicationSubnetGroup :: DeleteReplicationSubnetGroupResponse -> TestTree
responseDeleteReplicationSubnetGroup = res
    "DeleteReplicationSubnetGroupResponse"
    "fixture/DeleteReplicationSubnetGroupResponse.proto"
    dms
    (Proxy :: Proxy DeleteReplicationSubnetGroup)
