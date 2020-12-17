{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScalingActivity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ApplicationAutoScaling.Types.ScalingActivity where

import Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
import Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
import Network.AWS.ApplicationAutoScaling.Types.ServiceNamespace
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a scaling activity.
--
--
--
-- /See:/ 'scalingActivity' smart constructor.
data ScalingActivity = ScalingActivity'{_sStatusMessage
                                        :: !(Maybe Text),
                                        _sEndTime :: !(Maybe POSIX),
                                        _sDetails :: !(Maybe Text),
                                        _sActivityId :: !Text,
                                        _sServiceNamespace :: !ServiceNamespace,
                                        _sResourceId :: !Text,
                                        _sScalableDimension ::
                                        !ScalableDimension,
                                        _sDescription :: !Text,
                                        _sCause :: !Text, _sStartTime :: !POSIX,
                                        _sStatusCode ::
                                        !ScalingActivityStatusCode}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScalingActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStatusMessage' - A simple message about the current status of the scaling activity.
--
-- * 'sEndTime' - The Unix timestamp for when the scaling activity ended.
--
-- * 'sDetails' - The details about the scaling activity.
--
-- * 'sActivityId' - The unique identifier of the scaling activity.
--
-- * 'sServiceNamespace' - The namespace of the AWS service that provides the resource, or a @custom-resource@ .
--
-- * 'sResourceId' - The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
-- * 'sScalableDimension' - The scalable dimension. This string consists of the service namespace, resource type, and scaling property.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
-- * 'sDescription' - A simple description of what action the scaling activity intends to accomplish.
--
-- * 'sCause' - A simple description of what caused the scaling activity to happen.
--
-- * 'sStartTime' - The Unix timestamp for when the scaling activity began.
--
-- * 'sStatusCode' - Indicates the status of the scaling activity.
scalingActivity
    :: Text -- ^ 'sActivityId'
    -> ServiceNamespace -- ^ 'sServiceNamespace'
    -> Text -- ^ 'sResourceId'
    -> ScalableDimension -- ^ 'sScalableDimension'
    -> Text -- ^ 'sDescription'
    -> Text -- ^ 'sCause'
    -> UTCTime -- ^ 'sStartTime'
    -> ScalingActivityStatusCode -- ^ 'sStatusCode'
    -> ScalingActivity
scalingActivity pActivityId_ pServiceNamespace_
  pResourceId_ pScalableDimension_ pDescription_
  pCause_ pStartTime_ pStatusCode_
  = ScalingActivity'{_sStatusMessage = Nothing,
                     _sEndTime = Nothing, _sDetails = Nothing,
                     _sActivityId = pActivityId_,
                     _sServiceNamespace = pServiceNamespace_,
                     _sResourceId = pResourceId_,
                     _sScalableDimension = pScalableDimension_,
                     _sDescription = pDescription_, _sCause = pCause_,
                     _sStartTime = _Time # pStartTime_,
                     _sStatusCode = pStatusCode_}

-- | A simple message about the current status of the scaling activity.
sStatusMessage :: Lens' ScalingActivity (Maybe Text)
sStatusMessage = lens _sStatusMessage (\ s a -> s{_sStatusMessage = a})

-- | The Unix timestamp for when the scaling activity ended.
sEndTime :: Lens' ScalingActivity (Maybe UTCTime)
sEndTime = lens _sEndTime (\ s a -> s{_sEndTime = a}) . mapping _Time

-- | The details about the scaling activity.
sDetails :: Lens' ScalingActivity (Maybe Text)
sDetails = lens _sDetails (\ s a -> s{_sDetails = a})

-- | The unique identifier of the scaling activity.
sActivityId :: Lens' ScalingActivity Text
sActivityId = lens _sActivityId (\ s a -> s{_sActivityId = a})

-- | The namespace of the AWS service that provides the resource, or a @custom-resource@ .
sServiceNamespace :: Lens' ScalingActivity ServiceNamespace
sServiceNamespace = lens _sServiceNamespace (\ s a -> s{_sServiceNamespace = a})

-- | The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
sResourceId :: Lens' ScalingActivity Text
sResourceId = lens _sResourceId (\ s a -> s{_sResourceId = a})

-- | The scalable dimension. This string consists of the service namespace, resource type, and scaling property.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
sScalableDimension :: Lens' ScalingActivity ScalableDimension
sScalableDimension = lens _sScalableDimension (\ s a -> s{_sScalableDimension = a})

-- | A simple description of what action the scaling activity intends to accomplish.
sDescription :: Lens' ScalingActivity Text
sDescription = lens _sDescription (\ s a -> s{_sDescription = a})

-- | A simple description of what caused the scaling activity to happen.
sCause :: Lens' ScalingActivity Text
sCause = lens _sCause (\ s a -> s{_sCause = a})

-- | The Unix timestamp for when the scaling activity began.
sStartTime :: Lens' ScalingActivity UTCTime
sStartTime = lens _sStartTime (\ s a -> s{_sStartTime = a}) . _Time

-- | Indicates the status of the scaling activity.
sStatusCode :: Lens' ScalingActivity ScalingActivityStatusCode
sStatusCode = lens _sStatusCode (\ s a -> s{_sStatusCode = a})

instance FromJSON ScalingActivity where
        parseJSON
          = withObject "ScalingActivity"
              (\ x ->
                 ScalingActivity' <$>
                   (x .:? "StatusMessage") <*> (x .:? "EndTime") <*>
                     (x .:? "Details")
                     <*> (x .: "ActivityId")
                     <*> (x .: "ServiceNamespace")
                     <*> (x .: "ResourceId")
                     <*> (x .: "ScalableDimension")
                     <*> (x .: "Description")
                     <*> (x .: "Cause")
                     <*> (x .: "StartTime")
                     <*> (x .: "StatusCode"))

instance Hashable ScalingActivity where

instance NFData ScalingActivity where
