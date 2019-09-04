% THE INTENSITY VALUES NEED TO BE OF NX1 DOUBLE
% using functions from https://github.com/bastibe/Violinplot-Matlab
%%
All_Cell_SBHandSBL = [Cy3_Cell_SBH; Cy5_Cell_SBH; Cy7_Cell_SBH; A488_Cell_SBH; Cy3_Cell_SBL; Cy5_Cell_SBL; Cy7_Cell_SBL; A488_Cell_SBL];

All_Cell_Intensity_SBHandSBL = [Cy3_Cell_Intensity_SBH; Cy5_Cell_Intensity_SBH; Cy7_Cell_Intensity_SBH; A488_Cell_Intensity_SBH; Cy3_Cell_Intensity_SBL; Cy5_Cell_Intensity_SBL; Cy7_Cell_Intensity_SBL; A488_Cell_Intensity_SBL];
All_Cell_Intensity_SBHandSBL = num2cell(All_Cell_Intensity_SBHandSBL);
All_Cell_Intensity_SBHandSBL = cell2mat(All_Cell_Intensity_SBHandSBL);

%%
co = [0.0 0.0 1.0;...
      1.0 0.0 0.0];
%   co = [0 0.4470 0.7410;...
%       0.4940 0.1840 0.5560];
set(groot,'defaultAxesColorOrder',co)

%%
grouporder_SBHandSBL = {'SBH Cy3', 'SBL Cy3', 'SBH Cy5', 'SBL Cy5', 'SBH AF750Cy7', 'SBL AF750Cy7', 'SBH FITC488', 'SBL FITC488'};
width = 0.1;
showmean = true;
violinalpha = 0.3;

figure()
violinplot(All_Cell_Intensity_SBHandSBL, All_Cell_SBHandSBL,'GroupOrder',grouporder_SBHandSBL);
title('Maximum Intensity of RCPs, Cycle 1, Top 300 over 3 ROIs', 'FontSize',24);
ylabel('Intensity', 'FontSize',16);
ylim([0, 9000]);