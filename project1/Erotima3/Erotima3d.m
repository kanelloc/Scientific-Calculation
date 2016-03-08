n=2.^[7:10];  %diastaseis n
mat_time_timeit = zeros(2,4);%preallocation twn dianusmatwn gia pio grhgorh ektelesh
for i=[1:4]                  %po 1:4 giati to n pernei 4 times(128,256,512,1024).
   A=randn(n(i),n(i));       %Paragwgh tyxaiou pinaka A nxn mesw ths randn.
   I= eye(n(i));             %Dimiourgiou tou tautotikou pinaka nxn mesw ths eye.
   
   f = @ () mtimes(A,I);
   mat_time_timeit(1,i) = timeit(f);%Klhsh ths timeit gia xronometrhsh ths mtimes(A,I).
   
   
   f = @ () mtimes(A,A);
   mat_time_timeit(2,i) = timeit(f);%Klhsh ths timeit gia xronometrhsh ths mtimes(A,A).
   
   
end

figure
semilogy(n, mat_time_timeit(1,:), '-^r', n, mat_time_timeit(2,:),'-b*' )
legend('mtimes(A*I)', 'mtimes(A*A)', 'Location', 'Northwest')
title('Xronometrhsh ')
xlabel('n = 2. ^ [7:10]')
ylabel('time')
