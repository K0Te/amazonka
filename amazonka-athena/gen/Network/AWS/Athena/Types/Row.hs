{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.Row
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Athena.Types.Row where

import Network.AWS.Athena.Types.Datum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The rows that comprise a query result table.
--
--
--
-- /See:/ 'row' smart constructor.
newtype Row = Row'{_rowData :: Maybe [Datum]}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Row' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rowData' - The data that populates a row in a query result table.
row
    :: Row
row = Row'{_rowData = Nothing}

-- | The data that populates a row in a query result table.
rowData :: Lens' Row [Datum]
rowData = lens _rowData (\ s a -> s{_rowData = a}) . _Default . _Coerce

instance FromJSON Row where
        parseJSON
          = withObject "Row"
              (\ x -> Row' <$> (x .:? "Data" .!= mempty))

instance Hashable Row where

instance NFData Row where
