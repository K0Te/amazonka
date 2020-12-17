{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types.SendMessageBatchRequestEntry
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SQS.Types.SendMessageBatchRequestEntry where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SQS.Types.MessageAttributeValue
import Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
import Network.AWS.SQS.Types.MessageSystemAttributeValue

-- | Contains the details of a single Amazon SQS message along with an @Id@ .
--
--
--
-- /See:/ 'sendMessageBatchRequestEntry' smart constructor.
data SendMessageBatchRequestEntry = SendMessageBatchRequestEntry'{_sMessageAttributes
                                                                  ::
                                                                  !(Maybe
                                                                      (Map Text
                                                                         MessageAttributeValue)),
                                                                  _sDelaySeconds
                                                                  ::
                                                                  !(Maybe Int),
                                                                  _sMessageSystemAttributes
                                                                  ::
                                                                  !(Maybe
                                                                      (Map
                                                                         MessageSystemAttributeNameForSends
                                                                         MessageSystemAttributeValue)),
                                                                  _sMessageDeduplicationId
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _sMessageGroupId
                                                                  ::
                                                                  !(Maybe Text),
                                                                  _sId :: !Text,
                                                                  _sMessageBody
                                                                  :: !Text}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'SendMessageBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sMessageAttributes' - Each message attribute consists of a @Name@ , @Type@ , and @Value@ . For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes Amazon SQS Message Attributes> in the /Amazon Simple Queue Service Developer Guide/ .
--
-- * 'sDelaySeconds' - The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive @DelaySeconds@ value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. 
--
-- * 'sMessageSystemAttributes' - The message system attribute to send Each message system attribute consists of a @Name@ , @Type@ , and @Value@ . /Important:/     * Currently, the only supported message system attribute is @AWSTraceHeader@ . Its type must be @String@ and its value must be a correctly formatted AWS X-Ray trace header string.     * The size of a message system attribute doesn't count towards the total size of a message.
--
-- * 'sMessageDeduplicationId' - This parameter applies only to FIFO (first-in-first-out) queues. The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular @MessageDeduplicationId@ is sent successfully, subsequent messages with the same @MessageDeduplicationId@ are accepted successfully but aren't delivered. For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing Exactly-Once Processing> in the /Amazon Simple Queue Service Developer Guide/ .     * Every message must have a unique @MessageDeduplicationId@ ,     * You may provide a @MessageDeduplicationId@ explicitly.     * If you aren't able to provide a @MessageDeduplicationId@ and you enable @ContentBasedDeduplication@ for your queue, Amazon SQS uses a SHA-256 hash to generate the @MessageDeduplicationId@ using the body of the message (but not the attributes of the message).      * If you don't provide a @MessageDeduplicationId@ and the queue doesn't have @ContentBasedDeduplication@ set, the action fails with an error.     * If the queue has @ContentBasedDeduplication@ set, your @MessageDeduplicationId@ overrides the generated one.     * When @ContentBasedDeduplication@ is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.     * If you send one message with @ContentBasedDeduplication@ enabled and then another message with a @MessageDeduplicationId@ that is the same as the one generated for the first @MessageDeduplicationId@ , the two messages are treated as duplicates and only one copy of the message is delivered.  The length of @MessageDeduplicationId@ is 128 characters. @MessageDeduplicationId@ can contain alphanumeric characters (@a-z@ , @A-Z@ , @0-9@ ) and punctuation (@!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~@ ). For best practices of using @MessageDeduplicationId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html Using the MessageDeduplicationId Property> in the /Amazon Simple Queue Service Developer Guide/ .
--
-- * 'sMessageGroupId' - This parameter applies only to FIFO (first-in-first-out) queues. The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use @MessageGroupId@ values (for example, session data for multiple users). In this scenario, multiple consumers can process the queue, but the session data of each user is processed in a FIFO fashion.     * You must associate a non-empty @MessageGroupId@ with a message. If you don't provide a @MessageGroupId@ , the action fails.     * @ReceiveMessage@ might return messages with multiple @MessageGroupId@ values. For each @MessageGroupId@ , the messages are sorted by time sent. The caller can't specify a @MessageGroupId@ . The length of @MessageGroupId@ is 128 characters. Valid values: alphanumeric characters and punctuation @(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)@ . For best practices of using @MessageGroupId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html Using the MessageGroupId Property> in the /Amazon Simple Queue Service Developer Guide/ . /Important:/ @MessageGroupId@ is required for FIFO queues. You can't use it for Standard queues.
--
-- * 'sId' - An identifier for a message in this batch used to communicate the result.
--
-- * 'sMessageBody' - The body of the message.
sendMessageBatchRequestEntry
    :: Text -- ^ 'sId'
    -> Text -- ^ 'sMessageBody'
    -> SendMessageBatchRequestEntry
sendMessageBatchRequestEntry pId_ pMessageBody_
  = SendMessageBatchRequestEntry'{_sMessageAttributes =
                                    Nothing,
                                  _sDelaySeconds = Nothing,
                                  _sMessageSystemAttributes = Nothing,
                                  _sMessageDeduplicationId = Nothing,
                                  _sMessageGroupId = Nothing, _sId = pId_,
                                  _sMessageBody = pMessageBody_}

-- | Each message attribute consists of a @Name@ , @Type@ , and @Value@ . For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes Amazon SQS Message Attributes> in the /Amazon Simple Queue Service Developer Guide/ .
sMessageAttributes :: Lens' SendMessageBatchRequestEntry (HashMap Text MessageAttributeValue)
sMessageAttributes = lens _sMessageAttributes (\ s a -> s{_sMessageAttributes = a}) . _Default . _Map

-- | The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive @DelaySeconds@ value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. 
sDelaySeconds :: Lens' SendMessageBatchRequestEntry (Maybe Int)
sDelaySeconds = lens _sDelaySeconds (\ s a -> s{_sDelaySeconds = a})

-- | The message system attribute to send Each message system attribute consists of a @Name@ , @Type@ , and @Value@ . /Important:/     * Currently, the only supported message system attribute is @AWSTraceHeader@ . Its type must be @String@ and its value must be a correctly formatted AWS X-Ray trace header string.     * The size of a message system attribute doesn't count towards the total size of a message.
sMessageSystemAttributes :: Lens' SendMessageBatchRequestEntry (HashMap MessageSystemAttributeNameForSends MessageSystemAttributeValue)
sMessageSystemAttributes = lens _sMessageSystemAttributes (\ s a -> s{_sMessageSystemAttributes = a}) . _Default . _Map

-- | This parameter applies only to FIFO (first-in-first-out) queues. The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular @MessageDeduplicationId@ is sent successfully, subsequent messages with the same @MessageDeduplicationId@ are accepted successfully but aren't delivered. For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing Exactly-Once Processing> in the /Amazon Simple Queue Service Developer Guide/ .     * Every message must have a unique @MessageDeduplicationId@ ,     * You may provide a @MessageDeduplicationId@ explicitly.     * If you aren't able to provide a @MessageDeduplicationId@ and you enable @ContentBasedDeduplication@ for your queue, Amazon SQS uses a SHA-256 hash to generate the @MessageDeduplicationId@ using the body of the message (but not the attributes of the message).      * If you don't provide a @MessageDeduplicationId@ and the queue doesn't have @ContentBasedDeduplication@ set, the action fails with an error.     * If the queue has @ContentBasedDeduplication@ set, your @MessageDeduplicationId@ overrides the generated one.     * When @ContentBasedDeduplication@ is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.     * If you send one message with @ContentBasedDeduplication@ enabled and then another message with a @MessageDeduplicationId@ that is the same as the one generated for the first @MessageDeduplicationId@ , the two messages are treated as duplicates and only one copy of the message is delivered.  The length of @MessageDeduplicationId@ is 128 characters. @MessageDeduplicationId@ can contain alphanumeric characters (@a-z@ , @A-Z@ , @0-9@ ) and punctuation (@!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~@ ). For best practices of using @MessageDeduplicationId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html Using the MessageDeduplicationId Property> in the /Amazon Simple Queue Service Developer Guide/ .
sMessageDeduplicationId :: Lens' SendMessageBatchRequestEntry (Maybe Text)
sMessageDeduplicationId = lens _sMessageDeduplicationId (\ s a -> s{_sMessageDeduplicationId = a})

-- | This parameter applies only to FIFO (first-in-first-out) queues. The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use @MessageGroupId@ values (for example, session data for multiple users). In this scenario, multiple consumers can process the queue, but the session data of each user is processed in a FIFO fashion.     * You must associate a non-empty @MessageGroupId@ with a message. If you don't provide a @MessageGroupId@ , the action fails.     * @ReceiveMessage@ might return messages with multiple @MessageGroupId@ values. For each @MessageGroupId@ , the messages are sorted by time sent. The caller can't specify a @MessageGroupId@ . The length of @MessageGroupId@ is 128 characters. Valid values: alphanumeric characters and punctuation @(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)@ . For best practices of using @MessageGroupId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html Using the MessageGroupId Property> in the /Amazon Simple Queue Service Developer Guide/ . /Important:/ @MessageGroupId@ is required for FIFO queues. You can't use it for Standard queues.
sMessageGroupId :: Lens' SendMessageBatchRequestEntry (Maybe Text)
sMessageGroupId = lens _sMessageGroupId (\ s a -> s{_sMessageGroupId = a})

-- | An identifier for a message in this batch used to communicate the result.
sId :: Lens' SendMessageBatchRequestEntry Text
sId = lens _sId (\ s a -> s{_sId = a})

-- | The body of the message.
sMessageBody :: Lens' SendMessageBatchRequestEntry Text
sMessageBody = lens _sMessageBody (\ s a -> s{_sMessageBody = a})

instance Hashable SendMessageBatchRequestEntry where

instance NFData SendMessageBatchRequestEntry where

instance ToQuery SendMessageBatchRequestEntry where
        toQuery SendMessageBatchRequestEntry'{..}
          = mconcat
              [toQuery
                 (toQueryMap "MessageAttribute" "Name" "Value" <$>
                    _sMessageAttributes),
               "DelaySeconds" =: _sDelaySeconds,
               toQuery
                 (toQueryMap "MessageSystemAttribute" "Name" "Value"
                    <$>
                    _sMessageSystemAttributes),
               "MessageDeduplicationId" =: _sMessageDeduplicationId,
               "MessageGroupId" =: _sMessageGroupId, "Id" =: _sId,
               "MessageBody" =: _sMessageBody]
