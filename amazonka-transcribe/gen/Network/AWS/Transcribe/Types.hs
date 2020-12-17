{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types
    (
    -- * Service Configuration
      transcribe

    -- * Errors
    , _ConflictException
    , _NotFoundException
    , _InternalFailureException
    , _BadRequestException
    , _LimitExceededException

    -- * BaseModelName
    , BaseModelName (..)

    -- * CLMLanguageCode
    , CLMLanguageCode (..)

    -- * LanguageCode
    , LanguageCode (..)

    -- * MediaFormat
    , MediaFormat (..)

    -- * ModelStatus
    , ModelStatus (..)

    -- * OutputLocationType
    , OutputLocationType (..)

    -- * RedactionOutput
    , RedactionOutput (..)

    -- * RedactionType
    , RedactionType (..)

    -- * Specialty
    , Specialty (..)

    -- * TranscriptionJobStatus
    , TranscriptionJobStatus (..)

    -- * Type
    , Type (..)

    -- * VocabularyFilterMethod
    , VocabularyFilterMethod (..)

    -- * VocabularyState
    , VocabularyState (..)

    -- * ContentRedaction
    , ContentRedaction
    , contentRedaction
    , crRedactionType
    , crRedactionOutput

    -- * InputDataConfig
    , InputDataConfig
    , inputDataConfig
    , idcTuningDataS3URI
    , idcS3URI
    , idcDataAccessRoleARN

    -- * JobExecutionSettings
    , JobExecutionSettings
    , jobExecutionSettings
    , jesDataAccessRoleARN
    , jesAllowDeferredExecution

    -- * LanguageModel
    , LanguageModel
    , languageModel
    , lmFailureReason
    , lmLanguageCode
    , lmModelName
    , lmLastModifiedTime
    , lmUpgradeAvailability
    , lmInputDataConfig
    , lmBaseModelName
    , lmModelStatus
    , lmCreateTime

    -- * Media
    , Media
    , media
    , mMediaFileURI

    -- * MedicalTranscript
    , MedicalTranscript
    , medicalTranscript
    , mtTranscriptFileURI

    -- * MedicalTranscriptionJob
    , MedicalTranscriptionJob
    , medicalTranscriptionJob
    , mtjCreationTime
    , mtjSpecialty
    , mtjFailureReason
    , mtjLanguageCode
    , mtjSettings
    , mtjStartTime
    , mtjCompletionTime
    , mtjMedia
    , mtjMediaFormat
    , mtjMedicalTranscriptionJobName
    , mtjTranscriptionJobStatus
    , mtjType
    , mtjTranscript
    , mtjMediaSampleRateHertz

    -- * MedicalTranscriptionJobSummary
    , MedicalTranscriptionJobSummary
    , medicalTranscriptionJobSummary
    , mtjsCreationTime
    , mtjsSpecialty
    , mtjsFailureReason
    , mtjsLanguageCode
    , mtjsOutputLocationType
    , mtjsStartTime
    , mtjsCompletionTime
    , mtjsMedicalTranscriptionJobName
    , mtjsTranscriptionJobStatus
    , mtjsType

    -- * MedicalTranscriptionSetting
    , MedicalTranscriptionSetting
    , medicalTranscriptionSetting
    , mtsVocabularyName
    , mtsMaxAlternatives
    , mtsChannelIdentification
    , mtsShowAlternatives
    , mtsMaxSpeakerLabels
    , mtsShowSpeakerLabels

    -- * ModelSettings
    , ModelSettings
    , modelSettings
    , msLanguageModelName

    -- * Settings
    , Settings
    , settings
    , sVocabularyName
    , sMaxAlternatives
    , sChannelIdentification
    , sShowAlternatives
    , sMaxSpeakerLabels
    , sVocabularyFilterName
    , sShowSpeakerLabels
    , sVocabularyFilterMethod

    -- * Transcript
    , Transcript
    , transcript
    , tRedactedTranscriptFileURI
    , tTranscriptFileURI

    -- * TranscriptionJob
    , TranscriptionJob
    , transcriptionJob
    , tjCreationTime
    , tjFailureReason
    , tjContentRedaction
    , tjIdentifiedLanguageScore
    , tjLanguageCode
    , tjLanguageOptions
    , tjSettings
    , tjStartTime
    , tjCompletionTime
    , tjMedia
    , tjMediaFormat
    , tjModelSettings
    , tjTranscriptionJobStatus
    , tjJobExecutionSettings
    , tjTranscriptionJobName
    , tjIdentifyLanguage
    , tjTranscript
    , tjMediaSampleRateHertz

    -- * TranscriptionJobSummary
    , TranscriptionJobSummary
    , transcriptionJobSummary
    , tjsCreationTime
    , tjsFailureReason
    , tjsContentRedaction
    , tjsIdentifiedLanguageScore
    , tjsLanguageCode
    , tjsOutputLocationType
    , tjsStartTime
    , tjsCompletionTime
    , tjsModelSettings
    , tjsTranscriptionJobStatus
    , tjsTranscriptionJobName
    , tjsIdentifyLanguage

    -- * VocabularyFilterInfo
    , VocabularyFilterInfo
    , vocabularyFilterInfo
    , vfiLanguageCode
    , vfiLastModifiedTime
    , vfiVocabularyFilterName

    -- * VocabularyInfo
    , VocabularyInfo
    , vocabularyInfo
    , viLanguageCode
    , viVocabularyName
    , viLastModifiedTime
    , viVocabularyState
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Transcribe.Types.BaseModelName
import Network.AWS.Transcribe.Types.CLMLanguageCode
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.MediaFormat
import Network.AWS.Transcribe.Types.ModelStatus
import Network.AWS.Transcribe.Types.OutputLocationType
import Network.AWS.Transcribe.Types.RedactionOutput
import Network.AWS.Transcribe.Types.RedactionType
import Network.AWS.Transcribe.Types.Specialty
import Network.AWS.Transcribe.Types.TranscriptionJobStatus
import Network.AWS.Transcribe.Types.Type
import Network.AWS.Transcribe.Types.VocabularyFilterMethod
import Network.AWS.Transcribe.Types.VocabularyState
import Network.AWS.Transcribe.Types.ContentRedaction
import Network.AWS.Transcribe.Types.InputDataConfig
import Network.AWS.Transcribe.Types.JobExecutionSettings
import Network.AWS.Transcribe.Types.LanguageModel
import Network.AWS.Transcribe.Types.Media
import Network.AWS.Transcribe.Types.MedicalTranscript
import Network.AWS.Transcribe.Types.MedicalTranscriptionJob
import Network.AWS.Transcribe.Types.MedicalTranscriptionJobSummary
import Network.AWS.Transcribe.Types.MedicalTranscriptionSetting
import Network.AWS.Transcribe.Types.ModelSettings
import Network.AWS.Transcribe.Types.Settings
import Network.AWS.Transcribe.Types.Transcript
import Network.AWS.Transcribe.Types.TranscriptionJob
import Network.AWS.Transcribe.Types.TranscriptionJobSummary
import Network.AWS.Transcribe.Types.VocabularyFilterInfo
import Network.AWS.Transcribe.Types.VocabularyInfo

-- | API version @2017-10-26@ of the Amazon Transcribe Service SDK configuration.
transcribe :: Service
transcribe
  = Service{_svcAbbrev = "Transcribe", _svcSigner = v4,
            _svcPrefix = "transcribe",
            _svcVersion = "2017-10-26",
            _svcEndpoint = defaultEndpoint transcribe,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "Transcribe",
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

-- | There is already a resource with that name.
--
--
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException
  = _MatchServiceError transcribe "ConflictException"

-- | We can't find the requested resource. Check the name and try your request again.
--
--
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException
  = _MatchServiceError transcribe "NotFoundException"

-- | There was an internal error. Check the error message and try your request again.
--
--
_InternalFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalFailureException
  = _MatchServiceError transcribe
      "InternalFailureException"

-- | Your request didn't pass one or more validation tests. For example, if the entity that you're trying to delete doesn't exist or if it is in a non-terminal state (for example, it's "in progress"). See the exception @Message@ field for more information.
--
--
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException
  = _MatchServiceError transcribe "BadRequestException"

-- | Either you have sent too many requests or your input file is too long. Wait before you resend your request, or use a smaller file and resend the request.
--
--
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException
  = _MatchServiceError transcribe
      "LimitExceededException"
