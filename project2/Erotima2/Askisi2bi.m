A = zeros(1,64);%Arxikopoihsh mitroou A
B = zeros(1,64);%Arxikopoihsh mitroou B
C = zeros(1,64);%Arxikopoihsh mitroou C
sum = zeros(1,4);%Arxikopoihsh mitroou sum.
count = 0;
A(1) = 1;%Dimiourgia tis siras taylor
for i = 2:64
    k = 1;
    for j = 1:(i-1)
        k = k*j;
    end
    A(i) = ((-2*pi)^(i-1))/k;
end
A = single(A);
for i =[1:64]
    sum(1,1) = sum(1,1)+A(i);%Athrisma apo aristera pros ta deksia.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B=sort(A);
for i =[1:64]
    sum(1,2) = sum(1,2)+B(i);%Athrisma afou exei ginei taksinomisi ston pinaka.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C=B;
while length(C)>1
    C(2) = C(1) + C(2);%Prosthetoume ta x1+x2.
    C(1)=[];%Svinoume to x1
    C=sort(C);%Sortaroume ton pinaka C.
end
sum(1,3)=C;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sum(1,4)=pichat(B);%klisi tis pichat