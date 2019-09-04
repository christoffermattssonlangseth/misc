%% error bar plotting, combining both SBH and SBL


%%
clear
% SBH
Cy3_SBH_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c2_ORG.csv');
Cy5_SBH_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c3_ORG.csv');
Cy7_SBH_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c4_ORG.csv');
A488_SBH_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c5_ORG.csv');

Cy3_SBH_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c2_ORG.csv');
Cy5_SBH_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c3_ORG.csv');
Cy7_SBH_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c4_ORG.csv');
A488_SBH_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c5_ORG.csv');

Cy3_SBH_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c2_ORG.csv');
Cy5_SBH_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c3_ORG.csv');
Cy7_SBH_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c4_ORG.csv');
A488_SBH_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c5_ORG.csv');

%SBL 
Cy3_SBL_ROI1_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c2_ORG.csv');
Cy5_SBL_ROI1_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c3_ORG.csv');
Cy7_SBL_ROI1_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c4_ORG.csv');
A488_SBL_ROI1_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c5_ORG.csv');

Cy3_SBL_ROI2_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c2_ORG.csv');
Cy5_SBL_ROI2_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c3_ORG.csv');
Cy7_SBL_ROI2_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c4_ORG.csv');
A488_SBL_ROI2_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c5_ORG.csv');

Cy3_SBL_ROI3_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c2_ORG.csv');
Cy5_SBL_ROI3_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c3_ORG.csv');
Cy7_SBL_ROI3_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c4_ORG.csv');
A488_SBL_ROI3_Cyc1  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c5_ORG.csv');

%%
% SBH
Cy3_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _Cy3 (LED Filter 555)_ORG.csv');
Cy5_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _Cy5_ORG.csv');
Cy7_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _AF750Cy7_ORG.csv');
A488_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _FITC488_ORG.csv');

Cy3_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c2_ORG.csv');
Cy5_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c3_ORG.csv');
Cy7_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c4_ORG.csv');
A488_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c5_ORG.csv');

Cy3_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c2_ORG.csv');
Cy5_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c3_ORG.csv');
Cy7_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c4_ORG.csv');
A488_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c5_ORG.csv');
% SBL
Cy3_SBL_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_Cy3 (LED Filter 555)_ORG.csv');
Cy5_SBL_ROI1_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_Cy5_ORG.csv');
Cy7_SBL_ROI1_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_AF750Cy7_ORG.csv');
A488_SBL_ROI1_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_FITC488_ORG.csv');

Cy3_SBL_ROI2_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_Cy3 (LED Filter 555)_ORG.csv');
Cy5_SBL_ROI2_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_Cy5_ORG.csv');
Cy7_SBL_ROI2_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_AF750Cy7_ORG.csv');
A488_SBL_ROI2_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_FITC488_ORG.csv');

Cy3_SBL_ROI3_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_Cy3 (LED Filter 555)_ORG.csv');
Cy5_SBL_ROI3_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_Cy5_ORG.csv');
Cy7_SBL_ROI3_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_AF750Cy7_ORG.csv');
A488_SBL_ROI3_Cyc2  = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_FITC488_ORG.csv');
%% Concatenating the tables to calculate new means and st deviations cyc 1 
% SBH
Cy3_SBH_ALLROI_Cyc1 = [Cy3_SBH_ROI1_Cyc1; Cy3_SBH_ROI2_Cyc1; Cy3_SBH_ROI3_Cyc1];
Cy5_SBH_ALLROI_Cyc1 = [Cy5_SBH_ROI1_Cyc1; Cy5_SBH_ROI2_Cyc1; Cy5_SBH_ROI3_Cyc1];
Cy7_SBH_ALLROI_Cyc1 = [Cy7_SBH_ROI1_Cyc1; Cy7_SBH_ROI2_Cyc1; Cy7_SBH_ROI3_Cyc1];
A488_SBH_ALLROI_Cyc1 = [A488_SBH_ROI1_Cyc1; A488_SBH_ROI2_Cyc1; A488_SBH_ROI3_Cyc1];

% SBL
Cy3_SBL_ALLROI_Cyc1 = [Cy3_SBL_ROI1_Cyc1; Cy3_SBL_ROI2_Cyc1; Cy3_SBL_ROI3_Cyc1];
Cy5_SBL_ALLROI_Cyc1 = [Cy5_SBL_ROI1_Cyc1; Cy5_SBL_ROI2_Cyc1; Cy5_SBL_ROI3_Cyc1];
Cy7_SBL_ALLROI_Cyc1 = [Cy7_SBL_ROI1_Cyc1; Cy7_SBL_ROI2_Cyc1; Cy7_SBL_ROI3_Cyc1];
A488_SBL_ALLROI_Cyc1 = [A488_SBL_ROI1_Cyc1; A488_SBL_ROI2_Cyc1; A488_SBL_ROI3_Cyc1];


%% Concatenating the tables to calculate new means and st deviations cyc 2 
Cy3_SBH_ALLROI_Cyc2 = [Cy3_SBH_ROI1_Cyc2; Cy3_SBH_ROI2_Cyc2; Cy3_SBH_ROI3_Cyc2];
Cy5_SBH_ALLROI_Cyc2 = [Cy5_SBH_ROI1_Cyc2; Cy5_SBH_ROI2_Cyc2; Cy5_SBH_ROI3_Cyc2];
Cy7_SBH_ALLROI_Cyc2 = [Cy7_SBH_ROI1_Cyc2; Cy7_SBH_ROI2_Cyc2; Cy7_SBH_ROI3_Cyc2];
A488_SBH_ALLROI_Cyc2 = [A488_SBH_ROI1_Cyc2; A488_SBH_ROI2_Cyc2; A488_SBH_ROI3_Cyc2];

% SBL
Cy3_SBL_ALLROI_Cyc2 = [Cy3_SBL_ROI1_Cyc2; Cy3_SBL_ROI2_Cyc2; Cy3_SBL_ROI3_Cyc2];
Cy5_SBL_ALLROI_Cyc2 = [Cy5_SBL_ROI1_Cyc2; Cy5_SBL_ROI2_Cyc2; Cy5_SBL_ROI3_Cyc2];
Cy7_SBL_ALLROI_Cyc2 = [Cy7_SBL_ROI1_Cyc2; Cy7_SBL_ROI2_Cyc2; Cy7_SBL_ROI3_Cyc2];
A488_SBL_ALLROI_Cyc2 = [A488_SBL_ROI1_Cyc2; A488_SBL_ROI2_Cyc2; A488_SBL_ROI3_Cyc2];

%% conversion from table to array, cycle 1 
Cy3_SBH_ALLROI_Cyc1 = table2array(Cy3_SBH_ALLROI_Cyc1);
Cy5_SBH_ALLROI_Cyc1 = table2array(Cy5_SBH_ALLROI_Cyc1);
Cy7_SBH_ALLROI_Cyc1 = table2array(Cy7_SBH_ALLROI_Cyc1);
A488_SBH_ALLROI_Cyc1 = table2array(A488_SBH_ALLROI_Cyc1);

Cy3_SBL_ALLROI_Cyc1 = table2array(Cy3_SBL_ALLROI_Cyc1);
Cy5_SBL_ALLROI_Cyc1 = table2array(Cy5_SBL_ALLROI_Cyc1);
Cy7_SBL_ALLROI_Cyc1 = table2array(Cy7_SBL_ALLROI_Cyc1);
A488_SBL_ALLROI_Cyc1 = table2array(A488_SBL_ALLROI_Cyc1);

%% conversion from table to array, Cycle 2
Cy3_SBH_ALLROI_Cyc2 = table2array(Cy3_SBH_ALLROI_Cyc2);
Cy5_SBH_ALLROI_Cyc2 = table2array(Cy5_SBH_ALLROI_Cyc2);
Cy7_SBH_ALLROI_Cyc2 = table2array(Cy7_SBH_ALLROI_Cyc2);
A488_SBH_ALLROI_Cyc2 = table2array(A488_SBH_ALLROI_Cyc2);

Cy3_SBL_ALLROI_Cyc2 = table2array(Cy3_SBL_ALLROI_Cyc2);
Cy5_SBL_ALLROI_Cyc2 = table2array(Cy5_SBL_ALLROI_Cyc2);
Cy7_SBL_ALLROI_Cyc2 = table2array(Cy7_SBL_ALLROI_Cyc2);
A488_SBL_ALLROI_Cyc2 = table2array(A488_SBL_ALLROI_Cyc2);
%% mean
% cycle 1
% ROI 1 
Cy3_SBH_ALLROI_Cyc1_mean = mean(Cy3_SBH_ALLROI_Cyc1,1);
Cy5_SBH_ALLROI_Cyc1_mean = mean(Cy5_SBH_ALLROI_Cyc1,1);
Cy7_SBH_ALLROI_Cyc1_mean = mean(Cy7_SBH_ALLROI_Cyc1,1);
A488_SBH_ALLROI_Cyc1_mean = mean(A488_SBH_ALLROI_Cyc1,1);

Cy3_SBL_ALLROI_Cyc1_mean = mean(Cy3_SBL_ALLROI_Cyc1,1);
Cy5_SBL_ALLROI_Cyc1_mean = mean(Cy5_SBL_ALLROI_Cyc1,1);
Cy7_SBL_ALLROI_Cyc1_mean = mean(Cy7_SBL_ALLROI_Cyc1,1);
A488_SBL_ALLROI_Cyc1_mean = mean(A488_SBL_ALLROI_Cyc1,1);

% cycle 2
Cy3_SBH_ALLROI_Cyc2_mean = mean(Cy3_SBH_ALLROI_Cyc2,1);
Cy5_SBH_ALLROI_Cyc2_mean = mean(Cy5_SBH_ALLROI_Cyc2,1);
Cy7_SBH_ALLROI_Cyc2_mean = mean(Cy7_SBH_ALLROI_Cyc2,1);
A488_SBH_ALLROI_Cyc2_mean = mean(A488_SBH_ALLROI_Cyc2,1);

Cy3_SBL_ALLROI_Cyc2_mean = mean(Cy3_SBL_ALLROI_Cyc2,1);
Cy5_SBL_ALLROI_Cyc2_mean = mean(Cy5_SBL_ALLROI_Cyc2,1);
Cy7_SBL_ALLROI_Cyc2_mean = mean(Cy7_SBL_ALLROI_Cyc2,1);
A488_SBL_ALLROI_Cyc2_mean = mean(A488_SBL_ALLROI_Cyc2,1);
%% std
% cycle 1
% ROI 1 
Cy3_SBH_ALLROI_Cyc1_std = std(Cy3_SBH_ALLROI_Cyc1,1);
Cy5_SBH_ALLROI_Cyc1_std = std(Cy5_SBH_ALLROI_Cyc1,1);
Cy7_SBH_ALLROI_Cyc1_std = std(Cy7_SBH_ALLROI_Cyc1,1);
A488_SBH_ALLROI_Cyc1_std = std(A488_SBH_ALLROI_Cyc1,1);

Cy3_SBL_ALLROI_Cyc2_std = std(Cy3_SBL_ALLROI_Cyc2,1);
Cy5_SBL_ALLROI_Cyc2_std = std(Cy5_SBL_ALLROI_Cyc2,1);
Cy7_SBL_ALLROI_Cyc2_std = std(Cy7_SBL_ALLROI_Cyc2,1);
A488_SBL_ALLROI_Cyc2_std = std(A488_SBL_ALLROI_Cyc2,1);

% cycle 2
Cy3_SBL_ALLROI_Cyc1_std = std(Cy3_SBL_ALLROI_Cyc1,1);
Cy5_SBL_ALLROI_Cyc1_std = std(Cy5_SBL_ALLROI_Cyc1,1);
Cy7_SBL_ALLROI_Cyc1_std = std(Cy7_SBL_ALLROI_Cyc1,1);
A488_SBL_ALLROI_Cyc1_std = std(A488_SBL_ALLROI_Cyc1,1);

Cy3_SBH_ALLROI_Cyc2_std = std(Cy3_SBH_ALLROI_Cyc2,1);
Cy5_SBH_ALLROI_Cyc2_std = std(Cy5_SBH_ALLROI_Cyc2,1);
Cy7_SBH_ALLROI_Cyc2_std = std(Cy7_SBH_ALLROI_Cyc2,1);
A488_SBH_ALLROI_Cyc2_std = std(A488_SBH_ALLROI_Cyc2,1);


%%
% cycle 2


Cy3_SBH_ALLROI_Cyc1_mean = mean(Cy3_SBH_ALLROI_Cyc1,1);
Cy5_SBH_ALLROI_Cyc1_mean = mean(Cy5_SBH_ALLROI_Cyc1,1);
Cy7_SBH_ALLROI_Cyc1_mean = mean(Cy7_SBH_ALLROI_Cyc1,1);
A488_SBH_ALLROI_Cyc1_mean = mean(A488_SBH_ALLROI_Cyc1,1);

Cy3_SBL_ALLROI_Cyc1_mean = mean(Cy3_SBL_ALLROI_Cyc1,1);
Cy5_SBL_ALLROI_Cyc1_mean = mean(Cy5_SBL_ALLROI_Cyc1,1);
Cy7_SBL_ALLROI_Cyc1_mean = mean(Cy7_SBL_ALLROI_Cyc1,1);
A488_SBL_ALLROI_Cyc1_mean = mean(A488_SBL_ALLROI_Cyc1,1);


Cy3_SBH_ALLROI_Cyc2_mean = mean(Cy3_SBH_ALLROI_Cyc2,1);
Cy5_SBH_ALLROI_Cyc2_mean = mean(Cy5_SBH_ALLROI_Cyc2,1);
Cy7_SBH_ALLROI_Cyc2_mean = mean(Cy7_SBH_ALLROI_Cyc2,1);
A488_SBH_ALLROI_Cyc2_mean = mean(A488_SBH_ALLROI_Cyc2,1);

Cy3_SBL_ALLROI_Cyc2_mean = mean(Cy3_SBL_ALLROI_Cyc2,1);
Cy5_SBL_ALLROI_Cyc2_mean = mean(Cy5_SBL_ALLROI_Cyc2,1);
Cy7_SBL_ALLROI_Cyc2_mean = mean(Cy7_SBL_ALLROI_Cyc2,1);
A488_SBL_ALLROI_Cyc2_mean = mean(A488_SBL_ALLROI_Cyc2,1);
%%
co = [0.0 0.0 1.0;...
      1.0 0.0 0.0];
%   co = [0 0.4470 0.7410;...
%       0.4940 0.1840 0.5560];
set(groot,'defaultAxesColorOrder',co)


figure()
sgtitle('Pixel and intensity across RCPs: Cycle 1','FontSize',18)
subplot(2,2,1)
errorbar(Cy3_SBH_ALLROI_Cyc1_mean, Cy3_SBH_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(Cy3_SBL_ALLROI_Cyc1_mean, Cy3_SBL_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('Cy3')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12; 
% xticks([-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11])
% xticklabels({'-11' '-10' '-9' '-8' '-7' '-6' '-5' '-4' '-3' '-2' '-1' '0' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11'})
xlim([1 21])

subplot(2,2,2)
errorbar(Cy5_SBH_ALLROI_Cyc1_mean, Cy5_SBH_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(Cy5_SBL_ALLROI_Cyc1_mean, Cy5_SBL_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('Cy5')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,3)
errorbar(Cy7_SBH_ALLROI_Cyc1_mean, Cy7_SBH_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(Cy7_SBL_ALLROI_Cyc1_mean, Cy7_SBL_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('AF750Cy7')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12; 
xlim([1 21])

subplot(2,2,4)
errorbar(A488_SBH_ALLROI_Cyc1_mean, A488_SBH_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(A488_SBL_ALLROI_Cyc1_mean, A488_SBL_ALLROI_Cyc1_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('FITC488')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax.FontSize = 12; 
xlim([1 21])

%%
co = [0.0 0.0 1.0;...
      1.0 0.0 0.0];
%   co = [0 0.4470 0.7410;...
%       0.4940 0.1840 0.5560];
set(groot,'defaultAxesColorOrder',co)

figure()
sgtitle('Pixel and intensity across RCPs: Cycle 2','FontSize',18)
subplot(2,2,1)
errorbar(Cy3_SBH_ALLROI_Cyc2_mean, Cy3_SBH_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(Cy3_SBL_ALLROI_Cyc2_mean, Cy3_SBL_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('Cy3')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12; 
% xticks([-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11])
% xticklabels({'-11' '-10' '-9' '-8' '-7' '-6' '-5' '-4' '-3' '-2' '-1' '0' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11'})
xlim([1 23])


subplot(2,2,2)
errorbar(Cy5_SBH_ALLROI_Cyc2_mean, Cy5_SBH_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(Cy5_SBL_ALLROI_Cyc2_mean, Cy5_SBL_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('Cy5')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,3)
errorbar(Cy7_SBH_ALLROI_Cyc2_mean, Cy7_SBH_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(Cy7_SBL_ALLROI_Cyc2_mean, Cy7_SBL_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('AF750Cy7')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12; 
xlim([1 21])

subplot(2,2,4)
errorbar(A488_SBH_ALLROI_Cyc2_mean, A488_SBH_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
hold on 
errorbar(A488_SBL_ALLROI_Cyc2_mean, A488_SBL_ALLROI_Cyc2_std, 'MarkerSize',10,'MarkerEdgeColor','red','MarkerFaceColor','red')
title('FITC488')
legend SBH SBL
xlabel ('Pixel number')
ylabel ('Intensity')
ax = gca;
ax.FontSize = 12; 
xlim([1 21])