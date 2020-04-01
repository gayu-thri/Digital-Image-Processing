clear all;
I=imread('q2a.jpg');
subplot(231),imshow(I),title('Orig. img');

[counts1,x] = imhist(I,16);
T1 = otsuthresh(counts1);
BW1 = im2bw(I,T1);
subplot(232),imshow(BW1),title('Otsu');

level1 = graythresh(I)
BW3 = im2bw(I,level1);
subplot(233),imshow(BW3),title('Global');

I=imread('q2b.jpg');
subplot(234),imshow(I),title('Orig. img');

[counts1,x] = imhist(I,16);
T1 = otsuthresh(counts1);
BW1 = im2bw(I,T1);
subplot(235),imshow(BW1),title('Otsu');

level1 = graythresh(I)
BW3 = im2bw(I,level1);
subplot(236),imshow(BW1),title('Global');