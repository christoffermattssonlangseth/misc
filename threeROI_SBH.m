
%%
Cy3_SBH_ROI1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c2_ORG.csv');
Cy5_SBH_ROI1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c3_ORG.csv');
Cy7_SBH_ROI1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c4_ORG.csv');
A488_SBH_ROI1 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI1_OP/SBH_OP_1_c5_ORG.csv');

Cy3_SBH_ROI2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c2_ORG.csv');
Cy5_SBH_ROI2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c3_ORG.csv');
Cy7_SBH_ROI2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c4_ORG.csv');
A488_SBH_ROI2 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI2_OP/SBH_OP_2_c5_ORG.csv');

Cy3_SBH_ROI3 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c2_ORG.csv');
Cy5_SBH_ROI3 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c3_ORG.csv');
Cy7_SBH_ROI3 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c4_ORG.csv');
A488_SBH_ROI3 = readtable('/Volumes/Christoffer/For SBH vs SBL/SBH_CYCLE1_ROI3_OP/SBH_OP_3_c5_ORG.csv');
% Cy3_SBH_ROI1 = readtable('F:\export\Orthogonal projection 1\SBH_OP_1\SBH_OP_1_c2_ORG.csv');
% Cy5_SBH_ROI1 = readtable('F:\export\Orthogonal projection 1\SBH_OP_1\SBH_OP_1_c3_ORG.csv');
% Cy7_SBH_ROI1 = readtable('F:\export\Orthogonal projection 1\SBH_OP_1\SBH_OP_1_c4_ORG.csv');
% A488_SBH_ROI1 = readtable('F:\export\Orthogonal projection 1\SBH_OP_1\SBH_OP_1_c5_ORG.csv');
% 
% Cy3_SBH_ROI2 = readtable('F:\export\Orthogonal projection 2\SBH_OP_2\SBH_OP_2_c2_ORG.csv');
% Cy5_SBH_ROI2 = readtable('F:\export\Orthogonal projection 2\SBH_OP_2\SBH_OP_2_c3_ORG.csv');
% Cy7_SBH_ROI2 = readtable('F:\export\Orthogonal projection 2\SBH_OP_2\SBH_OP_2_c4_ORG.csv');
% A488_SBH_ROI2 = readtable('F:\export\Orthogonal projection 2\SBH_OP_2\SBH_OP_2_c5_ORG.csv');
% 
% Cy3_SBH_ROI3 = readtable('F:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c2_ORG.csv');
% Cy5_SBH_ROI3 = readtable('F:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c3_ORG.csv');
% Cy7_SBH_ROI3 = readtable('F:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c4_ORG.csv');
% A488_SBH_ROI3 = readtable('F:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c5_ORG.csv');

%%
% getting the max intensities 
Cy3_MaxIntensity_SBH_ROI1 = Cy3_SBH_ROI1.Var11;
Cy5_MaxIntensity_SBH_ROI1 = Cy5_SBH_ROI1.Var11;
Cy7_MaxIntensity_SBH_ROI1 = Cy7_SBH_ROI1.Var11;
A488_MaxIntensity_SBH_ROI1 = A488_SBH_ROI1.Var11;


Cy3_MaxIntensity_SBH_ROI2 = Cy3_SBH_ROI2.Var11;
Cy5_MaxIntensity_SBH_ROI2 = Cy5_SBH_ROI2.Var11;
Cy7_MaxIntensity_SBH_ROI2 = Cy7_SBH_ROI2.Var11;
A488_MaxIntensity_SBH_ROI2 = A488_SBH_ROI2.Var11;

Cy3_MaxIntensity_SBH_ROI3 = Cy3_SBH_ROI3.Var11;
Cy5_MaxIntensity_SBH_ROI3 = Cy5_SBH_ROI3.Var11;
Cy7_MaxIntensity_SBH_ROI3 = Cy7_SBH_ROI3.Var11;
A488_MaxIntensity_SBH_ROI3 = A488_SBH_ROI3.Var11;

Cy3_MaxIntensity_SBH_ROI1 = maxk(Cy3_SBH_ROI1.Var11, 100);
Cy5_MaxIntensity_SBH_ROI1 = maxk(Cy5_SBH_ROI1.Var11, 100);
Cy7_MaxIntensity_SBH_ROI1 = maxk(Cy7_SBH_ROI1.Var11, 100);
A488_MaxIntensity_SBH_ROI1 = maxk(A488_SBH_ROI1.Var11, 100);

Cy3_MaxIntensity_SBH_ROI2 = maxk(Cy3_SBH_ROI2.Var11, 100);
Cy5_MaxIntensity_SBH_ROI2 = maxk(Cy5_SBH_ROI2.Var11, 100);
Cy7_MaxIntensity_SBH_ROI2 = maxk(Cy7_SBH_ROI2.Var11, 100);
A488_MaxIntensity_SBH_ROI2 = maxk(A488_SBH_ROI2.Var11, 100);

Cy3_MaxIntensity_SBH_ROI3 = maxk(Cy3_SBH_ROI3.Var11, 100);
Cy5_MaxIntensity_SBH_ROI3 = maxk(Cy5_SBH_ROI3.Var11, 100);
Cy7_MaxIntensity_SBH_ROI3 = maxk(Cy7_SBH_ROI3.Var11, 100);
A488_MaxIntensity_SBH_ROI3 = maxk(A488_SBH_ROI3.Var11, 100);

%% preparing the cell strings
% finding out the number of RCPs found
length_Cy3_SBH_ROI1 = length(Cy3_MaxIntensity_SBH_ROI1);
length_Cy5_SBH_ROI1 = length(Cy5_MaxIntensity_SBH_ROI1);
length_Cy7_SBH_ROI1 = length(Cy7_MaxIntensity_SBH_ROI1);
length_A488_SBH_ROI1 = length(A488_MaxIntensity_SBH_ROI1);

length_Cy3_SBH_ROI2 = length(Cy3_MaxIntensity_SBH_ROI2);
length_Cy5_SBH_ROI2 = length(Cy5_MaxIntensity_SBH_ROI2);
length_Cy7_SBH_ROI2 = length(Cy7_MaxIntensity_SBH_ROI2);
length_A488_SBH_ROI2 = length(A488_MaxIntensity_SBH_ROI2);

length_Cy3_SBH_ROI3 = length(Cy3_MaxIntensity_SBH_ROI3);
length_Cy5_SBH_ROI3 = length(Cy5_MaxIntensity_SBH_ROI3);
length_Cy7_SBH_ROI3 = length(Cy7_MaxIntensity_SBH_ROI3);
length_A488_SBH_ROI3 = length(A488_MaxIntensity_SBH_ROI3);

% create arrays of strings
% ROI 1
Cy3_Cell_SBH_ROI1 = cell(length_Cy3_SBH_ROI1,1);
Cy3_Cell_SBH_ROI1 = strcat(Cy3_Cell_SBH_ROI1, 'SBH Cy3 ROI 1');

Cy5_Cell_SBH_ROI1 = cell(length_Cy5_SBH_ROI1,1);
Cy5_Cell_SBH_ROI1 = strcat(Cy5_Cell_SBH_ROI1, 'SBH Cy5 ROI 1');

Cy7_Cell_SBH_ROI1 = cell(length_Cy7_SBH_ROI1,1);
Cy7_Cell_SBH_ROI1 = strcat(Cy7_Cell_SBH_ROI1, 'SBH Cy7 ROI 1');

A488_Cell_SBH_ROI1 = cell(length_A488_SBH_ROI1,1);
A488_Cell_SBH_ROI1 = strcat(A488_Cell_SBH_ROI1, 'SBH A488 ROI 1');



% ROI 2
Cy3_Cell_SBH_ROI2 = cell(length_Cy3_SBH_ROI2,1);
Cy3_Cell_SBH_ROI2 = strcat(Cy3_Cell_SBH_ROI2, 'SBH Cy3 ROI 2');

Cy5_Cell_SBH_ROI2 = cell(length_Cy5_SBH_ROI2,1);
Cy5_Cell_SBH_ROI2 = strcat(Cy5_Cell_SBH_ROI2, 'SBH Cy5 ROI 2');

Cy7_Cell_SBH_ROI2 = cell(length_Cy7_SBH_ROI2,1);
Cy7_Cell_SBH_ROI2 = strcat(Cy7_Cell_SBH_ROI2, 'SBH Cy7 ROI 2');

A488_Cell_SBH_ROI2 = cell(length_A488_SBH_ROI2,1);
A488_Cell_SBH_ROI2 = strcat(A488_Cell_SBH_ROI2, 'SBH A488 ROI 2');

% ROI 3
Cy3_Cell_SBH_ROI3 = cell(length_Cy3_SBH_ROI3,1);
Cy3_Cell_SBH_ROI3 = strcat(Cy3_Cell_SBH_ROI3, 'SBH Cy3 ROI 3');

Cy5_Cell_SBH_ROI3 = cell(length_Cy5_SBH_ROI3,1);
Cy5_Cell_SBH_ROI3 = strcat(Cy5_Cell_SBH_ROI3, 'SBH Cy5 ROI 3');

Cy7_Cell_SBH_ROI3 = cell(length_Cy7_SBH_ROI3,1);
Cy7_Cell_SBH_ROI3 = strcat(Cy7_Cell_SBH_ROI3, 'SBH Cy7 ROI 3');

A488_Cell_SBH_ROI3 = cell(length_A488_SBH_ROI3,1);
A488_Cell_SBH_ROI3 = strcat(A488_Cell_SBH_ROI3, 'SBH A488 ROI 3')

% concatenating the values from above
All_Cell_SBH_ROI1 = [Cy3_Cell_SBH_ROI1; Cy5_Cell_SBH_ROI1; Cy7_Cell_SBH_ROI1; A488_Cell_SBH_ROI1]
All_Cell_SBH_ROI2 = [Cy3_Cell_SBH_ROI2; Cy5_Cell_SBH_ROI2; Cy7_Cell_SBH_ROI2; A488_Cell_SBH_ROI2]
All_Cell_SBH_ROI3 = [Cy3_Cell_SBH_ROI3; Cy5_Cell_SBH_ROI3; Cy7_Cell_SBH_ROI3; A488_Cell_SBH_ROI3]

% concatenating the values from above
All_ROI_SBH = [All_Cell_SBH_ROI1; All_Cell_SBH_ROI2; All_Cell_SBH_ROI3]

%% peparing the intensity values
Cy3_Cell_Intensity_SBH_ROI1 = num2cell(Cy3_MaxIntensity_SBH_ROI1);
Cy5_Cell_Intensity_SBH_ROI1 = num2cell(Cy5_MaxIntensity_SBH_ROI1);
Cy7_Cell_Intensity_SBH_ROI1 = num2cell(Cy7_MaxIntensity_SBH_ROI1);
A488_Cell_Intensity_SBH_ROI1 = num2cell(A488_MaxIntensity_SBH_ROI1);

Cy3_Cell_Intensity_SBH_ROI2 = num2cell(Cy3_MaxIntensity_SBH_ROI2);
Cy5_Cell_Intensity_SBH_ROI2 = num2cell(Cy5_MaxIntensity_SBH_ROI2);
Cy7_Cell_Intensity_SBH_ROI2 = num2cell(Cy7_MaxIntensity_SBH_ROI2);
A488_Cell_Intensity_SBH_ROI2 = num2cell(A488_MaxIntensity_SBH_ROI2);

Cy3_Cell_Intensity_SBH_ROI3 = num2cell(Cy3_MaxIntensity_SBH_ROI3);
Cy5_Cell_Intensity_SBH_ROI3 = num2cell(Cy5_MaxIntensity_SBH_ROI3);
Cy7_Cell_Intensity_SBH_ROI3 = num2cell(Cy7_MaxIntensity_SBH_ROI3);
A488_Cell_Intensity_SBH_ROI3 = num2cell(A488_MaxIntensity_SBH_ROI3);

% concatenating the values from above
All_Cell_Intensity_SBH_ROI1 = [Cy3_MaxIntensity_SBH_ROI1; Cy5_MaxIntensity_SBH_ROI1; Cy7_MaxIntensity_SBH_ROI1; A488_MaxIntensity_SBH_ROI1]
All_Cell_Intensity_SBH_ROI2 = [Cy3_MaxIntensity_SBH_ROI2; Cy5_MaxIntensity_SBH_ROI2; Cy7_MaxIntensity_SBH_ROI2; A488_MaxIntensity_SBH_ROI2]
All_Cell_Intensity_SBH_ROI3 = [Cy3_MaxIntensity_SBH_ROI3; Cy5_MaxIntensity_SBH_ROI3; Cy7_MaxIntensity_SBH_ROI3; A488_MaxIntensity_SBH_ROI3]

All_Cell_Intensity_SBH_AllROI = [All_Cell_Intensity_SBH_ROI1; All_Cell_Intensity_SBH_ROI2; All_Cell_Intensity_SBH_ROI3]
All_Cell_Intensity_SBH_AllROI= num2cell(All_Cell_Intensity_SBH_AllROI)
All_Cell_Intensity_SBH_AllROI = cell2mat(All_Cell_Intensity_SBH_AllROI);

%%
% check default ColorOrder
ColorOdrDef = get(gca,'ColorOrder'); %7x3 RGB array
%define your custom color order
ColorOdrCustom = [0 0.4470 0.7410;...
          0 0.4470 0.7410;...
          0 0.4470 0.7410;...
          0 0.4470 0.7410;...
          0.4940 0.1840 0.5560;...
          0.4940 0.1840 0.5560;...
          0.4940 0.1840 0.5560;...
          0.4940 0.1840 0.5560;...
          0.4660, 0.6740, 0.188;...
          0.4660, 0.6740, 0.188;...
          0.4660, 0.6740, 0.188;...
          0.4660, 0.6740, 0.188] %8x3 RGB array
set(gca,'ColorOrder',ColorOdrCustom);

co = [0 0.4470 0.7410;...
      0.4940 0.1840 0.5560;...
      0.4660, 0.6740, 0.188;...
      0.9290, 0.6940, 0.1250]
set(groot,'defaultAxesColorOrder',co)

%% violinplot
grouporder_SBH = {'SBH Cy3 ROI 1', 'SBH Cy5 ROI 1', 'SBH Cy7 ROI 1', 'SBH A488 ROI 1','SBH Cy3 ROI 2', 'SBH Cy5 ROI 2', 'SBH Cy7 ROI 2', 'SBH A488 ROI 2', 'SBH Cy3 ROI 3', 'SBH Cy5 ROI 3', 'SBH Cy7 ROI 3', 'SBH A488 ROI 3'};
width = 0.1;
showmean = true;
violinalpha = 0.3;

figure()
violinplot(All_Cell_Intensity_SBH_AllROI, All_ROI_SBH,'GroupOrder',grouporder_SBH);
title('SBH vs SBL: Maximum Intensity of RCPs');
ylabel('Intensity');
ylim([0, 9000]);
