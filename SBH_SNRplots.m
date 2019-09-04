%  
% Cy3_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _Cy3 (LED Filter 555)_ORG.csv');
% Cy5_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _Cy5_ORG.csv');
% Cy7_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _AF750Cy7_ORG.csv');
% A488_SBH_ROI1_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI1_OP/SBH_CYCLE2_ROI1_OP _FITC488_ORG.csv');
% 
% Cy3_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c2_ORG.csv');
% Cy5_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c3_ORG.csv');
% Cy7_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c4_ORG.csv');
% A488_SBH_ROI2_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI2_OP/SBH_CYCLE2_ROI2_OP_c5_ORG.csv');
% 
% Cy3_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c2_ORG.csv');
% Cy5_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c3_ORG.csv');
% Cy7_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c4_ORG.csv');
% A488_SBH_ROI3_Cyc2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE2_ROI3_OP/SBH_CYCLE2_ROI3_OP_c5_ORG.csv');

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
%% conversion from table to array 
Cy3_SBH_ROI1_Cyc1 = table2array(Cy3_SBH_ROI1_Cyc1);
Cy5_SBH_ROI1_Cyc1 = table2array(Cy5_SBH_ROI1_Cyc1);
Cy7_SBH_ROI1_Cyc1 = table2array(Cy7_SBH_ROI1_Cyc1);
A488_SBH_ROI1_Cyc1 = table2array(A488_SBH_ROI1_Cyc1);

Cy3_SBH_ROI2_Cyc1 = table2array(Cy3_SBH_ROI2_Cyc1);
Cy5_SBH_ROI2_Cyc1 = table2array(Cy5_SBH_ROI2_Cyc1);
Cy7_SBH_ROI2_Cyc1 = table2array(Cy7_SBH_ROI2_Cyc1);
A488_SBH_ROI2_Cyc1 = table2array(A488_SBH_ROI2_Cyc1);

Cy3_SBH_ROI3_Cyc1 = table2array(Cy3_SBH_ROI3_Cyc1);
Cy5_SBH_ROI3_Cyc1 = table2array(Cy5_SBH_ROI3_Cyc1);
Cy7_SBH_ROI3_Cyc1 = table2array(Cy7_SBH_ROI3_Cyc1);
A488_SBH_ROI3_Cyc1 = table2array(A488_SBH_ROI3_Cyc1);

%% calculating the mean of each column 
% ROI 1 
Cy3_SBH_ROI1_Cyc1_mean = mean(Cy3_SBH_ROI1_Cyc1,1);
Cy3_SBH_ROI1_Cyc1_std = std(Cy3_SBH_ROI1_Cyc1,1);

Cy5_SBH_ROI1_Cyc1_mean = mean(Cy5_SBH_ROI1_Cyc1,1);
Cy5_SBH_ROI1_Cyc1_std = std(Cy5_SBH_ROI1_Cyc1,1);

Cy7_SBH_ROI1_Cyc1_mean = mean(Cy7_SBH_ROI1_Cyc1,1);
Cy7_SBH_ROI1_Cyc1_std = std(Cy7_SBH_ROI1_Cyc1,1);

A488_SBH_ROI1_Cyc1_mean = mean(A488_SBH_ROI1_Cyc1,1);
A488_SBH_ROI1_Cyc1_std = std(A488_SBH_ROI1_Cyc1,1);

% ROI 2 
Cy3_SBH_ROI2_Cyc1_mean = mean(Cy3_SBH_ROI2_Cyc1,1);
Cy3_SBH_ROI2_Cyc1_std = std(Cy3_SBH_ROI2_Cyc1,1);

Cy5_SBH_ROI2_Cyc1_mean = mean(Cy5_SBH_ROI2_Cyc1,1);
Cy5_SBH_ROI2_Cyc1_std = std(Cy5_SBH_ROI2_Cyc1,1);

Cy7_SBH_ROI2_Cyc1_mean = mean(Cy7_SBH_ROI2_Cyc1,1);
Cy7_SBH_ROI2_Cyc1_std = std(Cy7_SBH_ROI2_Cyc1,1);

A488_SBH_ROI2_Cyc1_mean = mean(A488_SBH_ROI2_Cyc1,1);
A488_SBH_ROI2_Cyc1_std = std(A488_SBH_ROI2_Cyc1,1);

%ROI 3 
Cy3_SBH_ROI3_Cyc1_mean = mean(Cy3_SBH_ROI3_Cyc1,1);
Cy3_SBH_ROI3_Cyc1_std = std(Cy3_SBH_ROI3_Cyc1,1);

Cy5_SBH_ROI3_Cyc1_mean = mean(Cy5_SBH_ROI3_Cyc1,1);
Cy5_SBH_ROI3_Cyc1_std = std(Cy5_SBH_ROI3_Cyc1,1);

Cy7_SBH_ROI3_Cyc1_mean = mean(Cy7_SBH_ROI3_Cyc1,1);
Cy7_SBH_ROI3_Cyc1_std = std(Cy7_SBH_ROI3_Cyc1,1);

A488_SBH_ROI3_Cyc1_mean = mean(A488_SBH_ROI3_Cyc1,1);
A488_SBH_ROI3_Cyc1_std = std(A488_SBH_ROI3_Cyc1,1);


errorbar(Cy3_SBH_ROI1_Cyc1_mean, Cy3_SBH_ROI1_Cyc1_std)

%% calculating the mean of four values at ends

% extracting the ends and calculating the mean ROI 1
Cy3_SBH_ROI1_Cyc1_end1 = Cy3_SBH_ROI1_Cyc1_mean(:,1);
Cy3_SBH_ROI1_Cyc1_end2  = Cy3_SBH_ROI1_Cyc1_mean(:,2);
Cy3_SBH_ROI1_Cyc1_end20 = Cy3_SBH_ROI1_Cyc1_mean(:,20);
Cy3_SBH_ROI1_Cyc1_end21 = Cy3_SBH_ROI1_Cyc1_mean(:,21);

Cy3_SBH_ROI1_Cyc1_endmean = (Cy3_SBH_ROI1_Cyc1_end1+Cy3_SBH_ROI1_Cyc1_end2+Cy3_SBH_ROI1_Cyc1_end20+Cy3_SBH_ROI1_Cyc1_end21)/4


Cy5_SBH_ROI1_Cyc1_end1 = Cy5_SBH_ROI1_Cyc1_mean(:,1);
Cy5_SBH_ROI1_Cyc1_end2  = Cy5_SBH_ROI1_Cyc1_mean(:,2);
Cy5_SBH_ROI1_Cyc1_end20 = Cy5_SBH_ROI1_Cyc1_mean(:,20);
Cy5_SBH_ROI1_Cyc1_end21 = Cy5_SBH_ROI1_Cyc1_mean(:,21);

Cy5_SBH_ROI1_Cyc1_endmean = (Cy5_SBH_ROI1_Cyc1_end1+Cy5_SBH_ROI1_Cyc1_end2+Cy5_SBH_ROI1_Cyc1_end20+Cy5_SBH_ROI1_Cyc1_end21)/4

Cy7_SBH_ROI1_Cyc1_end1 = Cy7_SBH_ROI1_Cyc1_mean(:,1);
Cy7_SBH_ROI1_Cyc1_end2  = Cy7_SBH_ROI1_Cyc1_mean(:,2);
Cy7_SBH_ROI1_Cyc1_end20 = Cy7_SBH_ROI1_Cyc1_mean(:,20);
Cy7_SBH_ROI1_Cyc1_end21 = Cy7_SBH_ROI1_Cyc1_mean(:,21);

Cy7_SBH_ROI1_Cyc1_endmean = (Cy7_SBH_ROI1_Cyc1_end1+Cy7_SBH_ROI1_Cyc1_end2+Cy7_SBH_ROI1_Cyc1_end20+Cy7_SBH_ROI1_Cyc1_end21)/4

A488_SBH_ROI1_Cyc1_end1 = A488_SBH_ROI1_Cyc1_mean(:,1);
A488_SBH_ROI1_Cyc1_end2  = A488_SBH_ROI1_Cyc1_mean(:,2);
A488_SBH_ROI1_Cyc1_end20 = A488_SBH_ROI1_Cyc1_mean(:,20);
A488_SBH_ROI1_Cyc1_end21 = A488_SBH_ROI1_Cyc1_mean(:,21);

A488_SBH_ROI1_Cyc1_endmean = (A488_SBH_ROI1_Cyc1_end1+A488_SBH_ROI1_Cyc1_end2+A488_SBH_ROI1_Cyc1_end20+A488_SBH_ROI1_Cyc1_end21)/4

% extracting the ends and calculating the mean ROI 2
Cy3_SBH_ROI2_Cyc1_end1 = Cy3_SBH_ROI2_Cyc1_mean(:,1);
Cy3_SBH_ROI2_Cyc1_end2  = Cy3_SBH_ROI2_Cyc1_mean(:,2);
Cy3_SBH_ROI2_Cyc1_end20 = Cy3_SBH_ROI2_Cyc1_mean(:,20);
Cy3_SBH_ROI2_Cyc1_end21 = Cy3_SBH_ROI2_Cyc1_mean(:,21);

Cy3_SBH_ROI2_Cyc1_endmean = (Cy3_SBH_ROI2_Cyc1_end1+Cy3_SBH_ROI2_Cyc1_end2+Cy3_SBH_ROI2_Cyc1_end20+Cy3_SBH_ROI2_Cyc1_end21)/4


Cy5_SBH_ROI2_Cyc1_end1 = Cy5_SBH_ROI2_Cyc1_mean(:,1);
Cy5_SBH_ROI2_Cyc1_end2  = Cy5_SBH_ROI2_Cyc1_mean(:,2);
Cy5_SBH_ROI2_Cyc1_end20 = Cy5_SBH_ROI2_Cyc1_mean(:,20);
Cy5_SBH_ROI2_Cyc1_end21 = Cy5_SBH_ROI2_Cyc1_mean(:,21);

Cy5_SBH_ROI2_Cyc1_endmean = (Cy5_SBH_ROI2_Cyc1_end1+Cy5_SBH_ROI2_Cyc1_end2+Cy5_SBH_ROI2_Cyc1_end20+Cy5_SBH_ROI2_Cyc1_end21)/4

Cy7_SBH_ROI2_Cyc1_end1 = Cy7_SBH_ROI2_Cyc1_mean(:,1);
Cy7_SBH_ROI2_Cyc1_end2  = Cy7_SBH_ROI2_Cyc1_mean(:,2);
Cy7_SBH_ROI2_Cyc1_end20 = Cy7_SBH_ROI2_Cyc1_mean(:,20);
Cy7_SBH_ROI2_Cyc1_end21 = Cy7_SBH_ROI2_Cyc1_mean(:,21);

Cy7_SBH_ROI2_Cyc1_endmean = (Cy7_SBH_ROI2_Cyc1_end1+Cy7_SBH_ROI2_Cyc1_end2+Cy7_SBH_ROI2_Cyc1_end20+Cy7_SBH_ROI2_Cyc1_end21)/4

A488_SBH_ROI2_Cyc1_end1 = A488_SBH_ROI2_Cyc1_mean(:,1);
A488_SBH_ROI2_Cyc1_end2  = A488_SBH_ROI2_Cyc1_mean(:,2);
A488_SBH_ROI2_Cyc1_end20 = A488_SBH_ROI2_Cyc1_mean(:,20);
A488_SBH_ROI2_Cyc1_end21 = A488_SBH_ROI2_Cyc1_mean(:,21);

A488_SBH_ROI2_Cyc1_endmean = (A488_SBH_ROI2_Cyc1_end1+A488_SBH_ROI2_Cyc1_end2+A488_SBH_ROI2_Cyc1_end20+A488_SBH_ROI2_Cyc1_end21)/4

% extracting the ends and calculating the mean ROI 3
Cy3_SBH_ROI3_Cyc1_end1 = Cy3_SBH_ROI3_Cyc1_mean(:,1);
Cy3_SBH_ROI3_Cyc1_end2  = Cy3_SBH_ROI3_Cyc1_mean(:,2);
Cy3_SBH_ROI3_Cyc1_end20 = Cy3_SBH_ROI3_Cyc1_mean(:,20);
Cy3_SBH_ROI3_Cyc1_end21 = Cy3_SBH_ROI3_Cyc1_mean(:,21);

Cy3_SBH_ROI3_Cyc1_endmean = (Cy3_SBH_ROI3_Cyc1_end1+Cy3_SBH_ROI3_Cyc1_end2+Cy3_SBH_ROI3_Cyc1_end20+Cy3_SBH_ROI3_Cyc1_end21)/4


Cy5_SBH_ROI3_Cyc1_end1 = Cy5_SBH_ROI3_Cyc1_mean(:,1);
Cy5_SBH_ROI3_Cyc1_end2  = Cy5_SBH_ROI3_Cyc1_mean(:,2);
Cy5_SBH_ROI3_Cyc1_end20 = Cy5_SBH_ROI3_Cyc1_mean(:,20);
Cy5_SBH_ROI3_Cyc1_end21 = Cy5_SBH_ROI3_Cyc1_mean(:,21);

Cy5_SBH_ROI3_Cyc1_endmean = (Cy5_SBH_ROI3_Cyc1_end1+Cy5_SBH_ROI3_Cyc1_end2+Cy5_SBH_ROI3_Cyc1_end20+Cy5_SBH_ROI3_Cyc1_end21)/4

Cy7_SBH_ROI3_Cyc1_end1 = Cy7_SBH_ROI3_Cyc1_mean(:,1);
Cy7_SBH_ROI3_Cyc1_end2  = Cy7_SBH_ROI3_Cyc1_mean(:,2);
Cy7_SBH_ROI3_Cyc1_end20 = Cy7_SBH_ROI3_Cyc1_mean(:,20);
Cy7_SBH_ROI3_Cyc1_end21 = Cy7_SBH_ROI3_Cyc1_mean(:,21);

Cy7_SBH_ROI3_Cyc1_endmean = (Cy7_SBH_ROI3_Cyc1_end1+Cy7_SBH_ROI3_Cyc1_end2+Cy7_SBH_ROI3_Cyc1_end20+Cy7_SBH_ROI3_Cyc1_end21)/4

A488_SBH_ROI3_Cyc1_end1 = A488_SBH_ROI3_Cyc1_mean(:,1);
A488_SBH_ROI3_Cyc1_end2  = A488_SBH_ROI3_Cyc1_mean(:,2);
A488_SBH_ROI3_Cyc1_end20 = A488_SBH_ROI3_Cyc1_mean(:,20);
A488_SBH_ROI3_Cyc1_end21 = A488_SBH_ROI3_Cyc1_mean(:,21);

A488_SBH_ROI3_Cyc1_endmean = (A488_SBH_ROI3_Cyc1_end1+A488_SBH_ROI3_Cyc1_end2+A488_SBH_ROI3_Cyc1_end20+A488_SBH_ROI3_Cyc1_end21)/4

%% Calculating the signal to noise ratio 
Cy3_SBH_ROI1_Cyc1_SNR = Cy3_SBH_ROI1_Cyc1_mean/Cy3_SBH_ROI1_Cyc1_endmean
Cy5_SBH_ROI1_Cyc1_SNR = Cy5_SBH_ROI1_Cyc1_mean/Cy5_SBH_ROI1_Cyc1_endmean
Cy7_SBH_ROI1_Cyc1_SNR = Cy7_SBH_ROI1_Cyc1_mean/Cy7_SBH_ROI1_Cyc1_endmean
A488_SBH_ROI1_Cyc1_SNR = A488_SBH_ROI1_Cyc1_mean/A488_SBH_ROI1_Cyc1_endmean

Cy3_SBH_ROI2_Cyc1_SNR = Cy3_SBH_ROI2_Cyc1_mean/Cy3_SBH_ROI2_Cyc1_endmean
Cy5_SBH_ROI2_Cyc1_SNR = Cy5_SBH_ROI2_Cyc1_mean/Cy5_SBH_ROI2_Cyc1_endmean
Cy7_SBH_ROI2_Cyc1_SNR = Cy7_SBH_ROI2_Cyc1_mean/Cy7_SBH_ROI2_Cyc1_endmean
A488_SBH_ROI2_Cyc1_SNR = A488_SBH_ROI2_Cyc1_mean/A488_SBH_ROI2_Cyc1_endmean

Cy3_SBH_ROI3_Cyc1_SNR = Cy3_SBH_ROI3_Cyc1_mean/Cy3_SBH_ROI3_Cyc1_endmean
Cy5_SBH_ROI3_Cyc1_SNR = Cy5_SBH_ROI3_Cyc1_mean/Cy5_SBH_ROI3_Cyc1_endmean
Cy7_SBH_ROI3_Cyc1_SNR = Cy7_SBH_ROI3_Cyc1_mean/Cy7_SBH_ROI3_Cyc1_endmean
A488_SBH_ROI3_Cyc1_SNR = A488_SBH_ROI3_Cyc1_mean/A488_SBH_ROI3_Cyc1_endmean

% %% Plotting 
% % ROI 1
% figure()
% plot(Cy3_SBH_ROI1_Cyc1_SNR)
% hold on 
% plot(Cy5_SBH_ROI1_Cyc1_SNR)
% hold on 
% plot(Cy7_SBH_ROI1_Cyc1_SNR)
% hold on 
% plot(A488_SBH_ROI1_Cyc1_SNR)
% title('ROI1 SBH')
% legend('Cy 3', 'Cy 5', 'Cy7', 'A488')
% 
% % ROI 2
% figure()
% plot(Cy3_SBH_ROI2_Cyc1_SNR)
% hold on 
% plot(Cy5_SBH_ROI2_Cyc1_SNR)
% hold on 
% plot(Cy7_SBH_ROI2_Cyc1_SNR)
% hold on 
% plot(A488_SBH_ROI2_Cyc1_SNR)
% title('ROI1 SBH')
% legend('Cy 3', 'Cy 5', 'Cy7', 'A488')
% 
% %ROI 3 
% figure()
% plot(Cy3_SBH_ROI3_Cyc1_SNR)
% hold on 
% plot(Cy5_SBH_ROI3_Cyc1_SNR)
% hold on 
% plot(Cy7_SBH_ROI3_Cyc1_SNR)
% hold on 
% plot(A488_SBH_ROI3_Cyc1_SNR)
% title('ROI1 SBH')
% legend('Cy 3', 'Cy 5', 'Cy7', 'A488')

%% plotting with errors bars 


