{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReplicationTaskAssessmentRun
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.ReplicationTaskAssessmentRun where

import Network.AWS.DMS.Types.ReplicationTaskAssessmentRunProgress
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that describes a premigration assessment run that you have started using the @StartReplicationTaskAssessmentRun@ operation.
--
--
-- Some of the information appears based on other operations that can return the @ReplicationTaskAssessmentRun@ object.
--
--
-- /See:/ 'replicationTaskAssessmentRun' smart constructor.
data ReplicationTaskAssessmentRun = ReplicationTaskAssessmentRun'{_rtarStatus
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarServiceAccessRoleARN
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarReplicationTaskAssessmentRunCreationDate
                                                                  ::
                                                                  !(Maybe
                                                                      POSIX),
                                                                  _rtarAssessmentProgress
                                                                  ::
                                                                  !(Maybe
                                                                      ReplicationTaskAssessmentRunProgress),
                                                                  _rtarResultKMSKeyARN
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarReplicationTaskARN
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarResultLocationBucket
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarResultLocationFolder
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarResultEncryptionMode
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarAssessmentRunName
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarReplicationTaskAssessmentRunARN
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _rtarLastFailureMessage
                                                                  ::
                                                                  !(Maybe Text)}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'ReplicationTaskAssessmentRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtarStatus' - Assessment run status.  This status can have one of the following values:     * @"cancelling"@ – The assessment run was canceled by the @CancelReplicationTaskAssessmentRun@ operation.     * @"deleting"@ – The assessment run was deleted by the @DeleteReplicationTaskAssessmentRun@ operation.     * @"failed"@ – At least one individual assessment completed with a @failed@ status.     * @"error-provisioning"@ – An internal error occurred while resources were provisioned (during @provisioning@ status).     * @"error-executing"@ – An internal error occurred while individual assessments ran (during @running@ status).     * @"invalid state"@ – The assessment run is in an unknown state.     * @"passed"@ – All individual assessments have completed, and none has a @failed@ status.     * @"provisioning"@ – Resources required to run individual assessments are being provisioned.     * @"running"@ – Individual assessments are being run.     * @"starting"@ – The assessment run is starting, but resources are not yet being provisioned for individual assessments.
--
-- * 'rtarServiceAccessRoleARN' - ARN of the service role used to start the assessment run using the @StartReplicationTaskAssessmentRun@ operation.
--
-- * 'rtarReplicationTaskAssessmentRunCreationDate' - Date on which the assessment run was created using the @StartReplicationTaskAssessmentRun@ operation.
--
-- * 'rtarAssessmentProgress' - Indication of the completion progress for the individual assessments specified to run.
--
-- * 'rtarResultKMSKeyARN' - ARN of the AWS KMS encryption key used to encrypt the assessment run results.
--
-- * 'rtarReplicationTaskARN' - ARN of the migration task associated with this premigration assessment run.
--
-- * 'rtarResultLocationBucket' - Amazon S3 bucket where AWS DMS stores the results of this assessment run.
--
-- * 'rtarResultLocationFolder' - Folder in an Amazon S3 bucket where AWS DMS stores the results of this assessment run.
--
-- * 'rtarResultEncryptionMode' - Encryption mode used to encrypt the assessment run results.
--
-- * 'rtarAssessmentRunName' - Unique name of the assessment run.
--
-- * 'rtarReplicationTaskAssessmentRunARN' - Amazon Resource Name (ARN) of this assessment run.
--
-- * 'rtarLastFailureMessage' - Last message generated by an individual assessment failure.
replicationTaskAssessmentRun
    :: ReplicationTaskAssessmentRun
replicationTaskAssessmentRun
  = ReplicationTaskAssessmentRun'{_rtarStatus =
                                    Nothing,
                                  _rtarServiceAccessRoleARN = Nothing,
                                  _rtarReplicationTaskAssessmentRunCreationDate
                                    = Nothing,
                                  _rtarAssessmentProgress = Nothing,
                                  _rtarResultKMSKeyARN = Nothing,
                                  _rtarReplicationTaskARN = Nothing,
                                  _rtarResultLocationBucket = Nothing,
                                  _rtarResultLocationFolder = Nothing,
                                  _rtarResultEncryptionMode = Nothing,
                                  _rtarAssessmentRunName = Nothing,
                                  _rtarReplicationTaskAssessmentRunARN =
                                    Nothing,
                                  _rtarLastFailureMessage = Nothing}

-- | Assessment run status.  This status can have one of the following values:     * @"cancelling"@ – The assessment run was canceled by the @CancelReplicationTaskAssessmentRun@ operation.     * @"deleting"@ – The assessment run was deleted by the @DeleteReplicationTaskAssessmentRun@ operation.     * @"failed"@ – At least one individual assessment completed with a @failed@ status.     * @"error-provisioning"@ – An internal error occurred while resources were provisioned (during @provisioning@ status).     * @"error-executing"@ – An internal error occurred while individual assessments ran (during @running@ status).     * @"invalid state"@ – The assessment run is in an unknown state.     * @"passed"@ – All individual assessments have completed, and none has a @failed@ status.     * @"provisioning"@ – Resources required to run individual assessments are being provisioned.     * @"running"@ – Individual assessments are being run.     * @"starting"@ – The assessment run is starting, but resources are not yet being provisioned for individual assessments.
rtarStatus :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarStatus = lens _rtarStatus (\ s a -> s{_rtarStatus = a})

-- | ARN of the service role used to start the assessment run using the @StartReplicationTaskAssessmentRun@ operation.
rtarServiceAccessRoleARN :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarServiceAccessRoleARN = lens _rtarServiceAccessRoleARN (\ s a -> s{_rtarServiceAccessRoleARN = a})

-- | Date on which the assessment run was created using the @StartReplicationTaskAssessmentRun@ operation.
rtarReplicationTaskAssessmentRunCreationDate :: Lens' ReplicationTaskAssessmentRun (Maybe UTCTime)
rtarReplicationTaskAssessmentRunCreationDate = lens _rtarReplicationTaskAssessmentRunCreationDate (\ s a -> s{_rtarReplicationTaskAssessmentRunCreationDate = a}) . mapping _Time

-- | Indication of the completion progress for the individual assessments specified to run.
rtarAssessmentProgress :: Lens' ReplicationTaskAssessmentRun (Maybe ReplicationTaskAssessmentRunProgress)
rtarAssessmentProgress = lens _rtarAssessmentProgress (\ s a -> s{_rtarAssessmentProgress = a})

-- | ARN of the AWS KMS encryption key used to encrypt the assessment run results.
rtarResultKMSKeyARN :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarResultKMSKeyARN = lens _rtarResultKMSKeyARN (\ s a -> s{_rtarResultKMSKeyARN = a})

-- | ARN of the migration task associated with this premigration assessment run.
rtarReplicationTaskARN :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarReplicationTaskARN = lens _rtarReplicationTaskARN (\ s a -> s{_rtarReplicationTaskARN = a})

-- | Amazon S3 bucket where AWS DMS stores the results of this assessment run.
rtarResultLocationBucket :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarResultLocationBucket = lens _rtarResultLocationBucket (\ s a -> s{_rtarResultLocationBucket = a})

-- | Folder in an Amazon S3 bucket where AWS DMS stores the results of this assessment run.
rtarResultLocationFolder :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarResultLocationFolder = lens _rtarResultLocationFolder (\ s a -> s{_rtarResultLocationFolder = a})

-- | Encryption mode used to encrypt the assessment run results.
rtarResultEncryptionMode :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarResultEncryptionMode = lens _rtarResultEncryptionMode (\ s a -> s{_rtarResultEncryptionMode = a})

-- | Unique name of the assessment run.
rtarAssessmentRunName :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarAssessmentRunName = lens _rtarAssessmentRunName (\ s a -> s{_rtarAssessmentRunName = a})

-- | Amazon Resource Name (ARN) of this assessment run.
rtarReplicationTaskAssessmentRunARN :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarReplicationTaskAssessmentRunARN = lens _rtarReplicationTaskAssessmentRunARN (\ s a -> s{_rtarReplicationTaskAssessmentRunARN = a})

-- | Last message generated by an individual assessment failure.
rtarLastFailureMessage :: Lens' ReplicationTaskAssessmentRun (Maybe Text)
rtarLastFailureMessage = lens _rtarLastFailureMessage (\ s a -> s{_rtarLastFailureMessage = a})

instance FromJSON ReplicationTaskAssessmentRun where
        parseJSON
          = withObject "ReplicationTaskAssessmentRun"
              (\ x ->
                 ReplicationTaskAssessmentRun' <$>
                   (x .:? "Status") <*> (x .:? "ServiceAccessRoleArn")
                     <*>
                     (x .:? "ReplicationTaskAssessmentRunCreationDate")
                     <*> (x .:? "AssessmentProgress")
                     <*> (x .:? "ResultKmsKeyArn")
                     <*> (x .:? "ReplicationTaskArn")
                     <*> (x .:? "ResultLocationBucket")
                     <*> (x .:? "ResultLocationFolder")
                     <*> (x .:? "ResultEncryptionMode")
                     <*> (x .:? "AssessmentRunName")
                     <*> (x .:? "ReplicationTaskAssessmentRunArn")
                     <*> (x .:? "LastFailureMessage"))

instance Hashable ReplicationTaskAssessmentRun where

instance NFData ReplicationTaskAssessmentRun where
