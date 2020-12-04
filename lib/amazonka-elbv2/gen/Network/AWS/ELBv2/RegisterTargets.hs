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
-- Module      : Network.AWS.ELBv2.RegisterTargets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers the specified targets with the specified target group.
--
--
-- If the target is an EC2 instance, it must be in the @running@ state when you register it.
--
-- By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports.
--
-- With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.
module Network.AWS.ELBv2.RegisterTargets
  ( -- * Creating a Request
    registerTargets,
    RegisterTargets,

    -- * Request Lenses
    rtTargetGroupARN,
    rtTargets,

    -- * Destructuring the Response
    registerTargetsResponse,
    RegisterTargetsResponse,

    -- * Response Lenses
    rrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'registerTargets' smart constructor.
data RegisterTargets = RegisterTargets'
  { _rtTargetGroupARN :: !Text,
    _rtTargets :: ![TargetDescription]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtTargetGroupARN' - The Amazon Resource Name (ARN) of the target group.
--
-- * 'rtTargets' - The targets.
registerTargets ::
  -- | 'rtTargetGroupARN'
  Text ->
  RegisterTargets
registerTargets pTargetGroupARN_ =
  RegisterTargets'
    { _rtTargetGroupARN = pTargetGroupARN_,
      _rtTargets = mempty
    }

-- | The Amazon Resource Name (ARN) of the target group.
rtTargetGroupARN :: Lens' RegisterTargets Text
rtTargetGroupARN = lens _rtTargetGroupARN (\s a -> s {_rtTargetGroupARN = a})

-- | The targets.
rtTargets :: Lens' RegisterTargets [TargetDescription]
rtTargets = lens _rtTargets (\s a -> s {_rtTargets = a}) . _Coerce

instance AWSRequest RegisterTargets where
  type Rs RegisterTargets = RegisterTargetsResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "RegisterTargetsResult"
      (\s h x -> RegisterTargetsResponse' <$> (pure (fromEnum s)))

instance Hashable RegisterTargets

instance NFData RegisterTargets

instance ToHeaders RegisterTargets where
  toHeaders = const mempty

instance ToPath RegisterTargets where
  toPath = const "/"

instance ToQuery RegisterTargets where
  toQuery RegisterTargets' {..} =
    mconcat
      [ "Action" =: ("RegisterTargets" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "TargetGroupArn" =: _rtTargetGroupARN,
        "Targets" =: toQueryList "member" _rtTargets
      ]

-- | /See:/ 'registerTargetsResponse' smart constructor.
newtype RegisterTargetsResponse = RegisterTargetsResponse'
  { _rrsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsResponseStatus' - -- | The response status code.
registerTargetsResponse ::
  -- | 'rrsResponseStatus'
  Int ->
  RegisterTargetsResponse
registerTargetsResponse pResponseStatus_ =
  RegisterTargetsResponse' {_rrsResponseStatus = pResponseStatus_}

-- | -- | The response status code.
rrsResponseStatus :: Lens' RegisterTargetsResponse Int
rrsResponseStatus = lens _rrsResponseStatus (\s a -> s {_rrsResponseStatus = a})

instance NFData RegisterTargetsResponse