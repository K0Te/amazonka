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
-- Module      : Network.AWS.ECS.RegisterTaskDefinition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a new task definition from the supplied @family@ and @containerDefinitions@ . Optionally, you can add data volumes to your containers with the @volumes@ parameter. For more information about task definition parameters and defaults, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html Amazon ECS Task Definitions> in the /Amazon Elastic Container Service Developer Guide/ .
--
--
-- You can specify an IAM role for your task with the @taskRoleArn@ parameter. When you specify an IAM role for a task, its containers can then use the latest versions of the AWS CLI or SDKs to make API requests to the AWS services that are specified in the IAM policy associated with the role. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- You can specify a Docker networking mode for the containers in your task definition with the @networkMode@ parameter. The available network modes correspond to those described in <https://docs.docker.com/engine/reference/run/#/network-settings Network settings> in the Docker run reference. If you specify the @awsvpc@ network mode, the task is allocated an elastic network interface, and you must specify a 'NetworkConfiguration' when you create a service or run a task with the task definition. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ .
--
module Network.AWS.ECS.RegisterTaskDefinition
    (
    -- * Creating a Request
      registerTaskDefinition
    , RegisterTaskDefinition
    -- * Request Lenses
    , rtdInferenceAccelerators
    , rtdExecutionRoleARN
    , rtdRequiresCompatibilities
    , rtdPidMode
    , rtdIpcMode
    , rtdMemory
    , rtdProxyConfiguration
    , rtdTaskRoleARN
    , rtdPlacementConstraints
    , rtdNetworkMode
    , rtdVolumes
    , rtdCpu
    , rtdTags
    , rtdFamily
    , rtdContainerDefinitions

    -- * Destructuring the Response
    , registerTaskDefinitionResponse
    , RegisterTaskDefinitionResponse
    -- * Response Lenses
    , rtdrsTaskDefinition
    , rtdrsTags
    , rtdrsResponseStatus
    ) where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'registerTaskDefinition' smart constructor.
data RegisterTaskDefinition = RegisterTaskDefinition'{_rtdInferenceAccelerators
                                                      ::
                                                      !(Maybe
                                                          [InferenceAccelerator]),
                                                      _rtdExecutionRoleARN ::
                                                      !(Maybe Text),
                                                      _rtdRequiresCompatibilities
                                                      ::
                                                      !(Maybe [Compatibility]),
                                                      _rtdPidMode ::
                                                      !(Maybe PidMode),
                                                      _rtdIpcMode ::
                                                      !(Maybe IPcMode),
                                                      _rtdMemory ::
                                                      !(Maybe Text),
                                                      _rtdProxyConfiguration ::
                                                      !(Maybe
                                                          ProxyConfiguration),
                                                      _rtdTaskRoleARN ::
                                                      !(Maybe Text),
                                                      _rtdPlacementConstraints
                                                      ::
                                                      !(Maybe
                                                          [TaskDefinitionPlacementConstraint]),
                                                      _rtdNetworkMode ::
                                                      !(Maybe NetworkMode),
                                                      _rtdVolumes ::
                                                      !(Maybe [Volume]),
                                                      _rtdCpu :: !(Maybe Text),
                                                      _rtdTags ::
                                                      !(Maybe [Tag]),
                                                      _rtdFamily :: !Text,
                                                      _rtdContainerDefinitions
                                                      :: ![ContainerDefinition]}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'RegisterTaskDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtdInferenceAccelerators' - The Elastic Inference accelerators to use for the containers in the task.
--
-- * 'rtdExecutionRoleARN' - The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent permission to make AWS API calls on your behalf. The task execution IAM role is required depending on the requirements of your task. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html Amazon ECS task execution IAM role> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'rtdRequiresCompatibilities' - The task launch type that Amazon ECS should validate the task definition against. This ensures that the task definition parameters are compatible with the specified launch type. If no value is specified, it defaults to @EC2@ .
--
-- * 'rtdPidMode' - The process namespace to use for the containers in the task. The valid values are @host@ or @task@ . If @host@ is specified, then all containers within the tasks that specified the @host@ PID mode on the same container instance share the same process namespace with the host Amazon EC2 instance. If @task@ is specified, all containers within the specified task share the same process namespace. If no value is specified, the default is a private namespace. For more information, see <https://docs.docker.com/engine/reference/run/#pid-settings---pid PID settings> in the /Docker run reference/ . If the @host@ PID mode is used, be aware that there is a heightened risk of undesired process namespace expose. For more information, see <https://docs.docker.com/engine/security/security/ Docker security> .
--
-- * 'rtdIpcMode' - The IPC resource namespace to use for the containers in the task. The valid values are @host@ , @task@ , or @none@ . If @host@ is specified, then all containers within the tasks that specified the @host@ IPC mode on the same container instance share the same IPC resources with the host Amazon EC2 instance. If @task@ is specified, all containers within the specified task share the same IPC resources. If @none@ is specified, then IPC resources within the containers of a task are private and not shared with other containers in a task or on the container instance. If no value is specified, then the IPC resource namespace sharing depends on the Docker daemon setting on the container instance. For more information, see <https://docs.docker.com/engine/reference/run/#ipc-settings---ipc IPC settings> in the /Docker run reference/ . If the @host@ IPC mode is used, be aware that there is a heightened risk of undesired IPC namespace expose. For more information, see <https://docs.docker.com/engine/security/security/ Docker security> . If you are setting namespaced kernel parameters using @systemControls@ for the containers in the task, the following will apply to your IPC resource namespace. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html System Controls> in the /Amazon Elastic Container Service Developer Guide/ .     * For tasks that use the @host@ IPC mode, IPC namespace related @systemControls@ are not supported.     * For tasks that use the @task@ IPC mode, IPC namespace related @systemControls@ will apply to all containers within a task.
--
-- * 'rtdMemory' - The amount of memory (in MiB) used by the task. It can be expressed as an integer using MiB, for example @1024@ , or as a string using GB, for example @1GB@ or @1 GB@ , in a task definition. String values are converted to an integer indicating the MiB when the task definition is registered. If using the EC2 launch type, this field is optional. If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the @cpu@ parameter:     * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256 (.25 vCPU)     * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@ values: 512 (.5 vCPU)     * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)     * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 2048 (2 vCPU)     * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 4096 (4 vCPU)
--
-- * 'rtdProxyConfiguration' - Undocumented member.
--
-- * 'rtdTaskRoleARN' - The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'rtdPlacementConstraints' - An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).
--
-- * 'rtdNetworkMode' - The Docker networking mode to use for the containers in the task. The valid values are @none@ , @bridge@ , @awsvpc@ , and @host@ . If no network mode is specified, the default is @bridge@ . For Amazon ECS tasks on Fargate, the @awsvpc@ network mode is required. For Amazon ECS tasks on Amazon EC2 instances, any network mode can be used. If the network mode is set to @none@ , you cannot specify port mappings in your container definitions, and the tasks containers do not have external connectivity. The @host@ and @awsvpc@ network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the @bridge@ mode. With the @host@ and @awsvpc@ network modes, exposed container ports are mapped directly to the corresponding host port (for the @host@ network mode) or the attached elastic network interface port (for the @awsvpc@ network mode), so you cannot take advantage of dynamic host port mappings.  /Important:/ When using the @host@ network mode, you should not run containers using the root user (UID 0). It is considered best practice to use a non-root user. If the network mode is @awsvpc@ , the task is allocated an elastic network interface, and you must specify a 'NetworkConfiguration' value when you create a service or run a task with the task definition. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ . If the network mode is @host@ , you cannot run multiple instantiations of the same task on a single container instance when port mappings are used. Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode. If you use the console to register a task definition with Windows containers, you must choose the @<default>@ network mode object.  For more information, see <https://docs.docker.com/engine/reference/run/#network-settings Network settings> in the /Docker run reference/ .
--
-- * 'rtdVolumes' - A list of volume definitions in JSON format that containers in your task may use.
--
-- * 'rtdCpu' - The number of CPU units used by the task. It can be expressed as an integer using CPU units, for example @1024@ , or as a string using vCPUs, for example @1 vCPU@ or @1 vcpu@ , in a task definition. String values are converted to an integer indicating the CPU units when the task definition is registered. If you are using the EC2 launch type, this field is optional. Supported values are between @128@ CPU units (@0.125@ vCPUs) and @10240@ CPU units (@10@ vCPUs). If you are using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the @memory@ parameter:     * 256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)     * 512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)     * 1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)     * 2048 (2 vCPU) - Available @memory@ values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)     * 4096 (4 vCPU) - Available @memory@ values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
--
-- * 'rtdTags' - The metadata that you apply to the task definition to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
-- * 'rtdFamily' - You must specify a @family@ for a task definition, which allows you to track multiple versions of the same task definition. The @family@ is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed.
--
-- * 'rtdContainerDefinitions' - A list of container definitions in JSON format that describe the different containers that make up your task.
registerTaskDefinition
    :: Text -- ^ 'rtdFamily'
    -> RegisterTaskDefinition
registerTaskDefinition pFamily_
  = RegisterTaskDefinition'{_rtdInferenceAccelerators =
                              Nothing,
                            _rtdExecutionRoleARN = Nothing,
                            _rtdRequiresCompatibilities = Nothing,
                            _rtdPidMode = Nothing, _rtdIpcMode = Nothing,
                            _rtdMemory = Nothing,
                            _rtdProxyConfiguration = Nothing,
                            _rtdTaskRoleARN = Nothing,
                            _rtdPlacementConstraints = Nothing,
                            _rtdNetworkMode = Nothing, _rtdVolumes = Nothing,
                            _rtdCpu = Nothing, _rtdTags = Nothing,
                            _rtdFamily = pFamily_,
                            _rtdContainerDefinitions = mempty}

-- | The Elastic Inference accelerators to use for the containers in the task.
rtdInferenceAccelerators :: Lens' RegisterTaskDefinition [InferenceAccelerator]
rtdInferenceAccelerators = lens _rtdInferenceAccelerators (\ s a -> s{_rtdInferenceAccelerators = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent permission to make AWS API calls on your behalf. The task execution IAM role is required depending on the requirements of your task. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html Amazon ECS task execution IAM role> in the /Amazon Elastic Container Service Developer Guide/ .
rtdExecutionRoleARN :: Lens' RegisterTaskDefinition (Maybe Text)
rtdExecutionRoleARN = lens _rtdExecutionRoleARN (\ s a -> s{_rtdExecutionRoleARN = a})

-- | The task launch type that Amazon ECS should validate the task definition against. This ensures that the task definition parameters are compatible with the specified launch type. If no value is specified, it defaults to @EC2@ .
rtdRequiresCompatibilities :: Lens' RegisterTaskDefinition [Compatibility]
rtdRequiresCompatibilities = lens _rtdRequiresCompatibilities (\ s a -> s{_rtdRequiresCompatibilities = a}) . _Default . _Coerce

-- | The process namespace to use for the containers in the task. The valid values are @host@ or @task@ . If @host@ is specified, then all containers within the tasks that specified the @host@ PID mode on the same container instance share the same process namespace with the host Amazon EC2 instance. If @task@ is specified, all containers within the specified task share the same process namespace. If no value is specified, the default is a private namespace. For more information, see <https://docs.docker.com/engine/reference/run/#pid-settings---pid PID settings> in the /Docker run reference/ . If the @host@ PID mode is used, be aware that there is a heightened risk of undesired process namespace expose. For more information, see <https://docs.docker.com/engine/security/security/ Docker security> .
rtdPidMode :: Lens' RegisterTaskDefinition (Maybe PidMode)
rtdPidMode = lens _rtdPidMode (\ s a -> s{_rtdPidMode = a})

-- | The IPC resource namespace to use for the containers in the task. The valid values are @host@ , @task@ , or @none@ . If @host@ is specified, then all containers within the tasks that specified the @host@ IPC mode on the same container instance share the same IPC resources with the host Amazon EC2 instance. If @task@ is specified, all containers within the specified task share the same IPC resources. If @none@ is specified, then IPC resources within the containers of a task are private and not shared with other containers in a task or on the container instance. If no value is specified, then the IPC resource namespace sharing depends on the Docker daemon setting on the container instance. For more information, see <https://docs.docker.com/engine/reference/run/#ipc-settings---ipc IPC settings> in the /Docker run reference/ . If the @host@ IPC mode is used, be aware that there is a heightened risk of undesired IPC namespace expose. For more information, see <https://docs.docker.com/engine/security/security/ Docker security> . If you are setting namespaced kernel parameters using @systemControls@ for the containers in the task, the following will apply to your IPC resource namespace. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html System Controls> in the /Amazon Elastic Container Service Developer Guide/ .     * For tasks that use the @host@ IPC mode, IPC namespace related @systemControls@ are not supported.     * For tasks that use the @task@ IPC mode, IPC namespace related @systemControls@ will apply to all containers within a task.
rtdIpcMode :: Lens' RegisterTaskDefinition (Maybe IPcMode)
rtdIpcMode = lens _rtdIpcMode (\ s a -> s{_rtdIpcMode = a})

-- | The amount of memory (in MiB) used by the task. It can be expressed as an integer using MiB, for example @1024@ , or as a string using GB, for example @1GB@ or @1 GB@ , in a task definition. String values are converted to an integer indicating the MiB when the task definition is registered. If using the EC2 launch type, this field is optional. If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the @cpu@ parameter:     * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256 (.25 vCPU)     * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@ values: 512 (.5 vCPU)     * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)     * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 2048 (2 vCPU)     * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 4096 (4 vCPU)
rtdMemory :: Lens' RegisterTaskDefinition (Maybe Text)
rtdMemory = lens _rtdMemory (\ s a -> s{_rtdMemory = a})

-- | Undocumented member.
rtdProxyConfiguration :: Lens' RegisterTaskDefinition (Maybe ProxyConfiguration)
rtdProxyConfiguration = lens _rtdProxyConfiguration (\ s a -> s{_rtdProxyConfiguration = a})

-- | The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
rtdTaskRoleARN :: Lens' RegisterTaskDefinition (Maybe Text)
rtdTaskRoleARN = lens _rtdTaskRoleARN (\ s a -> s{_rtdTaskRoleARN = a})

-- | An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).
rtdPlacementConstraints :: Lens' RegisterTaskDefinition [TaskDefinitionPlacementConstraint]
rtdPlacementConstraints = lens _rtdPlacementConstraints (\ s a -> s{_rtdPlacementConstraints = a}) . _Default . _Coerce

-- | The Docker networking mode to use for the containers in the task. The valid values are @none@ , @bridge@ , @awsvpc@ , and @host@ . If no network mode is specified, the default is @bridge@ . For Amazon ECS tasks on Fargate, the @awsvpc@ network mode is required. For Amazon ECS tasks on Amazon EC2 instances, any network mode can be used. If the network mode is set to @none@ , you cannot specify port mappings in your container definitions, and the tasks containers do not have external connectivity. The @host@ and @awsvpc@ network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the @bridge@ mode. With the @host@ and @awsvpc@ network modes, exposed container ports are mapped directly to the corresponding host port (for the @host@ network mode) or the attached elastic network interface port (for the @awsvpc@ network mode), so you cannot take advantage of dynamic host port mappings.  /Important:/ When using the @host@ network mode, you should not run containers using the root user (UID 0). It is considered best practice to use a non-root user. If the network mode is @awsvpc@ , the task is allocated an elastic network interface, and you must specify a 'NetworkConfiguration' value when you create a service or run a task with the task definition. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ . If the network mode is @host@ , you cannot run multiple instantiations of the same task on a single container instance when port mappings are used. Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode. If you use the console to register a task definition with Windows containers, you must choose the @<default>@ network mode object.  For more information, see <https://docs.docker.com/engine/reference/run/#network-settings Network settings> in the /Docker run reference/ .
rtdNetworkMode :: Lens' RegisterTaskDefinition (Maybe NetworkMode)
rtdNetworkMode = lens _rtdNetworkMode (\ s a -> s{_rtdNetworkMode = a})

-- | A list of volume definitions in JSON format that containers in your task may use.
rtdVolumes :: Lens' RegisterTaskDefinition [Volume]
rtdVolumes = lens _rtdVolumes (\ s a -> s{_rtdVolumes = a}) . _Default . _Coerce

-- | The number of CPU units used by the task. It can be expressed as an integer using CPU units, for example @1024@ , or as a string using vCPUs, for example @1 vCPU@ or @1 vcpu@ , in a task definition. String values are converted to an integer indicating the CPU units when the task definition is registered. If you are using the EC2 launch type, this field is optional. Supported values are between @128@ CPU units (@0.125@ vCPUs) and @10240@ CPU units (@10@ vCPUs). If you are using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the @memory@ parameter:     * 256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)     * 512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)     * 1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)     * 2048 (2 vCPU) - Available @memory@ values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)     * 4096 (4 vCPU) - Available @memory@ values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
rtdCpu :: Lens' RegisterTaskDefinition (Maybe Text)
rtdCpu = lens _rtdCpu (\ s a -> s{_rtdCpu = a})

-- | The metadata that you apply to the task definition to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
rtdTags :: Lens' RegisterTaskDefinition [Tag]
rtdTags = lens _rtdTags (\ s a -> s{_rtdTags = a}) . _Default . _Coerce

-- | You must specify a @family@ for a task definition, which allows you to track multiple versions of the same task definition. The @family@ is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed.
rtdFamily :: Lens' RegisterTaskDefinition Text
rtdFamily = lens _rtdFamily (\ s a -> s{_rtdFamily = a})

-- | A list of container definitions in JSON format that describe the different containers that make up your task.
rtdContainerDefinitions :: Lens' RegisterTaskDefinition [ContainerDefinition]
rtdContainerDefinitions = lens _rtdContainerDefinitions (\ s a -> s{_rtdContainerDefinitions = a}) . _Coerce

instance AWSRequest RegisterTaskDefinition where
        type Rs RegisterTaskDefinition =
             RegisterTaskDefinitionResponse
        request = postJSON ecs
        response
          = receiveJSON
              (\ s h x ->
                 RegisterTaskDefinitionResponse' <$>
                   (x .?> "taskDefinition") <*>
                     (x .?> "tags" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable RegisterTaskDefinition where

instance NFData RegisterTaskDefinition where

instance ToHeaders RegisterTaskDefinition where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerServiceV20141113.RegisterTaskDefinition"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON RegisterTaskDefinition where
        toJSON RegisterTaskDefinition'{..}
          = object
              (catMaybes
                 [("inferenceAccelerators" .=) <$>
                    _rtdInferenceAccelerators,
                  ("executionRoleArn" .=) <$> _rtdExecutionRoleARN,
                  ("requiresCompatibilities" .=) <$>
                    _rtdRequiresCompatibilities,
                  ("pidMode" .=) <$> _rtdPidMode,
                  ("ipcMode" .=) <$> _rtdIpcMode,
                  ("memory" .=) <$> _rtdMemory,
                  ("proxyConfiguration" .=) <$> _rtdProxyConfiguration,
                  ("taskRoleArn" .=) <$> _rtdTaskRoleARN,
                  ("placementConstraints" .=) <$>
                    _rtdPlacementConstraints,
                  ("networkMode" .=) <$> _rtdNetworkMode,
                  ("volumes" .=) <$> _rtdVolumes,
                  ("cpu" .=) <$> _rtdCpu, ("tags" .=) <$> _rtdTags,
                  Just ("family" .= _rtdFamily),
                  Just
                    ("containerDefinitions" .=
                       _rtdContainerDefinitions)])

instance ToPath RegisterTaskDefinition where
        toPath = const "/"

instance ToQuery RegisterTaskDefinition where
        toQuery = const mempty

-- | /See:/ 'registerTaskDefinitionResponse' smart constructor.
data RegisterTaskDefinitionResponse = RegisterTaskDefinitionResponse'{_rtdrsTaskDefinition
                                                                      ::
                                                                      !(Maybe
                                                                          TaskDefinition),
                                                                      _rtdrsTags
                                                                      ::
                                                                      !(Maybe
                                                                          [Tag]),
                                                                      _rtdrsResponseStatus
                                                                      :: !Int}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'RegisterTaskDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtdrsTaskDefinition' - The full description of the registered task definition.
--
-- * 'rtdrsTags' - The list of tags associated with the task definition.
--
-- * 'rtdrsResponseStatus' - -- | The response status code.
registerTaskDefinitionResponse
    :: Int -- ^ 'rtdrsResponseStatus'
    -> RegisterTaskDefinitionResponse
registerTaskDefinitionResponse pResponseStatus_
  = RegisterTaskDefinitionResponse'{_rtdrsTaskDefinition
                                      = Nothing,
                                    _rtdrsTags = Nothing,
                                    _rtdrsResponseStatus = pResponseStatus_}

-- | The full description of the registered task definition.
rtdrsTaskDefinition :: Lens' RegisterTaskDefinitionResponse (Maybe TaskDefinition)
rtdrsTaskDefinition = lens _rtdrsTaskDefinition (\ s a -> s{_rtdrsTaskDefinition = a})

-- | The list of tags associated with the task definition.
rtdrsTags :: Lens' RegisterTaskDefinitionResponse [Tag]
rtdrsTags = lens _rtdrsTags (\ s a -> s{_rtdrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
rtdrsResponseStatus :: Lens' RegisterTaskDefinitionResponse Int
rtdrsResponseStatus = lens _rtdrsResponseStatus (\ s a -> s{_rtdrsResponseStatus = a})

instance NFData RegisterTaskDefinitionResponse where
