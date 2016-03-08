n=2.^[8:11];% To n pernei tis times (256 512 1024 2048).
mat_time_timeit = zeros(2,4);%preallocation tou mitroou gia pio grhgorh ektelesh.
mflops = zeros(2,4);%preallocation twn dianusmatwn gia pio grhgorh ektelesh.
for i = [1:4]% 4 epanalipseis gt exoume 4 times apo panw.
    u = randn(n(i),1);%Dimiourgia tyxaiou dianismanos nx1.
    v = randn(n(i),1);%Dimiourgia tyxaiou dianismanos nx1.
    col1 = 1;
    col2 = '';
    p = 3;
    myfunc(p,v,u,col1)
    f = @ () myfunc(p,v,u,col1);
    mat_time_timeit(1,i) = timeit(f)%Klhsh ths timit gia thn xronometrhsh ths myfunc.
                                    %gia to 1o column.
    omega = n(i)*(p-1)+(5*n(i)^2-n(i));%Ypologismos tou omega gia tin euresi twn m.flops.
    mflops(1,i) = (omega/mat_time_timeit(1,i))/10^6;%Ypologismos megaflops kai apothikeusi tis timit
                                                    %se enan peinaka mflopos(2,4).
    myfunc(p,v,u,col2)
    f = @ () myfunc(p,v,u,col2);
    mat_time_timeit(2,i) = timeit(f)%Klhsh ths timit gia thn xronometrhsh ths myfunc gia olokliro to mitrwo.
    omega = 2*n(i)^2+n(i)^2*(2*n(i)-1)*(p-1);%Ypologismos tou omega gia tin euresi twn m.flops.
    mflops(2,i) = (omega/mat_time_timeit(2,i))/10^6;%Ypologismos megaflops kai apothikeusi tis timit
end                                                 %se enan peinaka mflopos(2,4).

figure
plot(n, mat_time_timeit(1,:), '-^r', n, mat_time_timeit(2,:),'-b*' )
legend('col=1','col=keno','Location', 'Northwest')
title('Xronometrhsh ')
xlabel('n = 2. ^ [8:11]')
ylabel('time')

figure
plot(n,mflops(1,:),'-^r', n, mflops(2,:),'-b*' )
legend('col=1','col=keno','Location', 'Northwest')
title('Xronometrhsh ')
xlabel('n = 2. ^ [8:11]')
ylabel('time')
    