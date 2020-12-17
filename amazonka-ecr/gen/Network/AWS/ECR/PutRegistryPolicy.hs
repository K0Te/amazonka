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
-- Module      : Network.AWS.ECR.PutRegistryPolicy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the permissions policy for your registry.
--
--
-- A registry policy is used to specify permissions for another AWS account and is used when configuring cross-account replication. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html Registry permissions> in the /Amazon Elastic Container Registry User Guide/ .
--
module Network.AWS.ECR.PutRegistryPolicy
    (
    -- * Creating a Request
      putRegistryPolicy
    , PutRegistryPolicy
    -- * Request Lenses
    , prpPolicyText

    -- * Destructuring the Response
    , putRegistryPolicyResponse
    , PutRegistryPolicyResponse
    -- * Response Lenses
    , prprsRegistryId
    , prprsPolicyText
    , prprsResponseStatus
    ) where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putRegistryPolicy' smart constructor.
newtype PutRegistryPolicy = PutRegistryPolicy'{_prpPolicyText
                                               :: Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutRegistryPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prpPolicyText' - The JSON policy text to apply to your registry. The policy text follows the same format as IAM policy text. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html Registry permissions> in the /Amazon Elastic Container Registry User Guide/ .
putRegistryPolicy
    :: Text -- ^ 'prpPolicyText'
    -> PutRegistryPolicy
putRegistryPolicy pPolicyText_
  = PutRegistryPolicy'{_prpPolicyText = pPolicyText_}

-- | The JSON policy text to apply to your registry. The policy text follows the same format as IAM policy text. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html Registry permissions> in the /Amazon Elastic Container Registry User Guide/ .
prpPolicyText :: Lens' PutRegistryPolicy Text
prpPolicyText = lens _prpPolicyText (\ s a -> s{_prpPolicyText = a})

instance AWSRequest PutRegistryPolicy where
        type Rs PutRegistryPolicy = PutRegistryPolicyResponse
        request = postJSON ecr
        response
          = receiveJSON
              (\ s h x ->
                 PutRegistryPolicyResponse' <$>
                   (x .?> "registryId") <*> (x .?> "policyText") <*>
                     (pure (fromEnum s)))

instance Hashable PutRegistryPolicy where

instance NFData PutRegistryPolicy where

instance ToHeaders PutRegistryPolicy where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonEC2ContainerRegistry_V20150921.PutRegistryPolicy"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON PutRegistryPolicy where
        toJSON PutRegistryPolicy'{..}
          = object
              (catMaybes [Just ("policyText" .= _prpPolicyText)])

instance ToPath PutRegistryPolicy where
        toPath = const "/"

instance ToQuery PutRegistryPolicy where
        toQuery = const mempty

-- | /See:/ 'putRegistryPolicyResponse' smart constructor.
data PutRegistryPolicyResponse = PutRegistryPolicyResponse'{_prprsRegistryId
                                                            :: !(Maybe Text),
                                                            _prprsPolicyText ::
                                                            !(Maybe Text),
                                                            _prprsResponseStatus
                                                            :: !Int}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'PutRegistryPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prprsRegistryId' - The registry ID.
--
-- * 'prprsPolicyText' - The JSON policy text for your registry.
--
-- * 'prprsResponseStatus' - -- | The response status code.
putRegistryPolicyResponse
    :: Int -- ^ 'prprsResponseStatus'
    -> PutRegistryPolicyResponse
putRegistryPolicyResponse pResponseStatus_
  = PutRegistryPolicyResponse'{_prprsRegistryId =
                                 Nothing,
                               _prprsPolicyText = Nothing,
                               _prprsResponseStatus = pResponseStatus_}

-- | The registry ID.
prprsRegistryId :: Lens' PutRegistryPolicyResponse (Maybe Text)
prprsRegistryId = lens _prprsRegistryId (\ s a -> s{_prprsRegistryId = a})

-- | The JSON policy text for your registry.
prprsPolicyText :: Lens' PutRegistryPolicyResponse (Maybe Text)
prprsPolicyText = lens _prprsPolicyText (\ s a -> s{_prprsPolicyText = a})

-- | -- | The response status code.
prprsResponseStatus :: Lens' PutRegistryPolicyResponse Int
prprsResponseStatus = lens _prprsResponseStatus (\ s a -> s{_prprsResponseStatus = a})

instance NFData PutRegistryPolicyResponse where
