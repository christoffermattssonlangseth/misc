ref_image = imread('standard pipeline\base2_c1.tif');
flo_image = imread('starfish\Base 1_c1_ORG.tif'); % give ple snapshot image (blue DAPI)

% downscaling the images due to RAM limitations
ref_image_re = imresize(ref_image, 0.5);
flo_image_re = imresize(flo_image, 0.5);

% RAM management
clear ref_image;
clear flo_image;

% resizing the floating image to be the same dimensions as the reference
% image
[rows_ref, cols_ref] = size(ref_image_re);
float_fit = imresize(flo_image_re, [rows_ref cols_ref]);
% float_fit = flo_image_re(1:rows_ref, 1:cols_ref);
figure;imshowpair(ref_image_re,float_fit);

% [rows_ref, cols_ref] = size(flo_image_re);
% % float_fit = imresize(flo_image_re, [rows_ref cols_ref]);
% float_fit = ref_image_re(1:rows_ref, 1:cols_ref);
% figure;imshowpair(ref_image_re,float_fit);

% RAM management 
clear flo_image_re; 

% correlation of images before alignment 
R_before = corr2(float_fit,ref_image_re);

% defining metrics
[optimizer, metric] = imregconfig('Multimodal');
optimizer.InitialRadius = 0.4e-8; % originally set to 0.5e-3
optimizer.MaximumIterations = 300; % originally set to 200
metric.UseAllPixels = 0; % originally set to 0

R_mat = zeros(20,1);
tformRigid_master = [];
Rfixed = imref2d(size(ref_image_re));

%% 

for i = 1 : 20  % standard is to run 20 loops
% Registration based on Rigid(consisting of translation and rotation)

    tformRigid = imregtform(float_fit,ref_image_re,'similarity',optimizer,metric);

% Apply the Rigid geometric transformation output to the moving image
    % to align it with the fixed image.

    movingRegisteredRigid = imwarp(float_fit,tformRigid,'OutputView',Rfixed);
    R_after_sub = corr2(movingRegisteredRigid,ref_image_re);
    R_mat(i) = R_after_sub;
    R_after_sub
    if R_after_sub >= max(R_mat) == 1

        tformRigid_master = tformRigid;
    
    else
    end
%     if R_after_sub < 0.95
%         continue 
%     
%     else
%         break 
%     end
end 
figure();imshowpair(ref_image_re,movingRegisteredRigid);

%% trying to see if this while loop will do the trick
% with the structure above, the number of iterations is reached
% "a while loop will repeatedly execute statements as long as a expression remains true"
R_after_sub = 0;
while  R_after_sub < 0.96
  
    tformRigid = imregtform(float_fit,ref_image_re,'rigid',optimizer,metric);
    movingRegisteredRigid = imwarp(float_fit,tformRigid,'OutputView',Rfixed);
    R_after_sub = corr2(movingRegisteredRigid,ref_image_re);
    R_after_sub %#ok<NOPTS>
    R_mat(i) = R_after_sub;

end
figure();imshowpair(ref_image_re,movingRegisteredRigid);
imshow(ref_image)
manuallyMoved_movingRegisteredRigid = imtranslate(movingRegisteredRigid, [1, 0]);
R_after_sub = corr2(manuallyMoved_movingRegisteredRigid,ref_image_re);
R_after_sub
figure();imshowpair(ref_image_re,manuallyMoved_movingRegisteredRigid);

%%



for i = 1.0001:2
    while R_afters_sub < 0.9
        i
        ref_image_re = imresize(ref_image, 1);
        flo_image_re = imresize(flo_image, i);
        R_after_sub = corr2(ref_image_re, flo_image_re);
        R_after_sub
    end
end 
imwarp(starfish_x_y,tformRigid,'OutputView',Rfixed);

R_after_sub = 0;
while  R_after_sub < 0.96
  
    tformRigid = imregtform(movingRegisteredRigid,ref_image_re,'similarity',optimizer,metric);
    movingRegisteredRigid_2 = imwarp(movingRegisteredRigid,tformRigid,'OutputView',Rfixed);
    R_after_sub = corr2(movingRegisteredRigid_2,ref_image_re);
    R_after_sub %#ok<NOPTS>
    R_mat(i) = R_after_sub;

end

%%
manuallyMoved_movingRegisteredRigid = imtranslate(movingRegisteredRigid, [0.5, 1]);
R_after_sub = corr2(manuallyMoved_movingRegisteredRigid,ref_image_re);
R_after_sub
