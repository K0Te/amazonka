{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.Action
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppStream.Types.Action (
  Action (
    ..
    , ClipboardCopyFromLocalDevice
    , ClipboardCopyToLocalDevice
    , FileDownload
    , FileUpload
    , PrintingToLocalDevice
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Action = Action' (CI Text)
                deriving (Eq, Ord, Read, Show, Data, Typeable,
                          Generic)

pattern ClipboardCopyFromLocalDevice :: Action
pattern ClipboardCopyFromLocalDevice = Action' "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"

pattern ClipboardCopyToLocalDevice :: Action
pattern ClipboardCopyToLocalDevice = Action' "CLIPBOARD_COPY_TO_LOCAL_DEVICE"

pattern FileDownload :: Action
pattern FileDownload = Action' "FILE_DOWNLOAD"

pattern FileUpload :: Action
pattern FileUpload = Action' "FILE_UPLOAD"

pattern PrintingToLocalDevice :: Action
pattern PrintingToLocalDevice = Action' "PRINTING_TO_LOCAL_DEVICE"

{-# COMPLETE
  ClipboardCopyFromLocalDevice,
  ClipboardCopyToLocalDevice,
  FileDownload,
  FileUpload,
  PrintingToLocalDevice,
  Action' #-}

instance FromText Action where
    parser = (Action' . mk) <$> takeText

instance ToText Action where
    toText (Action' ci) = original ci

instance Hashable     Action
instance NFData       Action
instance ToByteString Action
instance ToQuery      Action
instance ToHeader     Action

instance ToJSON Action where
    toJSON = toJSONText

instance FromJSON Action where
    parseJSON = parseJSONText "Action"
