clear all;
a=imread('q2a.jpg');
subplot(221),imshow(a),title('Orig. image');
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
subplot(222),imshow(im2bw(a)),title('After Global Thresholding');

clear all;
a=imread('q2b.jpg');
subplot(223),imshow(a),title('Orig. image');
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
subplot(224),imshow(im2bw(a)),title('After Global Thresholding');
    

