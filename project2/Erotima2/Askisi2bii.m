A = zeros(1,4096);%Arxikopoihsh mitroou A
B = zeros(1,4096);%Arxikopoihsh mitroou B
C = zeros(1,4096);%Arxikopoihsh mitroou C
sum = zeros(1,4); %Arxikopoihsh mitroou sum.
A(1:2047) = 1.0;
A(2048:2049) = 1.0e-18;
A(2050:4096) = -1.0;
A = single(A);
for i =[1:4096]
    sum(1,1) = sum(1,1)+A(i);%Athrisma apo aristera pros ta deksia.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B=sort(A);
for i =[1:4096]
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
