{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.LandmarkType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.LandmarkType (
  LandmarkType (
    ..
    , ChinBottom
    , EyeLeft
    , EyeRight
    , LeftEyeBrowLeft
    , LeftEyeBrowRight
    , LeftEyeBrowUp
    , LeftEyeDown
    , LeftEyeLeft
    , LeftEyeRight
    , LeftEyeUp
    , LeftPupil
    , MidJawlineLeft
    , MidJawlineRight
    , MouthDown
    , MouthLeft
    , MouthRight
    , MouthUp
    , Nose
    , NoseLeft
    , NoseRight
    , RightEyeBrowLeft
    , RightEyeBrowRight
    , RightEyeBrowUp
    , RightEyeDown
    , RightEyeLeft
    , RightEyeRight
    , RightEyeUp
    , RightPupil
    , UpperJawlineLeft
    , UpperJawlineRight
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LandmarkType = LandmarkType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern ChinBottom :: LandmarkType
pattern ChinBottom = LandmarkType' "chinBottom"

pattern EyeLeft :: LandmarkType
pattern EyeLeft = LandmarkType' "eyeLeft"

pattern EyeRight :: LandmarkType
pattern EyeRight = LandmarkType' "eyeRight"

pattern LeftEyeBrowLeft :: LandmarkType
pattern LeftEyeBrowLeft = LandmarkType' "leftEyeBrowLeft"

pattern LeftEyeBrowRight :: LandmarkType
pattern LeftEyeBrowRight = LandmarkType' "leftEyeBrowRight"

pattern LeftEyeBrowUp :: LandmarkType
pattern LeftEyeBrowUp = LandmarkType' "leftEyeBrowUp"

pattern LeftEyeDown :: LandmarkType
pattern LeftEyeDown = LandmarkType' "leftEyeDown"

pattern LeftEyeLeft :: LandmarkType
pattern LeftEyeLeft = LandmarkType' "leftEyeLeft"

pattern LeftEyeRight :: LandmarkType
pattern LeftEyeRight = LandmarkType' "leftEyeRight"

pattern LeftEyeUp :: LandmarkType
pattern LeftEyeUp = LandmarkType' "leftEyeUp"

pattern LeftPupil :: LandmarkType
pattern LeftPupil = LandmarkType' "leftPupil"

pattern MidJawlineLeft :: LandmarkType
pattern MidJawlineLeft = LandmarkType' "midJawlineLeft"

pattern MidJawlineRight :: LandmarkType
pattern MidJawlineRight = LandmarkType' "midJawlineRight"

pattern MouthDown :: LandmarkType
pattern MouthDown = LandmarkType' "mouthDown"

pattern MouthLeft :: LandmarkType
pattern MouthLeft = LandmarkType' "mouthLeft"

pattern MouthRight :: LandmarkType
pattern MouthRight = LandmarkType' "mouthRight"

pattern MouthUp :: LandmarkType
pattern MouthUp = LandmarkType' "mouthUp"

pattern Nose :: LandmarkType
pattern Nose = LandmarkType' "nose"

pattern NoseLeft :: LandmarkType
pattern NoseLeft = LandmarkType' "noseLeft"

pattern NoseRight :: LandmarkType
pattern NoseRight = LandmarkType' "noseRight"

pattern RightEyeBrowLeft :: LandmarkType
pattern RightEyeBrowLeft = LandmarkType' "rightEyeBrowLeft"

pattern RightEyeBrowRight :: LandmarkType
pattern RightEyeBrowRight = LandmarkType' "rightEyeBrowRight"

pattern RightEyeBrowUp :: LandmarkType
pattern RightEyeBrowUp = LandmarkType' "rightEyeBrowUp"

pattern RightEyeDown :: LandmarkType
pattern RightEyeDown = LandmarkType' "rightEyeDown"

pattern RightEyeLeft :: LandmarkType
pattern RightEyeLeft = LandmarkType' "rightEyeLeft"

pattern RightEyeRight :: LandmarkType
pattern RightEyeRight = LandmarkType' "rightEyeRight"

pattern RightEyeUp :: LandmarkType
pattern RightEyeUp = LandmarkType' "rightEyeUp"

pattern RightPupil :: LandmarkType
pattern RightPupil = LandmarkType' "rightPupil"

pattern UpperJawlineLeft :: LandmarkType
pattern UpperJawlineLeft = LandmarkType' "upperJawlineLeft"

pattern UpperJawlineRight :: LandmarkType
pattern UpperJawlineRight = LandmarkType' "upperJawlineRight"

{-# COMPLETE
  ChinBottom,
  EyeLeft,
  EyeRight,
  LeftEyeBrowLeft,
  LeftEyeBrowRight,
  LeftEyeBrowUp,
  LeftEyeDown,
  LeftEyeLeft,
  LeftEyeRight,
  LeftEyeUp,
  LeftPupil,
  MidJawlineLeft,
  MidJawlineRight,
  MouthDown,
  MouthLeft,
  MouthRight,
  MouthUp,
  Nose,
  NoseLeft,
  NoseRight,
  RightEyeBrowLeft,
  RightEyeBrowRight,
  RightEyeBrowUp,
  RightEyeDown,
  RightEyeLeft,
  RightEyeRight,
  RightEyeUp,
  RightPupil,
  UpperJawlineLeft,
  UpperJawlineRight,
  LandmarkType' #-}

instance FromText LandmarkType where
    parser = (LandmarkType' . mk) <$> takeText

instance ToText LandmarkType where
    toText (LandmarkType' ci) = original ci

instance Hashable     LandmarkType
instance NFData       LandmarkType
instance ToByteString LandmarkType
instance ToQuery      LandmarkType
instance ToHeader     LandmarkType

instance FromJSON LandmarkType where
    parseJSON = parseJSONText "LandmarkType"
