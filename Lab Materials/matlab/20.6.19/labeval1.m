clear all;
%w=imread('signature.jpg');
%s=uint32(w);
%imshow(resize(s,0.5));
m=imread('signature.jpg');
imshow(m);
n=uint32(m);
s=0;
for row=1:size(m,1) %for finding the sum of values of pixels
    for col=1:size(m,2)
    s=s+n(row,col);  %sum
    end
end
fprintf('%d', s);
s1=s/(size(m,1)*size(m,2))   %divide by total no. of pixels
for row=1:size(m,1)
    for col=1:size(m,2)
    if m(row,col)>s1
        x(row,col)=1;
    else
        x(row,col)=0;
    end
    end
end
imshow(x);