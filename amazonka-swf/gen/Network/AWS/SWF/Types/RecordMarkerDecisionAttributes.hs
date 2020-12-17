{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RecordMarkerDecisionAttributes
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.RecordMarkerDecisionAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of the @RecordMarker@ decision.
--
--
-- __Access Control__ 
--
-- You can use IAM policies to control this decision's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * You cannot use an IAM policy to constrain this action's parameters.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
--
--
-- /See:/ 'recordMarkerDecisionAttributes' smart constructor.
data RecordMarkerDecisionAttributes = RecordMarkerDecisionAttributes'{_rmdaDetails
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _rmdaMarkerName
                                                                      :: !Text}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'RecordMarkerDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmdaDetails' - The details of the marker.
--
-- * 'rmdaMarkerName' - The name of the marker.
recordMarkerDecisionAttributes
    :: Text -- ^ 'rmdaMarkerName'
    -> RecordMarkerDecisionAttributes
recordMarkerDecisionAttributes pMarkerName_
  = RecordMarkerDecisionAttributes'{_rmdaDetails =
                                      Nothing,
                                    _rmdaMarkerName = pMarkerName_}

-- | The details of the marker.
rmdaDetails :: Lens' RecordMarkerDecisionAttributes (Maybe Text)
rmdaDetails = lens _rmdaDetails (\ s a -> s{_rmdaDetails = a})

-- | The name of the marker.
rmdaMarkerName :: Lens' RecordMarkerDecisionAttributes Text
rmdaMarkerName = lens _rmdaMarkerName (\ s a -> s{_rmdaMarkerName = a})

instance Hashable RecordMarkerDecisionAttributes
         where

instance NFData RecordMarkerDecisionAttributes where

instance ToJSON RecordMarkerDecisionAttributes where
        toJSON RecordMarkerDecisionAttributes'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _rmdaDetails,
                  Just ("markerName" .= _rmdaMarkerName)])
