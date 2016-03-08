n=512;
A1 = zeros(512,512);%Arxikopoihsh mytroou A1.
A2 = zeros(512,512);%Arxikopoihsh mytroou A2.
A3 = zeros(512,512);%Arxikopoihsh mytroou A3.
A4 = zeros(513,513);%Arxikopoihsh mytroou A4.
A5 = zeros(512,512);%Arxikopoihsh mytroou A5.
A6 = zeros(512,512);%Arxikopoihsh mytroou A6.
B = zeros(512,6);
x = ones(512,1);
x2 = zeros(512,6);
y=linspace(-1,1,512);
condition = zeros(1,6);
front_error = zeros(1,6);
back_error = zeros(1,6);
for k=1:n
    y2(k)=cos((k*pi)/(n+1)*k);
end
for i=1:n%Dimiourgia twn 6 diaforetikwn mitrwwn.
    A1 = randn(n);
    A2 = tril(A1);
    [L,U] = lu(A1);
    A3 = U;
    A4 = gfpp(n);
    A5 = vander(y);
    A6 = vander(y2);
end
condition(1,1) = cond(A1,inf);%Ypologismos tou deikth katastashs gia to mitroo A1.
condition(1,2) = cond(A2,inf);%Ypologismos tou deikth katastashs gia to mitroo A2.
condition(1,3) = cond(A3,inf);%Ypologismos tou deikth katastashs gia to mitroo A3.
condition(1,4) = cond(A4,inf);%Ypologismos tou deikth katastashs gia to mitroo A4.
condition(1,5) = cond(A5,inf);%Ypologismos tou deikth katastashs gia to mitroo A5.
condition(1,6) = cond(A6,inf);%Ypologismos tou deikth katastashs gia to mitroo A6.
B(:,1) = A1*x;%Dimiourgia tou B  mesw to x kai tou A1.
B(:,2) = A2*x;%Dimiourgia tou B  mesw to x kai tou A2.
B(:,3) = A3*x;%Dimiourgia tou B  mesw to x kai tou A3.
B(:,4) = A4*x;%Dimiourgia tou B  mesw to x kai tou A4.
B(:,5) = A5*x;%Dimiourgia tou B  mesw to x kai tou A5.
B(:,6) = A6*x;%Dimiourgia tou B  mesw to x kai tou A6.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Parakatw exw ton kodika gia na vriskw gia ka8e diaforetiko mitroo
%A1,A2,...,A6 ta x2 pou prokiptoun apo tin sinartisi mldivide.Epeita
%vriskoume ta front_error kai back_error mesw tis sinartisis norm.


x2(:,1)=mldivide(A1,B(:,1));
front_error(1,1) = (norm(x2(:,1)-x,inf)/norm(x,inf));
back_error(1,1) = (norm(A1*x2(:,1)-B(:,1),inf)/((norm(A1,inf))*(norm(x2(:,1),inf))+(norm(B(:,1),inf)))); 
x2(:,2)=mldivide(A2,B(:,2));
front_error(1,2) = (norm(x2(:,2)-x,inf)/norm(x,inf));
back_error(1,2) = (norm(A2*x2(:,2)-B(:,2),inf)/((norm(A2,inf))*(norm(x2(:,2),inf))+(norm(B(:,2),inf))));
x2(:,3)=mldivide(A3,B(:,3));
front_error(1,3) = (norm(x2(:,3)-x,inf)/norm(x,inf));
back_error(1,3) = (norm(A3*x2(:,3)-B(:,3),inf)/((norm(A3,inf))*(norm(x2(:,3),inf))+(norm(B(:,3),inf))));
x2(:,4)=mldivide(A4,B(:,4));
front_error(1,4) = (norm(x2(:,4)-x,inf)/norm(x,inf));
back_error(1,4) = (norm(A4*x2(:,4)-B(:,4),inf)/((norm(A4,inf))*(norm(x2(:,4),inf))+(norm(B(:,4),inf))));
x2(:,5)=mldivide(A5,B(:,5));
front_error(1,5) = (norm(x2(:,5)-x,inf)/norm(x,inf));
back_error(1,5) = (norm(A5*x2(:,5)-B(:,5),inf)/((norm(A5,inf))*(norm(x2(:,5),inf))+(norm(B(:,5),inf))));
x2(:,6)=mldivide(A6,B(:,6));
front_error(1,6) = (norm(x2(:,6)-x,inf)/norm(x,inf));
back_error(1,6) = (norm(A6*x2(:,6)-B(:,6),inf)/((norm(A6,inf))*(norm(x2(:,6),inf))+(norm(B(:,6),inf))));
    
