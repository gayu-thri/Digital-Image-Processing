clear all;
a=imread('pout.tif');
a1=im2double(a);
% b1=0.1*log(double(1+a1));
% b1=mat2gray(b1);
% subplot(1,2,1),imshow(a),title('Original Image');
% subplot(1,2,2),imshow(b1),title('Log transformation');
%  
c1=(255-a1);
 c1=mat2gray(c1);
 subplot(1,2,1),imshow(a),title('Original Image');
 subplot(1,2,2),imshow(c1),title('Image Negative');

% a2=imread('Fig0308(a)(fractured_spine).tif');
% m2=im2double(a2);
% c2=1;
% g2=0.6;      %g<1 Brighter
% for row=1:size(m2,1)
%     for column=1:size(m2,2)
%         if m2(row,column)>0
% s2(row,column)=c2*(m2(row,column).^g2);
%         end
%     end 
% end
% s2=mat2gray(s2);
% subplot(1,2,1),imshow(m2),title('Original Image');
% subplot(1,2,2),imshow(s2),title('Gamma transformation ');
% 
% a2=imread('Fig0309(a)(washed_out_aerial_image).tif');
% m2=im2double(a2);
% c2=1;
% g2=4;      %g>1 Darker
% for row=1:size(m2,1)
%     for column=1:size(m2,2)
%         if m2(row,column)>0
% s2(row,column)=c2*(m2(row,column).^g2);
%         end
%     end 
% end
% s2=mat2gray(s2);
% subplot(1,2,1),imshow(m2),title('Original Image');
% subplot(1,2,2),imshow(s2),title('Gamma transformation ');