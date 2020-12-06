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
-- Module      : Network.AWS.SQS.RemovePermission
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes any permissions in the queue policy that matches the specified @Label@ parameter.
module Network.AWS.SQS.RemovePermission
  ( -- * Creating a Request
    removePermission,
    RemovePermission,

    -- * Request Lenses
    rpQueueURL,
    rpLabel,

    -- * Destructuring the Response
    removePermissionResponse,
    RemovePermissionResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SQS.Types

-- |
--
--
--
-- /See:/ 'removePermission' smart constructor.
data RemovePermission = RemovePermission'
  { _rpQueueURL :: !Text,
    _rpLabel :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemovePermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQueueURL' - The URL of the Amazon SQS queue from which permissions are removed. Queue URLs and names are case-sensitive.
--
-- * 'rpLabel' - The identification of the permission to remove. This is the label added using the @'AddPermission' @ action.
removePermission ::
  -- | 'rpQueueURL'
  Text ->
  -- | 'rpLabel'
  Text ->
  RemovePermission
removePermission pQueueURL_ pLabel_ =
  RemovePermission' {_rpQueueURL = pQueueURL_, _rpLabel = pLabel_}

-- | The URL of the Amazon SQS queue from which permissions are removed. Queue URLs and names are case-sensitive.
rpQueueURL :: Lens' RemovePermission Text
rpQueueURL = lens _rpQueueURL (\s a -> s {_rpQueueURL = a})

-- | The identification of the permission to remove. This is the label added using the @'AddPermission' @ action.
rpLabel :: Lens' RemovePermission Text
rpLabel = lens _rpLabel (\s a -> s {_rpLabel = a})

instance AWSRequest RemovePermission where
  type Rs RemovePermission = RemovePermissionResponse
  request = postQuery sqs
  response = receiveNull RemovePermissionResponse'

instance Hashable RemovePermission

instance NFData RemovePermission

instance ToHeaders RemovePermission where
  toHeaders = const mempty

instance ToPath RemovePermission where
  toPath = const "/"

instance ToQuery RemovePermission where
  toQuery RemovePermission' {..} =
    mconcat
      [ "Action" =: ("RemovePermission" :: ByteString),
        "Version" =: ("2012-11-05" :: ByteString),
        "QueueUrl" =: _rpQueueURL,
        "Label" =: _rpLabel
      ]

-- | /See:/ 'removePermissionResponse' smart constructor.
data RemovePermissionResponse = RemovePermissionResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemovePermissionResponse' with the minimum fields required to make a request.
removePermissionResponse ::
  RemovePermissionResponse
removePermissionResponse = RemovePermissionResponse'

instance NFData RemovePermissionResponse