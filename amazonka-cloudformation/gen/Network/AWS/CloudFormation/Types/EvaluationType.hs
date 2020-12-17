{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.EvaluationType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.EvaluationType (
  EvaluationType (
    ..
    , ETDynamic
    , ETStatic
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EvaluationType = EvaluationType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern ETDynamic :: EvaluationType
pattern ETDynamic = EvaluationType' "Dynamic"

pattern ETStatic :: EvaluationType
pattern ETStatic = EvaluationType' "Static"

{-# COMPLETE
  ETDynamic,
  ETStatic,
  EvaluationType' #-}

instance FromText EvaluationType where
    parser = (EvaluationType' . mk) <$> takeText

instance ToText EvaluationType where
    toText (EvaluationType' ci) = original ci

instance Hashable     EvaluationType
instance NFData       EvaluationType
instance ToByteString EvaluationType
instance ToQuery      EvaluationType
instance ToHeader     EvaluationType

instance FromXML EvaluationType where
    parseXML = parseXMLText "EvaluationType"
