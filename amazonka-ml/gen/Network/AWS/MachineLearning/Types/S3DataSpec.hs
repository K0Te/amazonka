{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.S3DataSpec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MachineLearning.Types.S3DataSpec where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the data specification of a @DataSource@ .
--
--
--
-- /See:/ 's3DataSpec' smart constructor.
data S3DataSpec = S3DataSpec'{_sdsDataSchema ::
                              !(Maybe Text),
                              _sdsDataSchemaLocationS3 :: !(Maybe Text),
                              _sdsDataRearrangement :: !(Maybe Text),
                              _sdsDataLocationS3 :: !Text}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3DataSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdsDataSchema' - A JSON string that represents the schema for an Amazon S3 @DataSource@ . The @DataSchema@ defines the structure of the observation data in the data file(s) referenced in the @DataSource@ . You must provide either the @DataSchema@ or the @DataSchemaLocationS3@ . Define your @DataSchema@ as a series of key-value pairs. @attributes@ and @excludedVariableNames@ have an array of key-value pairs for their value. Use the following format to define your @DataSchema@ . { "version": "1.0", "recordAnnotationFieldName": "F1", "recordWeightFieldName": "F2", "targetFieldName": "F3", "dataFormat": "CSV", "dataFileContainsHeader": true, "attributes": [ { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ], "excludedVariableNames": [ "F6" ] } 
--
-- * 'sdsDataSchemaLocationS3' - Describes the schema location in Amazon S3. You must provide either the @DataSchema@ or the @DataSchemaLocationS3@ .
--
-- * 'sdsDataRearrangement' - A JSON string that represents the splitting and rearrangement processing to be applied to a @DataSource@ . If the @DataRearrangement@ parameter is not provided, all of the input data is used to create the @Datasource@ . There are multiple parameters that control what data is used to create a datasource:     * __@percentBegin@ __  Use @percentBegin@ to indicate the beginning of the range of the data used to create the Datasource. If you do not include @percentBegin@ and @percentEnd@ , Amazon ML includes all of the data when creating the datasource.     * __@percentEnd@ __  Use @percentEnd@ to indicate the end of the range of the data used to create the Datasource. If you do not include @percentBegin@ and @percentEnd@ , Amazon ML includes all of the data when creating the datasource.     * __@complement@ __  The @complement@ parameter instructs Amazon ML to use the data that is not included in the range of @percentBegin@ to @percentEnd@ to create a datasource. The @complement@ parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for @percentBegin@ and @percentEnd@ , along with the @complement@ parameter. For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data. Datasource for evaluation: @{"splitting":{"percentBegin":0, "percentEnd":25}}@  Datasource for training: @{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}@      * __@strategy@ __  To change how Amazon ML splits the data for a datasource, use the @strategy@ parameter. The default value for the @strategy@ parameter is @sequential@ , meaning that Amazon ML takes all of the data records between the @percentBegin@ and @percentEnd@ parameters for the datasource, in the order that the records appear in the input data. The following two @DataRearrangement@ lines are examples of sequentially ordered training and evaluation datasources: Datasource for evaluation: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}@  Datasource for training: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}@  To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the @strategy@ parameter to @random@ and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between @percentBegin@ and @percentEnd@ . Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records. The following two @DataRearrangement@ lines are examples of non-sequentially ordered training and evaluation datasources: Datasource for evaluation: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}@  Datasource for training: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}@ 
--
-- * 'sdsDataLocationS3' - The location of the data file(s) used by a @DataSource@ . The URI specifies a data file or an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.
s3DataSpec
    :: Text -- ^ 'sdsDataLocationS3'
    -> S3DataSpec
s3DataSpec pDataLocationS3_
  = S3DataSpec'{_sdsDataSchema = Nothing,
                _sdsDataSchemaLocationS3 = Nothing,
                _sdsDataRearrangement = Nothing,
                _sdsDataLocationS3 = pDataLocationS3_}

-- | A JSON string that represents the schema for an Amazon S3 @DataSource@ . The @DataSchema@ defines the structure of the observation data in the data file(s) referenced in the @DataSource@ . You must provide either the @DataSchema@ or the @DataSchemaLocationS3@ . Define your @DataSchema@ as a series of key-value pairs. @attributes@ and @excludedVariableNames@ have an array of key-value pairs for their value. Use the following format to define your @DataSchema@ . { "version": "1.0", "recordAnnotationFieldName": "F1", "recordWeightFieldName": "F2", "targetFieldName": "F3", "dataFormat": "CSV", "dataFileContainsHeader": true, "attributes": [ { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ], "excludedVariableNames": [ "F6" ] } 
sdsDataSchema :: Lens' S3DataSpec (Maybe Text)
sdsDataSchema = lens _sdsDataSchema (\ s a -> s{_sdsDataSchema = a})

-- | Describes the schema location in Amazon S3. You must provide either the @DataSchema@ or the @DataSchemaLocationS3@ .
sdsDataSchemaLocationS3 :: Lens' S3DataSpec (Maybe Text)
sdsDataSchemaLocationS3 = lens _sdsDataSchemaLocationS3 (\ s a -> s{_sdsDataSchemaLocationS3 = a})

-- | A JSON string that represents the splitting and rearrangement processing to be applied to a @DataSource@ . If the @DataRearrangement@ parameter is not provided, all of the input data is used to create the @Datasource@ . There are multiple parameters that control what data is used to create a datasource:     * __@percentBegin@ __  Use @percentBegin@ to indicate the beginning of the range of the data used to create the Datasource. If you do not include @percentBegin@ and @percentEnd@ , Amazon ML includes all of the data when creating the datasource.     * __@percentEnd@ __  Use @percentEnd@ to indicate the end of the range of the data used to create the Datasource. If you do not include @percentBegin@ and @percentEnd@ , Amazon ML includes all of the data when creating the datasource.     * __@complement@ __  The @complement@ parameter instructs Amazon ML to use the data that is not included in the range of @percentBegin@ to @percentEnd@ to create a datasource. The @complement@ parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for @percentBegin@ and @percentEnd@ , along with the @complement@ parameter. For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data. Datasource for evaluation: @{"splitting":{"percentBegin":0, "percentEnd":25}}@  Datasource for training: @{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}@      * __@strategy@ __  To change how Amazon ML splits the data for a datasource, use the @strategy@ parameter. The default value for the @strategy@ parameter is @sequential@ , meaning that Amazon ML takes all of the data records between the @percentBegin@ and @percentEnd@ parameters for the datasource, in the order that the records appear in the input data. The following two @DataRearrangement@ lines are examples of sequentially ordered training and evaluation datasources: Datasource for evaluation: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}@  Datasource for training: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}@  To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the @strategy@ parameter to @random@ and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between @percentBegin@ and @percentEnd@ . Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records. The following two @DataRearrangement@ lines are examples of non-sequentially ordered training and evaluation datasources: Datasource for evaluation: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}@  Datasource for training: @{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}@ 
sdsDataRearrangement :: Lens' S3DataSpec (Maybe Text)
sdsDataRearrangement = lens _sdsDataRearrangement (\ s a -> s{_sdsDataRearrangement = a})

-- | The location of the data file(s) used by a @DataSource@ . The URI specifies a data file or an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.
sdsDataLocationS3 :: Lens' S3DataSpec Text
sdsDataLocationS3 = lens _sdsDataLocationS3 (\ s a -> s{_sdsDataLocationS3 = a})

instance Hashable S3DataSpec where

instance NFData S3DataSpec where

instance ToJSON S3DataSpec where
        toJSON S3DataSpec'{..}
          = object
              (catMaybes
                 [("DataSchema" .=) <$> _sdsDataSchema,
                  ("DataSchemaLocationS3" .=) <$>
                    _sdsDataSchemaLocationS3,
                  ("DataRearrangement" .=) <$> _sdsDataRearrangement,
                  Just ("DataLocationS3" .= _sdsDataLocationS3)])
