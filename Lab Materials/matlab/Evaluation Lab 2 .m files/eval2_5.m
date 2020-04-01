p=imread('pout.tif');
p1=im2double(p);
p1=uint32(p1);
% r=size(p,1);
% c=size(p,2);
% 
% a=zeros(r,c);
% b=zeros(r,c);
% c=zeros(r,c);
% d=zeros(r,c);
% e=zeros(r,c);
%a
for i=1:size(p,1)
    for j=1:size(p,2)
        a(i,j)=bitand(p1(i,j),128);
    end
end
 
for i=1:size(p,1)
    for j=1:size(p,2)
        b(i,j)=bitand(p1(i,j),64);
    end
end
 
imshow(p1),figure,imshow(a),figure,imshow(b);
 
%b
for i=1:size(p,1)
    for j=1:size(p,2)
        c(i,j)=bitand(p1(i,j),128);
    end
end
 
for i=1:size(p,1)
    for j=1:size(p,2)
        d(i,j)=bitand(p1(i,j),64);
    end
end
 
for i=1:size(p,1)
    for j=1:size(p,2)
        e(i,j)=bitand(p1(i,j),32);
    end
end
 
imshow(p1),figure,imshow(c),figure,imshow(d),figure,imshow(e);