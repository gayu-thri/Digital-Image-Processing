clear all;
a=im2double(imread('q3.jpg'));
subplot(131),imshow(rgb2gray(a)),title('Orig. image');
t=mean(a);
m=size(a,1);
n=size(a,2);
g1(m,n)=0;
g2(m,n)=0;
for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)>t)
            g1(i,j)=a(i,j);
        elseif(a(i,j)<=t)
            g2(i,j)=a(i,j);
        end
    end
end

u1=mean(g1);
u2=mean(g2);

tnew=(u1+u2)/2;

while(tnew>t)
for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)>t)
            g1=a(i,j);
        elseif(a(i,j)<=t)
            g2=a(i,j);
        end
    end
end

u1=mean(g1);
u2=mean(g2);

tnew=(u1+u2)/2;
end 

if(tnew<t)
    for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)>tnew)
            a(i,j)=1;
        elseif(a(i,j)<=tnew)
            a(i,j)=0;
        end
    end
    end
end
level1 = graythresh(a)
BW3 = im2bw(a,level1);
subplot(132),imshow(BW3),title('After Global Thresholding');

%subplot(132),imshow(im2bw(a)),title('After Global Thresholding');
    
a=im2double(imread('q3.jpg'));
[counts1,x] = imhist(a,16);
T1 = otsuthresh(counts1);
BW1 = im2bw(a,T1);
subplot(133),imshow(BW1),title('Otsu');
