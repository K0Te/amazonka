{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.Alarm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AutoScaling.Types.Alarm where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an alarm.
--
--
--
-- /See:/ 'alarm' smart constructor.
data Alarm = Alarm'{_aAlarmName :: !(Maybe Text),
                    _aAlarmARN :: !(Maybe Text)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Alarm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAlarmName' - The name of the alarm.
--
-- * 'aAlarmARN' - The Amazon Resource Name (ARN) of the alarm.
alarm
    :: Alarm
alarm
  = Alarm'{_aAlarmName = Nothing, _aAlarmARN = Nothing}

-- | The name of the alarm.
aAlarmName :: Lens' Alarm (Maybe Text)
aAlarmName = lens _aAlarmName (\ s a -> s{_aAlarmName = a})

-- | The Amazon Resource Name (ARN) of the alarm.
aAlarmARN :: Lens' Alarm (Maybe Text)
aAlarmARN = lens _aAlarmARN (\ s a -> s{_aAlarmARN = a})

instance FromXML Alarm where
        parseXML x
          = Alarm' <$>
              (x .@? "AlarmName") <*> (x .@? "AlarmARN")

instance Hashable Alarm where

instance NFData Alarm where
