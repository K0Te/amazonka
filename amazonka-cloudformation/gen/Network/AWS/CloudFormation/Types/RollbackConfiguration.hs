{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.RollbackConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.RollbackConfiguration where

import Network.AWS.CloudFormation.Types.RollbackTrigger
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Structure containing the rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
--
--
-- Rollback triggers enable you to have AWS CloudFormation monitor the state of your application during stack creation and updating, and to roll back that operation if the application breaches the threshold of any of the alarms you've specified. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html Monitor and Roll Back Stack Operations> .
--
--
-- /See:/ 'rollbackConfiguration' smart constructor.
data RollbackConfiguration = RollbackConfiguration'{_rcRollbackTriggers
                                                    ::
                                                    !(Maybe [RollbackTrigger]),
                                                    _rcMonitoringTimeInMinutes
                                                    :: !(Maybe Nat)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'RollbackConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcRollbackTriggers' - The triggers to monitor during stack creation or update actions.  By default, AWS CloudFormation saves the rollback triggers specified for a stack and applies them to any subsequent update operations for the stack, unless you specify otherwise. If you do specify rollback triggers for this parameter, those triggers replace any list of triggers previously specified for the stack. This means:     * To use the rollback triggers previously specified for this stack, if any, don't specify this parameter.     * To specify new or updated rollback triggers, you must specify /all/ the triggers that you want used for this stack, even triggers you've specifed before (for example, when creating the stack or during a previous stack update). Any triggers that you don't include in the updated list of triggers are no longer applied to the stack.     * To remove all currently specified triggers, specify an empty list for this parameter. If a specified trigger is missing, the entire stack operation fails and is rolled back. 
--
-- * 'rcMonitoringTimeInMinutes' - The amount of time, in minutes, during which CloudFormation should monitor all the rollback triggers after the stack creation or update operation deploys all necessary resources. The default is 0 minutes. If you specify a monitoring period but do not specify any rollback triggers, CloudFormation still waits the specified period of time before cleaning up old resources after update operations. You can use this monitoring period to perform any manual stack validation desired, and manually cancel the stack creation or update (using <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html CancelUpdateStack> , for example) as necessary. If you specify 0 for this parameter, CloudFormation still monitors the specified rollback triggers during stack creation and update operations. Then, for update operations, it begins disposing of old resources immediately once the operation completes.
rollbackConfiguration
    :: RollbackConfiguration
rollbackConfiguration
  = RollbackConfiguration'{_rcRollbackTriggers =
                             Nothing,
                           _rcMonitoringTimeInMinutes = Nothing}

-- | The triggers to monitor during stack creation or update actions.  By default, AWS CloudFormation saves the rollback triggers specified for a stack and applies them to any subsequent update operations for the stack, unless you specify otherwise. If you do specify rollback triggers for this parameter, those triggers replace any list of triggers previously specified for the stack. This means:     * To use the rollback triggers previously specified for this stack, if any, don't specify this parameter.     * To specify new or updated rollback triggers, you must specify /all/ the triggers that you want used for this stack, even triggers you've specifed before (for example, when creating the stack or during a previous stack update). Any triggers that you don't include in the updated list of triggers are no longer applied to the stack.     * To remove all currently specified triggers, specify an empty list for this parameter. If a specified trigger is missing, the entire stack operation fails and is rolled back. 
rcRollbackTriggers :: Lens' RollbackConfiguration [RollbackTrigger]
rcRollbackTriggers = lens _rcRollbackTriggers (\ s a -> s{_rcRollbackTriggers = a}) . _Default . _Coerce

-- | The amount of time, in minutes, during which CloudFormation should monitor all the rollback triggers after the stack creation or update operation deploys all necessary resources. The default is 0 minutes. If you specify a monitoring period but do not specify any rollback triggers, CloudFormation still waits the specified period of time before cleaning up old resources after update operations. You can use this monitoring period to perform any manual stack validation desired, and manually cancel the stack creation or update (using <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html CancelUpdateStack> , for example) as necessary. If you specify 0 for this parameter, CloudFormation still monitors the specified rollback triggers during stack creation and update operations. Then, for update operations, it begins disposing of old resources immediately once the operation completes.
rcMonitoringTimeInMinutes :: Lens' RollbackConfiguration (Maybe Natural)
rcMonitoringTimeInMinutes = lens _rcMonitoringTimeInMinutes (\ s a -> s{_rcMonitoringTimeInMinutes = a}) . mapping _Nat

instance FromXML RollbackConfiguration where
        parseXML x
          = RollbackConfiguration' <$>
              (x .@? "RollbackTriggers" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*> (x .@? "MonitoringTimeInMinutes")

instance Hashable RollbackConfiguration where

instance NFData RollbackConfiguration where

instance ToQuery RollbackConfiguration where
        toQuery RollbackConfiguration'{..}
          = mconcat
              ["RollbackTriggers" =:
                 toQuery
                   (toQueryList "member" <$> _rcRollbackTriggers),
               "MonitoringTimeInMinutes" =:
                 _rcMonitoringTimeInMinutes]
