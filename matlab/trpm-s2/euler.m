function y = derive(x) 
  y = -x * x;
endfunction

N=8;
% typedef struct 
%   x;
%   y;
% end Point;

function m_euler() 
  Point P(N + 1);
  a = 0;
  b = 1;
  y = 1.0;

  h = (b - a) / N;
  x = a;
  P(1).x = a;
  P(1).y = y;
  for i=2:N
    y = y + h * derive(y);
    x = x + h;
    P(i).x = x;
    P(i).y = y;
  end
  for i=1:N
    printf("x=%.6lf \t y=%.20e\n", P(i).x, P(i).y);
  end
endfunction

m_euler();
