m=imread('signature.jpg');
x=rgb2gray(m);
imshow(x)
p=imcrop(x,[1,65,355,275]);
q=imcrop(x,[395,1,745,377]);
figure,imshow(p);
figure,imshow(q);

r=imcrop(x,[745,7,1271,451]);
s=imcrop(x,[5,323,391,717]);
figure,imshow(r);
figure,imshow(s);

t=imcrop(x,[491,389,747,713]);
u=imcrop(x,[747,461,1009,711]);
figure,imshow(t);
figure,imshow(u);

v=imcrop(x,[1035,461,1269,711]);
figure,imshow(v);

