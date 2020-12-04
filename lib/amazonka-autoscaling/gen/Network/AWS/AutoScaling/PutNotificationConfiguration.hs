{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.PutNotificationConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address.
--
--
-- This configuration overwrites any existing configuration.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html Getting Amazon SNS notifications when your Auto Scaling group scales> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- If you exceed your maximum limit of SNS topics, which is 10 per Auto Scaling group, the call fails.
module Network.AWS.AutoScaling.PutNotificationConfiguration
  ( -- * Creating a Request
    putNotificationConfiguration,
    PutNotificationConfiguration,

    -- * Request Lenses
    pncAutoScalingGroupName,
    pncTopicARN,
    pncNotificationTypes,

    -- * Destructuring the Response
    putNotificationConfigurationResponse,
    PutNotificationConfigurationResponse,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putNotificationConfiguration' smart constructor.
data PutNotificationConfiguration = PutNotificationConfiguration'
  { _pncAutoScalingGroupName ::
      !Text,
    _pncTopicARN :: !Text,
    _pncNotificationTypes :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutNotificationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'pncTopicARN' - The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS) topic.
--
-- * 'pncNotificationTypes' - The type of event that causes the notification to be sent. To query the notification types supported by Amazon EC2 Auto Scaling, call the 'DescribeAutoScalingNotificationTypes' API.
putNotificationConfiguration ::
  -- | 'pncAutoScalingGroupName'
  Text ->
  -- | 'pncTopicARN'
  Text ->
  PutNotificationConfiguration
putNotificationConfiguration pAutoScalingGroupName_ pTopicARN_ =
  PutNotificationConfiguration'
    { _pncAutoScalingGroupName =
        pAutoScalingGroupName_,
      _pncTopicARN = pTopicARN_,
      _pncNotificationTypes = mempty
    }

-- | The name of the Auto Scaling group.
pncAutoScalingGroupName :: Lens' PutNotificationConfiguration Text
pncAutoScalingGroupName = lens _pncAutoScalingGroupName (\s a -> s {_pncAutoScalingGroupName = a})

-- | The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS) topic.
pncTopicARN :: Lens' PutNotificationConfiguration Text
pncTopicARN = lens _pncTopicARN (\s a -> s {_pncTopicARN = a})

-- | The type of event that causes the notification to be sent. To query the notification types supported by Amazon EC2 Auto Scaling, call the 'DescribeAutoScalingNotificationTypes' API.
pncNotificationTypes :: Lens' PutNotificationConfiguration [Text]
pncNotificationTypes = lens _pncNotificationTypes (\s a -> s {_pncNotificationTypes = a}) . _Coerce

instance AWSRequest PutNotificationConfiguration where
  type
    Rs PutNotificationConfiguration =
      PutNotificationConfigurationResponse
  request = postQuery autoScaling
  response = receiveNull PutNotificationConfigurationResponse'

instance Hashable PutNotificationConfiguration

instance NFData PutNotificationConfiguration

instance ToHeaders PutNotificationConfiguration where
  toHeaders = const mempty

instance ToPath PutNotificationConfiguration where
  toPath = const "/"

instance ToQuery PutNotificationConfiguration where
  toQuery PutNotificationConfiguration' {..} =
    mconcat
      [ "Action" =: ("PutNotificationConfiguration" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "AutoScalingGroupName" =: _pncAutoScalingGroupName,
        "TopicARN" =: _pncTopicARN,
        "NotificationTypes" =: toQueryList "member" _pncNotificationTypes
      ]

-- | /See:/ 'putNotificationConfigurationResponse' smart constructor.
data PutNotificationConfigurationResponse = PutNotificationConfigurationResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutNotificationConfigurationResponse' with the minimum fields required to make a request.
putNotificationConfigurationResponse ::
  PutNotificationConfigurationResponse
putNotificationConfigurationResponse =
  PutNotificationConfigurationResponse'

instance NFData PutNotificationConfigurationResponse