clc
clear all
close all

Nday = 10; % Experimental data collected at Day 10
I=0;


for A=100:100:1200; %Set intensity, varying from 100 to 1200 μmol⋅s^−1⋅m^−2, in 100 intervals
    I=I+1   
    J=0;
% for R=1:1:12;       %Intensity, varying ratio from 1 to 12 in 1 incremental intervals
    global Ired Iblue 
    J=J+1;
    %create array for intensity
    DTF=[];
    FTarea=[];
    HYP=[];                                 
    PIFarea=[];
    D=0;   % The period of darkness
    P=24-D; % The period of photoperiod, calculated by minusing the darkness period
 for LH=1:1:P %set lighting hour

% a=1/R*A;    %Varied intensity, calculated by multipling the set intensity with the ratio 

% % % Light condition for one day % % % 

% Blue first conditions

% (B1)—Monochromatic blue only, blue light intensity kept at
% 100-1200µmol/m²s, darkness comes after the photoperiod.
% IntensityBB = 1*A*[ones(1,LH) zeros(1,24-LH)];
% IntensityRR = 1*0*[ones(1,LH) zeros(1,24-LH)];

% Reverse (B1)—Monochromatic blue only, blue light intensity kept at
%100-1200µmol/m²s, darkness comes before the photoperiod.
% IntensityBB = 1*A*[zeros(1,24-LH) ones(1,LH)];
% IntensityRR = 1*0*[zeros(1,24-LH) ones(1,LH)];

% (B2)—Monochromatic blue is shined first, then monochromatic red. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod.
%  IntensityRR = 1*a*[zeros(1,LH) ones(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*A*[ones(1,LH) zeros(1,P-LH) zeros(1,D)]; 

% Reverse (B2)—Monochromatic blue is shined first, then monochromatic red. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod.
%  IntensityRR = 1*a*[zeros(1,D) zeros(1,LH) ones(1,P-LH)]; 
%  IntensityBB = 1*A*[zeros(1,D) ones(1,LH) zeros(1,P-LH)]; 

% (B3)—Monochromatic blue is shined first, then monochromatic red. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes after the photoperiod.
%  IntensityRR = 1*A*[zeros(1,LH) ones(1,P-LH) zeros(1,D)];
%  IntensityBB = 1*a*[ones(1,LH) zeros(1,P-LH) zeros(1,D)]; 

% Reverse (B3)—Monochromatic blue is shined first, then monochromatic red. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes before the photoperiod.
%  IntensityRR = 1*A*[zeros(1,D) zeros(1,LH) ones(1,P-LH)];
%  IntensityBB = 1*a*[zeros(1,D) ones(1,LH) zeros(1,P-LH)]; 

% (B4)—Monochromatic blue is shined first, then mixed light of red and blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*a*[zeros(1,LH) ones(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*A*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 

% Reverse (B4)—Monochromatic blue is shined first, then mixed light of red and blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*a*[zeros(1,D) zeros(1,LH) ones(1,P-LH)]; 
%  IntensityBB = 1*A*[zeros(1,D) ones(1,LH) ones(1,P-LH) ]; 

% (B5)—Monochromatic blue is shined first, then mixed light of red and blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*A*[zeros(1,LH) ones(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*a*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 

% Reverse (B5)—Monochromatic blue is shined first, then mixed light of red and blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*A*[zeros(1,D) zeros(1,LH) ones(1,P-LH)]; 
%  IntensityBB = 1*a*[zeros(1,D) ones(1,LH) ones(1,P-LH)]; 

% Red first conditions

% (R1)—Monochromatic red only, red light intensity kept at
% 100-1200µmol/m²s, darkness comes after the photoperiod.
%  IntensityBB = 1*0*[ones(1,LH) zeros(1,24-LH)];
%  IntensityRR = 1*A*[ones(1,LH) zeros(1,24-LH)];

% Reverse (R1)—Monochromatic red only, red light intensity kept at
% 100-1200µmol/m²s, darkness comes before the photoperiod.
 IntensityBB = 1*0*[zeros(1,24-LH) ones(1,LH)];
 IntensityRR = 1*A*[zeros(1,24-LH) ones(1,LH)]; 

% (R2)—Monochromatic red is shined first, then monochromatic blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*A*[ones(1,LH) zeros(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*a*[zeros(1,LH) ones(1,P-LH) zeros(1,D)];

% Reverse (R2)—Monochromatic red is shined first, then monochromatic blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*A*[zeros(1,D) ones(1,LH) zeros(1,P-LH)]; 
%  IntensityBB = 1*a*[zeros(1,D) zeros(1,LH) ones(1,P-LH)];

% (R3)—Monochromatic red is shined first, then monochromatic blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*a*[ones(1,LH) zeros(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*A*[zeros(1,LH) ones(1,P-LH) zeros(1,D)]; 

% Reverse (R3)—Monochromatic red is shined first, then monochromatic blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*a*[zeros(1,D) ones(1,LH) zeros(1,P-LH)]; 
%  IntensityBB = 1*A*[zeros(1,D) zeros(1,LH) ones(1,P-LH)]; 

% (R4)—Monochromatic red is shined first, then mixed light of red and blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*A*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*a*[zeros(1,LH) ones(1,P-LH) zeros(1,D)]; 

% Reverse (R4)—Monochromatic red is shined first, then mixed light of red and blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*A*[zeros(1,D) ones(1,LH) ones(1,P-LH)]; 
%  IntensityBB = 1*a*[zeros(1,D) zeros(1,LH) ones(1,P-LH)]; 

% (R5)—Monochromatic red is shined first, then mixed light of red and blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*a*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*A*[zeros(1,LH) ones(1,P-LH) zeros(1,D)];

% Reverse (R5)—Monochromatic red is shined first, then mixed light of red and blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*a*[zeros(1,D) ones(1,LH) ones(1,P-LH)]; 
%  IntensityBB = 1*A*[zeros(1,D) zeros(1,LH) ones(1,P-LH)];


% Mix first conditions

% (M1)—Mixed colour of red and blue first, then monochromatic blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*a*[ones(1,LH) zeros(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*A*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 

% Reverse (M1)—Mixed colour of red and blue first, then monochromatic blue. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*a*[zeros(1,D) ones(1,LH) zeros(1,P-LH)]; 
%  IntensityBB = 1*A*[zeros(1,D) ones(1,LH) ones(1,P-LH)]; 

% (M2)—Mixed colour of red and blue first, then monochromatic blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*A*[ones(1,LH) zeros(1,P-LH) zeros(1,D)];
%  IntensityBB = 1*a*[ones(1,LH) ones(1,P-LH) zeros(1,D)];

% Reverse (M2)—Mixed colour of red and blue first, then monochromatic blue. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*A*[zeros(1,D) ones(1,LH) zeros(1,P-LH)];
%  IntensityBB = 1*a*[zeros(1,D) ones(1,LH) ones(1,P-LH)];

% (M3)—Mixed colour of red and blue first, then monochromatic red. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes after the photoperiod
%  IntensityRR = 1*A*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 
%  IntensityBB = 1*a*[ones(1,LH) zeros(1,P-LH) zeros(1,D)];

% Reverse (M3)—Mixed colour of red and blue first, then monochromatic red. 
% Red light intensity is the one kept at 100-1200µmol/m²s, blue light intensity is the varying one. Darkness comes before the photoperiod
%  IntensityRR = 1*A*[zeros(1,D) ones(1,LH) ones(1,P-LH)]; 
%  IntensityBB = 1*a*[zeros(1,D)ones(1,LH) zeros(1,P-LH)];

% (M4)—Mixed colour of red and blue first, then monochromatic red. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes after the photoperiod
%   IntensityRR = 1*a*[ones(1,LH) ones(1,P-LH) zeros(1,D)]; 
%   IntensityBB = 1*A*[ones(1,LH) zeros(1,P-LH) zeros(1,D)]; 

% Reverse (M4)—Mixed colour of red and blue first, then monochromatic red. 
% Blue light intensity is the one kept at 100-1200µmol/m²s, red light intensity is the varying one. Darkness comes before the photoperiod
%   IntensityRR = 1*a*[zeros(1,D) ones(1,LH) ones(1,P-LH)]; 
%   IntensityBB = 1*A*[zeros(1,D) ones(1,LH) zeros(1,P-LH)]; 

%  light condition for N days
 IntensityBB = repmat(IntensityBB,1,Nday);
 IntensityRR = repmat(IntensityRR,1,Nday);
    
 ProteinLevel = [];
    
 %initial condition for genes
 C = 1*ones(1,27);
 C(12)=0;
 C(16)=0;
 C(17)=0;
 C(18)=0;
    
 for t = 1:length(IntensityRR)
        tspan = [t t+1];
        Ired = IntensityRR(t);
        Iblue = IntensityBB(t);
        [T,C] = ode15s('proposed_RBLight_FT',tspan,C(end,:));
        ProteinLevel = [ProteinLevel; C(end,:)];
  end
        
  tp = 1:length(IntensityRR);
  %Calculating area under curve of mFT
  X=1:1:24;
  Q=Nday*24;
  q=Q-23;
  Y1 = ProteinLevel((q:Q),27); 
  FTarea= [FTarea,trapz(X,Y1)];
  % Calculating days to flowering
  DTF=[DTF,16.55-1355.22/(1-FTarea(LH)/0.02)];
    
  %Calculating area under curve of PIF
  Y2=ProteinLevel((q:Q),11);    
  PIFarea= [PIFarea,trapz(X,Y2)];
  % Calculating hypocotyl length
  HYP=[HYP,ProteinLevel(end,12)];
end
if I==1 
DTF1=round(DTF);
elseif I==2 
    DTF2= round(DTF);
    elseif I==3 
    DTF3= round(DTF);
    elseif I==4 
    DTF4= round(DTF);
    elseif I==5 
    DTF5= round(DTF);
    elseif I==6 
    DTF6= round(DTF);
    elseif I==7 
    DTF7= round(DTF);
    elseif I==8 
    DTF8= round(DTF);
    elseif I==9 
    DTF9= round(DTF);
    elseif I==10 
    DTF10= round(DTF);
    elseif I==11 
    DTF11= round(DTF);
    elseif I==12 
    DTF12= round(DTF);
end   
if I==1 
HYP1=round(HYP,2);
elseif I==2 
    HYP2=round(HYP,2);
    elseif I==3 
    HYP3= round(HYP,2);
    elseif I==4 
    HYP4= round(HYP,2);
    elseif I==5 
    HYP5= round(HYP,2);
    elseif I==6 
    HYP6= round(HYP,2);
    elseif I==7 
    HYP7= round(HYP,2);
    elseif I==8 
    HYP8= round(HYP,2);
    elseif I==9 
    HYP9= round(HYP,2);
    elseif I==10 
    HYP10= round(HYP,2);
    elseif I==11 
    HYP11= round(HYP,2);
    elseif I==12 
    HYP12= round(HYP,2);
end  
g02(I,J)=round(DTF([2]));
g04(I,J)=round(DTF([4]));
g06(I,J)=round(DTF([6]));
g08(I,J)=round(DTF([8]));
g10(I,J)=round(DTF([10]));
g12(I,J)=round(DTF([12]));
g14(I,J)=round(DTF([14]));
g16(I,J)=round(DTF([16]));
g18(I,J)=round(DTF([18]));
g20(I,J)=round(DTF([20]));
g22(I,J)=round(DTF([22]));
g24(I,J)=round(DTF([24]));

h02(I,J) = round(HYP([2]),2);
h04(I,J) = round(HYP([4]),2);
h06(I,J) = round(HYP([6]),2);
h08(I,J) = round(HYP([8]),2);
h10(I,J) = round(HYP([10]),2);
h12(I,J) = round(HYP([12]),2);
h14(I,J) = round(HYP([14]),2);
h16(I,J) = round(HYP([16]),2);
h18(I,J) = round(HYP([18]),2);
h20(I,J) = round(HYP([20]),2);
h22(I,J) = round(HYP([22]),2);
h24(I,J) = round(HYP([24]),2);

%%%Use the code below only if zeros are counting up instead of down%%%
% g02(I,J)=round(DTF([22]));
% g04(I,J)=round(DTF([20]));
% g06(I,J)=round(DTF([18]));
% g08(I,J)=round(DTF([16]));
% g10(I,J)=round(DTF([14]));
% g12(I,J)=round(DTF([12]));
% g14(I,J)=round(DTF([10]));
% g16(I,J)=round(DTF([8]));
% g18(I,J)=round(DTF([6]));
% g20(I,J)=round(DTF([4]));
% g22(I,J)=round(DTF([2]));
% 
% 
% h02(I,J) = round(HYP([22]),2);
% h04(I,J) = round(HYP([20]),2);    
% h06(I,J) = round(HYP([18]),2);
% h08(I,J) = round(HYP([16]),2);
% h10(I,J) = round(HYP([14]),2);
% h12(I,J) = round(HYP([12]),2);
% h14(I,J) = round(HYP([10]),2);
% h16(I,J) = round(HYP([8]),2);
% h18(I,J) = round(HYP([6]),2);
% h20(I,J) = round(HYP([4]),2);
% h22(I,J) = round(HYP([2]),2); % rounds to 2 decimal places 
% 
% minValue = min(DTF);
% [gcolumn(I,J)] = find(DTF == minValue);
% if gcolumn(I,J) == 24
% minvals = mink(DTF,2,2); %first 2 miminums along dimension 2.
% Min2Value=minvals(:, 2); %get the 2nd one.
% [gcolumn(I,J)] = find(DTF == Min2Value);
% gValue(I,J)=round(Min2Value);
% hValue(I,J)=round(HYP(gcolumn(I,J)),2);
% else
% gValue(I,J)=round(minValue);
% hValue(I,J)=round(HYP(gcolumn(I,J)),2);
%  end
%%%Use the code below only if zeros are counting up instead of down%%%

% clearvars -except A g02 g04 g06 g08 g10 g12 g14 g16 g18 g20 g22 g24 h02 h04 h06 h08 h10 h12 h14 h16 h18 h20 h22 h24 gcolumn gValue hValue Nday I J R D;
% end
clearvars -except A g02 g04 g06 g08 g10 g12 g14 g16 g18 g20 g22 g24 h02 h04 h06 h08 h10 h12 h14 h16 h18 h20 h22 h24 gcolumn gValue hValue Nday I D DTF1 DTF2 DTF3 DTF4 DTF5 DTF6 DTF7 DTF8 DTF9 DTF10 DTF11 DTF12 HYP1 HYP2 HYP3 HYP4 HYP5 HYP6 HYP7 HYP8 HYP9 HYP10 HYP11 HYP12;
end


% BrDTF3_10=DTF3;
% BrDTF6_10=DTF6;
% BrDTF9_10=DTF9;
% BrDTF12_10=DTF12;
% BrHYP3_10=HYP3;
% BrHYP6_10=HYP6;
% BrHYP9_10=HYP9;
% BrHYP12_10=HYP12;
% PP=1:1:14;
% WP=PP(1,end);
% DTF_nominal= 21.62*[ones(1,WP)];
% HYP_nominal= 1.18*[ones(1,WP)];
% cyan=[51 255 255]/255;
% lightblue=[173 180 240]/255;
% pureblue = [0 0 255]/255;
% darkblue =[51 2 142]/255;
% plum=[221 160 221]/255;
% violet=[143 0 255]/255;
% fuchsia=[255 0 255]/255;
% 
% t = tiledlayout(1,2,'TileSpacing','Loose','Padding','Compact');
% % title(t,'Photoperiod')
% xlabel(t,'Photoperiod (h)')
% 
% nexttile
% % plot(PP,DTF1,PP,DTF2,PP,DTF3,PP,DTF4,PP,DTF5,PP,DTF6,PP,DTF7,PP,DTF8,PP,DTF9,PP,DTF10,PP,DTF11,PP,DTF12,'LineWidth',3)
% plot(PP,DTF3,'LineWidth',3)
% hold on
% plot(PP,DTF6,'LineWidth',3)
% plot(PP,DTF9,'LineWidth',3)
% plot(PP,DTF12,'LineWidth',3)
% grayColor = [128 128 128]/255;
% plot(PP,DTF_nominal,'--','Color', grayColor,'Linewidth',1)    
% hold off
% set(gcf,'Position',[80 80 900 800])
% 
% ylabel('DTF');
% leg = legend('show');
% title(leg,'Light Intensity (µmol/m²s)')
% legend('Location','northeast')
% % legend('I_{blue}=100 I_{red}=10','I_{blue}=200 I_{red}=20','I_{blue}=300 I_{red}=30','I_{blue}=400 I_{red}=40','I_{blue}=500 I_{red}=50','I_{blue}=600 I_{red}=60','I_{blue}=700 I_{red}=70','I_{blue}=800 I_{red}=80','I_{blue}=900 I_{red}=90','I_{blue}=1000 I_{red}=100','I_{blue}=1100 I_{red}=110','I_{blue}=1200 I_{red}=120');
% %  legend('I_{blue}=100 I_{red}=9.1','I_{blue}=200 I_{red}=18.2','I_{blue}=300 I_{red}=27.3','I_{blue}=400 I_{red}=36.4','I_{blue}=500 I_{red}=45.5','I_{blue}=600 I_{red}=54.5','I_{blue}=700 I_{red}=63.6','I_{blue}=800 I_{red}=72.7','I_{blue}=900 I_{red}=81.8','I_{blue}=1000 I_{red}=90.9','I_{blue}=1100 I_{red}=100','I_{blue}=1200 I_{red}=109.1');
% %  legend('I_{blue}=100 I_{red}=8.3','I_{blue}=200 I_{red}=16.7','I_{blue}=300 I_{red}=25','I_{blue}=400 I_{red}=33.3','I_{blue}=500 I_{red}=41.7','I_{blue}=600 I_{red}=50','I_{blue}=700 I_{red}=58.3','I_{blue}=800 I_{red}=66.7','I_{blue}=900 I_{red}=75','I_{blue}=1000 I_{red}=83.3','I_{blue}=1100 I_{red}=91.7','I_{blue}=1200 I_{red}=100');
%  legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
    % xlim([1 14]); 
    % ylim([15 45]);
% 
% nexttile
% % plot(PP,HYP1,PP,HYP2,PP,HYP3,PP,HYP4,PP,HYP5,PP,HYP6,PP,HYP7,PP,HYP8,PP,HYP9,PP,HYP10,PP,HYP11,PP,HYP12,'LineWidth',3)
% plot(PP,HYP3,'LineWidth',3)
% hold on
% plot(PP,HYP6,'LineWidth',3)
% plot(PP,HYP9,'LineWidth',3)
% plot(PP,HYP12,'LineWidth',3)
% plot(PP,HYP_nominal,'--','Color', grayColor,'Linewidth',1)    
% hold off
% set(gcf,'Position',[80 80 900 800])
% 
% ylabel('HYP (mm)');
% leg = legend('show');
% title(leg,'Light Intensity (µmol/m²s)')
% legend('Location','southwest')
% %  legend('I_{blue}=100 I_{red}=10','I_{blue}=200 I_{red}=20','I_{blue}=300 I_{red}=30','I_{blue}=400 I_{red}=40','I_{blue}=500 I_{red}=50','I_{blue}=600 I_{red}=60','I_{blue}=700 I_{red}=70','I_{blue}=800 I_{red}=80','I_{blue}=900 I_{red}=90','I_{blue}=1000 I_{red}=100','I_{blue}=1100 I_{red}=110','I_{blue}=1200 I_{red}=120');
% %  legend('I_{blue}=100 I_{red}=9.1','I_{blue}=200 I_{red}=18.2','I_{blue}=300 I_{red}=27.3','I_{blue}=400 I_{red}=36.4','I_{blue}=500 I_{red}=45.5','I_{blue}=600 I_{red}=54.5','I_{blue}=700 I_{red}=63.6','I_{blue}=800 I_{red}=72.7','I_{blue}=900 I_{red}=81.8','I_{blue}=1000 I_{red}=90.9','I_{blue}=1100 I_{red}=100','I_{blue}=1200 I_{red}=109.1');
% % legend('I_{blue}=100 I_{red}=8.3','I_{blue}=200 I_{red}=16.7','I_{blue}=300 I_{red}=25','I_{blue}=400 I_{red}=33.3','I_{blue}=500 I_{red}=41.7','I_{blue}=600 I_{red}=50','I_{blue}=700 I_{red}=58.3','I_{blue}=800 I_{red}=66.7','I_{blue}=900 I_{red}=75','I_{blue}=1000 I_{red}=83.3','I_{blue}=1100 I_{red}=91.7','I_{blue}=1200 I_{red}=100');
% legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
% xlim([1 14]); 
% ylim([0.5 1.5])
