clear all;
topmax=' ';
disp('Enter the top max level');
top=input(topmax);
bottommin=' ';
disp('Enter the bottom min level');
bottom=input(bottommin);

a1=imread('pout.tif');
a=im2double(a1);
a=uint32(a);
h=0;
l=0;
for row=1:size(a,1)
    for column=1:size(a,2)
        if a(row,column)>h
            h=a(row,column);
        end
    end
end
for row=1:size(a,1)
    for column=1:size(a,2)
        if a(row,column)<l
           l=a(row,column);
        end
    end
end
disp('Maximum pixel level in the original image is');
h
disp('Minimum pixel level in the original image is');
l

p=zeros(size(a,1),size(a,2));
for row=1:size(a,1)
    for column=1:size(a,2)
       p(row,column)=bottom+(a(row,column)-l)/(h-l)*(top-bottom);
    end
end
subplot(1,2,1),imshow(a1),title('Original Image');
subplot(1,2,2),imshow(p),title('Linear level transformation');



