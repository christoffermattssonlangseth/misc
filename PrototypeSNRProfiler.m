%% IMAGE 
% Cy5
image = 'I:\export\SBL Orhogonal projection\Orthogonal Projection 3\Orthogonal Projection 3_c5_ORG.tif';
image = 'I:\export\SBL_ROI-Orthogonal Projection\SBL_ROI-Orthogonal Projection_Cy5_ORG.tif';

% Cy3
image = 'I:\export\SBH_ROI-Orthogonal Projection\SBH_ROI-Orthogonal Projection_Cy3 (LED Filter 555)_ORG.tif';
image = 'I:\export\SBL_ROI-Orthogonal Projection\SBL_ROI-Orthogonal Projection_Cy3 (LED Filter 555)_ORG.tif';

% FITC488
image = 'I:\export\SBH_ROI-Orthogonal Projection\SBH_ROI-Orthogonal Projection_FITC488_ORG.tif';
image = 'I:\export\SBL_ROI-Orthogonal Projection\SBL_ROI-Orthogonal Projection_FITC488_ORG.tif';

% Cy7
image = 'I:\export\SBH_ROI-Orthogonal Projection\SBH_ROI-Orthogonal Projection_AF750Cy7_ORG.tif';
image = 'I:\export\SBL_ROI-Orthogonal Projection\SBL_ROI-Orthogonal Projection_AF750Cy7_ORG.tif';

% OP 1 
image = 'I:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c2_ORG.tif';
image = 'I:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c3_ORG.tif';
image = 'I:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c4_ORG.tif';
image = 'I:\export\Orthogonal projection 3\SBH_OP_3\SBH_OP_3_c5_ORG.tif';

%%

I = imread(image);
maxdist_between_spots = 14;
filename = [strtok(image, '.'), '.csv'];

% threshold = prctile(I(:), 92);  % in original 16-bit value
% threshold = double(600)/65535;  % between 0-1
threshold = 0.01;

% binary image
Ibw = im2bw(I, threshold); % MAKING THE IMAGE BINARY
figure, imshow(Ibw, []);

% find peaks
figure()
Idil = imdilate(I, ones(5)); % IMAGE DIALATION
centroid = I == Idil & Ibw;
[Y,X] = ind2sub(size(I), find(centroid));
figure; subplot(121);
imshow(I,[]); 
hold on; plot(X, Y, 'r.');

% keep only isolated
idx = rangesearch([X,Y], [X,Y], maxdist_between_spots);
nNN = cellfun(@length, idx); % apply function to each cell in cell array
plot(X(nNN==1), Y(nNN==1), 'yo');

subplot(122); hold on;
bell_dist = 10;
fid = fopen(filename, 'w');
for i = find(nNN==1)'
    try
        plot(1:(2*bell_dist+1), I(Y(i),X(i)-bell_dist:X(i)+bell_dist) - min(I(Y(i),X(i)-bell_dist:X(i)+bell_dist)), 'k-');
        drawnow;
        fprintf(fid, lineformat('%d', 2*bell_dist+1), I(Y(i),X(i)-bell_dist:X(i)+bell_dist));
    end
end
fclose(fid);


