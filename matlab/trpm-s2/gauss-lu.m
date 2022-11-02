MAX=100;
MAXT=101; % max col for table t(MAX,MAXT)

function err = decomposition(a, l, u, n) 
    i, j, k, err;
    for i = 1:n 
      for j = 1:n 
          u(i,j) = a(i,j);
      end
    end
    err = 1;
    k = 1;
    while (err ~= 0 && k <= n - 1) 
        if (u(k,k)) 
            for i = k+1:n 
                coef = u(i,k) / u(k,k);
                for j = k:n+1
                    u(i,j) = u(i,j) - coef * u(k,j);
                end
                l(i,k) = coef;
            end
        else 
          err=0;
        end
        k=k+1;
    end
    if (u(n,n) == 0)
      err=0;
    end
endfunction

function resolution(l, u, x,y, b, n) 
    y(1) = b(1);
    for i = 2:n 
        y(i) = b(i);
        for j = 1:i-1 
            y(i) = y(i) - l(i,j) * y(j);
        end
    end

    x(n) = y(n) / u(n,n);
    for i = n-1:1  % for (i = n - 1; i >= 1; i--) 
        s = y(i);
        for j = i+1:n 
            s -= u(i,j) * x(j);
        end
        x(i) = s / u(i,i);
    end
endfunction


n = 4; %
a(1)(1) = 8; a(1)(2) = -4; a(1)(3) = 3; a(1)(4) = 7; b(1) = 12;
a(2)(1) = 4; a(2)(2) = 2; a(2)(3) = -6; a(2)(4) = 4; b(2) = 1;
a(3)(1) = 16; a(3)(2) = 6; a(3)(3) = -2; a(3)(4) = -15; b(3) = -19;
a(4)(1) = 6; a(4)(2) = 10; a(4)(3) = -15; a(4)(4) = 10; b(4) = 1;

printf("           A               B\n");
for i=1:n 
    for j=1:n
        printf("%12.5e\t", a(i,j));
    printf("| %12.5e\n", b(i));
end

err = decomposition(a, l, u, n);

if (err) 
    printf("\n\n   U  \n");
    for i=1:n 
        for j=1:n
            printf("%10.10e\t", u(i,j));
        end
        printf("\n");
    end

    printf("\n\n   L  \n");
    for i=1:n 
        for j=1:n
            printf("%10.10e\t", l(i,j));
        end
        printf("\n");
    end

    resolution(l, u, x, y,b, n);
    printf("\n\nsolution:\n");
    for i=1:n 
        printf("x%d=%10.10e\n",i, x(i));
    end

else 
    printf("pas de solution");
end
