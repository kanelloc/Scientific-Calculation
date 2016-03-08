n=2.^[7:10];  %diastaseis n
mat_time_timeit = zeros(3,4); %preallocation twn dianusmatwn gia pio grhgorh ektelesh.
for i=[1:4]                   %apo 1:4 giati to n pernei 4 times(128,256,512,1024).
    A=randn(n(i),n(i));       %Paragwgh tyxaiou pinaka A nxn.
    b=randn(n(i),1);          %Paragwgh tyxaiou pinaka b nx1.
    
    c = zeros(n(i));         %preallocation twn dianusmatwn gia pio grhgorh ektelesh.
    s = zeros(n(i));         %preallocation twn dianusmatwn gia pio grhgorh ektelesh.
    
    c=tril(A);               %Dimiourgia katw trigonikou mitroou mesw tis tril.
    
    s = c(:,randperm(size(c,2))); %Dhmiourgia psixologikou katw trigonikou mitroou mesw ths randperm kai ths size gia thn antimetathesh
                                  %twn stulwn.
    
    
    f = @ () mldivide(A,b);   
    mat_time_timeit(1,i) = timeit(f)  %Klhsh ths timeit gia xronometrhsh ths mldivide(A,b).
    
    
    f = @ () mldivide(c,b);
    mat_time_timeit(2,i) = timeit(f)  %Klhsh ths timeit gia xronometrhsh ths mldivide(c,d).
    
    
    f = @ () mldivide(s,b);
    mat_time_timeit(3,i) = timeit(f)  %Klhsh ths timeit gia xronometrhsh ths mldivide(s,d).


end




figure
plot(n, mat_time_timeit(1,:), '-^r', n, mat_time_timeit(2,:),'-b*', n, mat_time_timeit(3,:),'-m*')
legend('1o erotima', '2o erotima','3o erotima','Location', 'Northwest')
title('Xronometrhsh')
xlabel('n = 2. ^ [7:10]')
ylabel('time')



