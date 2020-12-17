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
-- Module      : Network.AWS.GameLift.DescribeEC2InstanceLimits
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the following information for the specified EC2 instance type:
--
--
--     * Maximum number of instances allowed per AWS account (service limit).
--
--     * Current usage for the AWS account.
--
--
--
-- To learn more about the capabilities of each instance type, see <http://aws.amazon.com/ec2/instance-types/ Amazon EC2 Instance Types> . Note that the instance types offered may vary depending on the region.
--
-- __Learn more__ 
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets> 
--
-- __Related operations__ 
--
--     * 'CreateFleet' 
--
--     * 'ListFleets' 
--
--     * 'DeleteFleet' 
--
--     * 'DescribeFleetAttributes' 
--
--     * 'UpdateFleetAttributes' 
--
--     * 'StartFleetActions' or 'StopFleetActions' 
--
--
--
module Network.AWS.GameLift.DescribeEC2InstanceLimits
    (
    -- * Creating a Request
      describeEC2InstanceLimits
    , DescribeEC2InstanceLimits
    -- * Request Lenses
    , deilEC2InstanceType

    -- * Destructuring the Response
    , describeEC2InstanceLimitsResponse
    , DescribeEC2InstanceLimitsResponse
    -- * Response Lenses
    , deilrsEC2InstanceLimits
    , deilrsResponseStatus
    ) where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeEC2InstanceLimits' smart constructor.
newtype DescribeEC2InstanceLimits = DescribeEC2InstanceLimits'{_deilEC2InstanceType
                                                               ::
                                                               Maybe
                                                                 EC2InstanceType}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'DescribeEC2InstanceLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deilEC2InstanceType' - Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <http://aws.amazon.com/ec2/instance-types/ Amazon EC2 Instance Types> for detailed descriptions. Leave this parameter blank to retrieve limits for all types.
describeEC2InstanceLimits
    :: DescribeEC2InstanceLimits
describeEC2InstanceLimits
  = DescribeEC2InstanceLimits'{_deilEC2InstanceType =
                                 Nothing}

-- | Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <http://aws.amazon.com/ec2/instance-types/ Amazon EC2 Instance Types> for detailed descriptions. Leave this parameter blank to retrieve limits for all types.
deilEC2InstanceType :: Lens' DescribeEC2InstanceLimits (Maybe EC2InstanceType)
deilEC2InstanceType = lens _deilEC2InstanceType (\ s a -> s{_deilEC2InstanceType = a})

instance AWSRequest DescribeEC2InstanceLimits where
        type Rs DescribeEC2InstanceLimits =
             DescribeEC2InstanceLimitsResponse
        request = postJSON gameLift
        response
          = receiveJSON
              (\ s h x ->
                 DescribeEC2InstanceLimitsResponse' <$>
                   (x .?> "EC2InstanceLimits" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance Hashable DescribeEC2InstanceLimits where

instance NFData DescribeEC2InstanceLimits where

instance ToHeaders DescribeEC2InstanceLimits where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("GameLift.DescribeEC2InstanceLimits" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeEC2InstanceLimits where
        toJSON DescribeEC2InstanceLimits'{..}
          = object
              (catMaybes
                 [("EC2InstanceType" .=) <$> _deilEC2InstanceType])

instance ToPath DescribeEC2InstanceLimits where
        toPath = const "/"

instance ToQuery DescribeEC2InstanceLimits where
        toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeEC2InstanceLimitsResponse' smart constructor.
data DescribeEC2InstanceLimitsResponse = DescribeEC2InstanceLimitsResponse'{_deilrsEC2InstanceLimits
                                                                            ::
                                                                            !(Maybe
                                                                                [EC2InstanceLimit]),
                                                                            _deilrsResponseStatus
                                                                            ::
                                                                            !Int}
                                           deriving (Eq, Read, Show, Data,
                                                     Typeable, Generic)

-- | Creates a value of 'DescribeEC2InstanceLimitsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deilrsEC2InstanceLimits' - The maximum number of instances for the specified instance type.
--
-- * 'deilrsResponseStatus' - -- | The response status code.
describeEC2InstanceLimitsResponse
    :: Int -- ^ 'deilrsResponseStatus'
    -> DescribeEC2InstanceLimitsResponse
describeEC2InstanceLimitsResponse pResponseStatus_
  = DescribeEC2InstanceLimitsResponse'{_deilrsEC2InstanceLimits
                                         = Nothing,
                                       _deilrsResponseStatus = pResponseStatus_}

-- | The maximum number of instances for the specified instance type.
deilrsEC2InstanceLimits :: Lens' DescribeEC2InstanceLimitsResponse [EC2InstanceLimit]
deilrsEC2InstanceLimits = lens _deilrsEC2InstanceLimits (\ s a -> s{_deilrsEC2InstanceLimits = a}) . _Default . _Coerce

-- | -- | The response status code.
deilrsResponseStatus :: Lens' DescribeEC2InstanceLimitsResponse Int
deilrsResponseStatus = lens _deilrsResponseStatus (\ s a -> s{_deilrsResponseStatus = a})

instance NFData DescribeEC2InstanceLimitsResponse
         where
