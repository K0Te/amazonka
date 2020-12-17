{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.UseCase
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Connect.Types.UseCase where

import Network.AWS.Connect.Types.UseCaseType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the use case.
--
--
--
-- /See:/ 'useCase' smart constructor.
data UseCase = UseCase'{_ucUseCaseType ::
                        !(Maybe UseCaseType),
                        _ucUseCaseARN :: !(Maybe Text),
                        _ucUseCaseId :: !(Maybe Text)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UseCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucUseCaseType' - The type of use case to associate to the AppIntegration association. Each AppIntegration association can have only one of each use case type.
--
-- * 'ucUseCaseARN' - The Amazon Resource Name (ARN) for the use case.
--
-- * 'ucUseCaseId' - The identifier for the use case.
useCase
    :: UseCase
useCase
  = UseCase'{_ucUseCaseType = Nothing,
             _ucUseCaseARN = Nothing, _ucUseCaseId = Nothing}

-- | The type of use case to associate to the AppIntegration association. Each AppIntegration association can have only one of each use case type.
ucUseCaseType :: Lens' UseCase (Maybe UseCaseType)
ucUseCaseType = lens _ucUseCaseType (\ s a -> s{_ucUseCaseType = a})

-- | The Amazon Resource Name (ARN) for the use case.
ucUseCaseARN :: Lens' UseCase (Maybe Text)
ucUseCaseARN = lens _ucUseCaseARN (\ s a -> s{_ucUseCaseARN = a})

-- | The identifier for the use case.
ucUseCaseId :: Lens' UseCase (Maybe Text)
ucUseCaseId = lens _ucUseCaseId (\ s a -> s{_ucUseCaseId = a})

instance FromJSON UseCase where
        parseJSON
          = withObject "UseCase"
              (\ x ->
                 UseCase' <$>
                   (x .:? "UseCaseType") <*> (x .:? "UseCaseArn") <*>
                     (x .:? "UseCaseId"))

instance Hashable UseCase where

instance NFData UseCase where
