n=2.^[7:10];  %diastaseis n
time = zeros(2,4);      %preallocation twn dianusmatwn gia pio grhgorh ektelesh.
for i = [1:4]           %apo 1:4 giati to n pernei 4 times(128,256,512,1024).
    A= randn(n(i),n(i)) %Paragwgh tyxaiou pinaka A nxn.
    b= randn(n(i),1);   %Paragwgh tyxaiou pinaka b nx1.
    
    [L,U] = lu(A);        %prwth ektelesh ths prakshs lu.
    mtimes(A,b);          %prwth ektelesh tis prakshs A*b mesw ths mtimes.
    
    
    tic;                  %Xrhsh ths tic/toc gia thn xronometrhsh ths lu(A).
    [L,U] = lu(A);        %Deuterh eketelesh afou exoun metafer8ei ta dedomena stin mnhmh.
    time(1,i) = toc;
    
    tic;                  %Xrhsh ths tic/toc gia thn xronometrhsh ths mtimes(A,b).
    mtimes(A,b);          %Deuterh eketelesh afou exoun metafer8ei ta dedomena stin mnhmh.
    time(2,i) = toc;
end

figure
plot(n, time(1,:), '-*r', n, time(2,:),'-b*')
legend('lu', 'mtimes','Location', 'Northwest')
title('Xronometrhsh a')
xlabel('n = 2. ^ [7:10]')
ylabel('time')