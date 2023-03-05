%% An example of how to use function SVD_CompressedImage
% Befor  running this script first put your image in the same direcroty as
% this scrips .
%   After running this script go to your directiry and find new compressed
%   imge with name : your image name_new
% and then check the size of the images based on your tolerence of lossing
% data.
% Remember that this function olny works on grayscal images .
% If you want to apply it on a color image you must apply this function
% separately on each color layer. 
% GIThub.com\shahin77hb
clear
clc
%% Reading image
name=input('Insert name of your Image without suffix = ' ,'s');
suffix=input('Insert format of your image (png , JPEG , ...) =','s');
img_name=[name '.' suffix];
img=im2double(imread(img_name));
tol=input('Insert the persentage of lossing data ( for example 0.1 ) = ');

%% Compressing image
img_new=SVD_CompressedImage(img,tol);
name_new=[name '_new.' suffix];
imwrite(img_new,name_new);
imshow([img img_new])
