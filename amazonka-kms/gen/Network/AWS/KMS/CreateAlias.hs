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
-- Module      : Network.AWS.KMS.CreateAlias
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a display name for a customer managed customer master key (CMK). You can use an alias to identify a CMK in <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> , such as 'Encrypt' and 'GenerateDataKey' . You can change the CMK associated with the alias at any time.
--
--
-- Aliases are easier to remember than key IDs. They can also help to simplify your applications. For example, if you use an alias in your code, you can change the CMK your code uses by associating a given alias with a different CMK. 
--
-- To run the same code in multiple AWS regions, use an alias in your code, such as @alias/ApplicationKey@ . Then, in each AWS Region, create an @alias/ApplicationKey@ alias that is associated with a CMK in that Region. When you run your code, it uses the @alias/ApplicationKey@ CMK for that AWS Region without any Region-specific code.
--
-- This operation does not return a response. To get the alias that you created, use the 'ListAliases' operation.
--
-- To use aliases successfully, be aware of the following information.
--
--     * Each alias points to only one CMK at a time, although a single CMK can have multiple aliases. The alias and its associated CMK must be in the same AWS account and Region. 
--
--     * You can associate an alias with any customer managed CMK in the same AWS account and Region. However, you do not have permission to associate an alias with an <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk AWS managed CMK> or an <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk AWS owned CMK> . 
--
--     * To change the CMK associated with an alias, use the 'UpdateAlias' operation. The current CMK and the new CMK must be the same type (both symmetric or both asymmetric) and they must have the same key usage (@ENCRYPT_DECRYPT@ or @SIGN_VERIFY@ ). This restriction prevents cryptographic errors in code that uses aliases.
--
--     * The alias name must begin with @alias/@ followed by a name, such as @alias/ExampleAlias@ . It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with @alias/aws/@ . The @alias/aws/@ prefix is reserved for <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk AWS managed CMKs> . 
--
--     * The alias name must be unique within an AWS Region. However, you can use the same alias name in multiple Regions of the same AWS account. Each instance of the alias is associated with a CMK in its Region.
--
--     * After you create an alias, you cannot change its alias name. However, you can use the 'DeleteAlias' operation to delete the alias and then create a new alias with the desired name.
--
--     * You can use an alias name or alias ARN to identify a CMK in AWS KMS <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> and in the 'DescribeKey' operation. However, you cannot use alias names or alias ARNs in API operations that manage CMKs, such as 'DisableKey' or 'GetKeyPolicy' . For information about the valid CMK identifiers for each AWS KMS API operation, see the descriptions of the @KeyId@ parameter in the API operation documentation.
--
--
--
-- Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the 'DescribeKey' operation. To get the aliases and alias ARNs of CMKs in each AWS account and Region, use the 'ListAliases' operation.
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
module Network.AWS.KMS.CreateAlias
    (
    -- * Creating a Request
      createAlias
    , CreateAlias
    -- * Request Lenses
    , caAliasName
    , caTargetKeyId

    -- * Destructuring the Response
    , createAliasResponse
    , CreateAliasResponse
    ) where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createAlias' smart constructor.
data CreateAlias = CreateAlias'{_caAliasName ::
                                !Text,
                                _caTargetKeyId :: !Text}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAliasName' - Specifies the alias name. This value must begin with @alias/@ followed by a name, such as @alias/ExampleAlias@ . The alias name cannot begin with @alias/aws/@ . The @alias/aws/@ prefix is reserved for AWS managed CMKs.
--
-- * 'caTargetKeyId' - Identifies the CMK to which the alias refers. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. You cannot specify another alias. For help finding the key ID and ARN, see <https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn Finding the Key ID and ARN> in the /AWS Key Management Service Developer Guide/ .
createAlias
    :: Text -- ^ 'caAliasName'
    -> Text -- ^ 'caTargetKeyId'
    -> CreateAlias
createAlias pAliasName_ pTargetKeyId_
  = CreateAlias'{_caAliasName = pAliasName_,
                 _caTargetKeyId = pTargetKeyId_}

-- | Specifies the alias name. This value must begin with @alias/@ followed by a name, such as @alias/ExampleAlias@ . The alias name cannot begin with @alias/aws/@ . The @alias/aws/@ prefix is reserved for AWS managed CMKs.
caAliasName :: Lens' CreateAlias Text
caAliasName = lens _caAliasName (\ s a -> s{_caAliasName = a})

-- | Identifies the CMK to which the alias refers. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. You cannot specify another alias. For help finding the key ID and ARN, see <https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn Finding the Key ID and ARN> in the /AWS Key Management Service Developer Guide/ .
caTargetKeyId :: Lens' CreateAlias Text
caTargetKeyId = lens _caTargetKeyId (\ s a -> s{_caTargetKeyId = a})

instance AWSRequest CreateAlias where
        type Rs CreateAlias = CreateAliasResponse
        request = postJSON kms
        response = receiveNull CreateAliasResponse'

instance Hashable CreateAlias where

instance NFData CreateAlias where

instance ToHeaders CreateAlias where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("TrentService.CreateAlias" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateAlias where
        toJSON CreateAlias'{..}
          = object
              (catMaybes
                 [Just ("AliasName" .= _caAliasName),
                  Just ("TargetKeyId" .= _caTargetKeyId)])

instance ToPath CreateAlias where
        toPath = const "/"

instance ToQuery CreateAlias where
        toQuery = const mempty

-- | /See:/ 'createAliasResponse' smart constructor.
data CreateAliasResponse = CreateAliasResponse'
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAliasResponse' with the minimum fields required to make a request.
--
createAliasResponse
    :: CreateAliasResponse
createAliasResponse = CreateAliasResponse'

instance NFData CreateAliasResponse where
