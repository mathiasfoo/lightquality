t = tiledlayout(5,3,'TileSpacing','Loose','Padding','Compact');

purple=[75 0 130]/255;
A=100
D=10
a=1/D*A;
c=A+a
title(t,'Photoperiod')
xlabel(t,'Time (h)')
ylabel(t,'Light Intensity (µmol/m²s)')
y=0

% Tile B1
nexttile
g1=14;
z1=g1*100;
x1= [0:0.01:14.01];
y1= A*[zeros(1,1) ones(1,z1) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'Color','b','Linewidth',3)
% set(z,'Visible','off') 
hold on
%yline([0],'Color',"#333333",'Linewidth',3)
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('B1')
yticks([0 10 050 110])
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);



% Tile R1
nexttile
g1=14;
z1=g1*100;
x1= [0:0.01:14.01];
y1= A*[zeros(1,1) ones(1,z1) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'Color','r','Linewidth',3)
% set(z,'Visible','off') 
hold on
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('R1')
yticks([0 10 050 110])
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile M1
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= c*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= A*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x2,y2,'b','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('M1')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);


% Tile B2
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= A*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= a*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'b','Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x2,y2,'r','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('B2')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile R2
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= A*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= a*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'r','Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x2,y2,'b','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('R2')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile M2
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= c*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= a*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x2,y2,'b','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('M2')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile B3
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= a*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= A*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x2,y2,'r','Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x1,y1,'b','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('B3')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile R3
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= a*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= A*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x2,y2,'b','Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x1,y1,'r','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('R3')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile M3
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= c*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= A*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x2,y2,'r','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('M3')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile B4
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= A*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= c*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x2,y2,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x1,y1,'b','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('B4')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile B4
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= A*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= c*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x2,y2,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x1,y1,'r','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('B4')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);


% Tile M4
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= c*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= a*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x1,y1,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x2,y2,'r','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('M4')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile B5
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= a*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= c*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x2,y2,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x1,y1,'b','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('B5')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

% Tile R5
nexttile
g1=8;
g2=g1+0.01;
z1=g1*100;
z2=1400-z1;
x1= [0:0.01:g2];
x2=[g1:0.01:14.01];
y1= a*[zeros(1,1) ones(1,z1) zeros(1,1)];
y2= c*[zeros(1,1) ones(1,z2) zeros(1,1)];
% z=fplot(100*rectangularPulse(a,b1,x),'b','Linewidth',3)
plot(x2,y2,'Color',purple,'Linewidth',3)
% set(z,'Visible','off') 
hold on  
plot(x1,y1,'r','Linewidth',3)
% g=fplot(50*rectangularPulse(b1,b2,x),'r','Linewidth',3)  
% set(y,'Visible','off')
% gray=yline([0],'Color',"#333333",'Linewidth',3)
y = 0;
line([-1,0],[y,y],'Color',"#333333",'Linewidth',3)
line([14,24],[y,y],'Color',"#333333",'Linewidth',3)
hold off
title('R5')
%ylabel('Light Intensity (µmol/m²s)')
yticks([0 10 050 110])
%xlabel('Time (h)')
xticks([0 8 14 24])
ylim([-1 130]);
xlim([-1 24]);

%tileLegend
nexttile
d=yline([-5],'b','Linewidth',3)
e=yline([-2],'r','Linewidth',3)
f=yline([-3],'Color',purple,'Linewidth',3)
g=yline([-4],'Color',"#333333",'Linewidth',3)
lh=legend('Monochromatic Blue light','Monochromatic Red light','Mixture of Red and Blue','All lights turned off');
   set(lh,'position',[0 0 0.25 0.12])
ylim([-1 130]);
xlim([-1 24]);
axis off

print('1page14conditionsv3','-dpdf','-fillpage')
