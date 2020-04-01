clear all;
a=imread('pout.tif'); %8 bits= 0-7 bits

x=size(a,1); %row,column
y=size(a,2);

p=zeros(x,y);
q=zeros(x,y);
r=zeros(x,y);
s=zeros(x,y);
t=zeros(x,y);
u=zeros(x,y);
v=zeros(x,y);
w=zeros(x,y);

for i=1:x
    for j=1:y
        p(i,j)=bitand(a(i,j),128); %8th bit 2^7=128
    end
end

for i=1:x
    for j=1:y
        q(i,j)=bitand(a(i,j),64); %7th bit 2^6=64
    end
end

for i=1:x
    for j=1:y
        r(i,j)=bitand(a(i,j),32); %6th bit 2^5=32
    end
end

for i=1:x
    for j=1:y
        s(i,j)=bitand(a(i,j),16); %5th bit 2^4=16
    end
end

for i=1:x
    for j=1:y
        t(i,j)=bitand(a(i,j),8); %4th bit 2^3=8
    end
end

for i=1:x
    for j=1:y
        u(i,j)=bitand(a(i,j),4); %3rd bit 2^2=4
    end
end

for i=1:x
    for j=1:y
        v(i,j)=bitand(a(i,j),2); %2nd bit 2^1=2
    end
end

for i=1:x
    for j=1:y
        w(i,j)=bitand(a(i,j),1); %1st bit 2^0=1
    end
end
subplot(3,4,1),imshow(a),xlabel('Original Image');
subplot(3,4,5),imshow(p),xlabel('Image bit 7');
subplot(3,4,6),imshow(q),xlabel('Image bit 6');
subplot(3,4,7),imshow(r),xlabel('Image bit 5');
subplot(3,4,8),imshow(s),xlabel('Image bit 4');
subplot(3,4,9),imshow(t),xlabel('Image bit 3');
subplot(3,4,10),imshow(u),xlabel('Image bit 2');
subplot(3,4,11),imshow(v),xlabel('Image bit 1');
subplot(3,4,12),imshow(w),xlabel('Image bit 0');

h=zeros(x,y);
for i=1:x
    for j=1:y
        w(i,j)=bitor(p(i,j),q(i,j));
        w(i,j)=bitor(r(i,j),w(i,j));
    end
end
figure,imshow(w);
