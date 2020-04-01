a=imread('pout.tif');
%M=fspecial('average',3);
%i1=imfilter(a,M);
M=[1/9 1/9 1/9;1/9 1/9 1/9; 1/9 1/9 1/9];
i1=imfilter(a,M);
subplot(3,3,1),imshow(i1),title('imfilter');
n=imnoise(a,'salt & pepper');
figure,subplot(3,3,2),imshow(n),title('Noise');
subplot(3,3,3),imshow(imfilter(a,M,'replicate')),title('Replicate');
subplot(3,3,4),imshow(imfilter(a,M,'circular')),title('Circular');
subplot(3,3,5),imshow(imfilter(a,M,'symmetric')),title('Symmetric');
subplot(3,3,6),imshow(ordfilt2(n,5,ones(3,3))),title('Order med filter (5)');
subplot(3,3,7),imshow(ordfilt2(n,1,ones(3,3))),title('Order min filter (1)');
subplot(3,3,8),imshow(ordfilt2(n,9,ones(3,3))),title('Order max filter (9)');


b=a-i1;
figure,imshow(b);
c=1.5;
g=a+ c * i1;
figure,imshow(g);

