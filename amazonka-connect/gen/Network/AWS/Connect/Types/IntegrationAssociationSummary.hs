{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.IntegrationAssociationSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Connect.Types.IntegrationAssociationSummary where

import Network.AWS.Connect.Types.IntegrationType
import Network.AWS.Connect.Types.SourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains summary information about the associated AppIntegrations.
--
--
--
-- /See:/ 'integrationAssociationSummary' smart constructor.
data IntegrationAssociationSummary = IntegrationAssociationSummary'{_iasInstanceId
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _iasSourceType
                                                                    ::
                                                                    !(Maybe
                                                                        SourceType),
                                                                    _iasSourceApplicationURL
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _iasIntegrationAssociationId
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _iasIntegrationAssociationARN
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _iasSourceApplicationName
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _iasIntegrationARN
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _iasIntegrationType
                                                                    ::
                                                                    !(Maybe
                                                                        IntegrationType)}
                                       deriving (Eq, Read, Show, Data, Typeable,
                                                 Generic)

-- | Creates a value of 'IntegrationAssociationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iasInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'iasSourceType' - The name of the source.
--
-- * 'iasSourceApplicationURL' - The URL for the external application.
--
-- * 'iasIntegrationAssociationId' - The identifier for the AppIntegration association.
--
-- * 'iasIntegrationAssociationARN' - The Amazon Resource Name (ARN) for the AppIntegration association.
--
-- * 'iasSourceApplicationName' - The user-provided, friendly name for the external application.
--
-- * 'iasIntegrationARN' - The Amazon Resource Name (ARN) for the AppIntegration.
--
-- * 'iasIntegrationType' - The integration type.
integrationAssociationSummary
    :: IntegrationAssociationSummary
integrationAssociationSummary
  = IntegrationAssociationSummary'{_iasInstanceId =
                                     Nothing,
                                   _iasSourceType = Nothing,
                                   _iasSourceApplicationURL = Nothing,
                                   _iasIntegrationAssociationId = Nothing,
                                   _iasIntegrationAssociationARN = Nothing,
                                   _iasSourceApplicationName = Nothing,
                                   _iasIntegrationARN = Nothing,
                                   _iasIntegrationType = Nothing}

-- | The identifier of the Amazon Connect instance.
iasInstanceId :: Lens' IntegrationAssociationSummary (Maybe Text)
iasInstanceId = lens _iasInstanceId (\ s a -> s{_iasInstanceId = a})

-- | The name of the source.
iasSourceType :: Lens' IntegrationAssociationSummary (Maybe SourceType)
iasSourceType = lens _iasSourceType (\ s a -> s{_iasSourceType = a})

-- | The URL for the external application.
iasSourceApplicationURL :: Lens' IntegrationAssociationSummary (Maybe Text)
iasSourceApplicationURL = lens _iasSourceApplicationURL (\ s a -> s{_iasSourceApplicationURL = a})

-- | The identifier for the AppIntegration association.
iasIntegrationAssociationId :: Lens' IntegrationAssociationSummary (Maybe Text)
iasIntegrationAssociationId = lens _iasIntegrationAssociationId (\ s a -> s{_iasIntegrationAssociationId = a})

-- | The Amazon Resource Name (ARN) for the AppIntegration association.
iasIntegrationAssociationARN :: Lens' IntegrationAssociationSummary (Maybe Text)
iasIntegrationAssociationARN = lens _iasIntegrationAssociationARN (\ s a -> s{_iasIntegrationAssociationARN = a})

-- | The user-provided, friendly name for the external application.
iasSourceApplicationName :: Lens' IntegrationAssociationSummary (Maybe Text)
iasSourceApplicationName = lens _iasSourceApplicationName (\ s a -> s{_iasSourceApplicationName = a})

-- | The Amazon Resource Name (ARN) for the AppIntegration.
iasIntegrationARN :: Lens' IntegrationAssociationSummary (Maybe Text)
iasIntegrationARN = lens _iasIntegrationARN (\ s a -> s{_iasIntegrationARN = a})

-- | The integration type.
iasIntegrationType :: Lens' IntegrationAssociationSummary (Maybe IntegrationType)
iasIntegrationType = lens _iasIntegrationType (\ s a -> s{_iasIntegrationType = a})

instance FromJSON IntegrationAssociationSummary where
        parseJSON
          = withObject "IntegrationAssociationSummary"
              (\ x ->
                 IntegrationAssociationSummary' <$>
                   (x .:? "InstanceId") <*> (x .:? "SourceType") <*>
                     (x .:? "SourceApplicationUrl")
                     <*> (x .:? "IntegrationAssociationId")
                     <*> (x .:? "IntegrationAssociationArn")
                     <*> (x .:? "SourceApplicationName")
                     <*> (x .:? "IntegrationArn")
                     <*> (x .:? "IntegrationType"))

instance Hashable IntegrationAssociationSummary where

instance NFData IntegrationAssociationSummary where
