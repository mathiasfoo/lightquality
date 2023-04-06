t = tiledlayout(4,2,'TileSpacing','Loose','Padding','Compact');

xlabel(t,'Photoperiod (h)')


PP=1:1:24;
WP=PP(1,end);
DTF_nominal= 21.62*[ones(1,WP)];
HYP_nominal= 1.18*[ones(1,WP)];
HYP_limit= 1*[ones(1,WP)];
grayColor = [128 128 128]/255;
black= [0 0 0]/255;

% Tile B1 DTF
nexttile
hold on
plot(PP,DTFB1(3,:),'Linewidth',3)  
plot(PP,DTFB1(6,:),'Linewidth',3)  
plot(PP,DTFB1(9,:),'Linewidth',3)  
plot(PP,DTFB1(12,:),'Linewidth',3)  
plot(PP,DTF_nominal,'--','Color', grayColor,'Linewidth',1)
legend('Location','northeast')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([15 45]);
xlabel('Photoperiod (h)')
ylabel('DTF');
title('B1 DTF')

% Tile B1 HYP
nexttile
hold on
plot(PP,HYPB1(3,:),'Linewidth',3)  
plot(PP,HYPB1(6,:),'Linewidth',3)  
plot(PP,HYPB1(9,:),'Linewidth',3)  
plot(PP,HYPB1(12,:),'Linewidth',3)  
plot(PP,HYP_nominal,'--','Color', grayColor,'Linewidth',1)  
plot(PP,HYP_limit,'--','Color', black,'Linewidth',2)
legend('Location','northwest')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([0.5 1.5]);
xlabel('Photoperiod (h)')
ylabel('HYP (mm)');
title('B1 HYP')

% Tile R1 DTF
nexttile
hold on
plot(PP,DTFR1(3,:),'Linewidth',3)  
plot(PP,DTFR1(6,:),'Linewidth',3)  
plot(PP,DTFR1(9,:),'Linewidth',3)  
plot(PP,DTFR1(12,:),'Linewidth',3)  
plot(PP,DTF_nominal,'--','Color', grayColor,'Linewidth',1)
legend('Location','southeast')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([15 45]);
xlabel('Photoperiod (h)')
ylabel('DTF');
title('R1 DTF')

% Tile R1 HYP
nexttile
hold on
plot(PP,HYPR1(3,:),'Linewidth',3)  
plot(PP,HYPR1(6,:),'Linewidth',3)  
plot(PP,HYPR1(9,:),'Linewidth',3)  
plot(PP,HYPR1(12,:),'Linewidth',3)  
plot(PP,HYP_nominal,'--','Color', grayColor,'Linewidth',1)  
plot(PP,HYP_limit,'--','Color', black,'Linewidth',2)
legend('Location','northwest')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([0.5 1.5]);
xlabel('Photoperiod (h)')
ylabel('HYP (mm)');
title('R1 HYP')

% Tile Rev B1 DTF
nexttile
hold on
plot(PP,DTFRevB1(3,:),'Linewidth',3)  
plot(PP,DTFRevB1(6,:),'Linewidth',3)  
plot(PP,DTFRevB1(9,:),'Linewidth',3)  
plot(PP,DTFRevB1(12,:),'Linewidth',3)  
plot(PP,DTF_nominal,'--','Color', grayColor,'Linewidth',1)
legend('Location','northeast')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([15 45]);
xlabel('Photoperiod (h)')
ylabel('DTF');
title('Rev B1 DTF')

% Tile Rev B1 HYP
nexttile
hold on
plot(PP,HYPRevB1(3,:),'Linewidth',3)  
plot(PP,HYPRevB1(6,:),'Linewidth',3)  
plot(PP,HYPRevB1(9,:),'Linewidth',3)  
plot(PP,HYPRevB1(12,:),'Linewidth',3)  
plot(PP,HYP_nominal,'--','Color', grayColor,'Linewidth',1)  
plot(PP,HYP_limit,'--','Color', black,'Linewidth',2)
legend('Location','northwest')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([0.5 1.5]);
xlabel('Photoperiod (h)')
ylabel('HYP (mm)');
title('Rev B1 HYP')

% Tile Rev R1 DTF
nexttile
hold on
plot(PP,DTF1(3,:),'Linewidth',3)  
plot(PP,DTF1(6,:),'Linewidth',3)  
plot(PP,DTF1(9,:),'Linewidth',3)  
plot(PP,DTF1(12,:),'Linewidth',3)  
plot(PP,DTF_nominal,'--','Color', grayColor,'Linewidth',1)
legend('Location','southeast')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([15 45]);
xlabel('Photoperiod (h)')
ylabel('DTF');
title('Rev R1 DTF')

% Tile Rev R1 HYP
nexttile
hold on
plot(PP,HYP1(3,:),'Linewidth',3)  
plot(PP,HYP1(6,:),'Linewidth',3)  
plot(PP,HYP1(9,:),'Linewidth',3)  
plot(PP,HYP1(12,:),'Linewidth',3)  
plot(PP,HYP_nominal,'--','Color', grayColor,'Linewidth',1)  
plot(PP,HYP_limit,'--','Color', black,'Linewidth',2)
legend('Location','northwest')
legend('I_{blue}=300','I_{blue}=600','I_{blue}=900','I_{blue}=1200');
xlim([2 24]); 
ylim([0.5 1.5]);
xlabel('Photoperiod (h)')
ylabel('HYP (mm)');
title('Rev R1 HYP')

print('1page4conditionsv1',['-dpdf'],'-fillpage')