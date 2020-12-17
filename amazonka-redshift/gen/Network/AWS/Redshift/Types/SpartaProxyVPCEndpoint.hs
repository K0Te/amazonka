{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.SpartaProxyVPCEndpoint
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.SpartaProxyVPCEndpoint where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | The connection endpoint for connecting an Amazon Redshift cluster through the proxy.
--
--
--
-- /See:/ 'spartaProxyVPCEndpoint' smart constructor.
newtype SpartaProxyVPCEndpoint = SpartaProxyVPCEndpoint'{_spveVPCEndpointId
                                                         :: Maybe Text}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'SpartaProxyVPCEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spveVPCEndpointId' - The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
spartaProxyVPCEndpoint
    :: SpartaProxyVPCEndpoint
spartaProxyVPCEndpoint
  = SpartaProxyVPCEndpoint'{_spveVPCEndpointId =
                              Nothing}

-- | The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
spveVPCEndpointId :: Lens' SpartaProxyVPCEndpoint (Maybe Text)
spveVPCEndpointId = lens _spveVPCEndpointId (\ s a -> s{_spveVPCEndpointId = a})

instance FromXML SpartaProxyVPCEndpoint where
        parseXML x
          = SpartaProxyVPCEndpoint' <$> (x .@? "VpcEndpointId")

instance Hashable SpartaProxyVPCEndpoint where

instance NFData SpartaProxyVPCEndpoint where
