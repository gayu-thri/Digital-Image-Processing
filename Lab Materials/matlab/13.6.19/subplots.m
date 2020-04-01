%subplot
a=imread('football.jpg');  
b=imread('onion.png');
c=imread('logo.tif');
d=imread('pears.png');
subplot(2,2,1),imshow(a);
subplot(2,2,2),imshow(b);
subplot(2,2,3),imshow(c);
subplot(2,2,4),imshow(d);

%figure
figure,imshow(a);
figure,imshow(b);
