%quest1
%a=imread('Fig0228(a)(angiography_mask_image).tif');
%b=imread('Fig0228(b)(angiography_live_ image).tif');
%c=imabsdiff(a,b);
%subplot(1,3,1),imshow(a), title('First image');
%subplot(1,3,2),imshow(b), title('Second image');
%subplot(1,3,3),imshow(c), title('Resulted image after diff.');

%quest2
%d=double(imread('Fig0229(a)(tungsten_filament_shaded).tif'));
%e=double(imread('Fig0229(b)(tungsten_sensor_shading).tif'));
%j=imdivide(e,immultiply(e,e));

%f=immultiply(d,j);
%subplot(1,4,1),imshow(d), title('First image');
%subplot(1,4,2),imshow(e), xlabel('Second image');
%subplot(1,4,3),imshow(j), title('Reciprocal of second image');
%subplot(1,4,4),imshow(f), xlabel('Resulted image after mult.');

%quest3
g=double(imread('Fig0230(a)(dental_xray).tif'));
h=double(imread('Fig0230(b)(dental_xray_mask).tif'));
i=mat2gray(immultiply(g,h));
subplot(1,3,1),imshow(g), title('First image');
subplot(1,3,2),imshow(h), title('Second image');
subplot(1,3,3),imshow(i), title('Resulted image after mult.');