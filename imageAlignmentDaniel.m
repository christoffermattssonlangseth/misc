%% align a floating image on top of a reference image
%  need to give rotation angle and translation matrix
%  last update, 2015-2-18, Xiaoyan

clear;
close all;

%% input
ref_image = imread('refImageHCA09c5.tif'); % give sample snapshot image (blue DAPI)

% input_image_prefix = 'Stitched\base3_c';
% flo_image = [input_image_prefix '1_stitched.tif']; % give sample snapshot image (blue DAPI)
flo_image = imread('refImageHCA09c3.tif');
% output_image_prefix = 'base3';

%% original, image resizing if scales are off 
% ref = imread(ref_image);
% size_ref = size(ref);
% flo = imread(flo_image);
% clear ref; % ram management
[rows_ref, cols_ref] = size(ref_image);
flo_image = imresize(flo_image, [rows_ref cols_ref]);

[rows_flo, cols_flo] = size(flo_image);
ref_image = imresize(ref_image, [rows_flo cols_flo]);

R_before = normxcorr2(ref_image, flo_image)
R_before = ssim(ref_image, flo_image)

R_after_sub = 0;
bottom = 1.001;
top = 1.5;
tic
for i = bottom : top 
    while R_after_sub < 0.9
        i
        flo_resized = imresize(flo_image, i);
        Ifuse = imfuse(flo_resized, ref_image);
        R_resizing = corr2(ref_image, flo_resized);
        R_resizing
    end
    figure();imshowpair(ref_resized,flo_resized);
end 
toc
% Ifuse = imfuse(flo_resized, ref_resized); % makes composite of two images
% imshow(Ifuse);
% green: floating
% purple: reference

%% rotation
angle = 0; % positive: counter clockwise
[flo_rotate, Ifuse_rotate] = rotateimage(flo_resized, angle, ref_resized);
imshow(Ifuse_rotate);

%% translation
yup = -2;   % positive: move the floating image up, negative: down
xleft = 8;   % positive: move the floating image left, negative: right
Ifuse_translate = translateimage(yup, xleft, flo_rotate, ref_resized);
imshow(Ifuse_translate);

%% transform images
mkdir('AlignedImages');
transformimage(flo,angle,yup,xleft,10,...
    ['AlignedImages\' output_image_prefix '1_ORG.tif'],size_ref);
tic
for c = 2:6
    flo = imread([input_image_prefix num2str(c) '_ORG.tif']);
    transformimage(flo,angle,yup,xleft,10,...
        ['AlignedImages\' output_image_prefix num2str(c) '_ORG.tif'],size_ref);
end
toc

%%
[optimizer, metric] = imregconfig('Multimodal');
optimizer.InitialRadius =  0.5e-2; % originally set to 0.5e-3
optimizer.MaximumIterations = 300; % originally set to 200
metric.UseAllPixels = 0; % originally set to 0

R_mat = zeros(20,1);
tformRigid_master = [];
Rfixed = imref2d(size(ref_image));

[rows_ref, cols_ref] = size(ref_image);
flo_image = imresize(flo_image, [rows_ref cols_ref]);

[rows_flo, cols_flo] = size(flo_image);
ref_image = imresize(ref_image, [rows_flo cols_flo]);

R_before = corr2(ref_image, flo_image)

R_after_sub = 0;
while  R_after_sub < 0.80
  
    tformRigid = imregtform(flo_image,ref_image,'rigid',optimizer,metric);
    movingRegisteredRigid = imwarp(flo_image,tformRigid,'OutputView',Rfixed);
    R_after_sub = corr2(movingRegisteredRigid,ref_image);
    R_after_sub %#ok<NOPTS>

end
figure();imshowpair(ref_image,movingRegisteredRigid);
