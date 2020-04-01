clear all;
a=imread('q1.jpg');
subplot(121),imshow(a),title('Original Image');
t=mean(a);

m=size(a,1);
n=size(a,2);

g1(m,n)=0;
g2(m,n)=0;

for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)>t)
            g1(i,j)=a(i,j);
        elseif(a(i,j)<=t)
            g2(i,j)=a(i,j);
        end
    end
end


u1=mean(g1);
u2=mean(g2);

tnew=(u1+u2)/2;

while(tnew>t)   %while loop
    for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)>t)
            g1(i,j)=a(i,j);
        elseif(a(i,j)<=t)
            g2(i,j)=a(i,j);
        end
    end
    end
    
u1=mean(g1);
u2=mean(g2);
 
tnew=(u1+u2)/2;

end             %end while

if(tnew<t)
     for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)>tnew)
           a(i,j)=1;
        elseif(a(i,j)<=t)
            a(i,j)=0;
        end
    end
     end
end

   subplot(122),imshow(im2bw(a)),title('After global thresholding');
   
