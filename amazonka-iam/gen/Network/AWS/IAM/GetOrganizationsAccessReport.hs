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
-- Module      : Network.AWS.IAM.GetOrganizationsAccessReport
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the service last accessed data report for AWS Organizations that was previously generated using the @'GenerateOrganizationsAccessReport' @ operation. This operation retrieves the status of your report job and the report contents.
--
--
-- Depending on the parameters that you passed when you generated the report, the data returned could include different information. For details, see 'GenerateOrganizationsAccessReport' .
--
-- To call this operation, you must be signed in to the master account in your organization. SCPs must be enabled for your organization root. You must have permissions to perform this operation. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html Refining Permissions Using Service Last Accessed Data> in the /IAM User Guide/ .
--
-- For each service that principals in an account (root users, IAM users, or IAM roles) could access using SCPs, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, it returns the reason that it failed.
--
-- By default, the list is sorted by service namespace.
--
module Network.AWS.IAM.GetOrganizationsAccessReport
    (
    -- * Creating a Request
      getOrganizationsAccessReport
    , GetOrganizationsAccessReport
    -- * Request Lenses
    , goarSortKey
    , goarMarker
    , goarMaxItems
    , goarJobId

    -- * Destructuring the Response
    , getOrganizationsAccessReportResponse
    , GetOrganizationsAccessReportResponse
    -- * Response Lenses
    , getrsNumberOfServicesNotAccessed
    , getrsJobCompletionDate
    , getrsAccessDetails
    , getrsNumberOfServicesAccessible
    , getrsMarker
    , getrsErrorDetails
    , getrsIsTruncated
    , getrsResponseStatus
    , getrsJobStatus
    , getrsJobCreationDate
    ) where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getOrganizationsAccessReport' smart constructor.
data GetOrganizationsAccessReport = GetOrganizationsAccessReport'{_goarSortKey
                                                                  ::
                                                                  !(Maybe
                                                                      SortKeyType),
                                                                  _goarMarker ::
                                                                  !(Maybe Text),
                                                                  _goarMaxItems
                                                                  ::
                                                                  !(Maybe Nat),
                                                                  _goarJobId ::
                                                                  !Text}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'GetOrganizationsAccessReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goarSortKey' - The key that is used to sort the results. If you choose the namespace key, the results are returned in alphabetical order. If you choose the time key, the results are sorted numerically by the date and time.
--
-- * 'goarMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'goarMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'goarJobId' - The identifier of the request generated by the 'GenerateOrganizationsAccessReport' operation.
getOrganizationsAccessReport
    :: Text -- ^ 'goarJobId'
    -> GetOrganizationsAccessReport
getOrganizationsAccessReport pJobId_
  = GetOrganizationsAccessReport'{_goarSortKey =
                                    Nothing,
                                  _goarMarker = Nothing,
                                  _goarMaxItems = Nothing, _goarJobId = pJobId_}

-- | The key that is used to sort the results. If you choose the namespace key, the results are returned in alphabetical order. If you choose the time key, the results are sorted numerically by the date and time.
goarSortKey :: Lens' GetOrganizationsAccessReport (Maybe SortKeyType)
goarSortKey = lens _goarSortKey (\ s a -> s{_goarSortKey = a})

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
goarMarker :: Lens' GetOrganizationsAccessReport (Maybe Text)
goarMarker = lens _goarMarker (\ s a -> s{_goarMarker = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
goarMaxItems :: Lens' GetOrganizationsAccessReport (Maybe Natural)
goarMaxItems = lens _goarMaxItems (\ s a -> s{_goarMaxItems = a}) . mapping _Nat

-- | The identifier of the request generated by the 'GenerateOrganizationsAccessReport' operation.
goarJobId :: Lens' GetOrganizationsAccessReport Text
goarJobId = lens _goarJobId (\ s a -> s{_goarJobId = a})

instance AWSRequest GetOrganizationsAccessReport
         where
        type Rs GetOrganizationsAccessReport =
             GetOrganizationsAccessReportResponse
        request = postQuery iam
        response
          = receiveXMLWrapper
              "GetOrganizationsAccessReportResult"
              (\ s h x ->
                 GetOrganizationsAccessReportResponse' <$>
                   (x .@? "NumberOfServicesNotAccessed") <*>
                     (x .@? "JobCompletionDate")
                     <*>
                     (x .@? "AccessDetails" .!@ mempty >>=
                        may (parseXMLList "member"))
                     <*> (x .@? "NumberOfServicesAccessible")
                     <*> (x .@? "Marker")
                     <*> (x .@? "ErrorDetails")
                     <*> (x .@? "IsTruncated")
                     <*> (pure (fromEnum s))
                     <*> (x .@ "JobStatus")
                     <*> (x .@ "JobCreationDate"))

instance Hashable GetOrganizationsAccessReport where

instance NFData GetOrganizationsAccessReport where

instance ToHeaders GetOrganizationsAccessReport where
        toHeaders = const mempty

instance ToPath GetOrganizationsAccessReport where
        toPath = const "/"

instance ToQuery GetOrganizationsAccessReport where
        toQuery GetOrganizationsAccessReport'{..}
          = mconcat
              ["Action" =:
                 ("GetOrganizationsAccessReport" :: ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "SortKey" =: _goarSortKey, "Marker" =: _goarMarker,
               "MaxItems" =: _goarMaxItems, "JobId" =: _goarJobId]

-- | /See:/ 'getOrganizationsAccessReportResponse' smart constructor.
data GetOrganizationsAccessReportResponse = GetOrganizationsAccessReportResponse'{_getrsNumberOfServicesNotAccessed
                                                                                  ::
                                                                                  !(Maybe
                                                                                      Int),
                                                                                  _getrsJobCompletionDate
                                                                                  ::
                                                                                  !(Maybe
                                                                                      ISO8601),
                                                                                  _getrsAccessDetails
                                                                                  ::
                                                                                  !(Maybe
                                                                                      [AccessDetail]),
                                                                                  _getrsNumberOfServicesAccessible
                                                                                  ::
                                                                                  !(Maybe
                                                                                      Int),
                                                                                  _getrsMarker
                                                                                  ::
                                                                                  !(Maybe
                                                                                      Text),
                                                                                  _getrsErrorDetails
                                                                                  ::
                                                                                  !(Maybe
                                                                                      ErrorDetails),
                                                                                  _getrsIsTruncated
                                                                                  ::
                                                                                  !(Maybe
                                                                                      Bool),
                                                                                  _getrsResponseStatus
                                                                                  ::
                                                                                  !Int,
                                                                                  _getrsJobStatus
                                                                                  ::
                                                                                  !JobStatusType,
                                                                                  _getrsJobCreationDate
                                                                                  ::
                                                                                  !ISO8601}
                                              deriving (Eq, Read, Show, Data,
                                                        Typeable, Generic)

-- | Creates a value of 'GetOrganizationsAccessReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsNumberOfServicesNotAccessed' - The number of services that account principals are allowed but did not attempt to access.
--
-- * 'getrsJobCompletionDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the generated report job was completed or failed. This field is null if the job is still in progress, as indicated by a job status value of @IN_PROGRESS@ .
--
-- * 'getrsAccessDetails' - An object that contains details about the most recent attempt to access the service.
--
-- * 'getrsNumberOfServicesAccessible' - The number of services that the applicable SCPs allow account principals to access.
--
-- * 'getrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'getrsErrorDetails' - Undocumented member.
--
-- * 'getrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'getrsResponseStatus' - -- | The response status code.
--
-- * 'getrsJobStatus' - The status of the job.
--
-- * 'getrsJobCreationDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the report job was created.
getOrganizationsAccessReportResponse
    :: Int -- ^ 'getrsResponseStatus'
    -> JobStatusType -- ^ 'getrsJobStatus'
    -> UTCTime -- ^ 'getrsJobCreationDate'
    -> GetOrganizationsAccessReportResponse
getOrganizationsAccessReportResponse pResponseStatus_
  pJobStatus_ pJobCreationDate_
  = GetOrganizationsAccessReportResponse'{_getrsNumberOfServicesNotAccessed
                                            = Nothing,
                                          _getrsJobCompletionDate = Nothing,
                                          _getrsAccessDetails = Nothing,
                                          _getrsNumberOfServicesAccessible =
                                            Nothing,
                                          _getrsMarker = Nothing,
                                          _getrsErrorDetails = Nothing,
                                          _getrsIsTruncated = Nothing,
                                          _getrsResponseStatus =
                                            pResponseStatus_,
                                          _getrsJobStatus = pJobStatus_,
                                          _getrsJobCreationDate =
                                            _Time # pJobCreationDate_}

-- | The number of services that account principals are allowed but did not attempt to access.
getrsNumberOfServicesNotAccessed :: Lens' GetOrganizationsAccessReportResponse (Maybe Int)
getrsNumberOfServicesNotAccessed = lens _getrsNumberOfServicesNotAccessed (\ s a -> s{_getrsNumberOfServicesNotAccessed = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the generated report job was completed or failed. This field is null if the job is still in progress, as indicated by a job status value of @IN_PROGRESS@ .
getrsJobCompletionDate :: Lens' GetOrganizationsAccessReportResponse (Maybe UTCTime)
getrsJobCompletionDate = lens _getrsJobCompletionDate (\ s a -> s{_getrsJobCompletionDate = a}) . mapping _Time

-- | An object that contains details about the most recent attempt to access the service.
getrsAccessDetails :: Lens' GetOrganizationsAccessReportResponse [AccessDetail]
getrsAccessDetails = lens _getrsAccessDetails (\ s a -> s{_getrsAccessDetails = a}) . _Default . _Coerce

-- | The number of services that the applicable SCPs allow account principals to access.
getrsNumberOfServicesAccessible :: Lens' GetOrganizationsAccessReportResponse (Maybe Int)
getrsNumberOfServicesAccessible = lens _getrsNumberOfServicesAccessible (\ s a -> s{_getrsNumberOfServicesAccessible = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
getrsMarker :: Lens' GetOrganizationsAccessReportResponse (Maybe Text)
getrsMarker = lens _getrsMarker (\ s a -> s{_getrsMarker = a})

-- | Undocumented member.
getrsErrorDetails :: Lens' GetOrganizationsAccessReportResponse (Maybe ErrorDetails)
getrsErrorDetails = lens _getrsErrorDetails (\ s a -> s{_getrsErrorDetails = a})

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
getrsIsTruncated :: Lens' GetOrganizationsAccessReportResponse (Maybe Bool)
getrsIsTruncated = lens _getrsIsTruncated (\ s a -> s{_getrsIsTruncated = a})

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetOrganizationsAccessReportResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\ s a -> s{_getrsResponseStatus = a})

-- | The status of the job.
getrsJobStatus :: Lens' GetOrganizationsAccessReportResponse JobStatusType
getrsJobStatus = lens _getrsJobStatus (\ s a -> s{_getrsJobStatus = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the report job was created.
getrsJobCreationDate :: Lens' GetOrganizationsAccessReportResponse UTCTime
getrsJobCreationDate = lens _getrsJobCreationDate (\ s a -> s{_getrsJobCreationDate = a}) . _Time

instance NFData GetOrganizationsAccessReportResponse
         where
