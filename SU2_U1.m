Off[General::spell]

Model`Name = "SU(2)/U(1)";
Model`NameLaTeX ="SI Vector DM with Light Mediator";
Model`Authors = "Popov O., Kownacki C., Tanedo P.";
Model`Date = "2017-02-xx";

(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

(* Gauge Groups *)

Gauge[[1]]={WDB, SU[2], dark,g,True};

(* Matter Fields *)

ScalarFields[[1]] =  {H, 1, {HuR+\[Imaginary] HuI, Hd},2};
ScalarFields[[2]] =  {Phi, 1, {conj[phi1-\[Imaginary] phi2], phi1-\[Imaginary] phi2, phi3},3};

RealScalars = {phi0,phi1,phi2,HuR,HuI,HdR,HdI};

(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput]= {
	{LagHC, {AddHC->True}},
	{LagNoHC,{AddHC->False}}
};

Phi2x2={{(u + phi0), (phi1-\[Imaginary] phi2)}, {(phi1+\[Imaginary] phi2), -(u + phi0)}};

LagNoHC = mu2H conj[H].H - 1/2 \[Lambda]H conj[H].H.conj[H].H + 1/2 mu2Phi conj[Phi].Phi - 1/4 \[Lambda]phi conj[Phi].Phi.conj[Phi].Phi-\[Lambda]Hphi (conj[H].H)(conj[Phi].Phi)-mu3 conj[H].Phi2x2.H(*-mu4 conj[H].Phi2x2.(\[Imaginary] PauliMatrix[2].conj[H])+conj[-mu4 conj[H].Phi2x2.(\[Imaginary] PauliMatrix[2].conj[H])]*);
LagHC =  0;

(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VWDB[3]},{VPD},ZPD}, 
  {{VWDB[1],VWDB[2]},{VWDp,conj[VWDp]},ZWD}
};     

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{    {Hd, {v, 1/Sqrt[2]}, {HdI, \[ImaginaryI]/Sqrt[2]},{HdR, 1/Sqrt[2]}},
	 {phi3, {u, 1}, {0, 0},{phi0, 1}}
};


DEFINITION[EWSB][MatterSector]=   
    {
	{{HuR,phi1},{SuR1,UuR1}},
	{{HdR,phi0},{SdR0,UdR0}},
	{{HuI,phi2},{SuI2,UuI2}}
	};

(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
};

DEFINITION[EWSB][GaugeES]={
};
