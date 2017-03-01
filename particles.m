ParticleDefinitions[GaugeES] = {
      {HdR,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 101,
                 LaTeX -> "H_{dR}^{-1/2}",
                 OutputName -> "HdR" }},                         
      {HdI,  {   
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 102,
                 LaTeX -> "H_{dI}^{-1/2}",
                 OutputName -> "HdI" }}, 
     {HuR,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 103,
                 LaTeX -> "H_{uR}^{1/2}",
                 OutputName -> "HuR" }},                         
      {HuI,  {   
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 104,
                 LaTeX -> "H_{uI}^{1/2}",
                 OutputName -> "HuI" }}, 
      {phi1,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 105,
                 LaTeX -> "\[phi]_1",
                 OutputName -> "phi1" }},                         
      {phi2,  {   
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 106,
                 LaTeX -> "\[phi]_2",
                 OutputName -> "phi2" }}, 
      {phi0,  {   
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 107,
                 LaTeX -> "\[phi]_0",
                 OutputName -> "phi0" }}, 
               
    
      {VWDB,  { Description -> "WD-Bosons"}},          
      {gWDB,  { Description -> "W-Boson Ghost"}}
      
      };
      
      
      
      
  ParticleDefinitions[EWSB] = {
    {SdR0   ,  {  Description -> "Scalar Down Higgs",
                 PDG -> {125,135},
                 PDG.IX -> {111000001,111000002} }}, 
                 
     {HdI   ,  {  Description -> "Pseudo-Scalar Down Higgs",
                 PDG -> {0},
                 PDG.IX ->{0},
                 Mass -> {0},
                 Width -> {0} }},                       
      
      
     {SuR1,     { Description -> "Scalar Up Higgs", 
                 PDG -> {0,137},
                 PDG.IX ->{0, 110000601},
                 Width -> {0, External}, 
                 Mass -> {0, LesHouches},
                 LaTeX -> {"S_{uR1}^1","S_{uR1}^2"},
                 ElectricCharge -> 1,                 
                 OutputName -> {"SuR1_1","SuR1_2"}
                 }},                                                   
      {SuI2,     { Description -> "Pseudo-Scalar Up Higgs", 
                 PDG -> {0,138},
                 PDG.IX ->{0, 110000602},
                 Width -> {0, External}, 
                 Mass -> {0, LesHouches},
                 LaTeX -> {"S_{uI2}^1","S_{uI2}^2"},
                 ElectricCharge -> 1,                 
                 OutputName -> {"SuI2_1","SuI2_2"}
                 }},                                                   
      {VPD,   { Description -> "Dark-Photon",
      			 Goldstone -> HdI }}, 
      {VWDp,  { Description -> "A+ -Boson",
      			Goldstone -> SuR1[{1}] }},         
      {conj[VWDp],  { Description -> "Negative A+ -Boson",
      			Goldstone -> SuI2[{1}] }},         
      {gPD,   { Description -> "Dark Photon Ghost"}},                                                   
      {gWDp,  { Description -> "Positive A+ - Boson Ghost"}}, 
      {gWDpC, { Description -> "Negative A+ - Boson Ghost" }}, 
      };    

 WeylFermionAndIndermediate = {
        }; 