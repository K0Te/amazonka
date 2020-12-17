{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventAccountFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AWSHealth.Types.EventAccountFilter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The values used to filter results from the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html DescribeEventDetailsForOrganization> and <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html DescribeAffectedEntitiesForOrganization> operations.
--
--
--
-- /See:/ 'eventAccountFilter' smart constructor.
data EventAccountFilter = EventAccountFilter'{_eafAwsAccountId
                                              :: !(Maybe Text),
                                              _eafEventARN :: !Text}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventAccountFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eafAwsAccountId' - The 12-digit AWS account numbers that contains the affected entities.
--
-- * 'eafEventARN' - The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@ 
eventAccountFilter
    :: Text -- ^ 'eafEventARN'
    -> EventAccountFilter
eventAccountFilter pEventARN_
  = EventAccountFilter'{_eafAwsAccountId = Nothing,
                        _eafEventARN = pEventARN_}

-- | The 12-digit AWS account numbers that contains the affected entities.
eafAwsAccountId :: Lens' EventAccountFilter (Maybe Text)
eafAwsAccountId = lens _eafAwsAccountId (\ s a -> s{_eafAwsAccountId = a})

-- | The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@ 
eafEventARN :: Lens' EventAccountFilter Text
eafEventARN = lens _eafEventARN (\ s a -> s{_eafEventARN = a})

instance Hashable EventAccountFilter where

instance NFData EventAccountFilter where

instance ToJSON EventAccountFilter where
        toJSON EventAccountFilter'{..}
          = object
              (catMaybes
                 [("awsAccountId" .=) <$> _eafAwsAccountId,
                  Just ("eventArn" .= _eafEventARN)])
