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
-- Module      : Network.AWS.EC2.DescribeStaleSecurityGroups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [VPC only] Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeStaleSecurityGroups
  ( -- * Creating a Request
    describeStaleSecurityGroups,
    DescribeStaleSecurityGroups,

    -- * Request Lenses
    dssgNextToken,
    dssgDryRun,
    dssgMaxResults,
    dssgVPCId,

    -- * Destructuring the Response
    describeStaleSecurityGroupsResponse,
    DescribeStaleSecurityGroupsResponse,

    -- * Response Lenses
    dssgrsStaleSecurityGroupSet,
    dssgrsNextToken,
    dssgrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStaleSecurityGroups' smart constructor.
data DescribeStaleSecurityGroups = DescribeStaleSecurityGroups'
  { _dssgNextToken ::
      !(Maybe Text),
    _dssgDryRun :: !(Maybe Bool),
    _dssgMaxResults :: !(Maybe Nat),
    _dssgVPCId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStaleSecurityGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssgNextToken' - The token for the next set of items to return. (You received this token from a prior call.)
--
-- * 'dssgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dssgMaxResults' - The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dssgVPCId' - The ID of the VPC.
describeStaleSecurityGroups ::
  -- | 'dssgVPCId'
  Text ->
  DescribeStaleSecurityGroups
describeStaleSecurityGroups pVPCId_ =
  DescribeStaleSecurityGroups'
    { _dssgNextToken = Nothing,
      _dssgDryRun = Nothing,
      _dssgMaxResults = Nothing,
      _dssgVPCId = pVPCId_
    }

-- | The token for the next set of items to return. (You received this token from a prior call.)
dssgNextToken :: Lens' DescribeStaleSecurityGroups (Maybe Text)
dssgNextToken = lens _dssgNextToken (\s a -> s {_dssgNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dssgDryRun :: Lens' DescribeStaleSecurityGroups (Maybe Bool)
dssgDryRun = lens _dssgDryRun (\s a -> s {_dssgDryRun = a})

-- | The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
dssgMaxResults :: Lens' DescribeStaleSecurityGroups (Maybe Natural)
dssgMaxResults = lens _dssgMaxResults (\s a -> s {_dssgMaxResults = a}) . mapping _Nat

-- | The ID of the VPC.
dssgVPCId :: Lens' DescribeStaleSecurityGroups Text
dssgVPCId = lens _dssgVPCId (\s a -> s {_dssgVPCId = a})

instance AWSPager DescribeStaleSecurityGroups where
  page rq rs
    | stop (rs ^. dssgrsNextToken) = Nothing
    | stop (rs ^. dssgrsStaleSecurityGroupSet) = Nothing
    | otherwise = Just $ rq & dssgNextToken .~ rs ^. dssgrsNextToken

instance AWSRequest DescribeStaleSecurityGroups where
  type
    Rs DescribeStaleSecurityGroups =
      DescribeStaleSecurityGroupsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeStaleSecurityGroupsResponse'
            <$> ( x .@? "staleSecurityGroupSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStaleSecurityGroups

instance NFData DescribeStaleSecurityGroups

instance ToHeaders DescribeStaleSecurityGroups where
  toHeaders = const mempty

instance ToPath DescribeStaleSecurityGroups where
  toPath = const "/"

instance ToQuery DescribeStaleSecurityGroups where
  toQuery DescribeStaleSecurityGroups' {..} =
    mconcat
      [ "Action" =: ("DescribeStaleSecurityGroups" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dssgNextToken,
        "DryRun" =: _dssgDryRun,
        "MaxResults" =: _dssgMaxResults,
        "VpcId" =: _dssgVPCId
      ]

-- | /See:/ 'describeStaleSecurityGroupsResponse' smart constructor.
data DescribeStaleSecurityGroupsResponse = DescribeStaleSecurityGroupsResponse'
  { _dssgrsStaleSecurityGroupSet ::
      !( Maybe
           [StaleSecurityGroup]
       ),
    _dssgrsNextToken ::
      !(Maybe Text),
    _dssgrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStaleSecurityGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssgrsStaleSecurityGroupSet' - Information about the stale security groups.
--
-- * 'dssgrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dssgrsResponseStatus' - -- | The response status code.
describeStaleSecurityGroupsResponse ::
  -- | 'dssgrsResponseStatus'
  Int ->
  DescribeStaleSecurityGroupsResponse
describeStaleSecurityGroupsResponse pResponseStatus_ =
  DescribeStaleSecurityGroupsResponse'
    { _dssgrsStaleSecurityGroupSet =
        Nothing,
      _dssgrsNextToken = Nothing,
      _dssgrsResponseStatus = pResponseStatus_
    }

-- | Information about the stale security groups.
dssgrsStaleSecurityGroupSet :: Lens' DescribeStaleSecurityGroupsResponse [StaleSecurityGroup]
dssgrsStaleSecurityGroupSet = lens _dssgrsStaleSecurityGroupSet (\s a -> s {_dssgrsStaleSecurityGroupSet = a}) . _Default . _Coerce

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dssgrsNextToken :: Lens' DescribeStaleSecurityGroupsResponse (Maybe Text)
dssgrsNextToken = lens _dssgrsNextToken (\s a -> s {_dssgrsNextToken = a})

-- | -- | The response status code.
dssgrsResponseStatus :: Lens' DescribeStaleSecurityGroupsResponse Int
dssgrsResponseStatus = lens _dssgrsResponseStatus (\s a -> s {_dssgrsResponseStatus = a})

instance NFData DescribeStaleSecurityGroupsResponse