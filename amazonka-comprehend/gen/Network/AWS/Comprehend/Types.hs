{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Comprehend.Types
    (
    -- * Service Configuration
      comprehend

    -- * Errors
    , _ResourceUnavailableException
    , _InvalidRequestException
    , _ResourceLimitExceededException
    , _TooManyTagsException
    , _TooManyRequestsException
    , _ConcurrentModificationException
    , _InternalServerException
    , _BatchSizeLimitExceededException
    , _UnsupportedLanguageException
    , _JobNotFoundException
    , _TooManyTagKeysException
    , _InvalidFilterException
    , _KMSKeyValidationException
    , _ResourceNotFoundException
    , _TextSizeLimitExceededException
    , _ResourceInUseException

    -- * DocumentClassifierDataFormat
    , DocumentClassifierDataFormat (..)

    -- * DocumentClassifierMode
    , DocumentClassifierMode (..)

    -- * EndpointStatus
    , EndpointStatus (..)

    -- * EntityRecognizerDataFormat
    , EntityRecognizerDataFormat (..)

    -- * EntityType
    , EntityType (..)

    -- * InputFormat
    , InputFormat (..)

    -- * JobStatus
    , JobStatus (..)

    -- * LanguageCode
    , LanguageCode (..)

    -- * ModelStatus
    , ModelStatus (..)

    -- * PartOfSpeechTagType
    , PartOfSpeechTagType (..)

    -- * PiiEntitiesDetectionMaskMode
    , PiiEntitiesDetectionMaskMode (..)

    -- * PiiEntitiesDetectionMode
    , PiiEntitiesDetectionMode (..)

    -- * PiiEntityType
    , PiiEntityType (..)

    -- * SentimentType
    , SentimentType (..)

    -- * SyntaxLanguageCode
    , SyntaxLanguageCode (..)

    -- * AugmentedManifestsListItem
    , AugmentedManifestsListItem
    , augmentedManifestsListItem
    , amliS3URI
    , amliAttributeNames

    -- * BatchDetectDominantLanguageItemResult
    , BatchDetectDominantLanguageItemResult
    , batchDetectDominantLanguageItemResult
    , bddlirLanguages
    , bddlirIndex

    -- * BatchDetectEntitiesItemResult
    , BatchDetectEntitiesItemResult
    , batchDetectEntitiesItemResult
    , bdeirEntities
    , bdeirIndex

    -- * BatchDetectKeyPhrasesItemResult
    , BatchDetectKeyPhrasesItemResult
    , batchDetectKeyPhrasesItemResult
    , bdkpirIndex
    , bdkpirKeyPhrases

    -- * BatchDetectSentimentItemResult
    , BatchDetectSentimentItemResult
    , batchDetectSentimentItemResult
    , bSentiment
    , bSentimentScore
    , bIndex

    -- * BatchDetectSyntaxItemResult
    , BatchDetectSyntaxItemResult
    , batchDetectSyntaxItemResult
    , bdsirIndex
    , bdsirSyntaxTokens

    -- * BatchItemError
    , BatchItemError
    , batchItemError
    , bieErrorCode
    , bieErrorMessage
    , bieIndex

    -- * ClassifierEvaluationMetrics
    , ClassifierEvaluationMetrics
    , classifierEvaluationMetrics
    , cemMicroPrecision
    , cemMicroF1Score
    , cemRecall
    , cemPrecision
    , cemMicroRecall
    , cemF1Score
    , cemHammingLoss
    , cemAccuracy

    -- * ClassifierMetadata
    , ClassifierMetadata
    , classifierMetadata
    , cmNumberOfLabels
    , cmEvaluationMetrics
    , cmNumberOfTrainedDocuments
    , cmNumberOfTestDocuments

    -- * DocumentClass
    , DocumentClass
    , documentClass
    , dcScore
    , dcName

    -- * DocumentClassificationJobFilter
    , DocumentClassificationJobFilter
    , documentClassificationJobFilter
    , dcjfSubmitTimeAfter
    , dcjfSubmitTimeBefore
    , dcjfJobName
    , dcjfJobStatus

    -- * DocumentClassificationJobProperties
    , DocumentClassificationJobProperties
    , documentClassificationJobProperties
    , dcjpJobId
    , dcjpDocumentClassifierARN
    , dcjpJobName
    , dcjpInputDataConfig
    , dcjpVPCConfig
    , dcjpVolumeKMSKeyId
    , dcjpEndTime
    , dcjpOutputDataConfig
    , dcjpDataAccessRoleARN
    , dcjpJobStatus
    , dcjpMessage
    , dcjpSubmitTime

    -- * DocumentClassifierFilter
    , DocumentClassifierFilter
    , documentClassifierFilter
    , dcfStatus
    , dcfSubmitTimeAfter
    , dcfSubmitTimeBefore

    -- * DocumentClassifierInputDataConfig
    , DocumentClassifierInputDataConfig
    , documentClassifierInputDataConfig
    , dcidcAugmentedManifests
    , dcidcDataFormat
    , dcidcLabelDelimiter
    , dcidcS3URI

    -- * DocumentClassifierOutputDataConfig
    , DocumentClassifierOutputDataConfig
    , documentClassifierOutputDataConfig
    , dcodcKMSKeyId
    , dcodcS3URI

    -- * DocumentClassifierProperties
    , DocumentClassifierProperties
    , documentClassifierProperties
    , dcpStatus
    , dcpLanguageCode
    , dcpClassifierMetadata
    , dcpTrainingEndTime
    , dcpDocumentClassifierARN
    , dcpMode
    , dcpInputDataConfig
    , dcpVPCConfig
    , dcpVolumeKMSKeyId
    , dcpEndTime
    , dcpOutputDataConfig
    , dcpTrainingStartTime
    , dcpDataAccessRoleARN
    , dcpMessage
    , dcpSubmitTime

    -- * DocumentLabel
    , DocumentLabel
    , documentLabel
    , dScore
    , dName

    -- * DominantLanguage
    , DominantLanguage
    , dominantLanguage
    , dlLanguageCode
    , dlScore

    -- * DominantLanguageDetectionJobFilter
    , DominantLanguageDetectionJobFilter
    , dominantLanguageDetectionJobFilter
    , dldjfSubmitTimeAfter
    , dldjfSubmitTimeBefore
    , dldjfJobName
    , dldjfJobStatus

    -- * DominantLanguageDetectionJobProperties
    , DominantLanguageDetectionJobProperties
    , dominantLanguageDetectionJobProperties
    , dldjpJobId
    , dldjpJobName
    , dldjpInputDataConfig
    , dldjpVPCConfig
    , dldjpVolumeKMSKeyId
    , dldjpEndTime
    , dldjpOutputDataConfig
    , dldjpDataAccessRoleARN
    , dldjpJobStatus
    , dldjpMessage
    , dldjpSubmitTime

    -- * EndpointFilter
    , EndpointFilter
    , endpointFilter
    , efStatus
    , efModelARN
    , efCreationTimeAfter
    , efCreationTimeBefore

    -- * EndpointProperties
    , EndpointProperties
    , endpointProperties
    , epCreationTime
    , epStatus
    , epModelARN
    , epLastModifiedTime
    , epDesiredInferenceUnits
    , epCurrentInferenceUnits
    , epMessage
    , epEndpointARN

    -- * EntitiesDetectionJobFilter
    , EntitiesDetectionJobFilter
    , entitiesDetectionJobFilter
    , edjfSubmitTimeAfter
    , edjfSubmitTimeBefore
    , edjfJobName
    , edjfJobStatus

    -- * EntitiesDetectionJobProperties
    , EntitiesDetectionJobProperties
    , entitiesDetectionJobProperties
    , edjpsLanguageCode
    , edjpsJobId
    , edjpsEntityRecognizerARN
    , edjpsJobName
    , edjpsInputDataConfig
    , edjpsVPCConfig
    , edjpsVolumeKMSKeyId
    , edjpsEndTime
    , edjpsOutputDataConfig
    , edjpsDataAccessRoleARN
    , edjpsJobStatus
    , edjpsMessage
    , edjpsSubmitTime

    -- * Entity
    , Entity
    , entity
    , eBeginOffset
    , eText
    , eScore
    , eEndOffset
    , eType

    -- * EntityRecognizerAnnotations
    , EntityRecognizerAnnotations
    , entityRecognizerAnnotations
    , eraS3URI

    -- * EntityRecognizerDocuments
    , EntityRecognizerDocuments
    , entityRecognizerDocuments
    , erdS3URI

    -- * EntityRecognizerEntityList
    , EntityRecognizerEntityList
    , entityRecognizerEntityList
    , erelS3URI

    -- * EntityRecognizerEvaluationMetrics
    , EntityRecognizerEvaluationMetrics
    , entityRecognizerEvaluationMetrics
    , eremRecall
    , eremPrecision
    , eremF1Score

    -- * EntityRecognizerFilter
    , EntityRecognizerFilter
    , entityRecognizerFilter
    , erfStatus
    , erfSubmitTimeAfter
    , erfSubmitTimeBefore

    -- * EntityRecognizerInputDataConfig
    , EntityRecognizerInputDataConfig
    , entityRecognizerInputDataConfig
    , eridcAugmentedManifests
    , eridcAnnotations
    , eridcDataFormat
    , eridcDocuments
    , eridcEntityList
    , eridcEntityTypes

    -- * EntityRecognizerMetadata
    , EntityRecognizerMetadata
    , entityRecognizerMetadata
    , ermEntityTypes
    , ermEvaluationMetrics
    , ermNumberOfTrainedDocuments
    , ermNumberOfTestDocuments

    -- * EntityRecognizerMetadataEntityTypesListItem
    , EntityRecognizerMetadataEntityTypesListItem
    , entityRecognizerMetadataEntityTypesListItem
    , ermetliEvaluationMetrics
    , ermetliType
    , ermetliNumberOfTrainMentions

    -- * EntityRecognizerProperties
    , EntityRecognizerProperties
    , entityRecognizerProperties
    , erpStatus
    , erpLanguageCode
    , erpTrainingEndTime
    , erpEntityRecognizerARN
    , erpInputDataConfig
    , erpVPCConfig
    , erpVolumeKMSKeyId
    , erpEndTime
    , erpTrainingStartTime
    , erpDataAccessRoleARN
    , erpRecognizerMetadata
    , erpMessage
    , erpSubmitTime

    -- * EntityTypesEvaluationMetrics
    , EntityTypesEvaluationMetrics
    , entityTypesEvaluationMetrics
    , etemRecall
    , etemPrecision
    , etemF1Score

    -- * EntityTypesListItem
    , EntityTypesListItem
    , entityTypesListItem
    , etliType

    -- * EventsDetectionJobFilter
    , EventsDetectionJobFilter
    , eventsDetectionJobFilter
    , eSubmitTimeAfter
    , eSubmitTimeBefore
    , eJobName
    , eJobStatus

    -- * EventsDetectionJobProperties
    , EventsDetectionJobProperties
    , eventsDetectionJobProperties
    , edjpLanguageCode
    , edjpJobId
    , edjpJobName
    , edjpTargetEventTypes
    , edjpInputDataConfig
    , edjpEndTime
    , edjpOutputDataConfig
    , edjpDataAccessRoleARN
    , edjpJobStatus
    , edjpMessage
    , edjpSubmitTime

    -- * InputDataConfig
    , InputDataConfig
    , inputDataConfig
    , idcInputFormat
    , idcS3URI

    -- * KeyPhrase
    , KeyPhrase
    , keyPhrase
    , kpBeginOffset
    , kpText
    , kpScore
    , kpEndOffset

    -- * KeyPhrasesDetectionJobFilter
    , KeyPhrasesDetectionJobFilter
    , keyPhrasesDetectionJobFilter
    , kpdjfSubmitTimeAfter
    , kpdjfSubmitTimeBefore
    , kpdjfJobName
    , kpdjfJobStatus

    -- * KeyPhrasesDetectionJobProperties
    , KeyPhrasesDetectionJobProperties
    , keyPhrasesDetectionJobProperties
    , kpdjpLanguageCode
    , kpdjpJobId
    , kpdjpJobName
    , kpdjpInputDataConfig
    , kpdjpVPCConfig
    , kpdjpVolumeKMSKeyId
    , kpdjpEndTime
    , kpdjpOutputDataConfig
    , kpdjpDataAccessRoleARN
    , kpdjpJobStatus
    , kpdjpMessage
    , kpdjpSubmitTime

    -- * OutputDataConfig
    , OutputDataConfig
    , outputDataConfig
    , odcKMSKeyId
    , odcS3URI

    -- * PartOfSpeechTag
    , PartOfSpeechTag
    , partOfSpeechTag
    , postTag
    , postScore

    -- * PiiEntitiesDetectionJobFilter
    , PiiEntitiesDetectionJobFilter
    , piiEntitiesDetectionJobFilter
    , pedjfSubmitTimeAfter
    , pedjfSubmitTimeBefore
    , pedjfJobName
    , pedjfJobStatus

    -- * PiiEntitiesDetectionJobProperties
    , PiiEntitiesDetectionJobProperties
    , piiEntitiesDetectionJobProperties
    , pedjpLanguageCode
    , pedjpJobId
    , pedjpJobName
    , pedjpMode
    , pedjpInputDataConfig
    , pedjpRedactionConfig
    , pedjpEndTime
    , pedjpOutputDataConfig
    , pedjpDataAccessRoleARN
    , pedjpJobStatus
    , pedjpMessage
    , pedjpSubmitTime

    -- * PiiEntity
    , PiiEntity
    , piiEntity
    , peBeginOffset
    , peScore
    , peEndOffset
    , peType

    -- * PiiOutputDataConfig
    , PiiOutputDataConfig
    , piiOutputDataConfig
    , podcKMSKeyId
    , podcS3URI

    -- * RedactionConfig
    , RedactionConfig
    , redactionConfig
    , rcMaskCharacter
    , rcMaskMode
    , rcPiiEntityTypes

    -- * SentimentDetectionJobFilter
    , SentimentDetectionJobFilter
    , sentimentDetectionJobFilter
    , sdjfSubmitTimeAfter
    , sdjfSubmitTimeBefore
    , sdjfJobName
    , sdjfJobStatus

    -- * SentimentDetectionJobProperties
    , SentimentDetectionJobProperties
    , sentimentDetectionJobProperties
    , sdjpLanguageCode
    , sdjpJobId
    , sdjpJobName
    , sdjpInputDataConfig
    , sdjpVPCConfig
    , sdjpVolumeKMSKeyId
    , sdjpEndTime
    , sdjpOutputDataConfig
    , sdjpDataAccessRoleARN
    , sdjpJobStatus
    , sdjpMessage
    , sdjpSubmitTime

    -- * SentimentScore
    , SentimentScore
    , sentimentScore
    , ssMixed
    , ssNegative
    , ssNeutral
    , ssPositive

    -- * SyntaxToken
    , SyntaxToken
    , syntaxToken
    , stBeginOffset
    , stText
    , stTokenId
    , stEndOffset
    , stPartOfSpeech

    -- * Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- * TopicsDetectionJobFilter
    , TopicsDetectionJobFilter
    , topicsDetectionJobFilter
    , tdjfSubmitTimeAfter
    , tdjfSubmitTimeBefore
    , tdjfJobName
    , tdjfJobStatus

    -- * TopicsDetectionJobProperties
    , TopicsDetectionJobProperties
    , topicsDetectionJobProperties
    , tdjpJobId
    , tdjpJobName
    , tdjpInputDataConfig
    , tdjpVPCConfig
    , tdjpVolumeKMSKeyId
    , tdjpEndTime
    , tdjpOutputDataConfig
    , tdjpDataAccessRoleARN
    , tdjpNumberOfTopics
    , tdjpJobStatus
    , tdjpMessage
    , tdjpSubmitTime

    -- * VPCConfig
    , VPCConfig
    , vpcConfig
    , vcSecurityGroupIds
    , vcSubnets
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Comprehend.Types.DocumentClassifierDataFormat
import Network.AWS.Comprehend.Types.DocumentClassifierMode
import Network.AWS.Comprehend.Types.EndpointStatus
import Network.AWS.Comprehend.Types.EntityRecognizerDataFormat
import Network.AWS.Comprehend.Types.EntityType
import Network.AWS.Comprehend.Types.InputFormat
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.ModelStatus
import Network.AWS.Comprehend.Types.PartOfSpeechTagType
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
import Network.AWS.Comprehend.Types.PiiEntityType
import Network.AWS.Comprehend.Types.SentimentType
import Network.AWS.Comprehend.Types.SyntaxLanguageCode
import Network.AWS.Comprehend.Types.AugmentedManifestsListItem
import Network.AWS.Comprehend.Types.BatchDetectDominantLanguageItemResult
import Network.AWS.Comprehend.Types.BatchDetectEntitiesItemResult
import Network.AWS.Comprehend.Types.BatchDetectKeyPhrasesItemResult
import Network.AWS.Comprehend.Types.BatchDetectSentimentItemResult
import Network.AWS.Comprehend.Types.BatchDetectSyntaxItemResult
import Network.AWS.Comprehend.Types.BatchItemError
import Network.AWS.Comprehend.Types.ClassifierEvaluationMetrics
import Network.AWS.Comprehend.Types.ClassifierMetadata
import Network.AWS.Comprehend.Types.DocumentClass
import Network.AWS.Comprehend.Types.DocumentClassificationJobFilter
import Network.AWS.Comprehend.Types.DocumentClassificationJobProperties
import Network.AWS.Comprehend.Types.DocumentClassifierFilter
import Network.AWS.Comprehend.Types.DocumentClassifierInputDataConfig
import Network.AWS.Comprehend.Types.DocumentClassifierOutputDataConfig
import Network.AWS.Comprehend.Types.DocumentClassifierProperties
import Network.AWS.Comprehend.Types.DocumentLabel
import Network.AWS.Comprehend.Types.DominantLanguage
import Network.AWS.Comprehend.Types.DominantLanguageDetectionJobFilter
import Network.AWS.Comprehend.Types.DominantLanguageDetectionJobProperties
import Network.AWS.Comprehend.Types.EndpointFilter
import Network.AWS.Comprehend.Types.EndpointProperties
import Network.AWS.Comprehend.Types.EntitiesDetectionJobFilter
import Network.AWS.Comprehend.Types.EntitiesDetectionJobProperties
import Network.AWS.Comprehend.Types.Entity
import Network.AWS.Comprehend.Types.EntityRecognizerAnnotations
import Network.AWS.Comprehend.Types.EntityRecognizerDocuments
import Network.AWS.Comprehend.Types.EntityRecognizerEntityList
import Network.AWS.Comprehend.Types.EntityRecognizerEvaluationMetrics
import Network.AWS.Comprehend.Types.EntityRecognizerFilter
import Network.AWS.Comprehend.Types.EntityRecognizerInputDataConfig
import Network.AWS.Comprehend.Types.EntityRecognizerMetadata
import Network.AWS.Comprehend.Types.EntityRecognizerMetadataEntityTypesListItem
import Network.AWS.Comprehend.Types.EntityRecognizerProperties
import Network.AWS.Comprehend.Types.EntityTypesEvaluationMetrics
import Network.AWS.Comprehend.Types.EntityTypesListItem
import Network.AWS.Comprehend.Types.EventsDetectionJobFilter
import Network.AWS.Comprehend.Types.EventsDetectionJobProperties
import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.KeyPhrase
import Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobFilter
import Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobProperties
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.PartOfSpeechTag
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobFilter
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobProperties
import Network.AWS.Comprehend.Types.PiiEntity
import Network.AWS.Comprehend.Types.PiiOutputDataConfig
import Network.AWS.Comprehend.Types.RedactionConfig
import Network.AWS.Comprehend.Types.SentimentDetectionJobFilter
import Network.AWS.Comprehend.Types.SentimentDetectionJobProperties
import Network.AWS.Comprehend.Types.SentimentScore
import Network.AWS.Comprehend.Types.SyntaxToken
import Network.AWS.Comprehend.Types.Tag
import Network.AWS.Comprehend.Types.TopicsDetectionJobFilter
import Network.AWS.Comprehend.Types.TopicsDetectionJobProperties
import Network.AWS.Comprehend.Types.VPCConfig

-- | API version @2017-11-27@ of the Amazon Comprehend SDK configuration.
comprehend :: Service
comprehend
  = Service{_svcAbbrev = "Comprehend", _svcSigner = v4,
            _svcPrefix = "comprehend",
            _svcVersion = "2017-11-27",
            _svcEndpoint = defaultEndpoint comprehend,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "Comprehend",
            _svcRetry = retry}
  where retry
          = Exponential{_retryBase = 5.0e-2, _retryGrowth = 2,
                        _retryAttempts = 5, _retryCheck = check}
        check e
          | has (hasCode "ThrottledException" . hasStatus 400)
              e
            = Just "throttled_exception"
          | has (hasStatus 429) e = Just "too_many_requests"
          | has (hasCode "ThrottlingException" . hasStatus 400)
              e
            = Just "throttling_exception"
          | has (hasCode "Throttling" . hasStatus 400) e =
            Just "throttling"
          | has
              (hasCode "ProvisionedThroughputExceededException" .
                 hasStatus 400)
              e
            = Just "throughput_exceeded"
          | has (hasStatus 504) e = Just "gateway_timeout"
          | has
              (hasCode "RequestThrottledException" . hasStatus 400)
              e
            = Just "request_throttled_exception"
          | has (hasStatus 502) e = Just "bad_gateway"
          | has (hasStatus 503) e = Just "service_unavailable"
          | has (hasStatus 500) e = Just "general_server_error"
          | has (hasStatus 509) e = Just "limit_exceeded"
          | otherwise = Nothing

-- | The specified resource is not available. Check the resource and try your request again.
--
--
_ResourceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceUnavailableException
  = _MatchServiceError comprehend
      "ResourceUnavailableException"

-- | The request is invalid.
--
--
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException
  = _MatchServiceError comprehend
      "InvalidRequestException"

-- | The maximum number of resources per account has been exceeded. Review the resources, and then try your request again.
--
--
_ResourceLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceededException
  = _MatchServiceError comprehend
      "ResourceLimitExceededException"

-- | The request contains more tags than can be associated with a resource (50 tags per resource). The maximum number of tags includes both existing tags and those included in your current request. 
--
--
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException
  = _MatchServiceError comprehend
      "TooManyTagsException"

-- | The number of requests exceeds the limit. Resubmit your request later.
--
--
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException
  = _MatchServiceError comprehend
      "TooManyRequestsException"

-- | Concurrent modification of the tags associated with an Amazon Comprehend resource is not supported. 
--
--
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException
  = _MatchServiceError comprehend
      "ConcurrentModificationException"

-- | An internal server error occurred. Retry your request.
--
--
_InternalServerException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerException
  = _MatchServiceError comprehend
      "InternalServerException"

-- | The number of documents in the request exceeds the limit of 25. Try your request again with fewer documents.
--
--
_BatchSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_BatchSizeLimitExceededException
  = _MatchServiceError comprehend
      "BatchSizeLimitExceededException"

-- | Amazon Comprehend can't process the language of the input text. For all custom entity recognition APIs (such as @CreateEntityRecognizer@ ), only English, Spanish, French, Italian, German, or Portuguese are accepted. For most other APIs, such as those for Custom Classification, Amazon Comprehend accepts text in all supported languages. For a list of supported languages, see 'supported-languages' . 
--
--
_UnsupportedLanguageException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedLanguageException
  = _MatchServiceError comprehend
      "UnsupportedLanguageException"

-- | The specified job was not found. Check the job ID and try again.
--
--
_JobNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_JobNotFoundException
  = _MatchServiceError comprehend
      "JobNotFoundException"

-- | The request contains more tag keys than can be associated with a resource (50 tag keys per resource).
--
--
_TooManyTagKeysException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagKeysException
  = _MatchServiceError comprehend
      "TooManyTagKeysException"

-- | The filter specified for the operation is invalid. Specify a different filter.
--
--
_InvalidFilterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilterException
  = _MatchServiceError comprehend
      "InvalidFilterException"

-- | The KMS customer managed key (CMK) entered cannot be validated. Verify the key and re-enter it.
--
--
_KMSKeyValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSKeyValidationException
  = _MatchServiceError comprehend
      "KmsKeyValidationException"

-- | The specified resource ARN was not found. Check the ARN and try your request again.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError comprehend
      "ResourceNotFoundException"

-- | The size of the input text exceeds the limit. Use a smaller document.
--
--
_TextSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TextSizeLimitExceededException
  = _MatchServiceError comprehend
      "TextSizeLimitExceededException"

-- | The specified resource name is already in use. Use a different name and try your request again.
--
--
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException
  = _MatchServiceError comprehend
      "ResourceInUseException"
