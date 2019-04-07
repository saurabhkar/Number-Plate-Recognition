close all;
clear all;
clc;

im = imread('image1.png');
figure ,imshow(im);
imgray = rgb2gray(im);
figure ,imshow(imgray);
imbin = imbinarize(imgray);
figure ,imshow(imbin);
im = edge(imgray, 'prewitt');
figure ,imshow(im);

%Below steps are to find location of number plate
Iprops=regionprops(im,'BoundingBox','Area', 'Image');
area = Iprops.Area;
count = numel(Iprops);
maxa= area;
boundingBox = Iprops.BoundingBox;
for i=1:count
   if maxa<Iprops(i).Area
       maxa=Iprops(i).Area;
       boundingBox=Iprops(i).BoundingBox;
   end
end    
%%%%%%%%%%%%                                   debugging purpose %%%%%%%%%%  figure , imwrite(Iprops(106).Image,'ss.png');

im = imcrop(imbin, boundingBox);%crop the number plate area
im = bwareaopen(~im, 500); %remove some object if it width is too long or too small than 500

 [h, w] = size(im);%get width

figure ,imshow(im);

Iprops=regionprops(im,'BoundingBox','Area', 'Image'); %read letter
count = numel(Iprops);
noPlate=[]; % Initializing the variable of number plate string.


for i=1:count
   ow = length(Iprops(i).Image(1,:));
   oh = length(Iprops(i).Image(:,1));
   if ow<(h/2) & oh>(h/3)
       letter=Letter_detection(Iprops(i).Image); % Reading the letter corresponding the binary image 'N'.
       noPlate =[noPlate letter]% Appending every subsequent character in noPlate variable.
       
   end
   %figure , imwrite(Iprops(i).Image , 'ss.png');
end