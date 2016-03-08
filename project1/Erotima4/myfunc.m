function [F] = myfunc(p,v,u,col)
cols = @(u)size(u,1);%Xrisimopoioume tin size gia na apothikeusoume sto n to mege8os
n = cols(u);         %tou pinaka.
I = eye(n);         %Dimiourgia tautotikou mitrwou mesw tis eye.
TF = isempty(col);  %Xrisimopoioume tin sinartisi isempty gia na doume
if TF == 1;         %se poia periptosi tou col vriskomaste.
    F = (I-u*v').^p;
else
    e = I(:,col);   %Epilegoume tin stili col kai tin apo8ikeuoume sto e.
    F = ((I-u*v')*e).^p;
    end
end