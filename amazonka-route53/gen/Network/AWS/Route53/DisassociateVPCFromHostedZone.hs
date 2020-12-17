{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.DisassociateVPCFromHostedZone
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route 53 private hosted zone. Note the following:
--
--
--     * You can't disassociate the last Amazon VPC from a private hosted zone.
--
--     * You can't convert a private hosted zone into a public hosted zone.
--
--     * You can submit a @DisassociateVPCFromHostedZone@ request using either the account that created the hosted zone or the account that created the Amazon VPC.
--
--     * Some services, such as AWS Cloud Map and Amazon Elastic File System (Amazon EFS) automatically create hosted zones and associate VPCs with the hosted zones. A service can create a hosted zone using your account or using its own account. You can disassociate a VPC from a hosted zone only if the service created the hosted zone using your account.
--
-- When you run <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html DisassociateVPCFromHostedZone> , if the hosted zone has a value for @OwningAccount@ , you can use @DisassociateVPCFromHostedZone@ . If the hosted zone has a value for @OwningService@ , you can't use @DisassociateVPCFromHostedZone@ .
--
--
--
module Network.AWS.Route53.DisassociateVPCFromHostedZone
    (
    -- * Creating a Request
      disassociateVPCFromHostedZone
    , DisassociateVPCFromHostedZone
    -- * Request Lenses
    , dvfhzComment
    , dvfhzHostedZoneId
    , dvfhzVPC

    -- * Destructuring the Response
    , disassociateVPCFromHostedZoneResponse
    , DisassociateVPCFromHostedZoneResponse
    -- * Response Lenses
    , dvfhzrsResponseStatus
    , dvfhzrsChangeInfo
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about the VPC that you want to disassociate from a specified private hosted zone.
--
--
--
-- /See:/ 'disassociateVPCFromHostedZone' smart constructor.
data DisassociateVPCFromHostedZone = DisassociateVPCFromHostedZone'{_dvfhzComment
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _dvfhzHostedZoneId
                                                                    ::
                                                                    !ResourceId,
                                                                    _dvfhzVPC ::
                                                                    !VPC}
                                       deriving (Eq, Read, Show, Data, Typeable,
                                                 Generic)

-- | Creates a value of 'DisassociateVPCFromHostedZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvfhzComment' - /Optional:/ A comment about the disassociation request.
--
-- * 'dvfhzHostedZoneId' - The ID of the private hosted zone that you want to disassociate a VPC from.
--
-- * 'dvfhzVPC' - A complex type that contains information about the VPC that you're disassociating from the specified hosted zone.
disassociateVPCFromHostedZone
    :: ResourceId -- ^ 'dvfhzHostedZoneId'
    -> VPC -- ^ 'dvfhzVPC'
    -> DisassociateVPCFromHostedZone
disassociateVPCFromHostedZone pHostedZoneId_ pVPC_
  = DisassociateVPCFromHostedZone'{_dvfhzComment =
                                     Nothing,
                                   _dvfhzHostedZoneId = pHostedZoneId_,
                                   _dvfhzVPC = pVPC_}

-- | /Optional:/ A comment about the disassociation request.
dvfhzComment :: Lens' DisassociateVPCFromHostedZone (Maybe Text)
dvfhzComment = lens _dvfhzComment (\ s a -> s{_dvfhzComment = a})

-- | The ID of the private hosted zone that you want to disassociate a VPC from.
dvfhzHostedZoneId :: Lens' DisassociateVPCFromHostedZone ResourceId
dvfhzHostedZoneId = lens _dvfhzHostedZoneId (\ s a -> s{_dvfhzHostedZoneId = a})

-- | A complex type that contains information about the VPC that you're disassociating from the specified hosted zone.
dvfhzVPC :: Lens' DisassociateVPCFromHostedZone VPC
dvfhzVPC = lens _dvfhzVPC (\ s a -> s{_dvfhzVPC = a})

instance AWSRequest DisassociateVPCFromHostedZone
         where
        type Rs DisassociateVPCFromHostedZone =
             DisassociateVPCFromHostedZoneResponse
        request = postXML route53
        response
          = receiveXML
              (\ s h x ->
                 DisassociateVPCFromHostedZoneResponse' <$>
                   (pure (fromEnum s)) <*> (x .@ "ChangeInfo"))

instance Hashable DisassociateVPCFromHostedZone where

instance NFData DisassociateVPCFromHostedZone where

instance ToElement DisassociateVPCFromHostedZone
         where
        toElement
          = mkElement
              "{https://route53.amazonaws.com/doc/2013-04-01/}DisassociateVPCFromHostedZoneRequest"

instance ToHeaders DisassociateVPCFromHostedZone
         where
        toHeaders = const mempty

instance ToPath DisassociateVPCFromHostedZone where
        toPath DisassociateVPCFromHostedZone'{..}
          = mconcat
              ["/2013-04-01/hostedzone/", toBS _dvfhzHostedZoneId,
               "/disassociatevpc"]

instance ToQuery DisassociateVPCFromHostedZone where
        toQuery = const mempty

instance ToXML DisassociateVPCFromHostedZone where
        toXML DisassociateVPCFromHostedZone'{..}
          = mconcat
              ["Comment" @= _dvfhzComment, "VPC" @= _dvfhzVPC]

-- | A complex type that contains the response information for the disassociate request.
--
--
--
-- /See:/ 'disassociateVPCFromHostedZoneResponse' smart constructor.
data DisassociateVPCFromHostedZoneResponse = DisassociateVPCFromHostedZoneResponse'{_dvfhzrsResponseStatus
                                                                                    ::
                                                                                    !Int,
                                                                                    _dvfhzrsChangeInfo
                                                                                    ::
                                                                                    !ChangeInfo}
                                               deriving (Eq, Read, Show, Data,
                                                         Typeable, Generic)

-- | Creates a value of 'DisassociateVPCFromHostedZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvfhzrsResponseStatus' - -- | The response status code.
--
-- * 'dvfhzrsChangeInfo' - A complex type that describes the changes made to the specified private hosted zone.
disassociateVPCFromHostedZoneResponse
    :: Int -- ^ 'dvfhzrsResponseStatus'
    -> ChangeInfo -- ^ 'dvfhzrsChangeInfo'
    -> DisassociateVPCFromHostedZoneResponse
disassociateVPCFromHostedZoneResponse
  pResponseStatus_ pChangeInfo_
  = DisassociateVPCFromHostedZoneResponse'{_dvfhzrsResponseStatus
                                             = pResponseStatus_,
                                           _dvfhzrsChangeInfo = pChangeInfo_}

-- | -- | The response status code.
dvfhzrsResponseStatus :: Lens' DisassociateVPCFromHostedZoneResponse Int
dvfhzrsResponseStatus = lens _dvfhzrsResponseStatus (\ s a -> s{_dvfhzrsResponseStatus = a})

-- | A complex type that describes the changes made to the specified private hosted zone.
dvfhzrsChangeInfo :: Lens' DisassociateVPCFromHostedZoneResponse ChangeInfo
dvfhzrsChangeInfo = lens _dvfhzrsChangeInfo (\ s a -> s{_dvfhzrsChangeInfo = a})

instance NFData DisassociateVPCFromHostedZoneResponse
         where
