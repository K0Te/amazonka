{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Greengrass
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.Greengrass where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.Greengrass
import Test.AWS.Greengrass.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetGroupCertificateConfiguration $
--             getGroupCertificateConfiguration
--
--         , requestListGroupVersions $
--             listGroupVersions
--
--         , requestListFunctionDefinitionVersions $
--             listFunctionDefinitionVersions
--
--         , requestListDeviceDefinitions $
--             listDeviceDefinitions
--
--         , requestAssociateRoleToGroup $
--             associateRoleToGroup
--
--         , requestUpdateCoreDefinition $
--             updateCoreDefinition
--
--         , requestDeleteCoreDefinition $
--             deleteCoreDefinition
--
--         , requestGetLoggerDefinition $
--             getLoggerDefinition
--
--         , requestListGroupCertificateAuthorities $
--             listGroupCertificateAuthorities
--
--         , requestDisassociateRoleFromGroup $
--             disassociateRoleFromGroup
--
--         , requestUpdateSubscriptionDefinition $
--             updateSubscriptionDefinition
--
--         , requestDeleteSubscriptionDefinition $
--             deleteSubscriptionDefinition
--
--         , requestListCoreDefinitions $
--             listCoreDefinitions
--
--         , requestListSubscriptionDefinitions $
--             listSubscriptionDefinitions
--
--         , requestCreateGroupCertificateAuthority $
--             createGroupCertificateAuthority
--
--         , requestDeleteConnectorDefinition $
--             deleteConnectorDefinition
--
--         , requestUpdateConnectorDefinition $
--             updateConnectorDefinition
--
--         , requestCreateLoggerDefinitionVersion $
--             createLoggerDefinitionVersion
--
--         , requestCreateCoreDefinition $
--             createCoreDefinition
--
--         , requestGetConnectorDefinitionVersion $
--             getConnectorDefinitionVersion
--
--         , requestUpdateConnectivityInfo $
--             updateConnectivityInfo
--
--         , requestCreateSubscriptionDefinition $
--             createSubscriptionDefinition
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetGroupCertificateAuthority $
--             getGroupCertificateAuthority
--
--         , requestGetLoggerDefinitionVersion $
--             getLoggerDefinitionVersion
--
--         , requestGetServiceRoleForAccount $
--             getServiceRoleForAccount
--
--         , requestListConnectorDefinitionVersions $
--             listConnectorDefinitionVersions
--
--         , requestCreateSoftwareUpdateJob $
--             createSoftwareUpdateJob
--
--         , requestCreateLoggerDefinition $
--             createLoggerDefinition
--
--         , requestGetConnectivityInfo $
--             getConnectivityInfo
--
--         , requestCreateDeployment $
--             createDeployment
--
--         , requestDeleteLoggerDefinition $
--             deleteLoggerDefinition
--
--         , requestUpdateLoggerDefinition $
--             updateLoggerDefinition
--
--         , requestGetSubscriptionDefinition $
--             getSubscriptionDefinition
--
--         , requestGetCoreDefinition $
--             getCoreDefinition
--
--         , requestCreateConnectorDefinitionVersion $
--             createConnectorDefinitionVersion
--
--         , requestGetDeploymentStatus $
--             getDeploymentStatus
--
--         , requestGetBulkDeploymentStatus $
--             getBulkDeploymentStatus
--
--         , requestCreateResourceDefinition $
--             createResourceDefinition
--
--         , requestGetResourceDefinitionVersion $
--             getResourceDefinitionVersion
--
--         , requestUpdateFunctionDefinition $
--             updateFunctionDefinition
--
--         , requestDeleteFunctionDefinition $
--             deleteFunctionDefinition
--
--         , requestListResourceDefinitions $
--             listResourceDefinitions
--
--         , requestStopBulkDeployment $
--             stopBulkDeployment
--
--         , requestCreateResourceDefinitionVersion $
--             createResourceDefinitionVersion
--
--         , requestGetResourceDefinition $
--             getResourceDefinition
--
--         , requestListResourceDefinitionVersions $
--             listResourceDefinitionVersions
--
--         , requestDisassociateServiceRoleFromAccount $
--             disassociateServiceRoleFromAccount
--
--         , requestDeleteDeviceDefinition $
--             deleteDeviceDefinition
--
--         , requestUpdateDeviceDefinition $
--             updateDeviceDefinition
--
--         , requestAssociateServiceRoleToAccount $
--             associateServiceRoleToAccount
--
--         , requestResetDeployments $
--             resetDeployments
--
--         , requestListConnectorDefinitions $
--             listConnectorDefinitions
--
--         , requestGetSubscriptionDefinitionVersion $
--             getSubscriptionDefinitionVersion
--
--         , requestGetAssociatedRole $
--             getAssociatedRole
--
--         , requestListLoggerDefinitionVersions $
--             listLoggerDefinitionVersions
--
--         , requestCreateConnectorDefinition $
--             createConnectorDefinition
--
--         , requestGetCoreDefinitionVersion $
--             getCoreDefinitionVersion
--
--         , requestListSubscriptionDefinitionVersions $
--             listSubscriptionDefinitionVersions
--
--         , requestListCoreDefinitionVersions $
--             listCoreDefinitionVersions
--
--         , requestCreateCoreDefinitionVersion $
--             createCoreDefinitionVersion
--
--         , requestListBulkDeployments $
--             listBulkDeployments
--
--         , requestListDeployments $
--             listDeployments
--
--         , requestGetConnectorDefinition $
--             getConnectorDefinition
--
--         , requestListLoggerDefinitions $
--             listLoggerDefinitions
--
--         , requestTagResource $
--             tagResource
--
--         , requestCreateSubscriptionDefinitionVersion $
--             createSubscriptionDefinitionVersion
--
--         , requestGetGroupVersion $
--             getGroupVersion
--
--         , requestUpdateGroupCertificateConfiguration $
--             updateGroupCertificateConfiguration
--
--         , requestGetFunctionDefinitionVersion $
--             getFunctionDefinitionVersion
--
--         , requestGetDeviceDefinition $
--             getDeviceDefinition
--
--         , requestCreateGroup $
--             createGroup
--
--         , requestCreateFunctionDefinition $
--             createFunctionDefinition
--
--         , requestUntagResource $
--             untagResource
--
--         , requestCreateDeviceDefinitionVersion $
--             createDeviceDefinitionVersion
--
--         , requestDeleteGroup $
--             deleteGroup
--
--         , requestUpdateGroup $
--             updateGroup
--
--         , requestListGroups $
--             listGroups
--
--         , requestListBulkDeploymentDetailedReports $
--             listBulkDeploymentDetailedReports
--
--         , requestGetThingRuntimeConfiguration $
--             getThingRuntimeConfiguration
--
--         , requestDeleteResourceDefinition $
--             deleteResourceDefinition
--
--         , requestUpdateResourceDefinition $
--             updateResourceDefinition
--
--         , requestListDeviceDefinitionVersions $
--             listDeviceDefinitionVersions
--
--         , requestListFunctionDefinitions $
--             listFunctionDefinitions
--
--         , requestGetFunctionDefinition $
--             getFunctionDefinition
--
--         , requestGetGroup $
--             getGroup
--
--         , requestCreateDeviceDefinition $
--             createDeviceDefinition
--
--         , requestCreateGroupVersion $
--             createGroupVersion
--
--         , requestCreateFunctionDefinitionVersion $
--             createFunctionDefinitionVersion
--
--         , requestStartBulkDeployment $
--             startBulkDeployment
--
--         , requestUpdateThingRuntimeConfiguration $
--             updateThingRuntimeConfiguration
--
--         , requestGetDeviceDefinitionVersion $
--             getDeviceDefinitionVersion
--
--           ]

--     , testGroup "response"
--         [ responseGetGroupCertificateConfiguration $
--             getGroupCertificateConfigurationResponse
--
--         , responseListGroupVersions $
--             listGroupVersionsResponse
--
--         , responseListFunctionDefinitionVersions $
--             listFunctionDefinitionVersionsResponse
--
--         , responseListDeviceDefinitions $
--             listDeviceDefinitionsResponse
--
--         , responseAssociateRoleToGroup $
--             associateRoleToGroupResponse
--
--         , responseUpdateCoreDefinition $
--             updateCoreDefinitionResponse
--
--         , responseDeleteCoreDefinition $
--             deleteCoreDefinitionResponse
--
--         , responseGetLoggerDefinition $
--             getLoggerDefinitionResponse
--
--         , responseListGroupCertificateAuthorities $
--             listGroupCertificateAuthoritiesResponse
--
--         , responseDisassociateRoleFromGroup $
--             disassociateRoleFromGroupResponse
--
--         , responseUpdateSubscriptionDefinition $
--             updateSubscriptionDefinitionResponse
--
--         , responseDeleteSubscriptionDefinition $
--             deleteSubscriptionDefinitionResponse
--
--         , responseListCoreDefinitions $
--             listCoreDefinitionsResponse
--
--         , responseListSubscriptionDefinitions $
--             listSubscriptionDefinitionsResponse
--
--         , responseCreateGroupCertificateAuthority $
--             createGroupCertificateAuthorityResponse
--
--         , responseDeleteConnectorDefinition $
--             deleteConnectorDefinitionResponse
--
--         , responseUpdateConnectorDefinition $
--             updateConnectorDefinitionResponse
--
--         , responseCreateLoggerDefinitionVersion $
--             createLoggerDefinitionVersionResponse
--
--         , responseCreateCoreDefinition $
--             createCoreDefinitionResponse
--
--         , responseGetConnectorDefinitionVersion $
--             getConnectorDefinitionVersionResponse
--
--         , responseUpdateConnectivityInfo $
--             updateConnectivityInfoResponse
--
--         , responseCreateSubscriptionDefinition $
--             createSubscriptionDefinitionResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetGroupCertificateAuthority $
--             getGroupCertificateAuthorityResponse
--
--         , responseGetLoggerDefinitionVersion $
--             getLoggerDefinitionVersionResponse
--
--         , responseGetServiceRoleForAccount $
--             getServiceRoleForAccountResponse
--
--         , responseListConnectorDefinitionVersions $
--             listConnectorDefinitionVersionsResponse
--
--         , responseCreateSoftwareUpdateJob $
--             createSoftwareUpdateJobResponse
--
--         , responseCreateLoggerDefinition $
--             createLoggerDefinitionResponse
--
--         , responseGetConnectivityInfo $
--             getConnectivityInfoResponse
--
--         , responseCreateDeployment $
--             createDeploymentResponse
--
--         , responseDeleteLoggerDefinition $
--             deleteLoggerDefinitionResponse
--
--         , responseUpdateLoggerDefinition $
--             updateLoggerDefinitionResponse
--
--         , responseGetSubscriptionDefinition $
--             getSubscriptionDefinitionResponse
--
--         , responseGetCoreDefinition $
--             getCoreDefinitionResponse
--
--         , responseCreateConnectorDefinitionVersion $
--             createConnectorDefinitionVersionResponse
--
--         , responseGetDeploymentStatus $
--             getDeploymentStatusResponse
--
--         , responseGetBulkDeploymentStatus $
--             getBulkDeploymentStatusResponse
--
--         , responseCreateResourceDefinition $
--             createResourceDefinitionResponse
--
--         , responseGetResourceDefinitionVersion $
--             getResourceDefinitionVersionResponse
--
--         , responseUpdateFunctionDefinition $
--             updateFunctionDefinitionResponse
--
--         , responseDeleteFunctionDefinition $
--             deleteFunctionDefinitionResponse
--
--         , responseListResourceDefinitions $
--             listResourceDefinitionsResponse
--
--         , responseStopBulkDeployment $
--             stopBulkDeploymentResponse
--
--         , responseCreateResourceDefinitionVersion $
--             createResourceDefinitionVersionResponse
--
--         , responseGetResourceDefinition $
--             getResourceDefinitionResponse
--
--         , responseListResourceDefinitionVersions $
--             listResourceDefinitionVersionsResponse
--
--         , responseDisassociateServiceRoleFromAccount $
--             disassociateServiceRoleFromAccountResponse
--
--         , responseDeleteDeviceDefinition $
--             deleteDeviceDefinitionResponse
--
--         , responseUpdateDeviceDefinition $
--             updateDeviceDefinitionResponse
--
--         , responseAssociateServiceRoleToAccount $
--             associateServiceRoleToAccountResponse
--
--         , responseResetDeployments $
--             resetDeploymentsResponse
--
--         , responseListConnectorDefinitions $
--             listConnectorDefinitionsResponse
--
--         , responseGetSubscriptionDefinitionVersion $
--             getSubscriptionDefinitionVersionResponse
--
--         , responseGetAssociatedRole $
--             getAssociatedRoleResponse
--
--         , responseListLoggerDefinitionVersions $
--             listLoggerDefinitionVersionsResponse
--
--         , responseCreateConnectorDefinition $
--             createConnectorDefinitionResponse
--
--         , responseGetCoreDefinitionVersion $
--             getCoreDefinitionVersionResponse
--
--         , responseListSubscriptionDefinitionVersions $
--             listSubscriptionDefinitionVersionsResponse
--
--         , responseListCoreDefinitionVersions $
--             listCoreDefinitionVersionsResponse
--
--         , responseCreateCoreDefinitionVersion $
--             createCoreDefinitionVersionResponse
--
--         , responseListBulkDeployments $
--             listBulkDeploymentsResponse
--
--         , responseListDeployments $
--             listDeploymentsResponse
--
--         , responseGetConnectorDefinition $
--             getConnectorDefinitionResponse
--
--         , responseListLoggerDefinitions $
--             listLoggerDefinitionsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseCreateSubscriptionDefinitionVersion $
--             createSubscriptionDefinitionVersionResponse
--
--         , responseGetGroupVersion $
--             getGroupVersionResponse
--
--         , responseUpdateGroupCertificateConfiguration $
--             updateGroupCertificateConfigurationResponse
--
--         , responseGetFunctionDefinitionVersion $
--             getFunctionDefinitionVersionResponse
--
--         , responseGetDeviceDefinition $
--             getDeviceDefinitionResponse
--
--         , responseCreateGroup $
--             createGroupResponse
--
--         , responseCreateFunctionDefinition $
--             createFunctionDefinitionResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseCreateDeviceDefinitionVersion $
--             createDeviceDefinitionVersionResponse
--
--         , responseDeleteGroup $
--             deleteGroupResponse
--
--         , responseUpdateGroup $
--             updateGroupResponse
--
--         , responseListGroups $
--             listGroupsResponse
--
--         , responseListBulkDeploymentDetailedReports $
--             listBulkDeploymentDetailedReportsResponse
--
--         , responseGetThingRuntimeConfiguration $
--             getThingRuntimeConfigurationResponse
--
--         , responseDeleteResourceDefinition $
--             deleteResourceDefinitionResponse
--
--         , responseUpdateResourceDefinition $
--             updateResourceDefinitionResponse
--
--         , responseListDeviceDefinitionVersions $
--             listDeviceDefinitionVersionsResponse
--
--         , responseListFunctionDefinitions $
--             listFunctionDefinitionsResponse
--
--         , responseGetFunctionDefinition $
--             getFunctionDefinitionResponse
--
--         , responseGetGroup $
--             getGroupResponse
--
--         , responseCreateDeviceDefinition $
--             createDeviceDefinitionResponse
--
--         , responseCreateGroupVersion $
--             createGroupVersionResponse
--
--         , responseCreateFunctionDefinitionVersion $
--             createFunctionDefinitionVersionResponse
--
--         , responseStartBulkDeployment $
--             startBulkDeploymentResponse
--
--         , responseUpdateThingRuntimeConfiguration $
--             updateThingRuntimeConfigurationResponse
--
--         , responseGetDeviceDefinitionVersion $
--             getDeviceDefinitionVersionResponse
--
--           ]
--     ]

-- Requests

requestGetGroupCertificateConfiguration :: GetGroupCertificateConfiguration -> TestTree
requestGetGroupCertificateConfiguration = req
    "GetGroupCertificateConfiguration"
    "fixture/GetGroupCertificateConfiguration.yaml"

requestListGroupVersions :: ListGroupVersions -> TestTree
requestListGroupVersions = req
    "ListGroupVersions"
    "fixture/ListGroupVersions.yaml"

requestListFunctionDefinitionVersions :: ListFunctionDefinitionVersions -> TestTree
requestListFunctionDefinitionVersions = req
    "ListFunctionDefinitionVersions"
    "fixture/ListFunctionDefinitionVersions.yaml"

requestListDeviceDefinitions :: ListDeviceDefinitions -> TestTree
requestListDeviceDefinitions = req
    "ListDeviceDefinitions"
    "fixture/ListDeviceDefinitions.yaml"

requestAssociateRoleToGroup :: AssociateRoleToGroup -> TestTree
requestAssociateRoleToGroup = req
    "AssociateRoleToGroup"
    "fixture/AssociateRoleToGroup.yaml"

requestUpdateCoreDefinition :: UpdateCoreDefinition -> TestTree
requestUpdateCoreDefinition = req
    "UpdateCoreDefinition"
    "fixture/UpdateCoreDefinition.yaml"

requestDeleteCoreDefinition :: DeleteCoreDefinition -> TestTree
requestDeleteCoreDefinition = req
    "DeleteCoreDefinition"
    "fixture/DeleteCoreDefinition.yaml"

requestGetLoggerDefinition :: GetLoggerDefinition -> TestTree
requestGetLoggerDefinition = req
    "GetLoggerDefinition"
    "fixture/GetLoggerDefinition.yaml"

requestListGroupCertificateAuthorities :: ListGroupCertificateAuthorities -> TestTree
requestListGroupCertificateAuthorities = req
    "ListGroupCertificateAuthorities"
    "fixture/ListGroupCertificateAuthorities.yaml"

requestDisassociateRoleFromGroup :: DisassociateRoleFromGroup -> TestTree
requestDisassociateRoleFromGroup = req
    "DisassociateRoleFromGroup"
    "fixture/DisassociateRoleFromGroup.yaml"

requestUpdateSubscriptionDefinition :: UpdateSubscriptionDefinition -> TestTree
requestUpdateSubscriptionDefinition = req
    "UpdateSubscriptionDefinition"
    "fixture/UpdateSubscriptionDefinition.yaml"

requestDeleteSubscriptionDefinition :: DeleteSubscriptionDefinition -> TestTree
requestDeleteSubscriptionDefinition = req
    "DeleteSubscriptionDefinition"
    "fixture/DeleteSubscriptionDefinition.yaml"

requestListCoreDefinitions :: ListCoreDefinitions -> TestTree
requestListCoreDefinitions = req
    "ListCoreDefinitions"
    "fixture/ListCoreDefinitions.yaml"

requestListSubscriptionDefinitions :: ListSubscriptionDefinitions -> TestTree
requestListSubscriptionDefinitions = req
    "ListSubscriptionDefinitions"
    "fixture/ListSubscriptionDefinitions.yaml"

requestCreateGroupCertificateAuthority :: CreateGroupCertificateAuthority -> TestTree
requestCreateGroupCertificateAuthority = req
    "CreateGroupCertificateAuthority"
    "fixture/CreateGroupCertificateAuthority.yaml"

requestDeleteConnectorDefinition :: DeleteConnectorDefinition -> TestTree
requestDeleteConnectorDefinition = req
    "DeleteConnectorDefinition"
    "fixture/DeleteConnectorDefinition.yaml"

requestUpdateConnectorDefinition :: UpdateConnectorDefinition -> TestTree
requestUpdateConnectorDefinition = req
    "UpdateConnectorDefinition"
    "fixture/UpdateConnectorDefinition.yaml"

requestCreateLoggerDefinitionVersion :: CreateLoggerDefinitionVersion -> TestTree
requestCreateLoggerDefinitionVersion = req
    "CreateLoggerDefinitionVersion"
    "fixture/CreateLoggerDefinitionVersion.yaml"

requestCreateCoreDefinition :: CreateCoreDefinition -> TestTree
requestCreateCoreDefinition = req
    "CreateCoreDefinition"
    "fixture/CreateCoreDefinition.yaml"

requestGetConnectorDefinitionVersion :: GetConnectorDefinitionVersion -> TestTree
requestGetConnectorDefinitionVersion = req
    "GetConnectorDefinitionVersion"
    "fixture/GetConnectorDefinitionVersion.yaml"

requestUpdateConnectivityInfo :: UpdateConnectivityInfo -> TestTree
requestUpdateConnectivityInfo = req
    "UpdateConnectivityInfo"
    "fixture/UpdateConnectivityInfo.yaml"

requestCreateSubscriptionDefinition :: CreateSubscriptionDefinition -> TestTree
requestCreateSubscriptionDefinition = req
    "CreateSubscriptionDefinition"
    "fixture/CreateSubscriptionDefinition.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource = req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetGroupCertificateAuthority :: GetGroupCertificateAuthority -> TestTree
requestGetGroupCertificateAuthority = req
    "GetGroupCertificateAuthority"
    "fixture/GetGroupCertificateAuthority.yaml"

requestGetLoggerDefinitionVersion :: GetLoggerDefinitionVersion -> TestTree
requestGetLoggerDefinitionVersion = req
    "GetLoggerDefinitionVersion"
    "fixture/GetLoggerDefinitionVersion.yaml"

requestGetServiceRoleForAccount :: GetServiceRoleForAccount -> TestTree
requestGetServiceRoleForAccount = req
    "GetServiceRoleForAccount"
    "fixture/GetServiceRoleForAccount.yaml"

requestListConnectorDefinitionVersions :: ListConnectorDefinitionVersions -> TestTree
requestListConnectorDefinitionVersions = req
    "ListConnectorDefinitionVersions"
    "fixture/ListConnectorDefinitionVersions.yaml"

requestCreateSoftwareUpdateJob :: CreateSoftwareUpdateJob -> TestTree
requestCreateSoftwareUpdateJob = req
    "CreateSoftwareUpdateJob"
    "fixture/CreateSoftwareUpdateJob.yaml"

requestCreateLoggerDefinition :: CreateLoggerDefinition -> TestTree
requestCreateLoggerDefinition = req
    "CreateLoggerDefinition"
    "fixture/CreateLoggerDefinition.yaml"

requestGetConnectivityInfo :: GetConnectivityInfo -> TestTree
requestGetConnectivityInfo = req
    "GetConnectivityInfo"
    "fixture/GetConnectivityInfo.yaml"

requestCreateDeployment :: CreateDeployment -> TestTree
requestCreateDeployment = req
    "CreateDeployment"
    "fixture/CreateDeployment.yaml"

requestDeleteLoggerDefinition :: DeleteLoggerDefinition -> TestTree
requestDeleteLoggerDefinition = req
    "DeleteLoggerDefinition"
    "fixture/DeleteLoggerDefinition.yaml"

requestUpdateLoggerDefinition :: UpdateLoggerDefinition -> TestTree
requestUpdateLoggerDefinition = req
    "UpdateLoggerDefinition"
    "fixture/UpdateLoggerDefinition.yaml"

requestGetSubscriptionDefinition :: GetSubscriptionDefinition -> TestTree
requestGetSubscriptionDefinition = req
    "GetSubscriptionDefinition"
    "fixture/GetSubscriptionDefinition.yaml"

requestGetCoreDefinition :: GetCoreDefinition -> TestTree
requestGetCoreDefinition = req
    "GetCoreDefinition"
    "fixture/GetCoreDefinition.yaml"

requestCreateConnectorDefinitionVersion :: CreateConnectorDefinitionVersion -> TestTree
requestCreateConnectorDefinitionVersion = req
    "CreateConnectorDefinitionVersion"
    "fixture/CreateConnectorDefinitionVersion.yaml"

requestGetDeploymentStatus :: GetDeploymentStatus -> TestTree
requestGetDeploymentStatus = req
    "GetDeploymentStatus"
    "fixture/GetDeploymentStatus.yaml"

requestGetBulkDeploymentStatus :: GetBulkDeploymentStatus -> TestTree
requestGetBulkDeploymentStatus = req
    "GetBulkDeploymentStatus"
    "fixture/GetBulkDeploymentStatus.yaml"

requestCreateResourceDefinition :: CreateResourceDefinition -> TestTree
requestCreateResourceDefinition = req
    "CreateResourceDefinition"
    "fixture/CreateResourceDefinition.yaml"

requestGetResourceDefinitionVersion :: GetResourceDefinitionVersion -> TestTree
requestGetResourceDefinitionVersion = req
    "GetResourceDefinitionVersion"
    "fixture/GetResourceDefinitionVersion.yaml"

requestUpdateFunctionDefinition :: UpdateFunctionDefinition -> TestTree
requestUpdateFunctionDefinition = req
    "UpdateFunctionDefinition"
    "fixture/UpdateFunctionDefinition.yaml"

requestDeleteFunctionDefinition :: DeleteFunctionDefinition -> TestTree
requestDeleteFunctionDefinition = req
    "DeleteFunctionDefinition"
    "fixture/DeleteFunctionDefinition.yaml"

requestListResourceDefinitions :: ListResourceDefinitions -> TestTree
requestListResourceDefinitions = req
    "ListResourceDefinitions"
    "fixture/ListResourceDefinitions.yaml"

requestStopBulkDeployment :: StopBulkDeployment -> TestTree
requestStopBulkDeployment = req
    "StopBulkDeployment"
    "fixture/StopBulkDeployment.yaml"

requestCreateResourceDefinitionVersion :: CreateResourceDefinitionVersion -> TestTree
requestCreateResourceDefinitionVersion = req
    "CreateResourceDefinitionVersion"
    "fixture/CreateResourceDefinitionVersion.yaml"

requestGetResourceDefinition :: GetResourceDefinition -> TestTree
requestGetResourceDefinition = req
    "GetResourceDefinition"
    "fixture/GetResourceDefinition.yaml"

requestListResourceDefinitionVersions :: ListResourceDefinitionVersions -> TestTree
requestListResourceDefinitionVersions = req
    "ListResourceDefinitionVersions"
    "fixture/ListResourceDefinitionVersions.yaml"

requestDisassociateServiceRoleFromAccount :: DisassociateServiceRoleFromAccount -> TestTree
requestDisassociateServiceRoleFromAccount = req
    "DisassociateServiceRoleFromAccount"
    "fixture/DisassociateServiceRoleFromAccount.yaml"

requestDeleteDeviceDefinition :: DeleteDeviceDefinition -> TestTree
requestDeleteDeviceDefinition = req
    "DeleteDeviceDefinition"
    "fixture/DeleteDeviceDefinition.yaml"

requestUpdateDeviceDefinition :: UpdateDeviceDefinition -> TestTree
requestUpdateDeviceDefinition = req
    "UpdateDeviceDefinition"
    "fixture/UpdateDeviceDefinition.yaml"

requestAssociateServiceRoleToAccount :: AssociateServiceRoleToAccount -> TestTree
requestAssociateServiceRoleToAccount = req
    "AssociateServiceRoleToAccount"
    "fixture/AssociateServiceRoleToAccount.yaml"

requestResetDeployments :: ResetDeployments -> TestTree
requestResetDeployments = req
    "ResetDeployments"
    "fixture/ResetDeployments.yaml"

requestListConnectorDefinitions :: ListConnectorDefinitions -> TestTree
requestListConnectorDefinitions = req
    "ListConnectorDefinitions"
    "fixture/ListConnectorDefinitions.yaml"

requestGetSubscriptionDefinitionVersion :: GetSubscriptionDefinitionVersion -> TestTree
requestGetSubscriptionDefinitionVersion = req
    "GetSubscriptionDefinitionVersion"
    "fixture/GetSubscriptionDefinitionVersion.yaml"

requestGetAssociatedRole :: GetAssociatedRole -> TestTree
requestGetAssociatedRole = req
    "GetAssociatedRole"
    "fixture/GetAssociatedRole.yaml"

requestListLoggerDefinitionVersions :: ListLoggerDefinitionVersions -> TestTree
requestListLoggerDefinitionVersions = req
    "ListLoggerDefinitionVersions"
    "fixture/ListLoggerDefinitionVersions.yaml"

requestCreateConnectorDefinition :: CreateConnectorDefinition -> TestTree
requestCreateConnectorDefinition = req
    "CreateConnectorDefinition"
    "fixture/CreateConnectorDefinition.yaml"

requestGetCoreDefinitionVersion :: GetCoreDefinitionVersion -> TestTree
requestGetCoreDefinitionVersion = req
    "GetCoreDefinitionVersion"
    "fixture/GetCoreDefinitionVersion.yaml"

requestListSubscriptionDefinitionVersions :: ListSubscriptionDefinitionVersions -> TestTree
requestListSubscriptionDefinitionVersions = req
    "ListSubscriptionDefinitionVersions"
    "fixture/ListSubscriptionDefinitionVersions.yaml"

requestListCoreDefinitionVersions :: ListCoreDefinitionVersions -> TestTree
requestListCoreDefinitionVersions = req
    "ListCoreDefinitionVersions"
    "fixture/ListCoreDefinitionVersions.yaml"

requestCreateCoreDefinitionVersion :: CreateCoreDefinitionVersion -> TestTree
requestCreateCoreDefinitionVersion = req
    "CreateCoreDefinitionVersion"
    "fixture/CreateCoreDefinitionVersion.yaml"

requestListBulkDeployments :: ListBulkDeployments -> TestTree
requestListBulkDeployments = req
    "ListBulkDeployments"
    "fixture/ListBulkDeployments.yaml"

requestListDeployments :: ListDeployments -> TestTree
requestListDeployments = req
    "ListDeployments"
    "fixture/ListDeployments.yaml"

requestGetConnectorDefinition :: GetConnectorDefinition -> TestTree
requestGetConnectorDefinition = req
    "GetConnectorDefinition"
    "fixture/GetConnectorDefinition.yaml"

requestListLoggerDefinitions :: ListLoggerDefinitions -> TestTree
requestListLoggerDefinitions = req
    "ListLoggerDefinitions"
    "fixture/ListLoggerDefinitions.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource = req
    "TagResource"
    "fixture/TagResource.yaml"

requestCreateSubscriptionDefinitionVersion :: CreateSubscriptionDefinitionVersion -> TestTree
requestCreateSubscriptionDefinitionVersion = req
    "CreateSubscriptionDefinitionVersion"
    "fixture/CreateSubscriptionDefinitionVersion.yaml"

requestGetGroupVersion :: GetGroupVersion -> TestTree
requestGetGroupVersion = req
    "GetGroupVersion"
    "fixture/GetGroupVersion.yaml"

requestUpdateGroupCertificateConfiguration :: UpdateGroupCertificateConfiguration -> TestTree
requestUpdateGroupCertificateConfiguration = req
    "UpdateGroupCertificateConfiguration"
    "fixture/UpdateGroupCertificateConfiguration.yaml"

requestGetFunctionDefinitionVersion :: GetFunctionDefinitionVersion -> TestTree
requestGetFunctionDefinitionVersion = req
    "GetFunctionDefinitionVersion"
    "fixture/GetFunctionDefinitionVersion.yaml"

requestGetDeviceDefinition :: GetDeviceDefinition -> TestTree
requestGetDeviceDefinition = req
    "GetDeviceDefinition"
    "fixture/GetDeviceDefinition.yaml"

requestCreateGroup :: CreateGroup -> TestTree
requestCreateGroup = req
    "CreateGroup"
    "fixture/CreateGroup.yaml"

requestCreateFunctionDefinition :: CreateFunctionDefinition -> TestTree
requestCreateFunctionDefinition = req
    "CreateFunctionDefinition"
    "fixture/CreateFunctionDefinition.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource = req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCreateDeviceDefinitionVersion :: CreateDeviceDefinitionVersion -> TestTree
requestCreateDeviceDefinitionVersion = req
    "CreateDeviceDefinitionVersion"
    "fixture/CreateDeviceDefinitionVersion.yaml"

requestDeleteGroup :: DeleteGroup -> TestTree
requestDeleteGroup = req
    "DeleteGroup"
    "fixture/DeleteGroup.yaml"

requestUpdateGroup :: UpdateGroup -> TestTree
requestUpdateGroup = req
    "UpdateGroup"
    "fixture/UpdateGroup.yaml"

requestListGroups :: ListGroups -> TestTree
requestListGroups = req
    "ListGroups"
    "fixture/ListGroups.yaml"

requestListBulkDeploymentDetailedReports :: ListBulkDeploymentDetailedReports -> TestTree
requestListBulkDeploymentDetailedReports = req
    "ListBulkDeploymentDetailedReports"
    "fixture/ListBulkDeploymentDetailedReports.yaml"

requestGetThingRuntimeConfiguration :: GetThingRuntimeConfiguration -> TestTree
requestGetThingRuntimeConfiguration = req
    "GetThingRuntimeConfiguration"
    "fixture/GetThingRuntimeConfiguration.yaml"

requestDeleteResourceDefinition :: DeleteResourceDefinition -> TestTree
requestDeleteResourceDefinition = req
    "DeleteResourceDefinition"
    "fixture/DeleteResourceDefinition.yaml"

requestUpdateResourceDefinition :: UpdateResourceDefinition -> TestTree
requestUpdateResourceDefinition = req
    "UpdateResourceDefinition"
    "fixture/UpdateResourceDefinition.yaml"

requestListDeviceDefinitionVersions :: ListDeviceDefinitionVersions -> TestTree
requestListDeviceDefinitionVersions = req
    "ListDeviceDefinitionVersions"
    "fixture/ListDeviceDefinitionVersions.yaml"

requestListFunctionDefinitions :: ListFunctionDefinitions -> TestTree
requestListFunctionDefinitions = req
    "ListFunctionDefinitions"
    "fixture/ListFunctionDefinitions.yaml"

requestGetFunctionDefinition :: GetFunctionDefinition -> TestTree
requestGetFunctionDefinition = req
    "GetFunctionDefinition"
    "fixture/GetFunctionDefinition.yaml"

requestGetGroup :: GetGroup -> TestTree
requestGetGroup = req
    "GetGroup"
    "fixture/GetGroup.yaml"

requestCreateDeviceDefinition :: CreateDeviceDefinition -> TestTree
requestCreateDeviceDefinition = req
    "CreateDeviceDefinition"
    "fixture/CreateDeviceDefinition.yaml"

requestCreateGroupVersion :: CreateGroupVersion -> TestTree
requestCreateGroupVersion = req
    "CreateGroupVersion"
    "fixture/CreateGroupVersion.yaml"

requestCreateFunctionDefinitionVersion :: CreateFunctionDefinitionVersion -> TestTree
requestCreateFunctionDefinitionVersion = req
    "CreateFunctionDefinitionVersion"
    "fixture/CreateFunctionDefinitionVersion.yaml"

requestStartBulkDeployment :: StartBulkDeployment -> TestTree
requestStartBulkDeployment = req
    "StartBulkDeployment"
    "fixture/StartBulkDeployment.yaml"

requestUpdateThingRuntimeConfiguration :: UpdateThingRuntimeConfiguration -> TestTree
requestUpdateThingRuntimeConfiguration = req
    "UpdateThingRuntimeConfiguration"
    "fixture/UpdateThingRuntimeConfiguration.yaml"

requestGetDeviceDefinitionVersion :: GetDeviceDefinitionVersion -> TestTree
requestGetDeviceDefinitionVersion = req
    "GetDeviceDefinitionVersion"
    "fixture/GetDeviceDefinitionVersion.yaml"

-- Responses

responseGetGroupCertificateConfiguration :: GetGroupCertificateConfigurationResponse -> TestTree
responseGetGroupCertificateConfiguration = res
    "GetGroupCertificateConfigurationResponse"
    "fixture/GetGroupCertificateConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroupCertificateConfiguration)

responseListGroupVersions :: ListGroupVersionsResponse -> TestTree
responseListGroupVersions = res
    "ListGroupVersionsResponse"
    "fixture/ListGroupVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListGroupVersions)

responseListFunctionDefinitionVersions :: ListFunctionDefinitionVersionsResponse -> TestTree
responseListFunctionDefinitionVersions = res
    "ListFunctionDefinitionVersionsResponse"
    "fixture/ListFunctionDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListFunctionDefinitionVersions)

responseListDeviceDefinitions :: ListDeviceDefinitionsResponse -> TestTree
responseListDeviceDefinitions = res
    "ListDeviceDefinitionsResponse"
    "fixture/ListDeviceDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListDeviceDefinitions)

responseAssociateRoleToGroup :: AssociateRoleToGroupResponse -> TestTree
responseAssociateRoleToGroup = res
    "AssociateRoleToGroupResponse"
    "fixture/AssociateRoleToGroupResponse.proto"
    greengrass
    (Proxy :: Proxy AssociateRoleToGroup)

responseUpdateCoreDefinition :: UpdateCoreDefinitionResponse -> TestTree
responseUpdateCoreDefinition = res
    "UpdateCoreDefinitionResponse"
    "fixture/UpdateCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateCoreDefinition)

responseDeleteCoreDefinition :: DeleteCoreDefinitionResponse -> TestTree
responseDeleteCoreDefinition = res
    "DeleteCoreDefinitionResponse"
    "fixture/DeleteCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteCoreDefinition)

responseGetLoggerDefinition :: GetLoggerDefinitionResponse -> TestTree
responseGetLoggerDefinition = res
    "GetLoggerDefinitionResponse"
    "fixture/GetLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetLoggerDefinition)

responseListGroupCertificateAuthorities :: ListGroupCertificateAuthoritiesResponse -> TestTree
responseListGroupCertificateAuthorities = res
    "ListGroupCertificateAuthoritiesResponse"
    "fixture/ListGroupCertificateAuthoritiesResponse.proto"
    greengrass
    (Proxy :: Proxy ListGroupCertificateAuthorities)

responseDisassociateRoleFromGroup :: DisassociateRoleFromGroupResponse -> TestTree
responseDisassociateRoleFromGroup = res
    "DisassociateRoleFromGroupResponse"
    "fixture/DisassociateRoleFromGroupResponse.proto"
    greengrass
    (Proxy :: Proxy DisassociateRoleFromGroup)

responseUpdateSubscriptionDefinition :: UpdateSubscriptionDefinitionResponse -> TestTree
responseUpdateSubscriptionDefinition = res
    "UpdateSubscriptionDefinitionResponse"
    "fixture/UpdateSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateSubscriptionDefinition)

responseDeleteSubscriptionDefinition :: DeleteSubscriptionDefinitionResponse -> TestTree
responseDeleteSubscriptionDefinition = res
    "DeleteSubscriptionDefinitionResponse"
    "fixture/DeleteSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteSubscriptionDefinition)

responseListCoreDefinitions :: ListCoreDefinitionsResponse -> TestTree
responseListCoreDefinitions = res
    "ListCoreDefinitionsResponse"
    "fixture/ListCoreDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListCoreDefinitions)

responseListSubscriptionDefinitions :: ListSubscriptionDefinitionsResponse -> TestTree
responseListSubscriptionDefinitions = res
    "ListSubscriptionDefinitionsResponse"
    "fixture/ListSubscriptionDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListSubscriptionDefinitions)

responseCreateGroupCertificateAuthority :: CreateGroupCertificateAuthorityResponse -> TestTree
responseCreateGroupCertificateAuthority = res
    "CreateGroupCertificateAuthorityResponse"
    "fixture/CreateGroupCertificateAuthorityResponse.proto"
    greengrass
    (Proxy :: Proxy CreateGroupCertificateAuthority)

responseDeleteConnectorDefinition :: DeleteConnectorDefinitionResponse -> TestTree
responseDeleteConnectorDefinition = res
    "DeleteConnectorDefinitionResponse"
    "fixture/DeleteConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteConnectorDefinition)

responseUpdateConnectorDefinition :: UpdateConnectorDefinitionResponse -> TestTree
responseUpdateConnectorDefinition = res
    "UpdateConnectorDefinitionResponse"
    "fixture/UpdateConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateConnectorDefinition)

responseCreateLoggerDefinitionVersion :: CreateLoggerDefinitionVersionResponse -> TestTree
responseCreateLoggerDefinitionVersion = res
    "CreateLoggerDefinitionVersionResponse"
    "fixture/CreateLoggerDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateLoggerDefinitionVersion)

responseCreateCoreDefinition :: CreateCoreDefinitionResponse -> TestTree
responseCreateCoreDefinition = res
    "CreateCoreDefinitionResponse"
    "fixture/CreateCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateCoreDefinition)

responseGetConnectorDefinitionVersion :: GetConnectorDefinitionVersionResponse -> TestTree
responseGetConnectorDefinitionVersion = res
    "GetConnectorDefinitionVersionResponse"
    "fixture/GetConnectorDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetConnectorDefinitionVersion)

responseUpdateConnectivityInfo :: UpdateConnectivityInfoResponse -> TestTree
responseUpdateConnectivityInfo = res
    "UpdateConnectivityInfoResponse"
    "fixture/UpdateConnectivityInfoResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateConnectivityInfo)

responseCreateSubscriptionDefinition :: CreateSubscriptionDefinitionResponse -> TestTree
responseCreateSubscriptionDefinition = res
    "CreateSubscriptionDefinitionResponse"
    "fixture/CreateSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateSubscriptionDefinition)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource = res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    greengrass
    (Proxy :: Proxy ListTagsForResource)

responseGetGroupCertificateAuthority :: GetGroupCertificateAuthorityResponse -> TestTree
responseGetGroupCertificateAuthority = res
    "GetGroupCertificateAuthorityResponse"
    "fixture/GetGroupCertificateAuthorityResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroupCertificateAuthority)

responseGetLoggerDefinitionVersion :: GetLoggerDefinitionVersionResponse -> TestTree
responseGetLoggerDefinitionVersion = res
    "GetLoggerDefinitionVersionResponse"
    "fixture/GetLoggerDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetLoggerDefinitionVersion)

responseGetServiceRoleForAccount :: GetServiceRoleForAccountResponse -> TestTree
responseGetServiceRoleForAccount = res
    "GetServiceRoleForAccountResponse"
    "fixture/GetServiceRoleForAccountResponse.proto"
    greengrass
    (Proxy :: Proxy GetServiceRoleForAccount)

responseListConnectorDefinitionVersions :: ListConnectorDefinitionVersionsResponse -> TestTree
responseListConnectorDefinitionVersions = res
    "ListConnectorDefinitionVersionsResponse"
    "fixture/ListConnectorDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListConnectorDefinitionVersions)

responseCreateSoftwareUpdateJob :: CreateSoftwareUpdateJobResponse -> TestTree
responseCreateSoftwareUpdateJob = res
    "CreateSoftwareUpdateJobResponse"
    "fixture/CreateSoftwareUpdateJobResponse.proto"
    greengrass
    (Proxy :: Proxy CreateSoftwareUpdateJob)

responseCreateLoggerDefinition :: CreateLoggerDefinitionResponse -> TestTree
responseCreateLoggerDefinition = res
    "CreateLoggerDefinitionResponse"
    "fixture/CreateLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateLoggerDefinition)

responseGetConnectivityInfo :: GetConnectivityInfoResponse -> TestTree
responseGetConnectivityInfo = res
    "GetConnectivityInfoResponse"
    "fixture/GetConnectivityInfoResponse.proto"
    greengrass
    (Proxy :: Proxy GetConnectivityInfo)

responseCreateDeployment :: CreateDeploymentResponse -> TestTree
responseCreateDeployment = res
    "CreateDeploymentResponse"
    "fixture/CreateDeploymentResponse.proto"
    greengrass
    (Proxy :: Proxy CreateDeployment)

responseDeleteLoggerDefinition :: DeleteLoggerDefinitionResponse -> TestTree
responseDeleteLoggerDefinition = res
    "DeleteLoggerDefinitionResponse"
    "fixture/DeleteLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteLoggerDefinition)

responseUpdateLoggerDefinition :: UpdateLoggerDefinitionResponse -> TestTree
responseUpdateLoggerDefinition = res
    "UpdateLoggerDefinitionResponse"
    "fixture/UpdateLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateLoggerDefinition)

responseGetSubscriptionDefinition :: GetSubscriptionDefinitionResponse -> TestTree
responseGetSubscriptionDefinition = res
    "GetSubscriptionDefinitionResponse"
    "fixture/GetSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetSubscriptionDefinition)

responseGetCoreDefinition :: GetCoreDefinitionResponse -> TestTree
responseGetCoreDefinition = res
    "GetCoreDefinitionResponse"
    "fixture/GetCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetCoreDefinition)

responseCreateConnectorDefinitionVersion :: CreateConnectorDefinitionVersionResponse -> TestTree
responseCreateConnectorDefinitionVersion = res
    "CreateConnectorDefinitionVersionResponse"
    "fixture/CreateConnectorDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateConnectorDefinitionVersion)

responseGetDeploymentStatus :: GetDeploymentStatusResponse -> TestTree
responseGetDeploymentStatus = res
    "GetDeploymentStatusResponse"
    "fixture/GetDeploymentStatusResponse.proto"
    greengrass
    (Proxy :: Proxy GetDeploymentStatus)

responseGetBulkDeploymentStatus :: GetBulkDeploymentStatusResponse -> TestTree
responseGetBulkDeploymentStatus = res
    "GetBulkDeploymentStatusResponse"
    "fixture/GetBulkDeploymentStatusResponse.proto"
    greengrass
    (Proxy :: Proxy GetBulkDeploymentStatus)

responseCreateResourceDefinition :: CreateResourceDefinitionResponse -> TestTree
responseCreateResourceDefinition = res
    "CreateResourceDefinitionResponse"
    "fixture/CreateResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateResourceDefinition)

responseGetResourceDefinitionVersion :: GetResourceDefinitionVersionResponse -> TestTree
responseGetResourceDefinitionVersion = res
    "GetResourceDefinitionVersionResponse"
    "fixture/GetResourceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetResourceDefinitionVersion)

responseUpdateFunctionDefinition :: UpdateFunctionDefinitionResponse -> TestTree
responseUpdateFunctionDefinition = res
    "UpdateFunctionDefinitionResponse"
    "fixture/UpdateFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateFunctionDefinition)

responseDeleteFunctionDefinition :: DeleteFunctionDefinitionResponse -> TestTree
responseDeleteFunctionDefinition = res
    "DeleteFunctionDefinitionResponse"
    "fixture/DeleteFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteFunctionDefinition)

responseListResourceDefinitions :: ListResourceDefinitionsResponse -> TestTree
responseListResourceDefinitions = res
    "ListResourceDefinitionsResponse"
    "fixture/ListResourceDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListResourceDefinitions)

responseStopBulkDeployment :: StopBulkDeploymentResponse -> TestTree
responseStopBulkDeployment = res
    "StopBulkDeploymentResponse"
    "fixture/StopBulkDeploymentResponse.proto"
    greengrass
    (Proxy :: Proxy StopBulkDeployment)

responseCreateResourceDefinitionVersion :: CreateResourceDefinitionVersionResponse -> TestTree
responseCreateResourceDefinitionVersion = res
    "CreateResourceDefinitionVersionResponse"
    "fixture/CreateResourceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateResourceDefinitionVersion)

responseGetResourceDefinition :: GetResourceDefinitionResponse -> TestTree
responseGetResourceDefinition = res
    "GetResourceDefinitionResponse"
    "fixture/GetResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetResourceDefinition)

responseListResourceDefinitionVersions :: ListResourceDefinitionVersionsResponse -> TestTree
responseListResourceDefinitionVersions = res
    "ListResourceDefinitionVersionsResponse"
    "fixture/ListResourceDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListResourceDefinitionVersions)

responseDisassociateServiceRoleFromAccount :: DisassociateServiceRoleFromAccountResponse -> TestTree
responseDisassociateServiceRoleFromAccount = res
    "DisassociateServiceRoleFromAccountResponse"
    "fixture/DisassociateServiceRoleFromAccountResponse.proto"
    greengrass
    (Proxy :: Proxy DisassociateServiceRoleFromAccount)

responseDeleteDeviceDefinition :: DeleteDeviceDefinitionResponse -> TestTree
responseDeleteDeviceDefinition = res
    "DeleteDeviceDefinitionResponse"
    "fixture/DeleteDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteDeviceDefinition)

responseUpdateDeviceDefinition :: UpdateDeviceDefinitionResponse -> TestTree
responseUpdateDeviceDefinition = res
    "UpdateDeviceDefinitionResponse"
    "fixture/UpdateDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateDeviceDefinition)

responseAssociateServiceRoleToAccount :: AssociateServiceRoleToAccountResponse -> TestTree
responseAssociateServiceRoleToAccount = res
    "AssociateServiceRoleToAccountResponse"
    "fixture/AssociateServiceRoleToAccountResponse.proto"
    greengrass
    (Proxy :: Proxy AssociateServiceRoleToAccount)

responseResetDeployments :: ResetDeploymentsResponse -> TestTree
responseResetDeployments = res
    "ResetDeploymentsResponse"
    "fixture/ResetDeploymentsResponse.proto"
    greengrass
    (Proxy :: Proxy ResetDeployments)

responseListConnectorDefinitions :: ListConnectorDefinitionsResponse -> TestTree
responseListConnectorDefinitions = res
    "ListConnectorDefinitionsResponse"
    "fixture/ListConnectorDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListConnectorDefinitions)

responseGetSubscriptionDefinitionVersion :: GetSubscriptionDefinitionVersionResponse -> TestTree
responseGetSubscriptionDefinitionVersion = res
    "GetSubscriptionDefinitionVersionResponse"
    "fixture/GetSubscriptionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetSubscriptionDefinitionVersion)

responseGetAssociatedRole :: GetAssociatedRoleResponse -> TestTree
responseGetAssociatedRole = res
    "GetAssociatedRoleResponse"
    "fixture/GetAssociatedRoleResponse.proto"
    greengrass
    (Proxy :: Proxy GetAssociatedRole)

responseListLoggerDefinitionVersions :: ListLoggerDefinitionVersionsResponse -> TestTree
responseListLoggerDefinitionVersions = res
    "ListLoggerDefinitionVersionsResponse"
    "fixture/ListLoggerDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListLoggerDefinitionVersions)

responseCreateConnectorDefinition :: CreateConnectorDefinitionResponse -> TestTree
responseCreateConnectorDefinition = res
    "CreateConnectorDefinitionResponse"
    "fixture/CreateConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateConnectorDefinition)

responseGetCoreDefinitionVersion :: GetCoreDefinitionVersionResponse -> TestTree
responseGetCoreDefinitionVersion = res
    "GetCoreDefinitionVersionResponse"
    "fixture/GetCoreDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetCoreDefinitionVersion)

responseListSubscriptionDefinitionVersions :: ListSubscriptionDefinitionVersionsResponse -> TestTree
responseListSubscriptionDefinitionVersions = res
    "ListSubscriptionDefinitionVersionsResponse"
    "fixture/ListSubscriptionDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListSubscriptionDefinitionVersions)

responseListCoreDefinitionVersions :: ListCoreDefinitionVersionsResponse -> TestTree
responseListCoreDefinitionVersions = res
    "ListCoreDefinitionVersionsResponse"
    "fixture/ListCoreDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListCoreDefinitionVersions)

responseCreateCoreDefinitionVersion :: CreateCoreDefinitionVersionResponse -> TestTree
responseCreateCoreDefinitionVersion = res
    "CreateCoreDefinitionVersionResponse"
    "fixture/CreateCoreDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateCoreDefinitionVersion)

responseListBulkDeployments :: ListBulkDeploymentsResponse -> TestTree
responseListBulkDeployments = res
    "ListBulkDeploymentsResponse"
    "fixture/ListBulkDeploymentsResponse.proto"
    greengrass
    (Proxy :: Proxy ListBulkDeployments)

responseListDeployments :: ListDeploymentsResponse -> TestTree
responseListDeployments = res
    "ListDeploymentsResponse"
    "fixture/ListDeploymentsResponse.proto"
    greengrass
    (Proxy :: Proxy ListDeployments)

responseGetConnectorDefinition :: GetConnectorDefinitionResponse -> TestTree
responseGetConnectorDefinition = res
    "GetConnectorDefinitionResponse"
    "fixture/GetConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetConnectorDefinition)

responseListLoggerDefinitions :: ListLoggerDefinitionsResponse -> TestTree
responseListLoggerDefinitions = res
    "ListLoggerDefinitionsResponse"
    "fixture/ListLoggerDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListLoggerDefinitions)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource = res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    greengrass
    (Proxy :: Proxy TagResource)

responseCreateSubscriptionDefinitionVersion :: CreateSubscriptionDefinitionVersionResponse -> TestTree
responseCreateSubscriptionDefinitionVersion = res
    "CreateSubscriptionDefinitionVersionResponse"
    "fixture/CreateSubscriptionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateSubscriptionDefinitionVersion)

responseGetGroupVersion :: GetGroupVersionResponse -> TestTree
responseGetGroupVersion = res
    "GetGroupVersionResponse"
    "fixture/GetGroupVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroupVersion)

responseUpdateGroupCertificateConfiguration :: UpdateGroupCertificateConfigurationResponse -> TestTree
responseUpdateGroupCertificateConfiguration = res
    "UpdateGroupCertificateConfigurationResponse"
    "fixture/UpdateGroupCertificateConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateGroupCertificateConfiguration)

responseGetFunctionDefinitionVersion :: GetFunctionDefinitionVersionResponse -> TestTree
responseGetFunctionDefinitionVersion = res
    "GetFunctionDefinitionVersionResponse"
    "fixture/GetFunctionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetFunctionDefinitionVersion)

responseGetDeviceDefinition :: GetDeviceDefinitionResponse -> TestTree
responseGetDeviceDefinition = res
    "GetDeviceDefinitionResponse"
    "fixture/GetDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetDeviceDefinition)

responseCreateGroup :: CreateGroupResponse -> TestTree
responseCreateGroup = res
    "CreateGroupResponse"
    "fixture/CreateGroupResponse.proto"
    greengrass
    (Proxy :: Proxy CreateGroup)

responseCreateFunctionDefinition :: CreateFunctionDefinitionResponse -> TestTree
responseCreateFunctionDefinition = res
    "CreateFunctionDefinitionResponse"
    "fixture/CreateFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateFunctionDefinition)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource = res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    greengrass
    (Proxy :: Proxy UntagResource)

responseCreateDeviceDefinitionVersion :: CreateDeviceDefinitionVersionResponse -> TestTree
responseCreateDeviceDefinitionVersion = res
    "CreateDeviceDefinitionVersionResponse"
    "fixture/CreateDeviceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateDeviceDefinitionVersion)

responseDeleteGroup :: DeleteGroupResponse -> TestTree
responseDeleteGroup = res
    "DeleteGroupResponse"
    "fixture/DeleteGroupResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteGroup)

responseUpdateGroup :: UpdateGroupResponse -> TestTree
responseUpdateGroup = res
    "UpdateGroupResponse"
    "fixture/UpdateGroupResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateGroup)

responseListGroups :: ListGroupsResponse -> TestTree
responseListGroups = res
    "ListGroupsResponse"
    "fixture/ListGroupsResponse.proto"
    greengrass
    (Proxy :: Proxy ListGroups)

responseListBulkDeploymentDetailedReports :: ListBulkDeploymentDetailedReportsResponse -> TestTree
responseListBulkDeploymentDetailedReports = res
    "ListBulkDeploymentDetailedReportsResponse"
    "fixture/ListBulkDeploymentDetailedReportsResponse.proto"
    greengrass
    (Proxy :: Proxy ListBulkDeploymentDetailedReports)

responseGetThingRuntimeConfiguration :: GetThingRuntimeConfigurationResponse -> TestTree
responseGetThingRuntimeConfiguration = res
    "GetThingRuntimeConfigurationResponse"
    "fixture/GetThingRuntimeConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy GetThingRuntimeConfiguration)

responseDeleteResourceDefinition :: DeleteResourceDefinitionResponse -> TestTree
responseDeleteResourceDefinition = res
    "DeleteResourceDefinitionResponse"
    "fixture/DeleteResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteResourceDefinition)

responseUpdateResourceDefinition :: UpdateResourceDefinitionResponse -> TestTree
responseUpdateResourceDefinition = res
    "UpdateResourceDefinitionResponse"
    "fixture/UpdateResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateResourceDefinition)

responseListDeviceDefinitionVersions :: ListDeviceDefinitionVersionsResponse -> TestTree
responseListDeviceDefinitionVersions = res
    "ListDeviceDefinitionVersionsResponse"
    "fixture/ListDeviceDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListDeviceDefinitionVersions)

responseListFunctionDefinitions :: ListFunctionDefinitionsResponse -> TestTree
responseListFunctionDefinitions = res
    "ListFunctionDefinitionsResponse"
    "fixture/ListFunctionDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListFunctionDefinitions)

responseGetFunctionDefinition :: GetFunctionDefinitionResponse -> TestTree
responseGetFunctionDefinition = res
    "GetFunctionDefinitionResponse"
    "fixture/GetFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetFunctionDefinition)

responseGetGroup :: GetGroupResponse -> TestTree
responseGetGroup = res
    "GetGroupResponse"
    "fixture/GetGroupResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroup)

responseCreateDeviceDefinition :: CreateDeviceDefinitionResponse -> TestTree
responseCreateDeviceDefinition = res
    "CreateDeviceDefinitionResponse"
    "fixture/CreateDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateDeviceDefinition)

responseCreateGroupVersion :: CreateGroupVersionResponse -> TestTree
responseCreateGroupVersion = res
    "CreateGroupVersionResponse"
    "fixture/CreateGroupVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateGroupVersion)

responseCreateFunctionDefinitionVersion :: CreateFunctionDefinitionVersionResponse -> TestTree
responseCreateFunctionDefinitionVersion = res
    "CreateFunctionDefinitionVersionResponse"
    "fixture/CreateFunctionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateFunctionDefinitionVersion)

responseStartBulkDeployment :: StartBulkDeploymentResponse -> TestTree
responseStartBulkDeployment = res
    "StartBulkDeploymentResponse"
    "fixture/StartBulkDeploymentResponse.proto"
    greengrass
    (Proxy :: Proxy StartBulkDeployment)

responseUpdateThingRuntimeConfiguration :: UpdateThingRuntimeConfigurationResponse -> TestTree
responseUpdateThingRuntimeConfiguration = res
    "UpdateThingRuntimeConfigurationResponse"
    "fixture/UpdateThingRuntimeConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateThingRuntimeConfiguration)

responseGetDeviceDefinitionVersion :: GetDeviceDefinitionVersionResponse -> TestTree
responseGetDeviceDefinitionVersion = res
    "GetDeviceDefinitionVersionResponse"
    "fixture/GetDeviceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetDeviceDefinitionVersion)
