clear all;
i=imread('pout.tif');
i2=histeq(i);
subplot(1,2,1),imshow(i),title('Original Image');
subplot(1,2,2),imshow(i2),title('Histogram Qualization'); 