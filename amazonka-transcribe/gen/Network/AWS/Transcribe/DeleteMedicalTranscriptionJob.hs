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
-- Module      : Network.AWS.Transcribe.DeleteMedicalTranscriptionJob
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
--
--
module Network.AWS.Transcribe.DeleteMedicalTranscriptionJob
    (
    -- * Creating a Request
      deleteMedicalTranscriptionJob
    , DeleteMedicalTranscriptionJob
    -- * Request Lenses
    , dmtjMedicalTranscriptionJobName

    -- * Destructuring the Response
    , deleteMedicalTranscriptionJobResponse
    , DeleteMedicalTranscriptionJobResponse
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'deleteMedicalTranscriptionJob' smart constructor.
newtype DeleteMedicalTranscriptionJob = DeleteMedicalTranscriptionJob'{_dmtjMedicalTranscriptionJobName
                                                                       :: Text}
                                          deriving (Eq, Read, Show, Data,
                                                    Typeable, Generic)

-- | Creates a value of 'DeleteMedicalTranscriptionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmtjMedicalTranscriptionJobName' - The name you provide to the @DeleteMedicalTranscriptionJob@ object to delete a transcription job.
deleteMedicalTranscriptionJob
    :: Text -- ^ 'dmtjMedicalTranscriptionJobName'
    -> DeleteMedicalTranscriptionJob
deleteMedicalTranscriptionJob
  pMedicalTranscriptionJobName_
  = DeleteMedicalTranscriptionJob'{_dmtjMedicalTranscriptionJobName
                                     = pMedicalTranscriptionJobName_}

-- | The name you provide to the @DeleteMedicalTranscriptionJob@ object to delete a transcription job.
dmtjMedicalTranscriptionJobName :: Lens' DeleteMedicalTranscriptionJob Text
dmtjMedicalTranscriptionJobName = lens _dmtjMedicalTranscriptionJobName (\ s a -> s{_dmtjMedicalTranscriptionJobName = a})

instance AWSRequest DeleteMedicalTranscriptionJob
         where
        type Rs DeleteMedicalTranscriptionJob =
             DeleteMedicalTranscriptionJobResponse
        request = postJSON transcribe
        response
          = receiveNull DeleteMedicalTranscriptionJobResponse'

instance Hashable DeleteMedicalTranscriptionJob where

instance NFData DeleteMedicalTranscriptionJob where

instance ToHeaders DeleteMedicalTranscriptionJob
         where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("Transcribe.DeleteMedicalTranscriptionJob" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteMedicalTranscriptionJob where
        toJSON DeleteMedicalTranscriptionJob'{..}
          = object
              (catMaybes
                 [Just
                    ("MedicalTranscriptionJobName" .=
                       _dmtjMedicalTranscriptionJobName)])

instance ToPath DeleteMedicalTranscriptionJob where
        toPath = const "/"

instance ToQuery DeleteMedicalTranscriptionJob where
        toQuery = const mempty

-- | /See:/ 'deleteMedicalTranscriptionJobResponse' smart constructor.
data DeleteMedicalTranscriptionJobResponse = DeleteMedicalTranscriptionJobResponse'
                                               deriving (Eq, Read, Show, Data,
                                                         Typeable, Generic)

-- | Creates a value of 'DeleteMedicalTranscriptionJobResponse' with the minimum fields required to make a request.
--
deleteMedicalTranscriptionJobResponse
    :: DeleteMedicalTranscriptionJobResponse
deleteMedicalTranscriptionJobResponse
  = DeleteMedicalTranscriptionJobResponse'

instance NFData DeleteMedicalTranscriptionJobResponse
         where
