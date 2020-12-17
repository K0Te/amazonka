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
-- Module      : Network.AWS.IoTAnalytics.CreateDataset
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a dataset. A dataset stores data retrieved from a data store by applying a @queryAction@ (a SQL query) or a @containerAction@ (executing a containerized application). This operation creates the skeleton of a dataset. The dataset can be populated manually by calling @CreateDatasetContent@ or automatically according to a trigger you specify.
--
--
module Network.AWS.IoTAnalytics.CreateDataset
    (
    -- * Creating a Request
      createDataset
    , CreateDataset
    -- * Request Lenses
    , cVersioningConfiguration
    , cTriggers
    , cRetentionPeriod
    , cLateDataRules
    , cContentDeliveryRules
    , cTags
    , cDatasetName
    , cActions

    -- * Destructuring the Response
    , createDatasetResponse
    , CreateDatasetResponse
    -- * Response Lenses
    , crsDatasetARN
    , crsRetentionPeriod
    , crsDatasetName
    , crsResponseStatus
    ) where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDataset' smart constructor.
data CreateDataset = CreateDataset'{_cVersioningConfiguration
                                    :: !(Maybe VersioningConfiguration),
                                    _cTriggers :: !(Maybe [DatasetTrigger]),
                                    _cRetentionPeriod ::
                                    !(Maybe RetentionPeriod),
                                    _cLateDataRules ::
                                    !(Maybe (List1 LateDataRule)),
                                    _cContentDeliveryRules ::
                                    !(Maybe [DatasetContentDeliveryRule]),
                                    _cTags :: !(Maybe (List1 Tag)),
                                    _cDatasetName :: !Text,
                                    _cActions :: !(List1 DatasetAction)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDataset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cVersioningConfiguration' - Optional. How many versions of dataset contents are kept. If not specified or set to null, only the latest version plus the latest succeeded version (if they are different) are kept for the time period specified by the @retentionPeriod@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
--
-- * 'cTriggers' - A list of triggers. A trigger causes data set contents to be populated at a specified time interval or when another data set's contents are created. The list of triggers can be empty or contain up to five @DataSetTrigger@ objects.
--
-- * 'cRetentionPeriod' - Optional. How long, in days, versions of dataset contents are kept for the dataset. If not specified or set to @null@ , versions of dataset contents are retained for at most 90 days. The number of versions of dataset contents retained is determined by the @versioningConfiguration@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
--
-- * 'cLateDataRules' - A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To specify @lateDataRules@ , the dataset must use a <https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html DeltaTimer> filter.
--
-- * 'cContentDeliveryRules' - When dataset contents are created, they are delivered to destinations specified here.
--
-- * 'cTags' - Metadata which can be used to manage the data set.
--
-- * 'cDatasetName' - The name of the data set.
--
-- * 'cActions' - A list of actions that create the data set contents.
createDataset
    :: Text -- ^ 'cDatasetName'
    -> NonEmpty DatasetAction -- ^ 'cActions'
    -> CreateDataset
createDataset pDatasetName_ pActions_
  = CreateDataset'{_cVersioningConfiguration = Nothing,
                   _cTriggers = Nothing, _cRetentionPeriod = Nothing,
                   _cLateDataRules = Nothing,
                   _cContentDeliveryRules = Nothing, _cTags = Nothing,
                   _cDatasetName = pDatasetName_,
                   _cActions = _List1 # pActions_}

-- | Optional. How many versions of dataset contents are kept. If not specified or set to null, only the latest version plus the latest succeeded version (if they are different) are kept for the time period specified by the @retentionPeriod@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
cVersioningConfiguration :: Lens' CreateDataset (Maybe VersioningConfiguration)
cVersioningConfiguration = lens _cVersioningConfiguration (\ s a -> s{_cVersioningConfiguration = a})

-- | A list of triggers. A trigger causes data set contents to be populated at a specified time interval or when another data set's contents are created. The list of triggers can be empty or contain up to five @DataSetTrigger@ objects.
cTriggers :: Lens' CreateDataset [DatasetTrigger]
cTriggers = lens _cTriggers (\ s a -> s{_cTriggers = a}) . _Default . _Coerce

-- | Optional. How long, in days, versions of dataset contents are kept for the dataset. If not specified or set to @null@ , versions of dataset contents are retained for at most 90 days. The number of versions of dataset contents retained is determined by the @versioningConfiguration@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
cRetentionPeriod :: Lens' CreateDataset (Maybe RetentionPeriod)
cRetentionPeriod = lens _cRetentionPeriod (\ s a -> s{_cRetentionPeriod = a})

-- | A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To specify @lateDataRules@ , the dataset must use a <https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html DeltaTimer> filter.
cLateDataRules :: Lens' CreateDataset (Maybe (NonEmpty LateDataRule))
cLateDataRules = lens _cLateDataRules (\ s a -> s{_cLateDataRules = a}) . mapping _List1

-- | When dataset contents are created, they are delivered to destinations specified here.
cContentDeliveryRules :: Lens' CreateDataset [DatasetContentDeliveryRule]
cContentDeliveryRules = lens _cContentDeliveryRules (\ s a -> s{_cContentDeliveryRules = a}) . _Default . _Coerce

-- | Metadata which can be used to manage the data set.
cTags :: Lens' CreateDataset (Maybe (NonEmpty Tag))
cTags = lens _cTags (\ s a -> s{_cTags = a}) . mapping _List1

-- | The name of the data set.
cDatasetName :: Lens' CreateDataset Text
cDatasetName = lens _cDatasetName (\ s a -> s{_cDatasetName = a})

-- | A list of actions that create the data set contents.
cActions :: Lens' CreateDataset (NonEmpty DatasetAction)
cActions = lens _cActions (\ s a -> s{_cActions = a}) . _List1

instance AWSRequest CreateDataset where
        type Rs CreateDataset = CreateDatasetResponse
        request = postJSON ioTAnalytics
        response
          = receiveJSON
              (\ s h x ->
                 CreateDatasetResponse' <$>
                   (x .?> "datasetArn") <*> (x .?> "retentionPeriod")
                     <*> (x .?> "datasetName")
                     <*> (pure (fromEnum s)))

instance Hashable CreateDataset where

instance NFData CreateDataset where

instance ToHeaders CreateDataset where
        toHeaders = const mempty

instance ToJSON CreateDataset where
        toJSON CreateDataset'{..}
          = object
              (catMaybes
                 [("versioningConfiguration" .=) <$>
                    _cVersioningConfiguration,
                  ("triggers" .=) <$> _cTriggers,
                  ("retentionPeriod" .=) <$> _cRetentionPeriod,
                  ("lateDataRules" .=) <$> _cLateDataRules,
                  ("contentDeliveryRules" .=) <$>
                    _cContentDeliveryRules,
                  ("tags" .=) <$> _cTags,
                  Just ("datasetName" .= _cDatasetName),
                  Just ("actions" .= _cActions)])

instance ToPath CreateDataset where
        toPath = const "/datasets"

instance ToQuery CreateDataset where
        toQuery = const mempty

-- | /See:/ 'createDatasetResponse' smart constructor.
data CreateDatasetResponse = CreateDatasetResponse'{_crsDatasetARN
                                                    :: !(Maybe Text),
                                                    _crsRetentionPeriod ::
                                                    !(Maybe RetentionPeriod),
                                                    _crsDatasetName ::
                                                    !(Maybe Text),
                                                    _crsResponseStatus :: !Int}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'CreateDatasetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsDatasetARN' - The ARN of the dataset.
--
-- * 'crsRetentionPeriod' - How long, in days, dataset contents are kept for the dataset.
--
-- * 'crsDatasetName' - The name of the dataset.
--
-- * 'crsResponseStatus' - -- | The response status code.
createDatasetResponse
    :: Int -- ^ 'crsResponseStatus'
    -> CreateDatasetResponse
createDatasetResponse pResponseStatus_
  = CreateDatasetResponse'{_crsDatasetARN = Nothing,
                           _crsRetentionPeriod = Nothing,
                           _crsDatasetName = Nothing,
                           _crsResponseStatus = pResponseStatus_}

-- | The ARN of the dataset.
crsDatasetARN :: Lens' CreateDatasetResponse (Maybe Text)
crsDatasetARN = lens _crsDatasetARN (\ s a -> s{_crsDatasetARN = a})

-- | How long, in days, dataset contents are kept for the dataset.
crsRetentionPeriod :: Lens' CreateDatasetResponse (Maybe RetentionPeriod)
crsRetentionPeriod = lens _crsRetentionPeriod (\ s a -> s{_crsRetentionPeriod = a})

-- | The name of the dataset.
crsDatasetName :: Lens' CreateDatasetResponse (Maybe Text)
crsDatasetName = lens _crsDatasetName (\ s a -> s{_crsDatasetName = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateDatasetResponse Int
crsResponseStatus = lens _crsResponseStatus (\ s a -> s{_crsResponseStatus = a})

instance NFData CreateDatasetResponse where
