p=imread('pout.tif');
r=size(p,1);
c=size(p,2);
%a
for i=1:size(p,1)
    for j=1:size(p,2)
        a(i,j)=bitand(p(i,j),128);
    end
end
 
for i=1:size(p,1)
    for j=1:size(p,2)
        b(i,j)=bitand(p(i,j),64);
    end
end
subplot(3,3,1),imshow(p),xlabel('Original Image');
subplot(3,3,4),imshow(a),xlabel('Image bit 8');
subplot(3,3,5),imshow(b),xlabel('Image bit 7');
%b
for i=1:size(p,1)
    for j=1:size(p,2)
        c(i,j)=bitand(p(i,j),128);
    end
end
 
for i=1:size(p,1)
    for j=1:size(p,2)
        d(i,j)=bitand(p(i,j),64);
    end
end
 
for i=1:size(p,1)
    for j=1:size(p,2)
        e(i,j)=bitand(p(i,j),32);
    end
end
 subplot(3,3,7),imshow(c),xlabel('Image bit 8');
 subplot(3,3,8),imshow(d),xlabel('Image bit 7');
 subplot(3,3,9),imshow(e),xlabel('Image bit 6');