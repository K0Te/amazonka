{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.KMS
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.KMS where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.KMS
import Test.AWS.KMS.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestEncrypt $
--             encrypt
--
--         , requestCreateCustomKeyStore $
--             createCustomKeyStore
--
--         , requestListGrants $
--             listGrants
--
--         , requestDisableKeyRotation $
--             disableKeyRotation
--
--         , requestVerify $
--             verify
--
--         , requestGenerateDataKeyWithoutPlaintext $
--             generateDataKeyWithoutPlaintext
--
--         , requestUpdateCustomKeyStore $
--             updateCustomKeyStore
--
--         , requestGetParametersForImport $
--             getParametersForImport
--
--         , requestEnableKeyRotation $
--             enableKeyRotation
--
--         , requestDeleteCustomKeyStore $
--             deleteCustomKeyStore
--
--         , requestCreateAlias $
--             createAlias
--
--         , requestCreateGrant $
--             createGrant
--
--         , requestListAliases $
--             listAliases
--
--         , requestConnectCustomKeyStore $
--             connectCustomKeyStore
--
--         , requestListRetirableGrants $
--             listRetirableGrants
--
--         , requestGetPublicKey $
--             getPublicKey
--
--         , requestGenerateRandom $
--             generateRandom
--
--         , requestCreateKey $
--             createKey
--
--         , requestDisableKey $
--             disableKey
--
--         , requestDisconnectCustomKeyStore $
--             disconnectCustomKeyStore
--
--         , requestRetireGrant $
--             retireGrant
--
--         , requestListKeys $
--             listKeys
--
--         , requestListResourceTags $
--             listResourceTags
--
--         , requestGetKeyRotationStatus $
--             getKeyRotationStatus
--
--         , requestGenerateDataKey $
--             generateDataKey
--
--         , requestDeleteAlias $
--             deleteAlias
--
--         , requestUpdateAlias $
--             updateAlias
--
--         , requestDescribeKey $
--             describeKey
--
--         , requestDescribeCustomKeyStores $
--             describeCustomKeyStores
--
--         , requestCancelKeyDeletion $
--             cancelKeyDeletion
--
--         , requestDecrypt $
--             decrypt
--
--         , requestGenerateDataKeyPairWithoutPlaintext $
--             generateDataKeyPairWithoutPlaintext
--
--         , requestUpdateKeyDescription $
--             updateKeyDescription
--
--         , requestReEncrypt $
--             reEncrypt
--
--         , requestTagResource $
--             tagResource
--
--         , requestListKeyPolicies $
--             listKeyPolicies
--
--         , requestUntagResource $
--             untagResource
--
--         , requestSign $
--             sign
--
--         , requestScheduleKeyDeletion $
--             scheduleKeyDeletion
--
--         , requestGenerateDataKeyPair $
--             generateDataKeyPair
--
--         , requestPutKeyPolicy $
--             putKeyPolicy
--
--         , requestEnableKey $
--             enableKey
--
--         , requestRevokeGrant $
--             revokeGrant
--
--         , requestGetKeyPolicy $
--             getKeyPolicy
--
--         , requestImportKeyMaterial $
--             importKeyMaterial
--
--         , requestDeleteImportedKeyMaterial $
--             deleteImportedKeyMaterial
--
--           ]

--     , testGroup "response"
--         [ responseEncrypt $
--             encryptResponse
--
--         , responseCreateCustomKeyStore $
--             createCustomKeyStoreResponse
--
--         , responseListGrants $
--             listGrantsResponse
--
--         , responseDisableKeyRotation $
--             disableKeyRotationResponse
--
--         , responseVerify $
--             verifyResponse
--
--         , responseGenerateDataKeyWithoutPlaintext $
--             generateDataKeyWithoutPlaintextResponse
--
--         , responseUpdateCustomKeyStore $
--             updateCustomKeyStoreResponse
--
--         , responseGetParametersForImport $
--             getParametersForImportResponse
--
--         , responseEnableKeyRotation $
--             enableKeyRotationResponse
--
--         , responseDeleteCustomKeyStore $
--             deleteCustomKeyStoreResponse
--
--         , responseCreateAlias $
--             createAliasResponse
--
--         , responseCreateGrant $
--             createGrantResponse
--
--         , responseListAliases $
--             listAliasesResponse
--
--         , responseConnectCustomKeyStore $
--             connectCustomKeyStoreResponse
--
--         , responseListRetirableGrants $
--             listGrantsResponse
--
--         , responseGetPublicKey $
--             getPublicKeyResponse
--
--         , responseGenerateRandom $
--             generateRandomResponse
--
--         , responseCreateKey $
--             createKeyResponse
--
--         , responseDisableKey $
--             disableKeyResponse
--
--         , responseDisconnectCustomKeyStore $
--             disconnectCustomKeyStoreResponse
--
--         , responseRetireGrant $
--             retireGrantResponse
--
--         , responseListKeys $
--             listKeysResponse
--
--         , responseListResourceTags $
--             listResourceTagsResponse
--
--         , responseGetKeyRotationStatus $
--             getKeyRotationStatusResponse
--
--         , responseGenerateDataKey $
--             generateDataKeyResponse
--
--         , responseDeleteAlias $
--             deleteAliasResponse
--
--         , responseUpdateAlias $
--             updateAliasResponse
--
--         , responseDescribeKey $
--             describeKeyResponse
--
--         , responseDescribeCustomKeyStores $
--             describeCustomKeyStoresResponse
--
--         , responseCancelKeyDeletion $
--             cancelKeyDeletionResponse
--
--         , responseDecrypt $
--             decryptResponse
--
--         , responseGenerateDataKeyPairWithoutPlaintext $
--             generateDataKeyPairWithoutPlaintextResponse
--
--         , responseUpdateKeyDescription $
--             updateKeyDescriptionResponse
--
--         , responseReEncrypt $
--             reEncryptResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListKeyPolicies $
--             listKeyPoliciesResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseSign $
--             signResponse
--
--         , responseScheduleKeyDeletion $
--             scheduleKeyDeletionResponse
--
--         , responseGenerateDataKeyPair $
--             generateDataKeyPairResponse
--
--         , responsePutKeyPolicy $
--             putKeyPolicyResponse
--
--         , responseEnableKey $
--             enableKeyResponse
--
--         , responseRevokeGrant $
--             revokeGrantResponse
--
--         , responseGetKeyPolicy $
--             getKeyPolicyResponse
--
--         , responseImportKeyMaterial $
--             importKeyMaterialResponse
--
--         , responseDeleteImportedKeyMaterial $
--             deleteImportedKeyMaterialResponse
--
--           ]
--     ]

-- Requests

requestEncrypt :: Encrypt -> TestTree
requestEncrypt = req
    "Encrypt"
    "fixture/Encrypt.yaml"

requestCreateCustomKeyStore :: CreateCustomKeyStore -> TestTree
requestCreateCustomKeyStore = req
    "CreateCustomKeyStore"
    "fixture/CreateCustomKeyStore.yaml"

requestListGrants :: ListGrants -> TestTree
requestListGrants = req
    "ListGrants"
    "fixture/ListGrants.yaml"

requestDisableKeyRotation :: DisableKeyRotation -> TestTree
requestDisableKeyRotation = req
    "DisableKeyRotation"
    "fixture/DisableKeyRotation.yaml"

requestVerify :: Verify -> TestTree
requestVerify = req
    "Verify"
    "fixture/Verify.yaml"

requestGenerateDataKeyWithoutPlaintext :: GenerateDataKeyWithoutPlaintext -> TestTree
requestGenerateDataKeyWithoutPlaintext = req
    "GenerateDataKeyWithoutPlaintext"
    "fixture/GenerateDataKeyWithoutPlaintext.yaml"

requestUpdateCustomKeyStore :: UpdateCustomKeyStore -> TestTree
requestUpdateCustomKeyStore = req
    "UpdateCustomKeyStore"
    "fixture/UpdateCustomKeyStore.yaml"

requestGetParametersForImport :: GetParametersForImport -> TestTree
requestGetParametersForImport = req
    "GetParametersForImport"
    "fixture/GetParametersForImport.yaml"

requestEnableKeyRotation :: EnableKeyRotation -> TestTree
requestEnableKeyRotation = req
    "EnableKeyRotation"
    "fixture/EnableKeyRotation.yaml"

requestDeleteCustomKeyStore :: DeleteCustomKeyStore -> TestTree
requestDeleteCustomKeyStore = req
    "DeleteCustomKeyStore"
    "fixture/DeleteCustomKeyStore.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias = req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

requestCreateGrant :: CreateGrant -> TestTree
requestCreateGrant = req
    "CreateGrant"
    "fixture/CreateGrant.yaml"

requestListAliases :: ListAliases -> TestTree
requestListAliases = req
    "ListAliases"
    "fixture/ListAliases.yaml"

requestConnectCustomKeyStore :: ConnectCustomKeyStore -> TestTree
requestConnectCustomKeyStore = req
    "ConnectCustomKeyStore"
    "fixture/ConnectCustomKeyStore.yaml"

requestListRetirableGrants :: ListRetirableGrants -> TestTree
requestListRetirableGrants = req
    "ListRetirableGrants"
    "fixture/ListRetirableGrants.yaml"

requestGetPublicKey :: GetPublicKey -> TestTree
requestGetPublicKey = req
    "GetPublicKey"
    "fixture/GetPublicKey.yaml"

requestGenerateRandom :: GenerateRandom -> TestTree
requestGenerateRandom = req
    "GenerateRandom"
    "fixture/GenerateRandom.yaml"

requestCreateKey :: CreateKey -> TestTree
requestCreateKey = req
    "CreateKey"
    "fixture/CreateKey.yaml"

requestDisableKey :: DisableKey -> TestTree
requestDisableKey = req
    "DisableKey"
    "fixture/DisableKey.yaml"

requestDisconnectCustomKeyStore :: DisconnectCustomKeyStore -> TestTree
requestDisconnectCustomKeyStore = req
    "DisconnectCustomKeyStore"
    "fixture/DisconnectCustomKeyStore.yaml"

requestRetireGrant :: RetireGrant -> TestTree
requestRetireGrant = req
    "RetireGrant"
    "fixture/RetireGrant.yaml"

requestListKeys :: ListKeys -> TestTree
requestListKeys = req
    "ListKeys"
    "fixture/ListKeys.yaml"

requestListResourceTags :: ListResourceTags -> TestTree
requestListResourceTags = req
    "ListResourceTags"
    "fixture/ListResourceTags.yaml"

requestGetKeyRotationStatus :: GetKeyRotationStatus -> TestTree
requestGetKeyRotationStatus = req
    "GetKeyRotationStatus"
    "fixture/GetKeyRotationStatus.yaml"

requestGenerateDataKey :: GenerateDataKey -> TestTree
requestGenerateDataKey = req
    "GenerateDataKey"
    "fixture/GenerateDataKey.yaml"

requestDeleteAlias :: DeleteAlias -> TestTree
requestDeleteAlias = req
    "DeleteAlias"
    "fixture/DeleteAlias.yaml"

requestUpdateAlias :: UpdateAlias -> TestTree
requestUpdateAlias = req
    "UpdateAlias"
    "fixture/UpdateAlias.yaml"

requestDescribeKey :: DescribeKey -> TestTree
requestDescribeKey = req
    "DescribeKey"
    "fixture/DescribeKey.yaml"

requestDescribeCustomKeyStores :: DescribeCustomKeyStores -> TestTree
requestDescribeCustomKeyStores = req
    "DescribeCustomKeyStores"
    "fixture/DescribeCustomKeyStores.yaml"

requestCancelKeyDeletion :: CancelKeyDeletion -> TestTree
requestCancelKeyDeletion = req
    "CancelKeyDeletion"
    "fixture/CancelKeyDeletion.yaml"

requestDecrypt :: Decrypt -> TestTree
requestDecrypt = req
    "Decrypt"
    "fixture/Decrypt.yaml"

requestGenerateDataKeyPairWithoutPlaintext :: GenerateDataKeyPairWithoutPlaintext -> TestTree
requestGenerateDataKeyPairWithoutPlaintext = req
    "GenerateDataKeyPairWithoutPlaintext"
    "fixture/GenerateDataKeyPairWithoutPlaintext.yaml"

requestUpdateKeyDescription :: UpdateKeyDescription -> TestTree
requestUpdateKeyDescription = req
    "UpdateKeyDescription"
    "fixture/UpdateKeyDescription.yaml"

requestReEncrypt :: ReEncrypt -> TestTree
requestReEncrypt = req
    "ReEncrypt"
    "fixture/ReEncrypt.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource = req
    "TagResource"
    "fixture/TagResource.yaml"

requestListKeyPolicies :: ListKeyPolicies -> TestTree
requestListKeyPolicies = req
    "ListKeyPolicies"
    "fixture/ListKeyPolicies.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource = req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestSign :: Sign -> TestTree
requestSign = req
    "Sign"
    "fixture/Sign.yaml"

requestScheduleKeyDeletion :: ScheduleKeyDeletion -> TestTree
requestScheduleKeyDeletion = req
    "ScheduleKeyDeletion"
    "fixture/ScheduleKeyDeletion.yaml"

requestGenerateDataKeyPair :: GenerateDataKeyPair -> TestTree
requestGenerateDataKeyPair = req
    "GenerateDataKeyPair"
    "fixture/GenerateDataKeyPair.yaml"

requestPutKeyPolicy :: PutKeyPolicy -> TestTree
requestPutKeyPolicy = req
    "PutKeyPolicy"
    "fixture/PutKeyPolicy.yaml"

requestEnableKey :: EnableKey -> TestTree
requestEnableKey = req
    "EnableKey"
    "fixture/EnableKey.yaml"

requestRevokeGrant :: RevokeGrant -> TestTree
requestRevokeGrant = req
    "RevokeGrant"
    "fixture/RevokeGrant.yaml"

requestGetKeyPolicy :: GetKeyPolicy -> TestTree
requestGetKeyPolicy = req
    "GetKeyPolicy"
    "fixture/GetKeyPolicy.yaml"

requestImportKeyMaterial :: ImportKeyMaterial -> TestTree
requestImportKeyMaterial = req
    "ImportKeyMaterial"
    "fixture/ImportKeyMaterial.yaml"

requestDeleteImportedKeyMaterial :: DeleteImportedKeyMaterial -> TestTree
requestDeleteImportedKeyMaterial = req
    "DeleteImportedKeyMaterial"
    "fixture/DeleteImportedKeyMaterial.yaml"

-- Responses

responseEncrypt :: EncryptResponse -> TestTree
responseEncrypt = res
    "EncryptResponse"
    "fixture/EncryptResponse.proto"
    kms
    (Proxy :: Proxy Encrypt)

responseCreateCustomKeyStore :: CreateCustomKeyStoreResponse -> TestTree
responseCreateCustomKeyStore = res
    "CreateCustomKeyStoreResponse"
    "fixture/CreateCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy CreateCustomKeyStore)

responseListGrants :: ListGrantsResponse -> TestTree
responseListGrants = res
    "ListGrantsResponse"
    "fixture/ListGrantsResponse.proto"
    kms
    (Proxy :: Proxy ListGrants)

responseDisableKeyRotation :: DisableKeyRotationResponse -> TestTree
responseDisableKeyRotation = res
    "DisableKeyRotationResponse"
    "fixture/DisableKeyRotationResponse.proto"
    kms
    (Proxy :: Proxy DisableKeyRotation)

responseVerify :: VerifyResponse -> TestTree
responseVerify = res
    "VerifyResponse"
    "fixture/VerifyResponse.proto"
    kms
    (Proxy :: Proxy Verify)

responseGenerateDataKeyWithoutPlaintext :: GenerateDataKeyWithoutPlaintextResponse -> TestTree
responseGenerateDataKeyWithoutPlaintext = res
    "GenerateDataKeyWithoutPlaintextResponse"
    "fixture/GenerateDataKeyWithoutPlaintextResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKeyWithoutPlaintext)

responseUpdateCustomKeyStore :: UpdateCustomKeyStoreResponse -> TestTree
responseUpdateCustomKeyStore = res
    "UpdateCustomKeyStoreResponse"
    "fixture/UpdateCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy UpdateCustomKeyStore)

responseGetParametersForImport :: GetParametersForImportResponse -> TestTree
responseGetParametersForImport = res
    "GetParametersForImportResponse"
    "fixture/GetParametersForImportResponse.proto"
    kms
    (Proxy :: Proxy GetParametersForImport)

responseEnableKeyRotation :: EnableKeyRotationResponse -> TestTree
responseEnableKeyRotation = res
    "EnableKeyRotationResponse"
    "fixture/EnableKeyRotationResponse.proto"
    kms
    (Proxy :: Proxy EnableKeyRotation)

responseDeleteCustomKeyStore :: DeleteCustomKeyStoreResponse -> TestTree
responseDeleteCustomKeyStore = res
    "DeleteCustomKeyStoreResponse"
    "fixture/DeleteCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy DeleteCustomKeyStore)

responseCreateAlias :: CreateAliasResponse -> TestTree
responseCreateAlias = res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    kms
    (Proxy :: Proxy CreateAlias)

responseCreateGrant :: CreateGrantResponse -> TestTree
responseCreateGrant = res
    "CreateGrantResponse"
    "fixture/CreateGrantResponse.proto"
    kms
    (Proxy :: Proxy CreateGrant)

responseListAliases :: ListAliasesResponse -> TestTree
responseListAliases = res
    "ListAliasesResponse"
    "fixture/ListAliasesResponse.proto"
    kms
    (Proxy :: Proxy ListAliases)

responseConnectCustomKeyStore :: ConnectCustomKeyStoreResponse -> TestTree
responseConnectCustomKeyStore = res
    "ConnectCustomKeyStoreResponse"
    "fixture/ConnectCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy ConnectCustomKeyStore)

responseListRetirableGrants :: ListGrantsResponse -> TestTree
responseListRetirableGrants = res
    "ListRetirableGrantsResponse"
    "fixture/ListRetirableGrantsResponse.proto"
    kms
    (Proxy :: Proxy ListRetirableGrants)

responseGetPublicKey :: GetPublicKeyResponse -> TestTree
responseGetPublicKey = res
    "GetPublicKeyResponse"
    "fixture/GetPublicKeyResponse.proto"
    kms
    (Proxy :: Proxy GetPublicKey)

responseGenerateRandom :: GenerateRandomResponse -> TestTree
responseGenerateRandom = res
    "GenerateRandomResponse"
    "fixture/GenerateRandomResponse.proto"
    kms
    (Proxy :: Proxy GenerateRandom)

responseCreateKey :: CreateKeyResponse -> TestTree
responseCreateKey = res
    "CreateKeyResponse"
    "fixture/CreateKeyResponse.proto"
    kms
    (Proxy :: Proxy CreateKey)

responseDisableKey :: DisableKeyResponse -> TestTree
responseDisableKey = res
    "DisableKeyResponse"
    "fixture/DisableKeyResponse.proto"
    kms
    (Proxy :: Proxy DisableKey)

responseDisconnectCustomKeyStore :: DisconnectCustomKeyStoreResponse -> TestTree
responseDisconnectCustomKeyStore = res
    "DisconnectCustomKeyStoreResponse"
    "fixture/DisconnectCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy DisconnectCustomKeyStore)

responseRetireGrant :: RetireGrantResponse -> TestTree
responseRetireGrant = res
    "RetireGrantResponse"
    "fixture/RetireGrantResponse.proto"
    kms
    (Proxy :: Proxy RetireGrant)

responseListKeys :: ListKeysResponse -> TestTree
responseListKeys = res
    "ListKeysResponse"
    "fixture/ListKeysResponse.proto"
    kms
    (Proxy :: Proxy ListKeys)

responseListResourceTags :: ListResourceTagsResponse -> TestTree
responseListResourceTags = res
    "ListResourceTagsResponse"
    "fixture/ListResourceTagsResponse.proto"
    kms
    (Proxy :: Proxy ListResourceTags)

responseGetKeyRotationStatus :: GetKeyRotationStatusResponse -> TestTree
responseGetKeyRotationStatus = res
    "GetKeyRotationStatusResponse"
    "fixture/GetKeyRotationStatusResponse.proto"
    kms
    (Proxy :: Proxy GetKeyRotationStatus)

responseGenerateDataKey :: GenerateDataKeyResponse -> TestTree
responseGenerateDataKey = res
    "GenerateDataKeyResponse"
    "fixture/GenerateDataKeyResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKey)

responseDeleteAlias :: DeleteAliasResponse -> TestTree
responseDeleteAlias = res
    "DeleteAliasResponse"
    "fixture/DeleteAliasResponse.proto"
    kms
    (Proxy :: Proxy DeleteAlias)

responseUpdateAlias :: UpdateAliasResponse -> TestTree
responseUpdateAlias = res
    "UpdateAliasResponse"
    "fixture/UpdateAliasResponse.proto"
    kms
    (Proxy :: Proxy UpdateAlias)

responseDescribeKey :: DescribeKeyResponse -> TestTree
responseDescribeKey = res
    "DescribeKeyResponse"
    "fixture/DescribeKeyResponse.proto"
    kms
    (Proxy :: Proxy DescribeKey)

responseDescribeCustomKeyStores :: DescribeCustomKeyStoresResponse -> TestTree
responseDescribeCustomKeyStores = res
    "DescribeCustomKeyStoresResponse"
    "fixture/DescribeCustomKeyStoresResponse.proto"
    kms
    (Proxy :: Proxy DescribeCustomKeyStores)

responseCancelKeyDeletion :: CancelKeyDeletionResponse -> TestTree
responseCancelKeyDeletion = res
    "CancelKeyDeletionResponse"
    "fixture/CancelKeyDeletionResponse.proto"
    kms
    (Proxy :: Proxy CancelKeyDeletion)

responseDecrypt :: DecryptResponse -> TestTree
responseDecrypt = res
    "DecryptResponse"
    "fixture/DecryptResponse.proto"
    kms
    (Proxy :: Proxy Decrypt)

responseGenerateDataKeyPairWithoutPlaintext :: GenerateDataKeyPairWithoutPlaintextResponse -> TestTree
responseGenerateDataKeyPairWithoutPlaintext = res
    "GenerateDataKeyPairWithoutPlaintextResponse"
    "fixture/GenerateDataKeyPairWithoutPlaintextResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKeyPairWithoutPlaintext)

responseUpdateKeyDescription :: UpdateKeyDescriptionResponse -> TestTree
responseUpdateKeyDescription = res
    "UpdateKeyDescriptionResponse"
    "fixture/UpdateKeyDescriptionResponse.proto"
    kms
    (Proxy :: Proxy UpdateKeyDescription)

responseReEncrypt :: ReEncryptResponse -> TestTree
responseReEncrypt = res
    "ReEncryptResponse"
    "fixture/ReEncryptResponse.proto"
    kms
    (Proxy :: Proxy ReEncrypt)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource = res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    kms
    (Proxy :: Proxy TagResource)

responseListKeyPolicies :: ListKeyPoliciesResponse -> TestTree
responseListKeyPolicies = res
    "ListKeyPoliciesResponse"
    "fixture/ListKeyPoliciesResponse.proto"
    kms
    (Proxy :: Proxy ListKeyPolicies)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource = res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    kms
    (Proxy :: Proxy UntagResource)

responseSign :: SignResponse -> TestTree
responseSign = res
    "SignResponse"
    "fixture/SignResponse.proto"
    kms
    (Proxy :: Proxy Sign)

responseScheduleKeyDeletion :: ScheduleKeyDeletionResponse -> TestTree
responseScheduleKeyDeletion = res
    "ScheduleKeyDeletionResponse"
    "fixture/ScheduleKeyDeletionResponse.proto"
    kms
    (Proxy :: Proxy ScheduleKeyDeletion)

responseGenerateDataKeyPair :: GenerateDataKeyPairResponse -> TestTree
responseGenerateDataKeyPair = res
    "GenerateDataKeyPairResponse"
    "fixture/GenerateDataKeyPairResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKeyPair)

responsePutKeyPolicy :: PutKeyPolicyResponse -> TestTree
responsePutKeyPolicy = res
    "PutKeyPolicyResponse"
    "fixture/PutKeyPolicyResponse.proto"
    kms
    (Proxy :: Proxy PutKeyPolicy)

responseEnableKey :: EnableKeyResponse -> TestTree
responseEnableKey = res
    "EnableKeyResponse"
    "fixture/EnableKeyResponse.proto"
    kms
    (Proxy :: Proxy EnableKey)

responseRevokeGrant :: RevokeGrantResponse -> TestTree
responseRevokeGrant = res
    "RevokeGrantResponse"
    "fixture/RevokeGrantResponse.proto"
    kms
    (Proxy :: Proxy RevokeGrant)

responseGetKeyPolicy :: GetKeyPolicyResponse -> TestTree
responseGetKeyPolicy = res
    "GetKeyPolicyResponse"
    "fixture/GetKeyPolicyResponse.proto"
    kms
    (Proxy :: Proxy GetKeyPolicy)

responseImportKeyMaterial :: ImportKeyMaterialResponse -> TestTree
responseImportKeyMaterial = res
    "ImportKeyMaterialResponse"
    "fixture/ImportKeyMaterialResponse.proto"
    kms
    (Proxy :: Proxy ImportKeyMaterial)

responseDeleteImportedKeyMaterial :: DeleteImportedKeyMaterialResponse -> TestTree
responseDeleteImportedKeyMaterial = res
    "DeleteImportedKeyMaterialResponse"
    "fixture/DeleteImportedKeyMaterialResponse.proto"
    kms
    (Proxy :: Proxy DeleteImportedKeyMaterial)
