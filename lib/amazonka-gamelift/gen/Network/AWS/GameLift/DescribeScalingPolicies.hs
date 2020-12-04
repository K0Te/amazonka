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
-- Module      : Network.AWS.GameLift.DescribeScalingPolicies
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all scaling policies applied to a fleet.
--
--
-- To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of 'ScalingPolicy' objects is returned for the fleet.
--
-- A fleet may have all of its scaling policies suspended ('StopFleetActions' ). This operation does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call 'DescribeFleetAttributes' and check the stopped actions.
--
--     * 'DescribeFleetCapacity'
--
--     * 'UpdateFleetCapacity'
--
--     * 'DescribeEC2InstanceLimits'
--
--     * Manage scaling policies:
--
--     * 'PutScalingPolicy' (auto-scaling)
--
--     * 'DescribeScalingPolicies' (auto-scaling)
--
--     * 'DeleteScalingPolicy' (auto-scaling)
--
--
--
--     * Manage fleet actions:
--
--     * 'StartFleetActions'
--
--     * 'StopFleetActions'
--
--
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.DescribeScalingPolicies
  ( -- * Creating a Request
    describeScalingPolicies,
    DescribeScalingPolicies,

    -- * Request Lenses
    dNextToken,
    dStatusFilter,
    dLimit,
    dFleetId,

    -- * Destructuring the Response
    describeScalingPoliciesResponse,
    DescribeScalingPoliciesResponse,

    -- * Response Lenses
    dsprsNextToken,
    dsprsScalingPolicies,
    dsprsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeScalingPolicies' smart constructor.
data DescribeScalingPolicies = DescribeScalingPolicies'
  { _dNextToken ::
      !(Maybe Text),
    _dStatusFilter ::
      !(Maybe ScalingStatusType),
    _dLimit :: !(Maybe Nat),
    _dFleetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeScalingPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'dStatusFilter' - Scaling policy status to filter results on. A scaling policy is only in force when in an @ACTIVE@ status.     * __ACTIVE__ -- The scaling policy is currently in force.     * __UPDATEREQUESTED__ -- A request to update the scaling policy has been received.     * __UPDATING__ -- A change is being made to the scaling policy.     * __DELETEREQUESTED__ -- A request to delete the scaling policy has been received.     * __DELETING__ -- The scaling policy is being deleted.     * __DELETED__ -- The scaling policy has been deleted.     * __ERROR__ -- An error occurred in creating the policy. It should be removed and recreated.
--
-- * 'dLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
--
-- * 'dFleetId' - A unique identifier for a fleet to retrieve scaling policies for. You can use either the fleet ID or ARN value.
describeScalingPolicies ::
  -- | 'dFleetId'
  Text ->
  DescribeScalingPolicies
describeScalingPolicies pFleetId_ =
  DescribeScalingPolicies'
    { _dNextToken = Nothing,
      _dStatusFilter = Nothing,
      _dLimit = Nothing,
      _dFleetId = pFleetId_
    }

-- | Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
dNextToken :: Lens' DescribeScalingPolicies (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | Scaling policy status to filter results on. A scaling policy is only in force when in an @ACTIVE@ status.     * __ACTIVE__ -- The scaling policy is currently in force.     * __UPDATEREQUESTED__ -- A request to update the scaling policy has been received.     * __UPDATING__ -- A change is being made to the scaling policy.     * __DELETEREQUESTED__ -- A request to delete the scaling policy has been received.     * __DELETING__ -- The scaling policy is being deleted.     * __DELETED__ -- The scaling policy has been deleted.     * __ERROR__ -- An error occurred in creating the policy. It should be removed and recreated.
dStatusFilter :: Lens' DescribeScalingPolicies (Maybe ScalingStatusType)
dStatusFilter = lens _dStatusFilter (\s a -> s {_dStatusFilter = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
dLimit :: Lens' DescribeScalingPolicies (Maybe Natural)
dLimit = lens _dLimit (\s a -> s {_dLimit = a}) . mapping _Nat

-- | A unique identifier for a fleet to retrieve scaling policies for. You can use either the fleet ID or ARN value.
dFleetId :: Lens' DescribeScalingPolicies Text
dFleetId = lens _dFleetId (\s a -> s {_dFleetId = a})

instance AWSPager DescribeScalingPolicies where
  page rq rs
    | stop (rs ^. dsprsNextToken) = Nothing
    | stop (rs ^. dsprsScalingPolicies) = Nothing
    | otherwise = Just $ rq & dNextToken .~ rs ^. dsprsNextToken

instance AWSRequest DescribeScalingPolicies where
  type Rs DescribeScalingPolicies = DescribeScalingPoliciesResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeScalingPoliciesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScalingPolicies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScalingPolicies

instance NFData DescribeScalingPolicies

instance ToHeaders DescribeScalingPolicies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeScalingPolicies" :: ByteString),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeScalingPolicies where
  toJSON DescribeScalingPolicies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dNextToken,
            ("StatusFilter" .=) <$> _dStatusFilter,
            ("Limit" .=) <$> _dLimit,
            Just ("FleetId" .= _dFleetId)
          ]
      )

instance ToPath DescribeScalingPolicies where
  toPath = const "/"

instance ToQuery DescribeScalingPolicies where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeScalingPoliciesResponse' smart constructor.
data DescribeScalingPoliciesResponse = DescribeScalingPoliciesResponse'
  { _dsprsNextToken ::
      !(Maybe Text),
    _dsprsScalingPolicies ::
      !(Maybe [ScalingPolicy]),
    _dsprsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeScalingPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprsNextToken' - Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'dsprsScalingPolicies' - A collection of objects containing the scaling policies matching the request.
--
-- * 'dsprsResponseStatus' - -- | The response status code.
describeScalingPoliciesResponse ::
  -- | 'dsprsResponseStatus'
  Int ->
  DescribeScalingPoliciesResponse
describeScalingPoliciesResponse pResponseStatus_ =
  DescribeScalingPoliciesResponse'
    { _dsprsNextToken = Nothing,
      _dsprsScalingPolicies = Nothing,
      _dsprsResponseStatus = pResponseStatus_
    }

-- | Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
dsprsNextToken :: Lens' DescribeScalingPoliciesResponse (Maybe Text)
dsprsNextToken = lens _dsprsNextToken (\s a -> s {_dsprsNextToken = a})

-- | A collection of objects containing the scaling policies matching the request.
dsprsScalingPolicies :: Lens' DescribeScalingPoliciesResponse [ScalingPolicy]
dsprsScalingPolicies = lens _dsprsScalingPolicies (\s a -> s {_dsprsScalingPolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
dsprsResponseStatus :: Lens' DescribeScalingPoliciesResponse Int
dsprsResponseStatus = lens _dsprsResponseStatus (\s a -> s {_dsprsResponseStatus = a})

instance NFData DescribeScalingPoliciesResponse