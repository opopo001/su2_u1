ParameterDefinitions = { 

{g,        { Description -> "Gauge-Coupling"}},

{mu2H,         { Description -> "Mu Doublet H Parameter",
        LesHouches -> {HMIX,2}}},                                        

{\[Lambda]H,  { Description -> "Higgs Doublet Selfcouplings",
             (*  DependenceNum -> Mass[hh]^2/(v^2)},*)
        LesHouches -> {HMIX,1} },
{mu2Phi,         { Description -> "Mu Real Triplet \[Phi] Parameter",
        LesHouches -> {HMIX,3}}},                                        

{\[Lambda]phi,  { Description -> "Real Higgs Triplet Selfcouplings",
        LesHouches -> {HMIX,4} },
{\[Lambda]Hphi,  { Description -> "H\[Phi] Quartic Coupling",
        LesHouches -> {HMIX,5} },
{mu3,         { Description -> "Mu3 Trilinear Parameter",
        LesHouches -> {HMIX,6}}},                                        
(*{mu4,         { Description -> "Mu4 Trilinear Parameter",
        LesHouches -> {HMIX,7}}},                                        
*)
{v,          {  LaTeX -> "\nu",
		Real -> True,
		OutputName -> v,
		Description -> "H_VEV",
               DependenceNum -> Sqrt[4*Mass[VPD]^2/(g^2)],
               DependenceSPheno -> None  }},

{u,  { LaTeX -> "u",
        Real -> True,
        OutputName -> u,
	Description -> "\[Phi]_VEV",
	DependenceNum -> Sqrt[(Mass[VWDp]^2-Mass[VPD]^2)/(g^2)],
        LesHouches -> {HMIX,8} }},

{ZPD, {Description -> "Dark-Photon Mixing Matrix"},
	Value-> 1},
{ZWD, {Description -> "A+- Mixing Matrix",
       Dependence ->   1/Sqrt[2] {{1, 1},
                  {\[ImaginaryI],-\[ImaginaryI]}} }},

{UuR1,  { Description->"(Re(Hu),phi1) Scalar-Mixing-Matrix",
        Real->True,
        LesHouches -> UuR1,
        OutputName -> UuR1,
        LaTeX->"U_{uR1}", 
        Dependence -> None,
        DependenceOptional -> None,
        DependenceNum -> None}},

{UuI2,  { Description->"(Im(Hu),phi2) Pseudo-Scalar-Mixing-Matrix",
        Real->True,
        LesHouches -> UuI2,
        OutputName -> UuI2,
        LaTeX->"U_{uI2}", 
        Dependence -> None,
        DependenceOptional -> None,
        DependenceNum -> None}},
	
{UdR0,  { Description->"(Re(Hd),phi0) Scalar-Mixing-Matrix",
        Real->True,
        LesHouches -> UdR0,
        OutputName -> UdR0,
        LaTeX->"U_{dR0}", 
        Dependence -> None,
        DependenceOptional -> None,
        DependenceNum -> None}},
 }; 