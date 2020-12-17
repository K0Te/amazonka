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
-- Module      : Network.AWS.Rekognition.CompareFaces
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Compares a face in the /source/ input image with each of the 100 largest faces detected in the /target/ input image. 
--
--
-- You pass the input and target images either as base64-encoded image bytes or as references to images in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes isn't supported. The image must be formatted as a PNG or JPEG file. 
--
-- In response, the operation returns an array of face matches ordered by similarity score in descending order. For each face match, the response provides a bounding box of the face, facial landmarks, pose details (pitch, role, and yaw), quality (brightness and sharpness), and confidence value (indicating the level of confidence that the bounding box contains a face). The response also provides a similarity score, which indicates how closely the faces match. 
--
-- @CompareFaces@ also returns an array of faces that don't match the source image. For each face, it returns a bounding box, confidence value, landmarks, pose details, and quality. The response also returns information about the face in the source image, including the bounding box of the face and confidence value.
--
-- The @QualityFilter@ input parameter allows you to filter out detected faces that don’t meet a required quality bar. The quality bar is based on a variety of common use cases. Use @QualityFilter@ to set the quality bar by specifying @LOW@ , @MEDIUM@ , or @HIGH@ . If you do not want to filter detected faces, specify @NONE@ . The default value is @NONE@ . 
--
-- If the image doesn't contain Exif metadata, @CompareFaces@ returns orientation information for the source and target images. Use these values to display the images with the correct image orientation.
--
-- If no faces are detected in the source or target images, @CompareFaces@ returns an @InvalidParameterException@ error. 
--
-- For an example, see Comparing Faces in Images in the Amazon Rekognition Developer Guide.
--
-- This operation requires permissions to perform the @rekognition:CompareFaces@ action.
--
module Network.AWS.Rekognition.CompareFaces
    (
    -- * Creating a Request
      compareFaces
    , CompareFaces
    -- * Request Lenses
    , cfQualityFilter
    , cfSimilarityThreshold
    , cfSourceImage
    , cfTargetImage

    -- * Destructuring the Response
    , compareFacesResponse
    , CompareFacesResponse
    -- * Response Lenses
    , cfrsFaceMatches
    , cfrsUnmatchedFaces
    , cfrsTargetImageOrientationCorrection
    , cfrsSourceImageOrientationCorrection
    , cfrsSourceImageFace
    , cfrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'compareFaces' smart constructor.
data CompareFaces = CompareFaces'{_cfQualityFilter ::
                                  !(Maybe QualityFilter),
                                  _cfSimilarityThreshold :: !(Maybe Double),
                                  _cfSourceImage :: !Image,
                                  _cfTargetImage :: !Image}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CompareFaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfQualityFilter' - A filter that specifies a quality bar for how much filtering is done to identify faces. Filtered faces aren't compared. If you specify @AUTO@ , Amazon Rekognition chooses the quality bar. If you specify @LOW@ , @MEDIUM@ , or @HIGH@ , filtering removes all faces that don’t meet the chosen quality bar. The quality bar is based on a variety of common use cases. Low-quality detections can occur for a number of reasons. Some examples are an object that's misidentified as a face, a face that's too blurry, or a face with a pose that's too extreme to use. If you specify @NONE@ , no filtering is performed. The default value is @NONE@ .  To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.
--
-- * 'cfSimilarityThreshold' - The minimum level of confidence in the face matches that a match must meet to be included in the @FaceMatches@ array.
--
-- * 'cfSourceImage' - The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.  If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes passed using the @Bytes@ field. For more information, see Images in the Amazon Rekognition developer guide.
--
-- * 'cfTargetImage' - The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.  If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes passed using the @Bytes@ field. For more information, see Images in the Amazon Rekognition developer guide.
compareFaces
    :: Image -- ^ 'cfSourceImage'
    -> Image -- ^ 'cfTargetImage'
    -> CompareFaces
compareFaces pSourceImage_ pTargetImage_
  = CompareFaces'{_cfQualityFilter = Nothing,
                  _cfSimilarityThreshold = Nothing,
                  _cfSourceImage = pSourceImage_,
                  _cfTargetImage = pTargetImage_}

-- | A filter that specifies a quality bar for how much filtering is done to identify faces. Filtered faces aren't compared. If you specify @AUTO@ , Amazon Rekognition chooses the quality bar. If you specify @LOW@ , @MEDIUM@ , or @HIGH@ , filtering removes all faces that don’t meet the chosen quality bar. The quality bar is based on a variety of common use cases. Low-quality detections can occur for a number of reasons. Some examples are an object that's misidentified as a face, a face that's too blurry, or a face with a pose that's too extreme to use. If you specify @NONE@ , no filtering is performed. The default value is @NONE@ .  To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.
cfQualityFilter :: Lens' CompareFaces (Maybe QualityFilter)
cfQualityFilter = lens _cfQualityFilter (\ s a -> s{_cfQualityFilter = a})

-- | The minimum level of confidence in the face matches that a match must meet to be included in the @FaceMatches@ array.
cfSimilarityThreshold :: Lens' CompareFaces (Maybe Double)
cfSimilarityThreshold = lens _cfSimilarityThreshold (\ s a -> s{_cfSimilarityThreshold = a})

-- | The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.  If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes passed using the @Bytes@ field. For more information, see Images in the Amazon Rekognition developer guide.
cfSourceImage :: Lens' CompareFaces Image
cfSourceImage = lens _cfSourceImage (\ s a -> s{_cfSourceImage = a})

-- | The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.  If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes passed using the @Bytes@ field. For more information, see Images in the Amazon Rekognition developer guide.
cfTargetImage :: Lens' CompareFaces Image
cfTargetImage = lens _cfTargetImage (\ s a -> s{_cfTargetImage = a})

instance AWSRequest CompareFaces where
        type Rs CompareFaces = CompareFacesResponse
        request = postJSON rekognition
        response
          = receiveJSON
              (\ s h x ->
                 CompareFacesResponse' <$>
                   (x .?> "FaceMatches" .!@ mempty) <*>
                     (x .?> "UnmatchedFaces" .!@ mempty)
                     <*> (x .?> "TargetImageOrientationCorrection")
                     <*> (x .?> "SourceImageOrientationCorrection")
                     <*> (x .?> "SourceImageFace")
                     <*> (pure (fromEnum s)))

instance Hashable CompareFaces where

instance NFData CompareFaces where

instance ToHeaders CompareFaces where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("RekognitionService.CompareFaces" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CompareFaces where
        toJSON CompareFaces'{..}
          = object
              (catMaybes
                 [("QualityFilter" .=) <$> _cfQualityFilter,
                  ("SimilarityThreshold" .=) <$>
                    _cfSimilarityThreshold,
                  Just ("SourceImage" .= _cfSourceImage),
                  Just ("TargetImage" .= _cfTargetImage)])

instance ToPath CompareFaces where
        toPath = const "/"

instance ToQuery CompareFaces where
        toQuery = const mempty

-- | /See:/ 'compareFacesResponse' smart constructor.
data CompareFacesResponse = CompareFacesResponse'{_cfrsFaceMatches
                                                  ::
                                                  !(Maybe [CompareFacesMatch]),
                                                  _cfrsUnmatchedFaces ::
                                                  !(Maybe [ComparedFace]),
                                                  _cfrsTargetImageOrientationCorrection
                                                  ::
                                                  !(Maybe
                                                      OrientationCorrection),
                                                  _cfrsSourceImageOrientationCorrection
                                                  ::
                                                  !(Maybe
                                                      OrientationCorrection),
                                                  _cfrsSourceImageFace ::
                                                  !(Maybe
                                                      ComparedSourceImageFace),
                                                  _cfrsResponseStatus :: !Int}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CompareFacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrsFaceMatches' - An array of faces in the target image that match the source image face. Each @CompareFacesMatch@ object provides the bounding box, the confidence level that the bounding box contains a face, and the similarity score for the face in the bounding box and the face in the source image.
--
-- * 'cfrsUnmatchedFaces' - An array of faces in the target image that did not match the source image face.
--
-- * 'cfrsTargetImageOrientationCorrection' - The value of @TargetImageOrientationCorrection@ is always null. If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation information to perform image correction. The bounding box coordinates are translated to represent object locations after the orientation information in the Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images without orientation information in the image Exif metadata. The bounding box coordinates aren't translated and represent the object locations before the image is rotated. 
--
-- * 'cfrsSourceImageOrientationCorrection' - The value of @SourceImageOrientationCorrection@ is always null. If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation information to perform image correction. The bounding box coordinates are translated to represent object locations after the orientation information in the Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images without orientation information in the image Exif metadata. The bounding box coordinates aren't translated and represent the object locations before the image is rotated. 
--
-- * 'cfrsSourceImageFace' - The face in the source image that was used for comparison.
--
-- * 'cfrsResponseStatus' - -- | The response status code.
compareFacesResponse
    :: Int -- ^ 'cfrsResponseStatus'
    -> CompareFacesResponse
compareFacesResponse pResponseStatus_
  = CompareFacesResponse'{_cfrsFaceMatches = Nothing,
                          _cfrsUnmatchedFaces = Nothing,
                          _cfrsTargetImageOrientationCorrection = Nothing,
                          _cfrsSourceImageOrientationCorrection = Nothing,
                          _cfrsSourceImageFace = Nothing,
                          _cfrsResponseStatus = pResponseStatus_}

-- | An array of faces in the target image that match the source image face. Each @CompareFacesMatch@ object provides the bounding box, the confidence level that the bounding box contains a face, and the similarity score for the face in the bounding box and the face in the source image.
cfrsFaceMatches :: Lens' CompareFacesResponse [CompareFacesMatch]
cfrsFaceMatches = lens _cfrsFaceMatches (\ s a -> s{_cfrsFaceMatches = a}) . _Default . _Coerce

-- | An array of faces in the target image that did not match the source image face.
cfrsUnmatchedFaces :: Lens' CompareFacesResponse [ComparedFace]
cfrsUnmatchedFaces = lens _cfrsUnmatchedFaces (\ s a -> s{_cfrsUnmatchedFaces = a}) . _Default . _Coerce

-- | The value of @TargetImageOrientationCorrection@ is always null. If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation information to perform image correction. The bounding box coordinates are translated to represent object locations after the orientation information in the Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images without orientation information in the image Exif metadata. The bounding box coordinates aren't translated and represent the object locations before the image is rotated. 
cfrsTargetImageOrientationCorrection :: Lens' CompareFacesResponse (Maybe OrientationCorrection)
cfrsTargetImageOrientationCorrection = lens _cfrsTargetImageOrientationCorrection (\ s a -> s{_cfrsTargetImageOrientationCorrection = a})

-- | The value of @SourceImageOrientationCorrection@ is always null. If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation information to perform image correction. The bounding box coordinates are translated to represent object locations after the orientation information in the Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images without orientation information in the image Exif metadata. The bounding box coordinates aren't translated and represent the object locations before the image is rotated. 
cfrsSourceImageOrientationCorrection :: Lens' CompareFacesResponse (Maybe OrientationCorrection)
cfrsSourceImageOrientationCorrection = lens _cfrsSourceImageOrientationCorrection (\ s a -> s{_cfrsSourceImageOrientationCorrection = a})

-- | The face in the source image that was used for comparison.
cfrsSourceImageFace :: Lens' CompareFacesResponse (Maybe ComparedSourceImageFace)
cfrsSourceImageFace = lens _cfrsSourceImageFace (\ s a -> s{_cfrsSourceImageFace = a})

-- | -- | The response status code.
cfrsResponseStatus :: Lens' CompareFacesResponse Int
cfrsResponseStatus = lens _cfrsResponseStatus (\ s a -> s{_cfrsResponseStatus = a})

instance NFData CompareFacesResponse where
