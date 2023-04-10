function dC = proposed_RBLight_FT(t,C)


%% Modified DeCaluwe's Model (Add Red and Blue Light and LHY inhibit PRR9)
global Ired Iblue 
v1=4.8318;q1a=1.4266;q3a=8.9432;eta1=0.03;q4a=5.9277;eta2=0.0215;K1=0.1943;K2=1.6138;k1L=0.2866;k1D=0.213;
p1=0.8672;p1L=0.2378;d1=0.7843;q1b=3.575;q3b=5.5899;q4b=8.954;v2=1.6822;K3=2.2275;K4=0.40;K5=0.37;k2=0.35;
p2=0.7858;d2D=0.3712;d2L=0.2917;v3=1.113;K6=0.4944;K7=2.4087;k3=0.5819;
p3=0.6142;d3D=0.5026;d3L=0.5431;v4=2.5012;K8=0.3262;K9=1.7974;K10=1.1889;k4=0.925;
p4=1.126;de1=0.0022;de2=0.4741;de3=0.3765;de4=0.398;de5=0.0003;
Ap3=0.3868;Am7=0.5503;Ak7=1.125;q2=0.5767;kmpac=137;kd=7;
v5=0.1129;K11=0.3322;k5=0.1591;p5=0.5293;d5D=0.4404;d5L=5.0712;g1=0.001;g2=0.18;
K12=0.86;Bp4=0.4147;Bm8=0.7728;Bk8=0.1732;kmpbc=7162;Cp5=0.4567;Cm9=0.867;Ck9=0.3237;kmcc=13406;

Nq1a=8.8732;Nq3a=0.0504;Nq4a=0.9601;Nv1=0.0003;NK1=0.1041;NK2=0.1222;NK3=0.2812;Nk1=0.4267;
Np1=0.299;Nd1=38.9463;Nd2=0.0191;
Nv2=0.211;Nv3=2.5138;NK4=0.1126;NK5=0.9227;Nk2=0.6638;
Np2=0.1006;Nd3=0.1957;Np3=2.3479;Np4=0.6093;
Nq1b=0.019;Nq3b=0.0028;Nq4b=1.7141;Nv4=1.8777;NK6=0.3369;NK7=0.0063;Nk3=0.7895;
Np5=1.0137;Np6=0.0005;Nd4=380.0541;Ng1=30.274;
Bco=0.0144;NK8=0.055;Nv5=0.505;Nv6=1.2439;NK9=1.4102;Nk4=0.8493;
Np7=1.4739;Np8=4.1832;Nd5=1.0573;Nd6=59.2134;Ng2=0.0012;
Nv7=0.4391;Nv8=0.5555;NK10=16.9214;Nv9=0.0148;Nv10=1.0602;NK11=0.0436;NK12=0.999;Nk5=0.1651;

if Ired ~= 0 || Iblue~= 0
ThetaPhyA = 1;
else
ThetaPhyA = 0;
end

if Ired ~= 0
ThetaPhyB = 1;
else
ThetaPhyB = 0;
end

if Iblue ~= 0
ThetaCry1 = 1;
else
ThetaCry1 = 0;
end

dC = zeros(27,1);

%LHY mRNA
dC(1) = (v1 + (q1a*(C(9)+C(16))*ThetaPhyA+q3a*(C(13)+C(17))*log(eta1*Ired + 1)*ThetaPhyB+q4a*(C(14)+C(18))*log(eta2*Iblue + 1)*ThetaCry1))/(1 + (C(4)/(K1))^2 + (C(6)/(K2))^2) - (k1L*ThetaPhyA + k1D*(1-ThetaPhyA))*C(1);

% LHY protein
dC(2) = (p1 + p1L*ThetaPhyA)*C(1) - d1*C(2);

% P97 mRNA
dC(3) = ((q1b*(C(9)+C(16))*ThetaPhyA+q3b*(C(13)+C(17))*log(eta1*Ired + 1)*ThetaPhyB+q4b*(C(14)+C(18))*log(eta2*Iblue + 1)*ThetaCry1)+ v2)*(1/(1 + (C(2)/(K3))^2 + (C(6)/(K4))^2 + (C(8)/(K5))^2)) - k2*C(3);

% P97 protein
dC(4) = p2*C(3) - d2D*(1-ThetaPhyA)*C(4) - d2L*ThetaPhyA*C(4);

% P51 mRNA
dC(5) =v3/(1 + (C(2)/(K6))^2 + (C(6)/(K7))^2) - k3*C(5);

% P51 protein
dC(6) =( p3*C(5) - d3D*(1-ThetaPhyA)*C(6) - d3L*ThetaPhyA*C(6));

% EL mRNA
dC(7) =(v4*ThetaPhyA/(1 + (C(2)/(K8))^2 + (C(6)/(K9))^2 + (C(8)/(K10))^2) - k4*C(7));

% EL protein
dC(8) = (p4*C(7) - (de1+(de2*C(15)+de3*C(16)+de4*C(17)+de5*C(18))/(C(15)+C(16)+C(17)+C(18)))*C(8));

% PHY A
dC(9) = (1 - ThetaPhyA)*Ap3 - (Am7*C(9)/(Ak7 + C(9))) - q2*ThetaPhyA*C(9)-kmpac*ThetaPhyA*C(9)*C(15)+kd*(1-ThetaPhyA)*C(16);

% PIF mRNA
dC(10) = v5/(1 + (C(8)/(K11))^2) - k5*C(10);

% PIF protein
dC(11) = p5*C(10) - d5D*(1-ThetaPhyA)*C(11) - d5L*ThetaPhyA*C(11);

% HYP protein
dC(12) = g1 + (g2*C(11)^2)/(K12^2 + C(11)^2);

% PHY B
dC(13) = Bp4 - ((Bm8*C(13))/(Bk8 + C(13)))-kmpbc*ThetaPhyB*C(13)*C(15)+kd*(1-ThetaPhyB)*C(17);

% CRY1
dC(14) = Cp5 - ((Cm9*C(14))/(Ck9 + C(14)))-kmcc*ThetaCry1*C(14)*C(15)+kd*(1-ThetaCry1)*C(18);

%COP1
dC(15) = -kmpac*ThetaPhyA*C(9)*C(15)+kd*(1-ThetaPhyA)*C(16)-kmpbc*ThetaPhyB*C(13)*C(15)+kd*(1-ThetaPhyB)*C(17)-kmcc*ThetaCry1*C(14)*C(15)+kd*(1-ThetaCry1)*C(18)+ (Am7*C(16)/(Ak7 + C(16))) + q2*ThetaPhyA*C(16)+((Bm8*C(17))/(Bk8 + C(17)))+((Cm9*C(18))/(Ck9 + C(18)));

%COP1:PHYA
dC(16) = kmpac*ThetaPhyA*C(9)*C(15)-kd*(1-ThetaPhyA)*C(16)- (Am7*C(16)/(Ak7 + C(16)))- q2*ThetaPhyA*C(16);

%COP1:PHYB
dC(17) = kmpbc*ThetaPhyB*C(13)*C(15)-kd*(1-ThetaPhyB)*C(17)- ((Bm8*C(17))/(Bk8 + C(17)));

%COP1:CRY1
dC(18) = kmcc*ThetaCry1*C(14)*C(15)-kd*(1-ThetaCry1)*C(18)- ((Cm9*C(18))/(Ck9 + C(18)));

%GI mRNA
dC(19)=(Nq1a*(C(9)+C(16))*ThetaPhyA+Nq3a*(C(13)+C(17))*log(eta1*Ired + 1)*ThetaPhyB+Nq4a*(C(14)+C(18))*log(eta2*Iblue + 1)*ThetaCry1)+(Nv1/(((NK1)^2 + (C(2))^2)*((NK2)^2+(C(6))^2)*((NK3)^2+(C(8))^2))) - Nk1*C(19);

%GI Protein
dC(20)=Np1*C(19)-Nd1*(C(15)+C(16)+C(17)+C(18))*C(8)*C(20)-Nd2*C(20);

%Flowering
%CDF1 mRNA
dC(21)= (Nv2 +Nv3*(C(2)^2)/((NK4^2)+(C(2)^2)))*(NK5^2)/((NK5^2) + (C(4)+C(6))^2) - Nk2*C(21);

%CDF1 protein
dC(22)= Np2*C(21) - Nd3*(Np3*C(24)*C(20) + Np4*C(20) + 1)*C(22);

%fkf1 mRNA
dC(23)= (Nq1b*(C(9)+C(16))*ThetaPhyA+Nq3b*(C(13)+C(17))*log(eta1*Ired + 1)*ThetaPhyB+Nq4b*(C(14)+C(18))*log(eta2*Iblue + 1)*ThetaCry1)+ Nv4*((NK6^2)/((NK6^2)+(C(2)^2)))*(NK7/(NK7+C(8))) - Nk3*C(23);

%fkf1 protein
dC(24)= Np5*C(23) - Np6*(Nd4 - ThetaPhyA*(C(20) /(Ng1 + C(20))))*C(24);

%CO mRNA
dC(25)=Bco+ (NK8^2)/((NK8^2) + (C(22)^2))*(Nv5 + Nv6*(1-ThetaPhyA)*(C(15)/(NK9 + C(15)))) - Nk4*C(25);

%CO protein
dC(26)= Np7*C(25) - Np8*(Nd5 + Nd6*(1-ThetaPhyA)*C(15) - ThetaPhyA*C(24)/(C(24) + Ng2))*C(26);

% FT model
dC(27) = (Nv7 + Nv8*C(11)/(NK10 + C(11)))*(Nv9 +Nv10*NK11/(NK11 + C(22)))*(C(26)^2)/((C(26)^2) + (NK12^2)) - Nk5*C(27);