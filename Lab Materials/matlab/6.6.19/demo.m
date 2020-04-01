a=[1 2 3 ;5 4 3 ;2 3 4];
b=[9 8 7 ;6 7 8 ;4 5 6];
disp(a)
disp(b)
disp(a*b)
disp(a.*b)
disp(a./b)
disp([b a])
disp(a(1,1));               

for c=10:20   
    fprintf('value of c: %d\n',c);
end    
subplot(1,4,1),imshow(p),title('Original Image');
subplot(1,4,2),imshow(a1),title('7th bit plane slice');
subplot(1,4,3),imshow(b1),title('8th bit plane slice');
subplot(1,4,4),imshow(d),title('6th bit plane slice');

subplot(1,3,1),imshow(p),title('Original Image');
subplot(1,3,2),imshow(a),title('7th bit plane slice');
subplot(1,3,3),imshow(b),title('8th bit plane slice');
 