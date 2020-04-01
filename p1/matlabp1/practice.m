%info
imfinfo('kids.tif')

%logical
A=[2 3 4;0 0 2;0 3 3];
B=logical(A);
B

%conversions
a=imread('peppers.png');
b=mat2gray(a)
c=rgb2gray(a)
d=im2uint8(a)
e= im2bw(a)
subplot(2,2,1),imshow(b);
subplot(2,2,2),imshow(c);
subplot(2,2,3),imshow(d);
subplot(2,2,4),imshow(e);
%IM2UINT8
f=[1 1.3; 0 .5]
g=im2uint8(f)
G=im2uint16(f)
%ROTATE 
I = imread('cameraman.tif'); 
        J = imrotate(I,90);
 imshow(I),figure,imshow(J); 
 %CROP
 u=imread('cameraman.tif');
i=imcrop(u,[100,120,300,450]);
imshow(i);
%COMPLEMENT
a= imread('peppers.png');
b=imcomplement(a);
subplot(1,2,1), imshow(a), title('original image');
subplot(1,2,2), imshow(b), title('complemented image');

magic(2)
 
h=imread('pout.tif');
figure,imhist(h)



