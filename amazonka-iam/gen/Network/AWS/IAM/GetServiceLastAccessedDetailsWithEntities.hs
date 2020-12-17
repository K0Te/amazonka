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
-- Module      : Network.AWS.IAM.GetServiceLastAccessedDetailsWithEntities
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- After you generate a group or policy report using the @GenerateServiceLastAccessedDetails@ operation, you can use the @JobId@ parameter in @GetServiceLastAccessedDetailsWithEntities@ . This operation retrieves the status of your report job and a list of entities that could have used group or policy permissions to access the specified service.
--
--
--     * __Group__ – For a group report, this operation returns a list of users in the group that could have used the group’s policies in an attempt to access the service.
--
--     * __Policy__ – For a policy report, this operation returns a list of entities (users or roles) that could have used the policy in an attempt to access the service.
--
--
--
-- You can also use this operation for user or role reports to retrieve details about those entities.
--
-- If the operation fails, the @GetServiceLastAccessedDetailsWithEntities@ operation returns the reason that it failed.
--
-- By default, the list of associated entities is sorted by date, with the most recent access listed first.
--
module Network.AWS.IAM.GetServiceLastAccessedDetailsWithEntities
    (
    -- * Creating a Request
      getServiceLastAccessedDetailsWithEntities
    , GetServiceLastAccessedDetailsWithEntities
    -- * Request Lenses
    , gsladweMarker
    , gsladweMaxItems
    , gsladweJobId
    , gsladweServiceNamespace

    -- * Destructuring the Response
    , getServiceLastAccessedDetailsWithEntitiesResponse
    , GetServiceLastAccessedDetailsWithEntitiesResponse
    -- * Response Lenses
    , gsladwersError
    , gsladwersMarker
    , gsladwersIsTruncated
    , gsladwersResponseStatus
    , gsladwersJobStatus
    , gsladwersJobCreationDate
    , gsladwersJobCompletionDate
    , gsladwersEntityDetailsList
    ) where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getServiceLastAccessedDetailsWithEntities' smart constructor.
data GetServiceLastAccessedDetailsWithEntities = GetServiceLastAccessedDetailsWithEntities'{_gsladweMarker
                                                                                            ::
                                                                                            !(Maybe
                                                                                                Text),
                                                                                            _gsladweMaxItems
                                                                                            ::
                                                                                            !(Maybe
                                                                                                Nat),
                                                                                            _gsladweJobId
                                                                                            ::
                                                                                            !Text,
                                                                                            _gsladweServiceNamespace
                                                                                            ::
                                                                                            !Text}
                                                   deriving (Eq, Read, Show,
                                                             Data, Typeable,
                                                             Generic)

-- | Creates a value of 'GetServiceLastAccessedDetailsWithEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsladweMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'gsladweMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'gsladweJobId' - The ID of the request generated by the @GenerateServiceLastAccessedDetails@ operation.
--
-- * 'gsladweServiceNamespace' - The service namespace for an AWS service. Provide the service namespace to learn when the IAM entity last attempted to access the specified service. To learn the service namespace for a service, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html Actions, Resources, and Condition Keys for AWS Services> in the /IAM User Guide/ . Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, @(service prefix: a4b)@ . For more information about service namespaces, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces> in the /AWS General Reference/ .
getServiceLastAccessedDetailsWithEntities
    :: Text -- ^ 'gsladweJobId'
    -> Text -- ^ 'gsladweServiceNamespace'
    -> GetServiceLastAccessedDetailsWithEntities
getServiceLastAccessedDetailsWithEntities pJobId_
  pServiceNamespace_
  = GetServiceLastAccessedDetailsWithEntities'{_gsladweMarker
                                                 = Nothing,
                                               _gsladweMaxItems = Nothing,
                                               _gsladweJobId = pJobId_,
                                               _gsladweServiceNamespace =
                                                 pServiceNamespace_}

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
gsladweMarker :: Lens' GetServiceLastAccessedDetailsWithEntities (Maybe Text)
gsladweMarker = lens _gsladweMarker (\ s a -> s{_gsladweMarker = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
gsladweMaxItems :: Lens' GetServiceLastAccessedDetailsWithEntities (Maybe Natural)
gsladweMaxItems = lens _gsladweMaxItems (\ s a -> s{_gsladweMaxItems = a}) . mapping _Nat

-- | The ID of the request generated by the @GenerateServiceLastAccessedDetails@ operation.
gsladweJobId :: Lens' GetServiceLastAccessedDetailsWithEntities Text
gsladweJobId = lens _gsladweJobId (\ s a -> s{_gsladweJobId = a})

-- | The service namespace for an AWS service. Provide the service namespace to learn when the IAM entity last attempted to access the specified service. To learn the service namespace for a service, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html Actions, Resources, and Condition Keys for AWS Services> in the /IAM User Guide/ . Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, @(service prefix: a4b)@ . For more information about service namespaces, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces> in the /AWS General Reference/ .
gsladweServiceNamespace :: Lens' GetServiceLastAccessedDetailsWithEntities Text
gsladweServiceNamespace = lens _gsladweServiceNamespace (\ s a -> s{_gsladweServiceNamespace = a})

instance AWSRequest
           GetServiceLastAccessedDetailsWithEntities
         where
        type Rs GetServiceLastAccessedDetailsWithEntities =
             GetServiceLastAccessedDetailsWithEntitiesResponse
        request = postQuery iam
        response
          = receiveXMLWrapper
              "GetServiceLastAccessedDetailsWithEntitiesResult"
              (\ s h x ->
                 GetServiceLastAccessedDetailsWithEntitiesResponse'
                   <$>
                   (x .@? "Error") <*> (x .@? "Marker") <*>
                     (x .@? "IsTruncated")
                     <*> (pure (fromEnum s))
                     <*> (x .@ "JobStatus")
                     <*> (x .@ "JobCreationDate")
                     <*> (x .@ "JobCompletionDate")
                     <*>
                     (x .@? "EntityDetailsList" .!@ mempty >>=
                        parseXMLList "member"))

instance Hashable
           GetServiceLastAccessedDetailsWithEntities
         where

instance NFData
           GetServiceLastAccessedDetailsWithEntities
         where

instance ToHeaders
           GetServiceLastAccessedDetailsWithEntities
         where
        toHeaders = const mempty

instance ToPath
           GetServiceLastAccessedDetailsWithEntities
         where
        toPath = const "/"

instance ToQuery
           GetServiceLastAccessedDetailsWithEntities
         where
        toQuery
          GetServiceLastAccessedDetailsWithEntities'{..}
          = mconcat
              ["Action" =:
                 ("GetServiceLastAccessedDetailsWithEntities" ::
                    ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "Marker" =: _gsladweMarker,
               "MaxItems" =: _gsladweMaxItems,
               "JobId" =: _gsladweJobId,
               "ServiceNamespace" =: _gsladweServiceNamespace]

-- | /See:/ 'getServiceLastAccessedDetailsWithEntitiesResponse' smart constructor.
data GetServiceLastAccessedDetailsWithEntitiesResponse = GetServiceLastAccessedDetailsWithEntitiesResponse'{_gsladwersError
                                                                                                            ::
                                                                                                            !(Maybe
                                                                                                                ErrorDetails),
                                                                                                            _gsladwersMarker
                                                                                                            ::
                                                                                                            !(Maybe
                                                                                                                Text),
                                                                                                            _gsladwersIsTruncated
                                                                                                            ::
                                                                                                            !(Maybe
                                                                                                                Bool),
                                                                                                            _gsladwersResponseStatus
                                                                                                            ::
                                                                                                            !Int,
                                                                                                            _gsladwersJobStatus
                                                                                                            ::
                                                                                                            !JobStatusType,
                                                                                                            _gsladwersJobCreationDate
                                                                                                            ::
                                                                                                            !ISO8601,
                                                                                                            _gsladwersJobCompletionDate
                                                                                                            ::
                                                                                                            !ISO8601,
                                                                                                            _gsladwersEntityDetailsList
                                                                                                            ::
                                                                                                            ![EntityDetails]}
                                                           deriving (Eq, Read,
                                                                     Show, Data,
                                                                     Typeable,
                                                                     Generic)

-- | Creates a value of 'GetServiceLastAccessedDetailsWithEntitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsladwersError' - An object that contains details about the reason the operation failed.
--
-- * 'gsladwersMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'gsladwersIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'gsladwersResponseStatus' - -- | The response status code.
--
-- * 'gsladwersJobStatus' - The status of the job.
--
-- * 'gsladwersJobCreationDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the report job was created.
--
-- * 'gsladwersJobCompletionDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the generated report job was completed or failed. This field is null if the job is still in progress, as indicated by a job status value of @IN_PROGRESS@ .
--
-- * 'gsladwersEntityDetailsList' - An @EntityDetailsList@ object that contains details about when an IAM entity (user or role) used group or policy permissions in an attempt to access the specified AWS service.
getServiceLastAccessedDetailsWithEntitiesResponse
    :: Int -- ^ 'gsladwersResponseStatus'
    -> JobStatusType -- ^ 'gsladwersJobStatus'
    -> UTCTime -- ^ 'gsladwersJobCreationDate'
    -> UTCTime -- ^ 'gsladwersJobCompletionDate'
    -> GetServiceLastAccessedDetailsWithEntitiesResponse
getServiceLastAccessedDetailsWithEntitiesResponse
  pResponseStatus_ pJobStatus_ pJobCreationDate_
  pJobCompletionDate_
  = GetServiceLastAccessedDetailsWithEntitiesResponse'{_gsladwersError
                                                         = Nothing,
                                                       _gsladwersMarker =
                                                         Nothing,
                                                       _gsladwersIsTruncated =
                                                         Nothing,
                                                       _gsladwersResponseStatus
                                                         = pResponseStatus_,
                                                       _gsladwersJobStatus =
                                                         pJobStatus_,
                                                       _gsladwersJobCreationDate
                                                         =
                                                         _Time #
                                                           pJobCreationDate_,
                                                       _gsladwersJobCompletionDate
                                                         =
                                                         _Time #
                                                           pJobCompletionDate_,
                                                       _gsladwersEntityDetailsList
                                                         = mempty}

-- | An object that contains details about the reason the operation failed.
gsladwersError :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse (Maybe ErrorDetails)
gsladwersError = lens _gsladwersError (\ s a -> s{_gsladwersError = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
gsladwersMarker :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse (Maybe Text)
gsladwersMarker = lens _gsladwersMarker (\ s a -> s{_gsladwersMarker = a})

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
gsladwersIsTruncated :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse (Maybe Bool)
gsladwersIsTruncated = lens _gsladwersIsTruncated (\ s a -> s{_gsladwersIsTruncated = a})

-- | -- | The response status code.
gsladwersResponseStatus :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse Int
gsladwersResponseStatus = lens _gsladwersResponseStatus (\ s a -> s{_gsladwersResponseStatus = a})

-- | The status of the job.
gsladwersJobStatus :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse JobStatusType
gsladwersJobStatus = lens _gsladwersJobStatus (\ s a -> s{_gsladwersJobStatus = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the report job was created.
gsladwersJobCreationDate :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse UTCTime
gsladwersJobCreationDate = lens _gsladwersJobCreationDate (\ s a -> s{_gsladwersJobCreationDate = a}) . _Time

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the generated report job was completed or failed. This field is null if the job is still in progress, as indicated by a job status value of @IN_PROGRESS@ .
gsladwersJobCompletionDate :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse UTCTime
gsladwersJobCompletionDate = lens _gsladwersJobCompletionDate (\ s a -> s{_gsladwersJobCompletionDate = a}) . _Time

-- | An @EntityDetailsList@ object that contains details about when an IAM entity (user or role) used group or policy permissions in an attempt to access the specified AWS service.
gsladwersEntityDetailsList :: Lens' GetServiceLastAccessedDetailsWithEntitiesResponse [EntityDetails]
gsladwersEntityDetailsList = lens _gsladwersEntityDetailsList (\ s a -> s{_gsladwersEntityDetailsList = a}) . _Coerce

instance NFData
           GetServiceLastAccessedDetailsWithEntitiesResponse
         where
