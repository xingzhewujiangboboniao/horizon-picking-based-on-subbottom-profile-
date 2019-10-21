function [ Segimage ] = Segamentation(cN2, inImg, Size_)
cN2 = double(cN2);
inImg = double(inImg);
nClusters = 2;   
winDims = [Size_, Size_];     
winStep = [floor(Size_/2), floor(Size_/2)];       
isGrayScale = true;    
imgSegmentedLBP = segmentationLBP(inImg, nClusters, winDims, winStep, isGrayScale);

[line, row] = size(inImg);
Segimage = imresize(imgSegmentedLBP,size(inImg));
reorderedData = reshape(Segimage, [line*row,1]);
idxCluster = k_means(reorderedData, 2);
Segimage = reshape(idxCluster, line, row);
Segimage = switchMatrixlabels(Segimage);

A = sum(sum(cN2(find(Segimage == 1))));
A = A/length(find(Segimage == 1));
B = sum(sum(cN2(find(Segimage == 2))));
B = B/length(find(Segimage == 2));
if (A>B)
    Segimage(find(Segimage == 1)) = 255;
    Segimage(find(Segimage == 2)) = 0;
else
    Segimage(find(Segimage == 1)) = 0;
    Segimage(find(Segimage == 2)) = 255;
end
end

