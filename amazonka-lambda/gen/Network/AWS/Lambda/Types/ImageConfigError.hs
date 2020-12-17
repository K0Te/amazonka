{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.ImageConfigError
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.ImageConfigError where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Error response to GetFunctionConfiguration.
--
--
--
-- /See:/ 'imageConfigError' smart constructor.
data ImageConfigError = ImageConfigError'{_iceErrorCode
                                          :: !(Maybe Text),
                                          _iceMessage ::
                                          !(Maybe (Sensitive Text))}
                          deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageConfigError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iceErrorCode' - Error code.
--
-- * 'iceMessage' - Error message.
imageConfigError
    :: ImageConfigError
imageConfigError
  = ImageConfigError'{_iceErrorCode = Nothing,
                      _iceMessage = Nothing}

-- | Error code.
iceErrorCode :: Lens' ImageConfigError (Maybe Text)
iceErrorCode = lens _iceErrorCode (\ s a -> s{_iceErrorCode = a})

-- | Error message.
iceMessage :: Lens' ImageConfigError (Maybe Text)
iceMessage = lens _iceMessage (\ s a -> s{_iceMessage = a}) . mapping _Sensitive

instance FromJSON ImageConfigError where
        parseJSON
          = withObject "ImageConfigError"
              (\ x ->
                 ImageConfigError' <$>
                   (x .:? "ErrorCode") <*> (x .:? "Message"))

instance Hashable ImageConfigError where

instance NFData ImageConfigError where
