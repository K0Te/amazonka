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
-- Module      : Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a snapshot of a gateway from a volume recovery point. This operation is only supported in the cached volume gateway type.
--
--
-- A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for cached volume gateway, use 'ListVolumeRecoveryPoints' .
--
-- In the @CreateSnapshotFromVolumeRecoveryPoint@ request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, the gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.
--
module Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
    (
    -- * Creating a Request
      createSnapshotFromVolumeRecoveryPoint
    , CreateSnapshotFromVolumeRecoveryPoint
    -- * Request Lenses
    , csfvrpTags
    , csfvrpVolumeARN
    , csfvrpSnapshotDescription

    -- * Destructuring the Response
    , createSnapshotFromVolumeRecoveryPointResponse
    , CreateSnapshotFromVolumeRecoveryPointResponse
    -- * Response Lenses
    , csfvrprsVolumeRecoveryPointTime
    , csfvrprsVolumeARN
    , csfvrprsSnapshotId
    , csfvrprsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'createSnapshotFromVolumeRecoveryPoint' smart constructor.
data CreateSnapshotFromVolumeRecoveryPoint = CreateSnapshotFromVolumeRecoveryPoint'{_csfvrpTags
                                                                                    ::
                                                                                    !(Maybe
                                                                                        [Tag]),
                                                                                    _csfvrpVolumeARN
                                                                                    ::
                                                                                    !Text,
                                                                                    _csfvrpSnapshotDescription
                                                                                    ::
                                                                                    !Text}
                                               deriving (Eq, Read, Show, Data,
                                                         Typeable, Generic)

-- | Creates a value of 'CreateSnapshotFromVolumeRecoveryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfvrpTags' - A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value pair.
--
-- * 'csfvrpVolumeARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
--
-- * 'csfvrpSnapshotDescription' - Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the __Description__ field, and in the AWS Storage Gateway snapshot __Details__ pane, __Description__ field.
createSnapshotFromVolumeRecoveryPoint
    :: Text -- ^ 'csfvrpVolumeARN'
    -> Text -- ^ 'csfvrpSnapshotDescription'
    -> CreateSnapshotFromVolumeRecoveryPoint
createSnapshotFromVolumeRecoveryPoint pVolumeARN_
  pSnapshotDescription_
  = CreateSnapshotFromVolumeRecoveryPoint'{_csfvrpTags
                                             = Nothing,
                                           _csfvrpVolumeARN = pVolumeARN_,
                                           _csfvrpSnapshotDescription =
                                             pSnapshotDescription_}

-- | A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value pair.
csfvrpTags :: Lens' CreateSnapshotFromVolumeRecoveryPoint [Tag]
csfvrpTags = lens _csfvrpTags (\ s a -> s{_csfvrpTags = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
csfvrpVolumeARN :: Lens' CreateSnapshotFromVolumeRecoveryPoint Text
csfvrpVolumeARN = lens _csfvrpVolumeARN (\ s a -> s{_csfvrpVolumeARN = a})

-- | Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the __Description__ field, and in the AWS Storage Gateway snapshot __Details__ pane, __Description__ field.
csfvrpSnapshotDescription :: Lens' CreateSnapshotFromVolumeRecoveryPoint Text
csfvrpSnapshotDescription = lens _csfvrpSnapshotDescription (\ s a -> s{_csfvrpSnapshotDescription = a})

instance AWSRequest
           CreateSnapshotFromVolumeRecoveryPoint
         where
        type Rs CreateSnapshotFromVolumeRecoveryPoint =
             CreateSnapshotFromVolumeRecoveryPointResponse
        request = postJSON storageGateway
        response
          = receiveJSON
              (\ s h x ->
                 CreateSnapshotFromVolumeRecoveryPointResponse' <$>
                   (x .?> "VolumeRecoveryPointTime") <*>
                     (x .?> "VolumeARN")
                     <*> (x .?> "SnapshotId")
                     <*> (pure (fromEnum s)))

instance Hashable
           CreateSnapshotFromVolumeRecoveryPoint
         where

instance NFData CreateSnapshotFromVolumeRecoveryPoint
         where

instance ToHeaders
           CreateSnapshotFromVolumeRecoveryPoint
         where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StorageGateway_20130630.CreateSnapshotFromVolumeRecoveryPoint"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateSnapshotFromVolumeRecoveryPoint
         where
        toJSON CreateSnapshotFromVolumeRecoveryPoint'{..}
          = object
              (catMaybes
                 [("Tags" .=) <$> _csfvrpTags,
                  Just ("VolumeARN" .= _csfvrpVolumeARN),
                  Just
                    ("SnapshotDescription" .=
                       _csfvrpSnapshotDescription)])

instance ToPath CreateSnapshotFromVolumeRecoveryPoint
         where
        toPath = const "/"

instance ToQuery
           CreateSnapshotFromVolumeRecoveryPoint
         where
        toQuery = const mempty

-- | /See:/ 'createSnapshotFromVolumeRecoveryPointResponse' smart constructor.
data CreateSnapshotFromVolumeRecoveryPointResponse = CreateSnapshotFromVolumeRecoveryPointResponse'{_csfvrprsVolumeRecoveryPointTime
                                                                                                    ::
                                                                                                    !(Maybe
                                                                                                        Text),
                                                                                                    _csfvrprsVolumeARN
                                                                                                    ::
                                                                                                    !(Maybe
                                                                                                        Text),
                                                                                                    _csfvrprsSnapshotId
                                                                                                    ::
                                                                                                    !(Maybe
                                                                                                        Text),
                                                                                                    _csfvrprsResponseStatus
                                                                                                    ::
                                                                                                    !Int}
                                                       deriving (Eq, Read, Show,
                                                                 Data, Typeable,
                                                                 Generic)

-- | Creates a value of 'CreateSnapshotFromVolumeRecoveryPointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfvrprsVolumeRecoveryPointTime' - The time the volume was created from the recovery point.
--
-- * 'csfvrprsVolumeARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
--
-- * 'csfvrprsSnapshotId' - The ID of the snapshot.
--
-- * 'csfvrprsResponseStatus' - -- | The response status code.
createSnapshotFromVolumeRecoveryPointResponse
    :: Int -- ^ 'csfvrprsResponseStatus'
    -> CreateSnapshotFromVolumeRecoveryPointResponse
createSnapshotFromVolumeRecoveryPointResponse
  pResponseStatus_
  = CreateSnapshotFromVolumeRecoveryPointResponse'{_csfvrprsVolumeRecoveryPointTime
                                                     = Nothing,
                                                   _csfvrprsVolumeARN = Nothing,
                                                   _csfvrprsSnapshotId =
                                                     Nothing,
                                                   _csfvrprsResponseStatus =
                                                     pResponseStatus_}

-- | The time the volume was created from the recovery point.
csfvrprsVolumeRecoveryPointTime :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprsVolumeRecoveryPointTime = lens _csfvrprsVolumeRecoveryPointTime (\ s a -> s{_csfvrprsVolumeRecoveryPointTime = a})

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return to retrieve the TargetARN for specified VolumeARN.
csfvrprsVolumeARN :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprsVolumeARN = lens _csfvrprsVolumeARN (\ s a -> s{_csfvrprsVolumeARN = a})

-- | The ID of the snapshot.
csfvrprsSnapshotId :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprsSnapshotId = lens _csfvrprsSnapshotId (\ s a -> s{_csfvrprsSnapshotId = a})

-- | -- | The response status code.
csfvrprsResponseStatus :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse Int
csfvrprsResponseStatus = lens _csfvrprsResponseStatus (\ s a -> s{_csfvrprsResponseStatus = a})

instance NFData
           CreateSnapshotFromVolumeRecoveryPointResponse
         where
