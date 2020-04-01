%a=imread('pout.tif');
%b=uint32(a);
%imshow(b);
%imfinfo('pout.tif')
%c=240*291*8;
%figure,imshow(imresize(a,[64 64],'nearest'));
%q=imread('pout.tif');
%figure,imshow(imresize(a,[64 64],'nearest'));
%size(q,1)

 m=imread('pout.tif');
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