{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.ImageConfigResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.ImageConfigResponse where

import Network.AWS.Lambda.Types.ImageConfig
import Network.AWS.Lambda.Types.ImageConfigError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Response to GetFunctionConfiguration request.
--
--
--
-- /See:/ 'imageConfigResponse' smart constructor.
data ImageConfigResponse = ImageConfigResponse'{_icImageConfig
                                                :: !(Maybe ImageConfig),
                                                _icError ::
                                                !(Maybe ImageConfigError)}
                             deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icImageConfig' - Configuration values that override the container image Dockerfile.
--
-- * 'icError' - Error response to GetFunctionConfiguration.
imageConfigResponse
    :: ImageConfigResponse
imageConfigResponse
  = ImageConfigResponse'{_icImageConfig = Nothing,
                         _icError = Nothing}

-- | Configuration values that override the container image Dockerfile.
icImageConfig :: Lens' ImageConfigResponse (Maybe ImageConfig)
icImageConfig = lens _icImageConfig (\ s a -> s{_icImageConfig = a})

-- | Error response to GetFunctionConfiguration.
icError :: Lens' ImageConfigResponse (Maybe ImageConfigError)
icError = lens _icError (\ s a -> s{_icError = a})

instance FromJSON ImageConfigResponse where
        parseJSON
          = withObject "ImageConfigResponse"
              (\ x ->
                 ImageConfigResponse' <$>
                   (x .:? "ImageConfig") <*> (x .:? "Error"))

instance Hashable ImageConfigResponse where

instance NFData ImageConfigResponse where
