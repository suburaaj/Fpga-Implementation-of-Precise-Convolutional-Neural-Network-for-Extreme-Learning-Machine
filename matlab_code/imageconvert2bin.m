% Image to text conversion
% Read the image from the file
[filename, pathname] = uigetfile('00002.png','C:\Users\Rajavarshini\Desktop\review1\bitmap image');
img = imread('C:\Users\Rajavarshini\Desktop\review1\bitmap image\00002.png');
img = imresize((img),[28 28]);
[ row col p ] =size(img);
if p == 3
    img = rgb2gray(img);
end
rectImg = img(1:28,1:28);
% noise add
rectImg = imnoise(rectImg,'salt & pepper', 0.02);
img(1:28,1:28) = rectImg;
% Image Transpose
imgTrans = img';
%imgTrans = img';
% iD conversion
img1D = imgTrans(:);
%img1Da = reshape(img1D,[49,16]);
% Decimal to Bin value conversion
imgBin = dec2bin(img1D);
%imgBin1= reshape(imgBin,[49,128]);
% New txt file creation
fid = fopen('C:\Users\Rajavarshini\Desktop\review1\bitmap image\inputBin5610.txt', 'wt');
% Bin value write to the txt file
% repmat - repeat copies of array
fprintf(fid, [repmat('%c',1,size(imgBin,2)) '\r\n'], imgBin.');
% Close the txt file
fclose(fid)