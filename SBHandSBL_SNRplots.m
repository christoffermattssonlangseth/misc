%% TO RUN THI SCRIPT: RUN SBH_SNRplots.m and SBH_SNRplots.m BEFOREHAND AND KEEP THE WORKSPACE
% plotting mutliple SNR CYCLE 2 
figure()
sgtitle('Signal to noise ratio: Cycle 2','FontSize',18)

subplot(2,2,1)
plot(Cy3_SBL_ROI1_Cyc2_SNR, 'r')
hold on 
plot(Cy3_SBL_ROI2_Cyc2_SNR, 'r')
hold on 
plot(Cy3_SBL_ROI3_Cyc2_SNR, 'r')
hold on 
plot(Cy3_SBH_ROI1_Cyc2_SNR, 'b')
hold on 
plot(Cy3_SBH_ROI2_Cyc2_SNR, 'b')
hold on 
plot(Cy3_SBH_ROI3_Cyc2_SNR, 'b')
title('Cy3')
legend('Cy3 SBL ROI1', 'Cy3 SBL ROI2', 'Cy3 SBL ROI3', 'Cy3 SBH ROI1', 'Cy3 SBH ROI2', 'Cy3 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,2)
plot(Cy5_SBL_ROI1_Cyc2_SNR, 'r')
hold on 
plot(Cy5_SBL_ROI2_Cyc2_SNR, 'r')
hold on 
plot(Cy5_SBL_ROI3_Cyc2_SNR, 'r')
hold on 
plot(Cy5_SBH_ROI1_Cyc2_SNR, 'b')
hold on 
plot(Cy5_SBH_ROI2_Cyc2_SNR, 'b')
hold on 
plot(Cy5_SBH_ROI3_Cyc2_SNR, 'b')
title('Cy5')
legend('Cy5 SBL ROI1', 'Cy5 SBL ROI2', 'Cy5 SBL ROI3', 'Cy5 SBH ROI1', 'Cy5 SBH ROI2', 'Cy5 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,3)
plot(Cy7_SBL_ROI1_Cyc2_SNR, 'r')
hold on 
plot(Cy7_SBL_ROI2_Cyc2_SNR, 'r')
hold on 
plot(Cy7_SBL_ROI3_Cyc2_SNR, 'r')
hold on 
plot(Cy7_SBH_ROI1_Cyc2_SNR, 'b')
hold on 
plot(Cy7_SBH_ROI2_Cyc2_SNR, 'b')
hold on 
plot(Cy7_SBH_ROI3_Cyc2_SNR, 'b')
title('Cy7')
legend('Cy7 SBL ROI1', 'Cy7 SBL ROI2', 'Cy7 SBL ROI3', 'Cy7 SBH ROI1', 'Cy7 SBH ROI2', 'Cy7 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,4)
plot(A488_SBL_ROI1_Cyc2_SNR, 'r')
hold on 
plot(A488_SBL_ROI2_Cyc2_SNR, 'r')
hold on 
plot(A488_SBL_ROI3_Cyc2_SNR, 'r')
hold on 
plot(A488_SBH_ROI1_Cyc2_SNR, 'b')
hold on
plot(A488_SBH_ROI2_Cyc2_SNR, 'b')
hold on 
plot(A488_SBH_ROI3_Cyc2_SNR, 'b')
title('A488')
legend('488 SBL ROI1', '488 SBL ROI2', '488 SBL ROI3', '488 SBH ROI1', '488 SBH ROI2', '488 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])
%
%% plotting mutliple SNR CYCLE 1
figure()
sgtitle('Signal to noise ratio: Cycle 1','FontSize',18)
subplot(2,2,1)
plot(Cy3_SBL_ROI1_Cyc1_SNR, 'r')
hold on 
plot(Cy3_SBL_ROI2_Cyc1_SNR, 'r')
hold on 
plot(Cy3_SBL_ROI3_Cyc1_SNR, 'r')
hold on 
plot(Cy3_SBH_ROI1_Cyc1_SNR, 'b')
hold on 
plot(Cy3_SBH_ROI2_Cyc1_SNR, 'b')
hold on 
plot(Cy3_SBH_ROI3_Cyc1_SNR, 'b')
title('Cy3')
legend('Cy3 SBL ROI1', 'Cy3 SBL ROI2', 'Cy3 SBL ROI3', 'Cy3 SBH ROI1', 'Cy3 SBH ROI2', 'Cy3 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,2)
plot(Cy5_SBL_ROI1_Cyc1_SNR, 'r')
hold on 
plot(Cy5_SBL_ROI2_Cyc1_SNR, 'r')
hold on 
plot(Cy5_SBL_ROI3_Cyc1_SNR, 'r')
hold on 
plot(Cy5_SBH_ROI1_Cyc1_SNR, 'b')
hold on 
plot(Cy5_SBH_ROI2_Cyc1_SNR, 'b')
hold on 
plot(Cy5_SBH_ROI3_Cyc1_SNR, 'b')
title('Cy5')
legend('Cy5 SBL ROI1', 'Cy5 SBL ROI2', 'Cy5 SBL ROI3', 'Cy5 SBH ROI1', 'Cy5 SBH ROI2', 'Cy5 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,3)
plot(Cy7_SBL_ROI1_Cyc1_SNR, 'r')
hold on 
plot(Cy7_SBL_ROI2_Cyc1_SNR, 'r')
hold on 
plot(Cy7_SBL_ROI3_Cyc1_SNR, 'r')
hold on 
plot(Cy7_SBH_ROI1_Cyc1_SNR, 'b')
hold on 
plot(Cy7_SBH_ROI2_Cyc1_SNR, 'b')
hold on 
plot(Cy7_SBH_ROI3_Cyc1_SNR, 'b')
title('Cy7')
legend('Cy7 SBL ROI1', 'Cy7 SBL ROI2', 'Cy7 SBL ROI3', 'Cy7 SBH ROI1', 'Cy7 SBH ROI2', 'Cy7 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])

subplot(2,2,4)
plot(A488_SBL_ROI1_Cyc1_SNR, 'r')
hold on 
plot(A488_SBL_ROI2_Cyc1_SNR, 'r')
hold on 
plot(A488_SBL_ROI3_Cyc1_SNR, 'r')
hold on 
plot(A488_SBH_ROI1_Cyc1_SNR, 'b')
hold on
plot(A488_SBH_ROI2_Cyc1_SNR, 'b')
hold on 
plot(A488_SBH_ROI3_Cyc1_SNR, 'b')
title('A488')
legend('488 SBL ROI1', '488 SBL ROI2', '488 SBL ROI3', '488 SBH ROI1', '488 SBH ROI2', '488 SBH ROI3')
xlabel ('Pixel number')
ylabel ('Signal to noise ratio')
ax = gca;
ax.FontSize = 12;
xlim([1 21])


