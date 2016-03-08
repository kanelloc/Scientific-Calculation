i=0;%Thetoume enan counter iso me to 0.
rizes = zeros(6,26);%Arxikopoihsh tou pinaka rizes.
p = zeros(6,26);%Arxikopoihsh tou pinaka p.
p2 = zeros(6,2);%Arxikopoihsh tou pinaka p2.
rizes2 = zeros(6,26);%Arxikopoihsh tou pinaka rizes2.
for n=[15:2:25]
    i = i+1;
    rizes(i,1:n) = 1:n;%Gia n=15:2:25 apo8ikeyoume ston pinaka rizes tis rizes tou ka8e polywnumou.
    p(i,1:n+1) = poly(rizes(i,1:n));%Xrisimopoioume tin poly gia na apo8ikeusoume tous sintelestes tou ka8e polywnumou.
    p2(i,1:2) = polyval(p(i,1:n+1),[1 n]);%Xrisimopoioume tin polyval sta simia 1,n gia na apothikeusoume ta apotelesmata.
    rizes2(i,1:n) = roots(p(i,1:n+1));%Xrisimopoioume tin roots gia na vroume tis rizes tou polywnumou.
    
    subplot(3,2,i)
    plot(real(rizes2(i,1:n)), imag(rizes2(i,1:n)), 'r.', real(rizes(i,1:n)),0, 'k.')
    title(['Sigrisi gia N= ', num2str(n)])%Me tin num2str(n) vazoume sto title gia ka8e subplot to N tou poluwnumou.
end