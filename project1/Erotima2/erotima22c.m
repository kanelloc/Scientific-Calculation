n=2.^[7:10];  %diastaseis n.
mat_time_timeit = zeros(2,4);%preallocation twn dianusmatwn gia pio grhgorh ektelesh.
for i = [1:4]                %apo 1:4 giati to n pernei 4 times(128,256,512,1024).
    A= randn(n(i),n(i))      %Paragwgh tyxaiou pinaka A nxn.
    b= randn(n(i),1);        %Paragwgh tyxaiou pinaka b nx1.
  
    f = @ () lu(A);                     %Klhsh ths timit gia thn xronometrhsh ths entolhs lu.
    mat_time_timeit(1,i) = timeit(f)    %Apothikeush ston pinaka mat_time_timeit ta apotelesmata ths timeit.
    
    
    f = @ () mtimes(A,b);               %Klhsh ths timit gia thn xronometrhsh ths entolhs mtimes(A,b).
    mat_time_timeit(2,i) = timeit(f)    %Apothikeush ston pinaka mat_time_timeit ta apotelesmata ths timeit.
end

figure
plot(n, mat_time_timeit(1,:), '-^r', n, mat_time_timeit(2,:),'-b*')
legend('lu', 'mtimes(A,b)','Location', 'Northwest')
title('Xronometrhsh c')
xlabel('n = 2. ^ [7:10]')
ylabel('time')