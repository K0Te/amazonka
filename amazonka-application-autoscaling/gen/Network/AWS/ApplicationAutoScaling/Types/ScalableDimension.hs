{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ApplicationAutoScaling.Types.ScalableDimension (
  ScalableDimension (
    ..
    , AppstreamFleetDesiredCapacity
    , CassandraTableReadCapacityUnits
    , CassandraTableWriteCapacityUnits
    , ComprehendDocumentClassifierEndpointDesiredInferenceUnits
    , ComprehendEntityRecognizerEndpointDesiredInferenceUnits
    , CustomResourceResourceTypeProperty
    , DynamodbIndexReadCapacityUnits
    , DynamodbIndexWriteCapacityUnits
    , DynamodbTableReadCapacityUnits
    , DynamodbTableWriteCapacityUnits
    , EC2SpotFleetRequestTargetCapacity
    , EcsServiceDesiredCount
    , ElasticmapreduceInstancegroupInstanceCount
    , KafkaBrokerStorageVolumeSize
    , LambdaFunctionProvisionedConcurrency
    , RDSClusterReadReplicaCount
    , SagemakerVariantDesiredInstanceCount
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalableDimension = ScalableDimension' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern AppstreamFleetDesiredCapacity :: ScalableDimension
pattern AppstreamFleetDesiredCapacity = ScalableDimension' "appstream:fleet:DesiredCapacity"

pattern CassandraTableReadCapacityUnits :: ScalableDimension
pattern CassandraTableReadCapacityUnits = ScalableDimension' "cassandra:table:ReadCapacityUnits"

pattern CassandraTableWriteCapacityUnits :: ScalableDimension
pattern CassandraTableWriteCapacityUnits = ScalableDimension' "cassandra:table:WriteCapacityUnits"

pattern ComprehendDocumentClassifierEndpointDesiredInferenceUnits :: ScalableDimension
pattern ComprehendDocumentClassifierEndpointDesiredInferenceUnits = ScalableDimension' "comprehend:document-classifier-endpoint:DesiredInferenceUnits"

pattern ComprehendEntityRecognizerEndpointDesiredInferenceUnits :: ScalableDimension
pattern ComprehendEntityRecognizerEndpointDesiredInferenceUnits = ScalableDimension' "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits"

pattern CustomResourceResourceTypeProperty :: ScalableDimension
pattern CustomResourceResourceTypeProperty = ScalableDimension' "custom-resource:ResourceType:Property"

pattern DynamodbIndexReadCapacityUnits :: ScalableDimension
pattern DynamodbIndexReadCapacityUnits = ScalableDimension' "dynamodb:index:ReadCapacityUnits"

pattern DynamodbIndexWriteCapacityUnits :: ScalableDimension
pattern DynamodbIndexWriteCapacityUnits = ScalableDimension' "dynamodb:index:WriteCapacityUnits"

pattern DynamodbTableReadCapacityUnits :: ScalableDimension
pattern DynamodbTableReadCapacityUnits = ScalableDimension' "dynamodb:table:ReadCapacityUnits"

pattern DynamodbTableWriteCapacityUnits :: ScalableDimension
pattern DynamodbTableWriteCapacityUnits = ScalableDimension' "dynamodb:table:WriteCapacityUnits"

pattern EC2SpotFleetRequestTargetCapacity :: ScalableDimension
pattern EC2SpotFleetRequestTargetCapacity = ScalableDimension' "ec2:spot-fleet-request:TargetCapacity"

pattern EcsServiceDesiredCount :: ScalableDimension
pattern EcsServiceDesiredCount = ScalableDimension' "ecs:service:DesiredCount"

pattern ElasticmapreduceInstancegroupInstanceCount :: ScalableDimension
pattern ElasticmapreduceInstancegroupInstanceCount = ScalableDimension' "elasticmapreduce:instancegroup:InstanceCount"

pattern KafkaBrokerStorageVolumeSize :: ScalableDimension
pattern KafkaBrokerStorageVolumeSize = ScalableDimension' "kafka:broker-storage:VolumeSize"

pattern LambdaFunctionProvisionedConcurrency :: ScalableDimension
pattern LambdaFunctionProvisionedConcurrency = ScalableDimension' "lambda:function:ProvisionedConcurrency"

pattern RDSClusterReadReplicaCount :: ScalableDimension
pattern RDSClusterReadReplicaCount = ScalableDimension' "rds:cluster:ReadReplicaCount"

pattern SagemakerVariantDesiredInstanceCount :: ScalableDimension
pattern SagemakerVariantDesiredInstanceCount = ScalableDimension' "sagemaker:variant:DesiredInstanceCount"

{-# COMPLETE
  AppstreamFleetDesiredCapacity,
  CassandraTableReadCapacityUnits,
  CassandraTableWriteCapacityUnits,
  ComprehendDocumentClassifierEndpointDesiredInferenceUnits,
  ComprehendEntityRecognizerEndpointDesiredInferenceUnits,
  CustomResourceResourceTypeProperty,
  DynamodbIndexReadCapacityUnits,
  DynamodbIndexWriteCapacityUnits,
  DynamodbTableReadCapacityUnits,
  DynamodbTableWriteCapacityUnits,
  EC2SpotFleetRequestTargetCapacity,
  EcsServiceDesiredCount,
  ElasticmapreduceInstancegroupInstanceCount,
  KafkaBrokerStorageVolumeSize,
  LambdaFunctionProvisionedConcurrency,
  RDSClusterReadReplicaCount,
  SagemakerVariantDesiredInstanceCount,
  ScalableDimension' #-}

instance FromText ScalableDimension where
    parser = (ScalableDimension' . mk) <$> takeText

instance ToText ScalableDimension where
    toText (ScalableDimension' ci) = original ci

instance Hashable     ScalableDimension
instance NFData       ScalableDimension
instance ToByteString ScalableDimension
instance ToQuery      ScalableDimension
instance ToHeader     ScalableDimension

instance ToJSON ScalableDimension where
    toJSON = toJSONText

instance FromJSON ScalableDimension where
    parseJSON = parseJSONText "ScalableDimension"
