function m = cos_Taylor_2016113016( x,a,n )
    m=Taylor_2016113016(x,a,n);
    plot(x,m,'r:o','LineWidth',4)
end
    function y = Taylor_2016113016( x,a,n )
    A = [cos(a) -sin(a) -cos(a) sin(a) cos(a)];
    y=0;
    for i=0:n;
        y=y+A(i+1)/factorial(i)*(x-a).^i;
    end
   end
