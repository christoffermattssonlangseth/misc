%% Do cmd F and replace cyc1 with cyc 2
% Cy3_SBL_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_Cy3 (LED Filter 555)_ORG.csv');
% Cy5_SBL_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_Cy5_ORG.csv');
% Cy7_SBL_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_AF750Cy7_ORG.csv');
% A488_SBL_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI1_OP/SBL_CYCLE2_ROI1_OP_FITC488_ORG.csv');
% 
% Cy3_SBL_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_Cy3 (LED Filter 555)_ORG.csv');
% Cy5_SBL_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_Cy5_ORG.csv');
% Cy7_SBL_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_AF750Cy7_ORG.csv');
% A488_SBL_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI2_OP/SBL_CYCLE2_ROI2_OP_FITC488_ORG.csv');
% 
% Cy3_SBL_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_Cy3 (LED Filter 555)_ORG.csv');
% Cy5_SBL_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_Cy5_ORG.csv');
% Cy7_SBL_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_AF750Cy7_ORG.csv');
% A488_SBL_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE2_ROI3_OP/SBL_CYCLE2_ROI3_OP_FITC488_ORG.csv');

%% Do cmd F and replace cyc2 with cyc 1

Cy3_SBL_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c2_ORG.csv');
Cy5_SBL_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c3_ORG.csv');
Cy7_SBL_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c4_ORG.csv');
A488_SBL_ROI1_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI1_OP/Orthogonal Projection 1 _c5_ORG.csv');

Cy3_SBL_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c2_ORG.csv');
Cy5_SBL_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c3_ORG.csv');
Cy7_SBL_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c4_ORG.csv');
A488_SBL_ROI2_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI2_OP/Orthogonal Projection 2_c5_ORG.csv');

Cy3_SBL_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c2_ORG.csv');
Cy5_SBL_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c3_ORG.csv');
Cy7_SBL_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c4_ORG.csv');
A488_SBL_ROI3_Cyc1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBL_CYCLE1_ROI3_OP/Orthogonal Projection 3_c5_ORG.csv');

%% conversion from table to array 
Cy3_SBL_ROI1_Cyc1 = table2array(Cy3_SBL_ROI1_Cyc1);
Cy5_SBL_ROI1_Cyc1 = table2array(Cy5_SBL_ROI1_Cyc1);
Cy7_SBL_ROI1_Cyc1 = table2array(Cy7_SBL_ROI1_Cyc1);
A488_SBL_ROI1_Cyc1 = table2array(A488_SBL_ROI1_Cyc1);

Cy3_SBL_ROI2_Cyc1 = table2array(Cy3_SBL_ROI2_Cyc1);
Cy5_SBL_ROI2_Cyc1 = table2array(Cy5_SBL_ROI2_Cyc1);
Cy7_SBL_ROI2_Cyc1 = table2array(Cy7_SBL_ROI2_Cyc1);
A488_SBL_ROI2_Cyc1 = table2array(A488_SBL_ROI2_Cyc1);

Cy3_SBL_ROI3_Cyc1 = table2array(Cy3_SBL_ROI3_Cyc1);
Cy5_SBL_ROI3_Cyc1 = table2array(Cy5_SBL_ROI3_Cyc1);
Cy7_SBL_ROI3_Cyc1 = table2array(Cy7_SBL_ROI3_Cyc1);
A488_SBL_ROI3_Cyc1 = table2array(A488_SBL_ROI3_Cyc1);

%% calculating the mean of each column 
% ROI 1 
Cy3_SBL_ROI1_Cyc1_mean = mean(Cy3_SBL_ROI1_Cyc1,1);
Cy3_SBL_ROI1_Cyc1_std = std(Cy3_SBL_ROI1_Cyc1,1);

Cy5_SBL_ROI1_Cyc1_mean = mean(Cy5_SBL_ROI1_Cyc1,1);
Cy5_SBL_ROI1_Cyc1_std = std(Cy5_SBL_ROI1_Cyc1,1);

Cy7_SBL_ROI1_Cyc1_mean = mean(Cy7_SBL_ROI1_Cyc1,1);
Cy7_SBL_ROI1_Cyc1_std = std(Cy7_SBL_ROI1_Cyc1,1);

A488_SBL_ROI1_Cyc1_mean = mean(A488_SBL_ROI1_Cyc1,1);
A488_SBL_ROI1_Cyc1_std = std(A488_SBL_ROI1_Cyc1,1);

% ROI 2 
Cy3_SBL_ROI2_Cyc1_mean = mean(Cy3_SBL_ROI2_Cyc1,1);
Cy3_SBL_ROI2_Cyc1_std = std(Cy3_SBL_ROI2_Cyc1,1);

Cy5_SBL_ROI2_Cyc1_mean = mean(Cy5_SBL_ROI2_Cyc1,1);
Cy5_SBL_ROI2_Cyc1_std = std(Cy5_SBL_ROI2_Cyc1,1);

Cy7_SBL_ROI2_Cyc1_mean = mean(Cy7_SBL_ROI2_Cyc1,1);
Cy7_SBL_ROI2_Cyc1_std = std(Cy7_SBL_ROI2_Cyc1,1);

A488_SBL_ROI2_Cyc1_mean = mean(A488_SBL_ROI2_Cyc1,1);
A488_SBL_ROI2_Cyc1_std = std(A488_SBL_ROI2_Cyc1,1);

%ROI 3 
Cy3_SBL_ROI3_Cyc1_mean = mean(Cy3_SBL_ROI3_Cyc1,1);
Cy3_SBL_ROI3_Cyc1_std = std(Cy3_SBL_ROI3_Cyc1,1);

Cy5_SBL_ROI3_Cyc1_mean = mean(Cy5_SBL_ROI3_Cyc1,1);
Cy5_SBL_ROI3_Cyc1_std = std(Cy5_SBL_ROI3_Cyc1,1);

Cy7_SBL_ROI3_Cyc1_mean = mean(Cy7_SBL_ROI3_Cyc1,1);
Cy7_SBL_ROI3_Cyc1_std = std(Cy7_SBL_ROI3_Cyc1,1);

A488_SBL_ROI3_Cyc1_mean = mean(A488_SBL_ROI3_Cyc1,1);
A488_SBL_ROI3_Cyc1_std = std(A488_SBL_ROI3_Cyc1,1);

%% calculating the mean of four values at ends

% extracting the ends and calculating the mean ROI 1
Cy3_SBL_ROI1_Cyc1_end1 = Cy3_SBL_ROI1_Cyc1_mean(:,1);
Cy3_SBL_ROI1_Cyc1_end2  = Cy3_SBL_ROI1_Cyc1_mean(:,2);
Cy3_SBL_ROI1_Cyc1_end20 = Cy3_SBL_ROI1_Cyc1_mean(:,20);
Cy3_SBL_ROI1_Cyc1_end21 = Cy3_SBL_ROI1_Cyc1_mean(:,21);

Cy3_SBL_ROI1_Cyc1_endmean = (Cy3_SBL_ROI1_Cyc1_end1+Cy3_SBL_ROI1_Cyc1_end2+Cy3_SBL_ROI1_Cyc1_end20+Cy3_SBL_ROI1_Cyc1_end21)/4


Cy5_SBL_ROI1_Cyc1_end1 = Cy5_SBL_ROI1_Cyc1_mean(:,1);
Cy5_SBL_ROI1_Cyc1_end2  = Cy5_SBL_ROI1_Cyc1_mean(:,2);
Cy5_SBL_ROI1_Cyc1_end20 = Cy5_SBL_ROI1_Cyc1_mean(:,20);
Cy5_SBL_ROI1_Cyc1_end21 = Cy5_SBL_ROI1_Cyc1_mean(:,21);

Cy5_SBL_ROI1_Cyc1_endmean = (Cy5_SBL_ROI1_Cyc1_end1+Cy5_SBL_ROI1_Cyc1_end2+Cy5_SBL_ROI1_Cyc1_end20+Cy5_SBL_ROI1_Cyc1_end21)/4

Cy7_SBL_ROI1_Cyc1_end1 = Cy7_SBL_ROI1_Cyc1_mean(:,1);
Cy7_SBL_ROI1_Cyc1_end2  = Cy7_SBL_ROI1_Cyc1_mean(:,2);
Cy7_SBL_ROI1_Cyc1_end20 = Cy7_SBL_ROI1_Cyc1_mean(:,20);
Cy7_SBL_ROI1_Cyc1_end21 = Cy7_SBL_ROI1_Cyc1_mean(:,21);

Cy7_SBL_ROI1_Cyc1_endmean = (Cy7_SBL_ROI1_Cyc1_end1+Cy7_SBL_ROI1_Cyc1_end2+Cy7_SBL_ROI1_Cyc1_end20+Cy7_SBL_ROI1_Cyc1_end21)/4

A488_SBL_ROI1_Cyc1_end1 = A488_SBL_ROI1_Cyc1_mean(:,1);
A488_SBL_ROI1_Cyc1_end2  = A488_SBL_ROI1_Cyc1_mean(:,2);
A488_SBL_ROI1_Cyc1_end20 = A488_SBL_ROI1_Cyc1_mean(:,20);
A488_SBL_ROI1_Cyc1_end21 = A488_SBL_ROI1_Cyc1_mean(:,21);

A488_SBL_ROI1_Cyc1_endmean = (A488_SBL_ROI1_Cyc1_end1+A488_SBL_ROI1_Cyc1_end2+A488_SBL_ROI1_Cyc1_end20+A488_SBL_ROI1_Cyc1_end21)/4

% extracting the ends and calculating the mean ROI 2
Cy3_SBL_ROI2_Cyc1_end1 = Cy3_SBL_ROI2_Cyc1_mean(:,1);
Cy3_SBL_ROI2_Cyc1_end2  = Cy3_SBL_ROI2_Cyc1_mean(:,2);
Cy3_SBL_ROI2_Cyc1_end20 = Cy3_SBL_ROI2_Cyc1_mean(:,20);
Cy3_SBL_ROI2_Cyc1_end21 = Cy3_SBL_ROI2_Cyc1_mean(:,21);

Cy3_SBL_ROI2_Cyc1_endmean = (Cy3_SBL_ROI2_Cyc1_end1+Cy3_SBL_ROI2_Cyc1_end2+Cy3_SBL_ROI2_Cyc1_end20+Cy3_SBL_ROI2_Cyc1_end21)/4


Cy5_SBL_ROI2_Cyc1_end1 = Cy5_SBL_ROI2_Cyc1_mean(:,1);
Cy5_SBL_ROI2_Cyc1_end2  = Cy5_SBL_ROI2_Cyc1_mean(:,2);
Cy5_SBL_ROI2_Cyc1_end20 = Cy5_SBL_ROI2_Cyc1_mean(:,20);
Cy5_SBL_ROI2_Cyc1_end21 = Cy5_SBL_ROI2_Cyc1_mean(:,21);

Cy5_SBL_ROI2_Cyc1_endmean = (Cy5_SBL_ROI2_Cyc1_end1+Cy5_SBL_ROI2_Cyc1_end2+Cy5_SBL_ROI2_Cyc1_end20+Cy5_SBL_ROI2_Cyc1_end21)/4

Cy7_SBL_ROI2_Cyc1_end1 = Cy7_SBL_ROI2_Cyc1_mean(:,1);
Cy7_SBL_ROI2_Cyc1_end2  = Cy7_SBL_ROI2_Cyc1_mean(:,2);
Cy7_SBL_ROI2_Cyc1_end20 = Cy7_SBL_ROI2_Cyc1_mean(:,20);
Cy7_SBL_ROI2_Cyc1_end21 = Cy7_SBL_ROI2_Cyc1_mean(:,21);

Cy7_SBL_ROI2_Cyc1_endmean = (Cy7_SBL_ROI2_Cyc1_end1+Cy7_SBL_ROI2_Cyc1_end2+Cy7_SBL_ROI2_Cyc1_end20+Cy7_SBL_ROI2_Cyc1_end21)/4

A488_SBL_ROI2_Cyc1_end1 = A488_SBL_ROI2_Cyc1_mean(:,1);
A488_SBL_ROI2_Cyc1_end2  = A488_SBL_ROI2_Cyc1_mean(:,2);
A488_SBL_ROI2_Cyc1_end20 = A488_SBL_ROI2_Cyc1_mean(:,20);
A488_SBL_ROI2_Cyc1_end21 = A488_SBL_ROI2_Cyc1_mean(:,21);

A488_SBL_ROI2_Cyc1_endmean = (A488_SBL_ROI2_Cyc1_end1+A488_SBL_ROI2_Cyc1_end2+A488_SBL_ROI2_Cyc1_end20+A488_SBL_ROI2_Cyc1_end21)/4

% extracting the ends and calculating the mean ROI 3
Cy3_SBL_ROI3_Cyc1_end1 = Cy3_SBL_ROI3_Cyc1_mean(:,1);
Cy3_SBL_ROI3_Cyc1_end2  = Cy3_SBL_ROI3_Cyc1_mean(:,2);
Cy3_SBL_ROI3_Cyc1_end20 = Cy3_SBL_ROI3_Cyc1_mean(:,20);
Cy3_SBL_ROI3_Cyc1_end21 = Cy3_SBL_ROI3_Cyc1_mean(:,21);

Cy3_SBL_ROI3_Cyc1_endmean = (Cy3_SBL_ROI3_Cyc1_end1+Cy3_SBL_ROI3_Cyc1_end2+Cy3_SBL_ROI3_Cyc1_end20+Cy3_SBL_ROI3_Cyc1_end21)/4


Cy5_SBL_ROI3_Cyc1_end1 = Cy5_SBL_ROI3_Cyc1_mean(:,1);
Cy5_SBL_ROI3_Cyc1_end2  = Cy5_SBL_ROI3_Cyc1_mean(:,2);
Cy5_SBL_ROI3_Cyc1_end20 = Cy5_SBL_ROI3_Cyc1_mean(:,20);
Cy5_SBL_ROI3_Cyc1_end21 = Cy5_SBL_ROI3_Cyc1_mean(:,21);

Cy5_SBL_ROI3_Cyc1_endmean = (Cy5_SBL_ROI3_Cyc1_end1+Cy5_SBL_ROI3_Cyc1_end2+Cy5_SBL_ROI3_Cyc1_end20+Cy5_SBL_ROI3_Cyc1_end21)/4

Cy7_SBL_ROI3_Cyc1_end1 = Cy7_SBL_ROI3_Cyc1_mean(:,1);
Cy7_SBL_ROI3_Cyc1_end2  = Cy7_SBL_ROI3_Cyc1_mean(:,2);
Cy7_SBL_ROI3_Cyc1_end20 = Cy7_SBL_ROI3_Cyc1_mean(:,20);
Cy7_SBL_ROI3_Cyc1_end21 = Cy7_SBL_ROI3_Cyc1_mean(:,21);

Cy7_SBL_ROI3_Cyc1_endmean = (Cy7_SBL_ROI3_Cyc1_end1+Cy7_SBL_ROI3_Cyc1_end2+Cy7_SBL_ROI3_Cyc1_end20+Cy7_SBL_ROI3_Cyc1_end21)/4

A488_SBL_ROI3_Cyc1_end1 = A488_SBL_ROI3_Cyc1_mean(:,1);
A488_SBL_ROI3_Cyc1_end2  = A488_SBL_ROI3_Cyc1_mean(:,2);
A488_SBL_ROI3_Cyc1_end20 = A488_SBL_ROI3_Cyc1_mean(:,20);
A488_SBL_ROI3_Cyc1_end21 = A488_SBL_ROI3_Cyc1_mean(:,21);

A488_SBL_ROI3_Cyc1_endmean = (A488_SBL_ROI3_Cyc1_end1+A488_SBL_ROI3_Cyc1_end2+A488_SBL_ROI3_Cyc1_end20+A488_SBL_ROI3_Cyc1_end21)/4

%% Calculating the signal to noise ratio 
Cy3_SBL_ROI1_Cyc1_SNR = Cy3_SBL_ROI1_Cyc1_mean/Cy3_SBL_ROI1_Cyc1_endmean
Cy5_SBL_ROI1_Cyc1_SNR = Cy5_SBL_ROI1_Cyc1_mean/Cy5_SBL_ROI1_Cyc1_endmean
Cy7_SBL_ROI1_Cyc1_SNR = Cy7_SBL_ROI1_Cyc1_mean/Cy7_SBL_ROI1_Cyc1_endmean
A488_SBL_ROI1_Cyc1_SNR = A488_SBL_ROI1_Cyc1_mean/A488_SBL_ROI1_Cyc1_endmean

Cy3_SBL_ROI2_Cyc1_SNR = Cy3_SBL_ROI2_Cyc1_mean/Cy3_SBL_ROI2_Cyc1_endmean
Cy5_SBL_ROI2_Cyc1_SNR = Cy5_SBL_ROI2_Cyc1_mean/Cy5_SBL_ROI2_Cyc1_endmean
Cy7_SBL_ROI2_Cyc1_SNR = Cy7_SBL_ROI2_Cyc1_mean/Cy7_SBL_ROI2_Cyc1_endmean
A488_SBL_ROI2_Cyc1_SNR = A488_SBL_ROI2_Cyc1_mean/A488_SBL_ROI2_Cyc1_endmean

Cy3_SBL_ROI3_Cyc1_SNR = Cy3_SBL_ROI3_Cyc1_mean/Cy3_SBL_ROI3_Cyc1_endmean
Cy5_SBL_ROI3_Cyc1_SNR = Cy5_SBL_ROI3_Cyc1_mean/Cy5_SBL_ROI3_Cyc1_endmean
Cy7_SBL_ROI3_Cyc1_SNR = Cy7_SBL_ROI3_Cyc1_mean/Cy7_SBL_ROI3_Cyc1_endmean
A488_SBL_ROI3_Cyc1_SNR = A488_SBL_ROI3_Cyc1_mean/A488_SBL_ROI3_Cyc1_endmean

%% Plotting 
% ROI 1
figure()
plot(Cy3_SBL_ROI1_Cyc1_SNR)
hold on 
plot(Cy5_SBL_ROI1_Cyc1_SNR)
hold on 
plot(Cy7_SBL_ROI1_Cyc1_SNR)
hold on 
plot(A488_SBL_ROI1_Cyc1_SNR)
title('ROI1 SBL')
legend('Cy 3', 'Cy 5', 'Cy7', 'A488')

% ROI 2
figure()
plot(Cy3_SBL_ROI2_Cyc1_SNR)
hold on 
plot(Cy5_SBL_ROI2_Cyc1_SNR)
hold on 
plot(Cy7_SBL_ROI2_Cyc1_SNR)
hold on 
plot(A488_SBL_ROI2_Cyc1_SNR)
title('ROI2 SBL')
legend('Cy 3', 'Cy 5', 'Cy7', 'A488')

%ROI 3 
figure()
plot(Cy3_SBL_ROI3_Cyc1_SNR)
hold on 
plot(Cy5_SBL_ROI3_Cyc1_SNR)
hold on 
plot(Cy7_SBL_ROI3_Cyc1_SNR)
hold on 
plot(A488_SBL_ROI3_Cyc1_SNR)
title('ROI2 SBL')
legend('Cy 3', 'Cy 5', 'Cy7', 'A488')



