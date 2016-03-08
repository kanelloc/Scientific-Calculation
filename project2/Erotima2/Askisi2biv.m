A = zeros(1,4096);%Arxikopoihsh mitroou A
B = zeros(1,4096);%Arxikopoihsh mitroou B
C = zeros(1,4096);%Arxikopoihsh mitroou C
sum = zeros(1,4); %Arxikopoihsh mitroou sum.
for i = [1:4096]
    A(i)=1/(i^2);
end
A = single(A);
for i =[1:4096]
    sum(1,1) = sum(1,1)+A(i);%Athrisma apo aristera pros ta deksia.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B=sort(A);
for i =[1:4095]
    sum(1,2) = sum(1,2) + B(i+1);%Athrisma afou exei ginei taksinomisi ston pinaka.
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
