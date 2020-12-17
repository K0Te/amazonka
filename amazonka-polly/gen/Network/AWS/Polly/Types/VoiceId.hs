{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.VoiceId
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Polly.Types.VoiceId (
  VoiceId (
    ..
    , Aditi
    , Amy
    , Astrid
    , Bianca
    , Brian
    , Camila
    , Carla
    , Carmen
    , Celine
    , Chantal
    , Conchita
    , Cristiano
    , Dora
    , Emma
    , Enrique
    , Ewa
    , Filiz
    , Geraint
    , Giorgio
    , Gwyneth
    , Hans
    , Ines
    , Ivy
    , Jacek
    , Jan
    , Joanna
    , Joey
    , Justin
    , Karl
    , Kendra
    , Kevin
    , Kimberly
    , Lea
    , Liv
    , Lotte
    , Lucia
    , Lupe
    , Mads
    , Maja
    , Marlene
    , Mathieu
    , Matthew
    , Maxim
    , Mia
    , Miguel
    , Mizuki
    , Naja
    , Nicole
    , Olivia
    , Penelope
    , Raveena
    , Ricardo
    , Ruben
    , Russell
    , Salli
    , Seoyeon
    , Takumi
    , Tatyana
    , Vicki
    , Vitoria
    , Zeina
    , Zhiyu
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VoiceId = VoiceId' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern Aditi :: VoiceId
pattern Aditi = VoiceId' "Aditi"

pattern Amy :: VoiceId
pattern Amy = VoiceId' "Amy"

pattern Astrid :: VoiceId
pattern Astrid = VoiceId' "Astrid"

pattern Bianca :: VoiceId
pattern Bianca = VoiceId' "Bianca"

pattern Brian :: VoiceId
pattern Brian = VoiceId' "Brian"

pattern Camila :: VoiceId
pattern Camila = VoiceId' "Camila"

pattern Carla :: VoiceId
pattern Carla = VoiceId' "Carla"

pattern Carmen :: VoiceId
pattern Carmen = VoiceId' "Carmen"

pattern Celine :: VoiceId
pattern Celine = VoiceId' "Celine"

pattern Chantal :: VoiceId
pattern Chantal = VoiceId' "Chantal"

pattern Conchita :: VoiceId
pattern Conchita = VoiceId' "Conchita"

pattern Cristiano :: VoiceId
pattern Cristiano = VoiceId' "Cristiano"

pattern Dora :: VoiceId
pattern Dora = VoiceId' "Dora"

pattern Emma :: VoiceId
pattern Emma = VoiceId' "Emma"

pattern Enrique :: VoiceId
pattern Enrique = VoiceId' "Enrique"

pattern Ewa :: VoiceId
pattern Ewa = VoiceId' "Ewa"

pattern Filiz :: VoiceId
pattern Filiz = VoiceId' "Filiz"

pattern Geraint :: VoiceId
pattern Geraint = VoiceId' "Geraint"

pattern Giorgio :: VoiceId
pattern Giorgio = VoiceId' "Giorgio"

pattern Gwyneth :: VoiceId
pattern Gwyneth = VoiceId' "Gwyneth"

pattern Hans :: VoiceId
pattern Hans = VoiceId' "Hans"

pattern Ines :: VoiceId
pattern Ines = VoiceId' "Ines"

pattern Ivy :: VoiceId
pattern Ivy = VoiceId' "Ivy"

pattern Jacek :: VoiceId
pattern Jacek = VoiceId' "Jacek"

pattern Jan :: VoiceId
pattern Jan = VoiceId' "Jan"

pattern Joanna :: VoiceId
pattern Joanna = VoiceId' "Joanna"

pattern Joey :: VoiceId
pattern Joey = VoiceId' "Joey"

pattern Justin :: VoiceId
pattern Justin = VoiceId' "Justin"

pattern Karl :: VoiceId
pattern Karl = VoiceId' "Karl"

pattern Kendra :: VoiceId
pattern Kendra = VoiceId' "Kendra"

pattern Kevin :: VoiceId
pattern Kevin = VoiceId' "Kevin"

pattern Kimberly :: VoiceId
pattern Kimberly = VoiceId' "Kimberly"

pattern Lea :: VoiceId
pattern Lea = VoiceId' "Lea"

pattern Liv :: VoiceId
pattern Liv = VoiceId' "Liv"

pattern Lotte :: VoiceId
pattern Lotte = VoiceId' "Lotte"

pattern Lucia :: VoiceId
pattern Lucia = VoiceId' "Lucia"

pattern Lupe :: VoiceId
pattern Lupe = VoiceId' "Lupe"

pattern Mads :: VoiceId
pattern Mads = VoiceId' "Mads"

pattern Maja :: VoiceId
pattern Maja = VoiceId' "Maja"

pattern Marlene :: VoiceId
pattern Marlene = VoiceId' "Marlene"

pattern Mathieu :: VoiceId
pattern Mathieu = VoiceId' "Mathieu"

pattern Matthew :: VoiceId
pattern Matthew = VoiceId' "Matthew"

pattern Maxim :: VoiceId
pattern Maxim = VoiceId' "Maxim"

pattern Mia :: VoiceId
pattern Mia = VoiceId' "Mia"

pattern Miguel :: VoiceId
pattern Miguel = VoiceId' "Miguel"

pattern Mizuki :: VoiceId
pattern Mizuki = VoiceId' "Mizuki"

pattern Naja :: VoiceId
pattern Naja = VoiceId' "Naja"

pattern Nicole :: VoiceId
pattern Nicole = VoiceId' "Nicole"

pattern Olivia :: VoiceId
pattern Olivia = VoiceId' "Olivia"

pattern Penelope :: VoiceId
pattern Penelope = VoiceId' "Penelope"

pattern Raveena :: VoiceId
pattern Raveena = VoiceId' "Raveena"

pattern Ricardo :: VoiceId
pattern Ricardo = VoiceId' "Ricardo"

pattern Ruben :: VoiceId
pattern Ruben = VoiceId' "Ruben"

pattern Russell :: VoiceId
pattern Russell = VoiceId' "Russell"

pattern Salli :: VoiceId
pattern Salli = VoiceId' "Salli"

pattern Seoyeon :: VoiceId
pattern Seoyeon = VoiceId' "Seoyeon"

pattern Takumi :: VoiceId
pattern Takumi = VoiceId' "Takumi"

pattern Tatyana :: VoiceId
pattern Tatyana = VoiceId' "Tatyana"

pattern Vicki :: VoiceId
pattern Vicki = VoiceId' "Vicki"

pattern Vitoria :: VoiceId
pattern Vitoria = VoiceId' "Vitoria"

pattern Zeina :: VoiceId
pattern Zeina = VoiceId' "Zeina"

pattern Zhiyu :: VoiceId
pattern Zhiyu = VoiceId' "Zhiyu"

{-# COMPLETE
  Aditi,
  Amy,
  Astrid,
  Bianca,
  Brian,
  Camila,
  Carla,
  Carmen,
  Celine,
  Chantal,
  Conchita,
  Cristiano,
  Dora,
  Emma,
  Enrique,
  Ewa,
  Filiz,
  Geraint,
  Giorgio,
  Gwyneth,
  Hans,
  Ines,
  Ivy,
  Jacek,
  Jan,
  Joanna,
  Joey,
  Justin,
  Karl,
  Kendra,
  Kevin,
  Kimberly,
  Lea,
  Liv,
  Lotte,
  Lucia,
  Lupe,
  Mads,
  Maja,
  Marlene,
  Mathieu,
  Matthew,
  Maxim,
  Mia,
  Miguel,
  Mizuki,
  Naja,
  Nicole,
  Olivia,
  Penelope,
  Raveena,
  Ricardo,
  Ruben,
  Russell,
  Salli,
  Seoyeon,
  Takumi,
  Tatyana,
  Vicki,
  Vitoria,
  Zeina,
  Zhiyu,
  VoiceId' #-}

instance FromText VoiceId where
    parser = (VoiceId' . mk) <$> takeText

instance ToText VoiceId where
    toText (VoiceId' ci) = original ci

instance Hashable     VoiceId
instance NFData       VoiceId
instance ToByteString VoiceId
instance ToQuery      VoiceId
instance ToHeader     VoiceId

instance ToJSON VoiceId where
    toJSON = toJSONText

instance FromJSON VoiceId where
    parseJSON = parseJSONText "VoiceId"
