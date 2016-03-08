n=2.^[7:10];  %diastaseis n
accurate_time = zeros(2,4) %preallocation twn dianusmatwn gia pio grhgorh ektelesh
for i = [1:4]              %apo 1:4 giati to n pernei 4 times(128,256,512,1024).
    A= randn(n(i),n(i))    %Paragwgh tyxaiou pinaka A nxn.
    b= randn(n(i),1);      %Paragwgh tyxaiou pinaka b nx1.
    
    [L,U] = lu(A);         %prwth ektelesh ths prakshs lu.
    time = zeros(10,1);    %preallocation twn dianusmatwn gia pio grhgorh ektelesh.
    for j=[1:10]
        tic;
        [L,U] = lu(A);     %Deuterh eketelesh afou exoun metafer8ei ta dedomena stin mnhmh.
        time(j)=toc;
    end
    accurate_time(1,i) = sum(time)./10; %Mesos oros 10 xronwn kai eksagwgh sthn o8onh.
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    mtimes(A,b);          %prwth ektelesh ths prakshs A*b mesw ths mtimes.                   
    for j=[1:10]
        tic;
        mtimes(A,b);      %Deuterh eketelesh afou exoun metafer8ei ta dedomena stin mnhmh.
        time(j)=toc;
    end
    accurate_time(2,i) = sum(time)./10; %Mesos oros 10 xronwn kai eksagwgh sthn o8onh.
    
end

figure
plot(n, accurate_time(1,:), '-r^', n, accurate_time(2,:),'-b*')
legend('lu', 'mtimes','Location', 'Northwest')
title('Xronometrhsh b')
xlabel('n = 2. ^ [7:10]')
ylabel('time')