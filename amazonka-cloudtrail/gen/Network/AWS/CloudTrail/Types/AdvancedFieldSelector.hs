{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.AdvancedFieldSelector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudTrail.Types.AdvancedFieldSelector where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A single selector statement in an advanced event selector.
--
--
--
-- /See:/ 'advancedFieldSelector' smart constructor.
data AdvancedFieldSelector = AdvancedFieldSelector'{_afsEndsWith
                                                    :: !(Maybe (List1 Text)),
                                                    _afsNotStartsWith ::
                                                    !(Maybe (List1 Text)),
                                                    _afsEquals ::
                                                    !(Maybe (List1 Text)),
                                                    _afsNotEquals ::
                                                    !(Maybe (List1 Text)),
                                                    _afsNotEndsWith ::
                                                    !(Maybe (List1 Text)),
                                                    _afsStartsWith ::
                                                    !(Maybe (List1 Text)),
                                                    _afsField :: !Text}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'AdvancedFieldSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afsEndsWith' - An operator that includes events that match the last few characters of the event record field specified as the value of @Field@ . 
--
-- * 'afsNotStartsWith' - An operator that excludes events that match the first few characters of the event record field specified as the value of @Field@ . 
--
-- * 'afsEquals' - An operator that includes events that match the exact value of the event record field specified as the value of @Field@ . This is the only valid operator that you can use with the @readOnly@ , @eventCategory@ , and @resources.type@ fields. 
--
-- * 'afsNotEquals' - An operator that excludes events that match the exact value of the event record field specified as the value of @Field@ . 
--
-- * 'afsNotEndsWith' - An operator that excludes events that match the last few characters of the event record field specified as the value of @Field@ . 
--
-- * 'afsStartsWith' - An operator that includes events that match the first few characters of the event record field specified as the value of @Field@ . 
--
-- * 'afsField' - A field in an event record on which to filter events to be logged. Supported fields include @readOnly@ , @eventCategory@ , @eventSource@ (for management events), @eventName@ , @resources.type@ , and @resources.ARN@ .      * __@readOnly@ __ - Optional. Can be set to @Equals@ a value of @true@ or @false@ . A value of @false@ logs both @read@ and @write@ events.     * __@eventSource@ __ - For filtering management events only. This can be set only to @NotEquals@ @kms.amazonaws.com@ .     * __@eventName@ __ - Can use any operator. You can use it to ﬁlter in or ﬁlter out any data event logged to CloudTrail, such as @PutBucket@ . You can have multiple values for this ﬁeld, separated by commas.     * __@eventCategory@ __ - This is required. It must be set to @Equals@ , and the value must be @Management@ or @Data@ .     * __@resources.type@ __ - This ﬁeld is required. @resources.type@ can only use the @Equals@ operator, and the value can be one of the following: @AWS::S3::Object@ or @AWS::Lambda::Function@ . You can have only one @resources.type@ ﬁeld per selector. To log data events on more than one resource type, add another selector.     * __@resources.ARN@ __ - You can use any operator with resources.ARN, but if you use @Equals@ or @NotEquals@ , the value must exactly match the ARN of a valid resource of the type you've speciﬁed in the template as the value of resources.type. For example, if resources.type equals @AWS::S3::Object@ , the ARN must be in one of the following formats. The trailing slash is intentional; do not exclude it.     * @arn:partition:s3:::bucket_name/@      * @arn:partition:s3:::bucket_name/object_or_file_name/@  When resources.type equals @AWS::Lambda::Function@ , and the operator is set to @Equals@ or @NotEquals@ , the ARN must be in the following format:     * @arn:partition:lambda:region:account_ID:function:function_name@ 
advancedFieldSelector
    :: Text -- ^ 'afsField'
    -> AdvancedFieldSelector
advancedFieldSelector pField_
  = AdvancedFieldSelector'{_afsEndsWith = Nothing,
                           _afsNotStartsWith = Nothing, _afsEquals = Nothing,
                           _afsNotEquals = Nothing, _afsNotEndsWith = Nothing,
                           _afsStartsWith = Nothing, _afsField = pField_}

-- | An operator that includes events that match the last few characters of the event record field specified as the value of @Field@ . 
afsEndsWith :: Lens' AdvancedFieldSelector (Maybe (NonEmpty Text))
afsEndsWith = lens _afsEndsWith (\ s a -> s{_afsEndsWith = a}) . mapping _List1

-- | An operator that excludes events that match the first few characters of the event record field specified as the value of @Field@ . 
afsNotStartsWith :: Lens' AdvancedFieldSelector (Maybe (NonEmpty Text))
afsNotStartsWith = lens _afsNotStartsWith (\ s a -> s{_afsNotStartsWith = a}) . mapping _List1

-- | An operator that includes events that match the exact value of the event record field specified as the value of @Field@ . This is the only valid operator that you can use with the @readOnly@ , @eventCategory@ , and @resources.type@ fields. 
afsEquals :: Lens' AdvancedFieldSelector (Maybe (NonEmpty Text))
afsEquals = lens _afsEquals (\ s a -> s{_afsEquals = a}) . mapping _List1

-- | An operator that excludes events that match the exact value of the event record field specified as the value of @Field@ . 
afsNotEquals :: Lens' AdvancedFieldSelector (Maybe (NonEmpty Text))
afsNotEquals = lens _afsNotEquals (\ s a -> s{_afsNotEquals = a}) . mapping _List1

-- | An operator that excludes events that match the last few characters of the event record field specified as the value of @Field@ . 
afsNotEndsWith :: Lens' AdvancedFieldSelector (Maybe (NonEmpty Text))
afsNotEndsWith = lens _afsNotEndsWith (\ s a -> s{_afsNotEndsWith = a}) . mapping _List1

-- | An operator that includes events that match the first few characters of the event record field specified as the value of @Field@ . 
afsStartsWith :: Lens' AdvancedFieldSelector (Maybe (NonEmpty Text))
afsStartsWith = lens _afsStartsWith (\ s a -> s{_afsStartsWith = a}) . mapping _List1

-- | A field in an event record on which to filter events to be logged. Supported fields include @readOnly@ , @eventCategory@ , @eventSource@ (for management events), @eventName@ , @resources.type@ , and @resources.ARN@ .      * __@readOnly@ __ - Optional. Can be set to @Equals@ a value of @true@ or @false@ . A value of @false@ logs both @read@ and @write@ events.     * __@eventSource@ __ - For filtering management events only. This can be set only to @NotEquals@ @kms.amazonaws.com@ .     * __@eventName@ __ - Can use any operator. You can use it to ﬁlter in or ﬁlter out any data event logged to CloudTrail, such as @PutBucket@ . You can have multiple values for this ﬁeld, separated by commas.     * __@eventCategory@ __ - This is required. It must be set to @Equals@ , and the value must be @Management@ or @Data@ .     * __@resources.type@ __ - This ﬁeld is required. @resources.type@ can only use the @Equals@ operator, and the value can be one of the following: @AWS::S3::Object@ or @AWS::Lambda::Function@ . You can have only one @resources.type@ ﬁeld per selector. To log data events on more than one resource type, add another selector.     * __@resources.ARN@ __ - You can use any operator with resources.ARN, but if you use @Equals@ or @NotEquals@ , the value must exactly match the ARN of a valid resource of the type you've speciﬁed in the template as the value of resources.type. For example, if resources.type equals @AWS::S3::Object@ , the ARN must be in one of the following formats. The trailing slash is intentional; do not exclude it.     * @arn:partition:s3:::bucket_name/@      * @arn:partition:s3:::bucket_name/object_or_file_name/@  When resources.type equals @AWS::Lambda::Function@ , and the operator is set to @Equals@ or @NotEquals@ , the ARN must be in the following format:     * @arn:partition:lambda:region:account_ID:function:function_name@ 
afsField :: Lens' AdvancedFieldSelector Text
afsField = lens _afsField (\ s a -> s{_afsField = a})

instance FromJSON AdvancedFieldSelector where
        parseJSON
          = withObject "AdvancedFieldSelector"
              (\ x ->
                 AdvancedFieldSelector' <$>
                   (x .:? "EndsWith") <*> (x .:? "NotStartsWith") <*>
                     (x .:? "Equals")
                     <*> (x .:? "NotEquals")
                     <*> (x .:? "NotEndsWith")
                     <*> (x .:? "StartsWith")
                     <*> (x .: "Field"))

instance Hashable AdvancedFieldSelector where

instance NFData AdvancedFieldSelector where

instance ToJSON AdvancedFieldSelector where
        toJSON AdvancedFieldSelector'{..}
          = object
              (catMaybes
                 [("EndsWith" .=) <$> _afsEndsWith,
                  ("NotStartsWith" .=) <$> _afsNotStartsWith,
                  ("Equals" .=) <$> _afsEquals,
                  ("NotEquals" .=) <$> _afsNotEquals,
                  ("NotEndsWith" .=) <$> _afsNotEndsWith,
                  ("StartsWith" .=) <$> _afsStartsWith,
                  Just ("Field" .= _afsField)])
