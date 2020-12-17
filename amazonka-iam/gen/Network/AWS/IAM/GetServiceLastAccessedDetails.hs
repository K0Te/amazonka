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
-- Module      : Network.AWS.IAM.GetServiceLastAccessedDetails
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a service last accessed report that was created using the @GenerateServiceLastAccessedDetails@ operation. You can use the @JobId@ parameter in @GetServiceLastAccessedDetails@ to retrieve the status of your report job. When the report is complete, you can retrieve the generated report. The report includes a list of AWS services that the resource (user, group, role, or managed policy) can access.
--
--
-- For each service that the resource could access using permissions policies, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, the @GetServiceLastAccessedDetails@ operation returns the reason that it failed.
--
-- The @GetServiceLastAccessedDetails@ operation returns a list of services. This list includes the number of entities that have attempted to access the service and the date and time of the last attempt. It also returns the ARN of the following entity, depending on the resource ARN that you used to generate the report:
--
--     * __User__ – Returns the user ARN that you used to generate the report
--
--     * __Group__ – Returns the ARN of the group member (user) that last attempted to access the service
--
--     * __Role__ – Returns the role ARN that you used to generate the report
--
--     * __Policy__ – Returns the ARN of the user or role that last used the policy to attempt to access the service
--
--
--
-- By default, the list is sorted by service namespace.
--
-- If you specified @ACTION_LEVEL@ granularity when you generated the report, this operation returns service and action last accessed data. This includes the most recent access attempt for each tracked action within a service. Otherwise, this operation returns only service data.
--
-- For more information about service and action last accessed data, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html Reducing Permissions Using Service Last Accessed Data> in the /IAM User Guide/ .
--
module Network.AWS.IAM.GetServiceLastAccessedDetails
    (
    -- * Creating a Request
      getServiceLastAccessedDetails
    , GetServiceLastAccessedDetails
    -- * Request Lenses
    , gsladMarker
    , gsladMaxItems
    , gsladJobId

    -- * Destructuring the Response
    , getServiceLastAccessedDetailsResponse
    , GetServiceLastAccessedDetailsResponse
    -- * Response Lenses
    , gsladrsJobType
    , gsladrsError
    , gsladrsMarker
    , gsladrsIsTruncated
    , gsladrsResponseStatus
    , gsladrsJobStatus
    , gsladrsJobCreationDate
    , gsladrsServicesLastAccessed
    , gsladrsJobCompletionDate
    ) where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getServiceLastAccessedDetails' smart constructor.
data GetServiceLastAccessedDetails = GetServiceLastAccessedDetails'{_gsladMarker
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _gsladMaxItems
                                                                    ::
                                                                    !(Maybe
                                                                        Nat),
                                                                    _gsladJobId
                                                                    :: !Text}
                                       deriving (Eq, Read, Show, Data, Typeable,
                                                 Generic)

-- | Creates a value of 'GetServiceLastAccessedDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsladMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'gsladMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'gsladJobId' - The ID of the request generated by the 'GenerateServiceLastAccessedDetails' operation. The @JobId@ returned by @GenerateServiceLastAccessedDetail@ must be used by the same role within a session, or by the same user when used to call @GetServiceLastAccessedDetail@ .
getServiceLastAccessedDetails
    :: Text -- ^ 'gsladJobId'
    -> GetServiceLastAccessedDetails
getServiceLastAccessedDetails pJobId_
  = GetServiceLastAccessedDetails'{_gsladMarker =
                                     Nothing,
                                   _gsladMaxItems = Nothing,
                                   _gsladJobId = pJobId_}

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
gsladMarker :: Lens' GetServiceLastAccessedDetails (Maybe Text)
gsladMarker = lens _gsladMarker (\ s a -> s{_gsladMarker = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
gsladMaxItems :: Lens' GetServiceLastAccessedDetails (Maybe Natural)
gsladMaxItems = lens _gsladMaxItems (\ s a -> s{_gsladMaxItems = a}) . mapping _Nat

-- | The ID of the request generated by the 'GenerateServiceLastAccessedDetails' operation. The @JobId@ returned by @GenerateServiceLastAccessedDetail@ must be used by the same role within a session, or by the same user when used to call @GetServiceLastAccessedDetail@ .
gsladJobId :: Lens' GetServiceLastAccessedDetails Text
gsladJobId = lens _gsladJobId (\ s a -> s{_gsladJobId = a})

instance AWSRequest GetServiceLastAccessedDetails
         where
        type Rs GetServiceLastAccessedDetails =
             GetServiceLastAccessedDetailsResponse
        request = postQuery iam
        response
          = receiveXMLWrapper
              "GetServiceLastAccessedDetailsResult"
              (\ s h x ->
                 GetServiceLastAccessedDetailsResponse' <$>
                   (x .@? "JobType") <*> (x .@? "Error") <*>
                     (x .@? "Marker")
                     <*> (x .@? "IsTruncated")
                     <*> (pure (fromEnum s))
                     <*> (x .@ "JobStatus")
                     <*> (x .@ "JobCreationDate")
                     <*>
                     (x .@? "ServicesLastAccessed" .!@ mempty >>=
                        parseXMLList "member")
                     <*> (x .@ "JobCompletionDate"))

instance Hashable GetServiceLastAccessedDetails where

instance NFData GetServiceLastAccessedDetails where

instance ToHeaders GetServiceLastAccessedDetails
         where
        toHeaders = const mempty

instance ToPath GetServiceLastAccessedDetails where
        toPath = const "/"

instance ToQuery GetServiceLastAccessedDetails where
        toQuery GetServiceLastAccessedDetails'{..}
          = mconcat
              ["Action" =:
                 ("GetServiceLastAccessedDetails" :: ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "Marker" =: _gsladMarker,
               "MaxItems" =: _gsladMaxItems, "JobId" =: _gsladJobId]

-- | /See:/ 'getServiceLastAccessedDetailsResponse' smart constructor.
data GetServiceLastAccessedDetailsResponse = GetServiceLastAccessedDetailsResponse'{_gsladrsJobType
                                                                                    ::
                                                                                    !(Maybe
                                                                                        AccessAdvisorUsageGranularityType),
                                                                                    _gsladrsError
                                                                                    ::
                                                                                    !(Maybe
                                                                                        ErrorDetails),
                                                                                    _gsladrsMarker
                                                                                    ::
                                                                                    !(Maybe
                                                                                        Text),
                                                                                    _gsladrsIsTruncated
                                                                                    ::
                                                                                    !(Maybe
                                                                                        Bool),
                                                                                    _gsladrsResponseStatus
                                                                                    ::
                                                                                    !Int,
                                                                                    _gsladrsJobStatus
                                                                                    ::
                                                                                    !JobStatusType,
                                                                                    _gsladrsJobCreationDate
                                                                                    ::
                                                                                    !ISO8601,
                                                                                    _gsladrsServicesLastAccessed
                                                                                    ::
                                                                                    ![ServiceLastAccessed],
                                                                                    _gsladrsJobCompletionDate
                                                                                    ::
                                                                                    !ISO8601}
                                               deriving (Eq, Read, Show, Data,
                                                         Typeable, Generic)

-- | Creates a value of 'GetServiceLastAccessedDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsladrsJobType' - The type of job. Service jobs return information about when each service was last accessed. Action jobs also include information about when tracked actions within the service were last accessed.
--
-- * 'gsladrsError' - An object that contains details about the reason the operation failed.
--
-- * 'gsladrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'gsladrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'gsladrsResponseStatus' - -- | The response status code.
--
-- * 'gsladrsJobStatus' - The status of the job.
--
-- * 'gsladrsJobCreationDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the report job was created.
--
-- * 'gsladrsServicesLastAccessed' - A @ServiceLastAccessed@ object that contains details about the most recent attempt to access the service.
--
-- * 'gsladrsJobCompletionDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the generated report job was completed or failed. This field is null if the job is still in progress, as indicated by a job status value of @IN_PROGRESS@ .
getServiceLastAccessedDetailsResponse
    :: Int -- ^ 'gsladrsResponseStatus'
    -> JobStatusType -- ^ 'gsladrsJobStatus'
    -> UTCTime -- ^ 'gsladrsJobCreationDate'
    -> UTCTime -- ^ 'gsladrsJobCompletionDate'
    -> GetServiceLastAccessedDetailsResponse
getServiceLastAccessedDetailsResponse
  pResponseStatus_ pJobStatus_ pJobCreationDate_
  pJobCompletionDate_
  = GetServiceLastAccessedDetailsResponse'{_gsladrsJobType
                                             = Nothing,
                                           _gsladrsError = Nothing,
                                           _gsladrsMarker = Nothing,
                                           _gsladrsIsTruncated = Nothing,
                                           _gsladrsResponseStatus =
                                             pResponseStatus_,
                                           _gsladrsJobStatus = pJobStatus_,
                                           _gsladrsJobCreationDate =
                                             _Time # pJobCreationDate_,
                                           _gsladrsServicesLastAccessed =
                                             mempty,
                                           _gsladrsJobCompletionDate =
                                             _Time # pJobCompletionDate_}

-- | The type of job. Service jobs return information about when each service was last accessed. Action jobs also include information about when tracked actions within the service were last accessed.
gsladrsJobType :: Lens' GetServiceLastAccessedDetailsResponse (Maybe AccessAdvisorUsageGranularityType)
gsladrsJobType = lens _gsladrsJobType (\ s a -> s{_gsladrsJobType = a})

-- | An object that contains details about the reason the operation failed.
gsladrsError :: Lens' GetServiceLastAccessedDetailsResponse (Maybe ErrorDetails)
gsladrsError = lens _gsladrsError (\ s a -> s{_gsladrsError = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
gsladrsMarker :: Lens' GetServiceLastAccessedDetailsResponse (Maybe Text)
gsladrsMarker = lens _gsladrsMarker (\ s a -> s{_gsladrsMarker = a})

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
gsladrsIsTruncated :: Lens' GetServiceLastAccessedDetailsResponse (Maybe Bool)
gsladrsIsTruncated = lens _gsladrsIsTruncated (\ s a -> s{_gsladrsIsTruncated = a})

-- | -- | The response status code.
gsladrsResponseStatus :: Lens' GetServiceLastAccessedDetailsResponse Int
gsladrsResponseStatus = lens _gsladrsResponseStatus (\ s a -> s{_gsladrsResponseStatus = a})

-- | The status of the job.
gsladrsJobStatus :: Lens' GetServiceLastAccessedDetailsResponse JobStatusType
gsladrsJobStatus = lens _gsladrsJobStatus (\ s a -> s{_gsladrsJobStatus = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the report job was created.
gsladrsJobCreationDate :: Lens' GetServiceLastAccessedDetailsResponse UTCTime
gsladrsJobCreationDate = lens _gsladrsJobCreationDate (\ s a -> s{_gsladrsJobCreationDate = a}) . _Time

-- | A @ServiceLastAccessed@ object that contains details about the most recent attempt to access the service.
gsladrsServicesLastAccessed :: Lens' GetServiceLastAccessedDetailsResponse [ServiceLastAccessed]
gsladrsServicesLastAccessed = lens _gsladrsServicesLastAccessed (\ s a -> s{_gsladrsServicesLastAccessed = a}) . _Coerce

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the generated report job was completed or failed. This field is null if the job is still in progress, as indicated by a job status value of @IN_PROGRESS@ .
gsladrsJobCompletionDate :: Lens' GetServiceLastAccessedDetailsResponse UTCTime
gsladrsJobCompletionDate = lens _gsladrsJobCompletionDate (\ s a -> s{_gsladrsJobCompletionDate = a}) . _Time

instance NFData GetServiceLastAccessedDetailsResponse
         where
