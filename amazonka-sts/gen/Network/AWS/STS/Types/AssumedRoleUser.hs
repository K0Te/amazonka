{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.STS.Types.AssumedRoleUser
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.STS.Types.AssumedRoleUser where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The identifiers for the temporary security credentials that the operation returns.
--
--
--
-- /See:/ 'assumedRoleUser' smart constructor.
data AssumedRoleUser = AssumedRoleUser'{_aruAssumedRoleId
                                        :: !Text,
                                        _aruARN :: !Text}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssumedRoleUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aruAssumedRoleId' - A unique identifier that contains the role ID and the role session name of the role that is being assumed. The role ID is generated by AWS when the role is created.
--
-- * 'aruARN' - The ARN of the temporary security credentials that are returned from the 'AssumeRole' action. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers> in the /IAM User Guide/ .
assumedRoleUser
    :: Text -- ^ 'aruAssumedRoleId'
    -> Text -- ^ 'aruARN'
    -> AssumedRoleUser
assumedRoleUser pAssumedRoleId_ pARN_
  = AssumedRoleUser'{_aruAssumedRoleId =
                       pAssumedRoleId_,
                     _aruARN = pARN_}

-- | A unique identifier that contains the role ID and the role session name of the role that is being assumed. The role ID is generated by AWS when the role is created.
aruAssumedRoleId :: Lens' AssumedRoleUser Text
aruAssumedRoleId = lens _aruAssumedRoleId (\ s a -> s{_aruAssumedRoleId = a})

-- | The ARN of the temporary security credentials that are returned from the 'AssumeRole' action. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers> in the /IAM User Guide/ .
aruARN :: Lens' AssumedRoleUser Text
aruARN = lens _aruARN (\ s a -> s{_aruARN = a})

instance FromXML AssumedRoleUser where
        parseXML x
          = AssumedRoleUser' <$>
              (x .@ "AssumedRoleId") <*> (x .@ "Arn")

instance Hashable AssumedRoleUser where

instance NFData AssumedRoleUser where
