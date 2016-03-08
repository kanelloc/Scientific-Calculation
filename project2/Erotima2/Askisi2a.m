A = zeros(1,64);%Arxikopoihsh pinaka A.
B = zeros(1,64);%Arxikopoihsh pinaka B.
C = zeros(1,64);%Arxikopoihsh pinaka C.
sum = zeros(1,4);%Arxikopoihsh pinaka sum.
A = [1:64];
A = single(A);%Metatropi tou A pinaka se single precision.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i =[1:64]
    sum(1,1)= sum(1,1)+A(i);%Prosthesi apo aristera pros ta deksia.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B=sort(A);%Taksinomisi.
for i =[1:64]
    sum(1,2) = sum(1,2)+B(i);%Prosthesi afou sortarame ton pinaka.
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




    
    
    

