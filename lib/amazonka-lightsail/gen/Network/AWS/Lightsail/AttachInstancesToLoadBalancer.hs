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
-- Module      : Network.AWS.Lightsail.AttachInstancesToLoadBalancer
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches one or more Lightsail instances to a load balancer.
--
--
-- After some time, the instances are attached to the load balancer and the health check status is available.
--
-- The @attach instances to load balancer@ operation supports tag-based access control via resource tags applied to the resource identified by @load balancer name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.AttachInstancesToLoadBalancer
  ( -- * Creating a Request
    attachInstancesToLoadBalancer,
    AttachInstancesToLoadBalancer,

    -- * Request Lenses
    aitlbLoadBalancerName,
    aitlbInstanceNames,

    -- * Destructuring the Response
    attachInstancesToLoadBalancerResponse,
    AttachInstancesToLoadBalancerResponse,

    -- * Response Lenses
    aitlbrsOperations,
    aitlbrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'attachInstancesToLoadBalancer' smart constructor.
data AttachInstancesToLoadBalancer = AttachInstancesToLoadBalancer'
  { _aitlbLoadBalancerName ::
      !Text,
    _aitlbInstanceNames :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttachInstancesToLoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitlbLoadBalancerName' - The name of the load balancer.
--
-- * 'aitlbInstanceNames' - An array of strings representing the instance name(s) you want to attach to your load balancer. An instance must be @running@ before you can attach it to your load balancer. There are no additional limits on the number of instances you can attach to your load balancer, aside from the limit of Lightsail instances you can create in your account (20).
attachInstancesToLoadBalancer ::
  -- | 'aitlbLoadBalancerName'
  Text ->
  AttachInstancesToLoadBalancer
attachInstancesToLoadBalancer pLoadBalancerName_ =
  AttachInstancesToLoadBalancer'
    { _aitlbLoadBalancerName =
        pLoadBalancerName_,
      _aitlbInstanceNames = mempty
    }

-- | The name of the load balancer.
aitlbLoadBalancerName :: Lens' AttachInstancesToLoadBalancer Text
aitlbLoadBalancerName = lens _aitlbLoadBalancerName (\s a -> s {_aitlbLoadBalancerName = a})

-- | An array of strings representing the instance name(s) you want to attach to your load balancer. An instance must be @running@ before you can attach it to your load balancer. There are no additional limits on the number of instances you can attach to your load balancer, aside from the limit of Lightsail instances you can create in your account (20).
aitlbInstanceNames :: Lens' AttachInstancesToLoadBalancer [Text]
aitlbInstanceNames = lens _aitlbInstanceNames (\s a -> s {_aitlbInstanceNames = a}) . _Coerce

instance AWSRequest AttachInstancesToLoadBalancer where
  type
    Rs AttachInstancesToLoadBalancer =
      AttachInstancesToLoadBalancerResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          AttachInstancesToLoadBalancerResponse'
            <$> (x .?> "operations" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable AttachInstancesToLoadBalancer

instance NFData AttachInstancesToLoadBalancer

instance ToHeaders AttachInstancesToLoadBalancer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.AttachInstancesToLoadBalancer" :: ByteString),
            "Content-Type" =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AttachInstancesToLoadBalancer where
  toJSON AttachInstancesToLoadBalancer' {..} =
    object
      ( catMaybes
          [ Just ("loadBalancerName" .= _aitlbLoadBalancerName),
            Just ("instanceNames" .= _aitlbInstanceNames)
          ]
      )

instance ToPath AttachInstancesToLoadBalancer where
  toPath = const "/"

instance ToQuery AttachInstancesToLoadBalancer where
  toQuery = const mempty

-- | /See:/ 'attachInstancesToLoadBalancerResponse' smart constructor.
data AttachInstancesToLoadBalancerResponse = AttachInstancesToLoadBalancerResponse'
  { _aitlbrsOperations ::
      !( Maybe
           [Operation]
       ),
    _aitlbrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttachInstancesToLoadBalancerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitlbrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'aitlbrsResponseStatus' - -- | The response status code.
attachInstancesToLoadBalancerResponse ::
  -- | 'aitlbrsResponseStatus'
  Int ->
  AttachInstancesToLoadBalancerResponse
attachInstancesToLoadBalancerResponse pResponseStatus_ =
  AttachInstancesToLoadBalancerResponse'
    { _aitlbrsOperations =
        Nothing,
      _aitlbrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
aitlbrsOperations :: Lens' AttachInstancesToLoadBalancerResponse [Operation]
aitlbrsOperations = lens _aitlbrsOperations (\s a -> s {_aitlbrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
aitlbrsResponseStatus :: Lens' AttachInstancesToLoadBalancerResponse Int
aitlbrsResponseStatus = lens _aitlbrsResponseStatus (\s a -> s {_aitlbrsResponseStatus = a})

instance NFData AttachInstancesToLoadBalancerResponse