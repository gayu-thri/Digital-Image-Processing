clear all;
a=imread('q4.jpg');
subplot(331),imshow(a),title('orig img');
sq=ones(3,3);

ae=imerode(a,sq); %a-b
ad=imdilate(a,sq);  %a+b
subplot(332),imshow(ae),title('eroded image');
subplot(333),imshow(ad),title('dilated img');

%ao=imopen(a,sq); 
ao=ae+ad;
%ac=imclose(a,sq);
ac=ad+ae;
subplot(334),imshow(ao),title('opening');
subplot(335),imshow(ac),title('closing');
%((a-b) +b) +b) -b
ib=a-ae;
ex=ad-a; 
subplot(336),imshow(ib),title('internal boundary');
subplot(337),imshow(ac),title('external boundary');
mg=ad-ae;
subplot(338),imshow(mg),title('morphological gradient');
noiseremoval=imerode(imdilate(imdilate(ae,sq),sq),sq);
subplot(339),imshow(noiseremoval),title('noise removal');
%ah=imfill(a,'holes');
%subplot(336),imshow(ah),title('hole fillin');