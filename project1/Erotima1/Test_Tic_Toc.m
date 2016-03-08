function [output]=Test_Tic_Toc
tic;
toc;
for i=1:30
    tic;
    t(i)=toc;
end
output=sum(t)/30;
end

