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
-- Module      : Network.AWS.ECS.RunTask
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new task using the specified task definition.
--
--
-- You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places tasks using placement constraints and placement strategies. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html Scheduling Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- Alternatively, you can use 'StartTask' to use your own scheduler or place tasks manually on specific container instances.
--
-- The Amazon ECS API follows an eventual consistency model, due to the distributed nature of the system supporting the API. This means that the result of an API command you run that affects your Amazon ECS resources might not be immediately visible to all subsequent commands you run. Keep this in mind when you carry out an API command that immediately follows a previous API command.
--
-- To manage eventual consistency, you can do the following:
--
--     * Confirm the state of the resource before you run a command to modify it. Run the DescribeTasks command using an exponential backoff algorithm to ensure that you allow enough time for the previous command to propagate through the system. To do this, run the DescribeTasks command repeatedly, starting with a couple of seconds of wait time and increasing gradually up to five minutes of wait time.
--
--     * Add wait time between subsequent commands, even if the DescribeTasks command returns an accurate response. Apply an exponential backoff algorithm starting with a couple of seconds of wait time, and increase gradually up to about five minutes of wait time.
--
--
--
module Network.AWS.ECS.RunTask
    (
    -- * Creating a Request
      runTask
    , RunTask
    -- * Request Lenses
    , rtOverrides
    , rtGroup
    , rtCluster
    , rtPropagateTags
    , rtPlatformVersion
    , rtEnableECSManagedTags
    , rtCount
    , rtReferenceId
    , rtPlacementConstraints
    , rtPlacementStrategy
    , rtStartedBy
    , rtLaunchType
    , rtNetworkConfiguration
    , rtCapacityProviderStrategy
    , rtTags
    , rtTaskDefinition

    -- * Destructuring the Response
    , runTaskResponse
    , RunTaskResponse
    -- * Response Lenses
    , rtrsFailures
    , rtrsTasks
    , rtrsResponseStatus
    ) where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'runTask' smart constructor.
data RunTask = RunTask'{_rtOverrides ::
                        !(Maybe TaskOverride),
                        _rtGroup :: !(Maybe Text),
                        _rtCluster :: !(Maybe Text),
                        _rtPropagateTags :: !(Maybe PropagateTags),
                        _rtPlatformVersion :: !(Maybe Text),
                        _rtEnableECSManagedTags :: !(Maybe Bool),
                        _rtCount :: !(Maybe Int),
                        _rtReferenceId :: !(Maybe Text),
                        _rtPlacementConstraints ::
                        !(Maybe [PlacementConstraint]),
                        _rtPlacementStrategy :: !(Maybe [PlacementStrategy]),
                        _rtStartedBy :: !(Maybe Text),
                        _rtLaunchType :: !(Maybe LaunchType),
                        _rtNetworkConfiguration ::
                        !(Maybe NetworkConfiguration),
                        _rtCapacityProviderStrategy ::
                        !(Maybe [CapacityProviderStrategyItem]),
                        _rtTags :: !(Maybe [Tag]),
                        _rtTaskDefinition :: !Text}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RunTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtOverrides' - A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a @command@ override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an @environment@ override.
--
-- * 'rtGroup' - The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).
--
-- * 'rtCluster' - The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'rtPropagateTags' - Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the 'TagResource' API action.
--
-- * 'rtPlatformVersion' - The platform version the task should run. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'rtEnableECSManagedTags' - Specifies whether to enable Amazon ECS managed tags for the task. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'rtCount' - The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.
--
-- * 'rtReferenceId' - The reference ID to use for the task.
--
-- * 'rtPlacementConstraints' - An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime).
--
-- * 'rtPlacementStrategy' - The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.
--
-- * 'rtStartedBy' - An optional tag specified when a task is started. For example, if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the @startedBy@ parameter. You can then identify which tasks belong to that job by filtering the results of a 'ListTasks' call with the @startedBy@ value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. If a task is started by an Amazon ECS service, then the @startedBy@ parameter contains the deployment ID of the service that starts it.
--
-- * 'rtLaunchType' - The launch type on which to run your task. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ . If a @launchType@ is specified, the @capacityProviderStrategy@ parameter must be omitted.
--
-- * 'rtNetworkConfiguration' - The network configuration for the task. This parameter is required for task definitions that use the @awsvpc@ network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'rtCapacityProviderStrategy' - The capacity provider strategy to use for the task. A capacity provider strategy consists of one or more capacity providers along with the @base@ and @weight@ to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The 'PutClusterCapacityProviders' API is used to associate a capacity provider with a cluster. Only capacity providers with an @ACTIVE@ or @UPDATING@ status can be used. If a @capacityProviderStrategy@ is specified, the @launchType@ parameter must be omitted. If no @capacityProviderStrategy@ or @launchType@ is specified, the @defaultCapacityProviderStrategy@ for the cluster is used. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the 'CreateCapacityProvider' API operation. To use a AWS Fargate capacity provider, specify either the @FARGATE@ or @FARGATE_SPOT@ capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used. The 'PutClusterCapacityProviders' API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
--
-- * 'rtTags' - The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
-- * 'rtTaskDefinition' - The @family@ and @revision@ (@family:revision@ ) or full ARN of the task definition to run. If a @revision@ is not specified, the latest @ACTIVE@ revision is used.
runTask
    :: Text -- ^ 'rtTaskDefinition'
    -> RunTask
runTask pTaskDefinition_
  = RunTask'{_rtOverrides = Nothing,
             _rtGroup = Nothing, _rtCluster = Nothing,
             _rtPropagateTags = Nothing,
             _rtPlatformVersion = Nothing,
             _rtEnableECSManagedTags = Nothing,
             _rtCount = Nothing, _rtReferenceId = Nothing,
             _rtPlacementConstraints = Nothing,
             _rtPlacementStrategy = Nothing,
             _rtStartedBy = Nothing, _rtLaunchType = Nothing,
             _rtNetworkConfiguration = Nothing,
             _rtCapacityProviderStrategy = Nothing,
             _rtTags = Nothing,
             _rtTaskDefinition = pTaskDefinition_}

-- | A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a @command@ override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an @environment@ override.
rtOverrides :: Lens' RunTask (Maybe TaskOverride)
rtOverrides = lens _rtOverrides (\ s a -> s{_rtOverrides = a})

-- | The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).
rtGroup :: Lens' RunTask (Maybe Text)
rtGroup = lens _rtGroup (\ s a -> s{_rtGroup = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.
rtCluster :: Lens' RunTask (Maybe Text)
rtCluster = lens _rtCluster (\ s a -> s{_rtCluster = a})

-- | Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the 'TagResource' API action.
rtPropagateTags :: Lens' RunTask (Maybe PropagateTags)
rtPropagateTags = lens _rtPropagateTags (\ s a -> s{_rtPropagateTags = a})

-- | The platform version the task should run. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
rtPlatformVersion :: Lens' RunTask (Maybe Text)
rtPlatformVersion = lens _rtPlatformVersion (\ s a -> s{_rtPlatformVersion = a})

-- | Specifies whether to enable Amazon ECS managed tags for the task. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
rtEnableECSManagedTags :: Lens' RunTask (Maybe Bool)
rtEnableECSManagedTags = lens _rtEnableECSManagedTags (\ s a -> s{_rtEnableECSManagedTags = a})

-- | The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.
rtCount :: Lens' RunTask (Maybe Int)
rtCount = lens _rtCount (\ s a -> s{_rtCount = a})

-- | The reference ID to use for the task.
rtReferenceId :: Lens' RunTask (Maybe Text)
rtReferenceId = lens _rtReferenceId (\ s a -> s{_rtReferenceId = a})

-- | An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime).
rtPlacementConstraints :: Lens' RunTask [PlacementConstraint]
rtPlacementConstraints = lens _rtPlacementConstraints (\ s a -> s{_rtPlacementConstraints = a}) . _Default . _Coerce

-- | The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.
rtPlacementStrategy :: Lens' RunTask [PlacementStrategy]
rtPlacementStrategy = lens _rtPlacementStrategy (\ s a -> s{_rtPlacementStrategy = a}) . _Default . _Coerce

-- | An optional tag specified when a task is started. For example, if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the @startedBy@ parameter. You can then identify which tasks belong to that job by filtering the results of a 'ListTasks' call with the @startedBy@ value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. If a task is started by an Amazon ECS service, then the @startedBy@ parameter contains the deployment ID of the service that starts it.
rtStartedBy :: Lens' RunTask (Maybe Text)
rtStartedBy = lens _rtStartedBy (\ s a -> s{_rtStartedBy = a})

-- | The launch type on which to run your task. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ . If a @launchType@ is specified, the @capacityProviderStrategy@ parameter must be omitted.
rtLaunchType :: Lens' RunTask (Maybe LaunchType)
rtLaunchType = lens _rtLaunchType (\ s a -> s{_rtLaunchType = a})

-- | The network configuration for the task. This parameter is required for task definitions that use the @awsvpc@ network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ .
rtNetworkConfiguration :: Lens' RunTask (Maybe NetworkConfiguration)
rtNetworkConfiguration = lens _rtNetworkConfiguration (\ s a -> s{_rtNetworkConfiguration = a})

-- | The capacity provider strategy to use for the task. A capacity provider strategy consists of one or more capacity providers along with the @base@ and @weight@ to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The 'PutClusterCapacityProviders' API is used to associate a capacity provider with a cluster. Only capacity providers with an @ACTIVE@ or @UPDATING@ status can be used. If a @capacityProviderStrategy@ is specified, the @launchType@ parameter must be omitted. If no @capacityProviderStrategy@ or @launchType@ is specified, the @defaultCapacityProviderStrategy@ for the cluster is used. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the 'CreateCapacityProvider' API operation. To use a AWS Fargate capacity provider, specify either the @FARGATE@ or @FARGATE_SPOT@ capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used. The 'PutClusterCapacityProviders' API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
rtCapacityProviderStrategy :: Lens' RunTask [CapacityProviderStrategyItem]
rtCapacityProviderStrategy = lens _rtCapacityProviderStrategy (\ s a -> s{_rtCapacityProviderStrategy = a}) . _Default . _Coerce

-- | The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
rtTags :: Lens' RunTask [Tag]
rtTags = lens _rtTags (\ s a -> s{_rtTags = a}) . _Default . _Coerce

-- | The @family@ and @revision@ (@family:revision@ ) or full ARN of the task definition to run. If a @revision@ is not specified, the latest @ACTIVE@ revision is used.
rtTaskDefinition :: Lens' RunTask Text
rtTaskDefinition = lens _rtTaskDefinition (\ s a -> s{_rtTaskDefinition = a})

instance AWSRequest RunTask where
        type Rs RunTask = RunTaskResponse
        request = postJSON ecs
        response
          = receiveJSON
              (\ s h x ->
                 RunTaskResponse' <$>
                   (x .?> "failures" .!@ mempty) <*>
                     (x .?> "tasks" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable RunTask where

instance NFData RunTask where

instance ToHeaders RunTask where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerServiceV20141113.RunTask" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON RunTask where
        toJSON RunTask'{..}
          = object
              (catMaybes
                 [("overrides" .=) <$> _rtOverrides,
                  ("group" .=) <$> _rtGroup,
                  ("cluster" .=) <$> _rtCluster,
                  ("propagateTags" .=) <$> _rtPropagateTags,
                  ("platformVersion" .=) <$> _rtPlatformVersion,
                  ("enableECSManagedTags" .=) <$>
                    _rtEnableECSManagedTags,
                  ("count" .=) <$> _rtCount,
                  ("referenceId" .=) <$> _rtReferenceId,
                  ("placementConstraints" .=) <$>
                    _rtPlacementConstraints,
                  ("placementStrategy" .=) <$> _rtPlacementStrategy,
                  ("startedBy" .=) <$> _rtStartedBy,
                  ("launchType" .=) <$> _rtLaunchType,
                  ("networkConfiguration" .=) <$>
                    _rtNetworkConfiguration,
                  ("capacityProviderStrategy" .=) <$>
                    _rtCapacityProviderStrategy,
                  ("tags" .=) <$> _rtTags,
                  Just ("taskDefinition" .= _rtTaskDefinition)])

instance ToPath RunTask where
        toPath = const "/"

instance ToQuery RunTask where
        toQuery = const mempty

-- | /See:/ 'runTaskResponse' smart constructor.
data RunTaskResponse = RunTaskResponse'{_rtrsFailures
                                        :: !(Maybe [Failure]),
                                        _rtrsTasks :: !(Maybe [Task]),
                                        _rtrsResponseStatus :: !Int}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RunTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrsFailures' - Any failures associated with the call.
--
-- * 'rtrsTasks' - A full description of the tasks that were run. The tasks that were successfully placed on your cluster are described here.
--
-- * 'rtrsResponseStatus' - -- | The response status code.
runTaskResponse
    :: Int -- ^ 'rtrsResponseStatus'
    -> RunTaskResponse
runTaskResponse pResponseStatus_
  = RunTaskResponse'{_rtrsFailures = Nothing,
                     _rtrsTasks = Nothing,
                     _rtrsResponseStatus = pResponseStatus_}

-- | Any failures associated with the call.
rtrsFailures :: Lens' RunTaskResponse [Failure]
rtrsFailures = lens _rtrsFailures (\ s a -> s{_rtrsFailures = a}) . _Default . _Coerce

-- | A full description of the tasks that were run. The tasks that were successfully placed on your cluster are described here.
rtrsTasks :: Lens' RunTaskResponse [Task]
rtrsTasks = lens _rtrsTasks (\ s a -> s{_rtrsTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
rtrsResponseStatus :: Lens' RunTaskResponse Int
rtrsResponseStatus = lens _rtrsResponseStatus (\ s a -> s{_rtrsResponseStatus = a})

instance NFData RunTaskResponse where
