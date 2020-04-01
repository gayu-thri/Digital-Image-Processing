a=[22 5 0;1 11 0;13 2 1];
disp(a(:,1:2)); %disp first 2 columns

disp(a(:,1:2)*3);  %66 15
                   %3  33
                   %39  6
c=a(:,1:2);                  
fprintf('c = \n');    
disp(c');     %transpose
%disp((a(:,1:2))');

