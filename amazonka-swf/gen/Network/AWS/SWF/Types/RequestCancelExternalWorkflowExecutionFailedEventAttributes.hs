{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause

-- | Provides the details of the @RequestCancelExternalWorkflowExecutionFailed@ event.
--
--
--
-- /See:/ 'requestCancelExternalWorkflowExecutionFailedEventAttributes' smart constructor.
data RequestCancelExternalWorkflowExecutionFailedEventAttributes = RequestCancelExternalWorkflowExecutionFailedEventAttributes'{_rcewefeaControl
                                                                                                                                ::
                                                                                                                                !(Maybe
                                                                                                                                    Text),
                                                                                                                                _rcewefeaRunId
                                                                                                                                ::
                                                                                                                                !(Maybe
                                                                                                                                    Text),
                                                                                                                                _rcewefeaWorkflowId
                                                                                                                                ::
                                                                                                                                !Text,
                                                                                                                                _rcewefeaCause
                                                                                                                                ::
                                                                                                                                !RequestCancelExternalWorkflowExecutionFailedCause,
                                                                                                                                _rcewefeaInitiatedEventId
                                                                                                                                ::
                                                                                                                                !Integer,
                                                                                                                                _rcewefeaDecisionTaskCompletedEventId
                                                                                                                                ::
                                                                                                                                !Integer}
                                                                     deriving (Eq,
                                                                               Read,
                                                                               Show,
                                                                               Data,
                                                                               Typeable,
                                                                               Generic)

-- | Creates a value of 'RequestCancelExternalWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcewefeaControl' - The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.
--
-- * 'rcewefeaRunId' - The @runId@ of the external workflow execution.
--
-- * 'rcewefeaWorkflowId' - The @workflowId@ of the external workflow to which the cancel request was to be delivered.
--
-- * 'rcewefeaCause' - The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- * 'rcewefeaInitiatedEventId' - The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'rcewefeaDecisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelExternalWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
requestCancelExternalWorkflowExecutionFailedEventAttributes
    :: Text -- ^ 'rcewefeaWorkflowId'
    -> RequestCancelExternalWorkflowExecutionFailedCause -- ^ 'rcewefeaCause'
    -> Integer -- ^ 'rcewefeaInitiatedEventId'
    -> Integer -- ^ 'rcewefeaDecisionTaskCompletedEventId'
    -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
requestCancelExternalWorkflowExecutionFailedEventAttributes
  pWorkflowId_ pCause_ pInitiatedEventId_
  pDecisionTaskCompletedEventId_
  = RequestCancelExternalWorkflowExecutionFailedEventAttributes'{_rcewefeaControl
                                                                   = Nothing,
                                                                 _rcewefeaRunId
                                                                   = Nothing,
                                                                 _rcewefeaWorkflowId
                                                                   =
                                                                   pWorkflowId_,
                                                                 _rcewefeaCause
                                                                   = pCause_,
                                                                 _rcewefeaInitiatedEventId
                                                                   =
                                                                   pInitiatedEventId_,
                                                                 _rcewefeaDecisionTaskCompletedEventId
                                                                   =
                                                                   pDecisionTaskCompletedEventId_}

-- | The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.
rcewefeaControl :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Maybe Text)
rcewefeaControl = lens _rcewefeaControl (\ s a -> s{_rcewefeaControl = a})

-- | The @runId@ of the external workflow execution.
rcewefeaRunId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Maybe Text)
rcewefeaRunId = lens _rcewefeaRunId (\ s a -> s{_rcewefeaRunId = a})

-- | The @workflowId@ of the external workflow to which the cancel request was to be delivered.
rcewefeaWorkflowId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Text
rcewefeaWorkflowId = lens _rcewefeaWorkflowId (\ s a -> s{_rcewefeaWorkflowId = a})

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
rcewefeaCause :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes RequestCancelExternalWorkflowExecutionFailedCause
rcewefeaCause = lens _rcewefeaCause (\ s a -> s{_rcewefeaCause = a})

-- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
rcewefeaInitiatedEventId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Integer
rcewefeaInitiatedEventId = lens _rcewefeaInitiatedEventId (\ s a -> s{_rcewefeaInitiatedEventId = a})

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelExternalWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
rcewefeaDecisionTaskCompletedEventId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Integer
rcewefeaDecisionTaskCompletedEventId = lens _rcewefeaDecisionTaskCompletedEventId (\ s a -> s{_rcewefeaDecisionTaskCompletedEventId = a})

instance FromJSON
           RequestCancelExternalWorkflowExecutionFailedEventAttributes
         where
        parseJSON
          = withObject
              "RequestCancelExternalWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 RequestCancelExternalWorkflowExecutionFailedEventAttributes'
                   <$>
                   (x .:? "control") <*> (x .:? "runId") <*>
                     (x .: "workflowId")
                     <*> (x .: "cause")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "decisionTaskCompletedEventId"))

instance Hashable
           RequestCancelExternalWorkflowExecutionFailedEventAttributes
         where

instance NFData
           RequestCancelExternalWorkflowExecutionFailedEventAttributes
         where
