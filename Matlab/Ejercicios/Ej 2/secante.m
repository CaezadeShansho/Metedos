function sc=secante(f,x0,er)
   df=diff(f);
   x1=x0-f(x0)/df(x0);
   xn=x1;
   while f(xn)>er
       x1=(x0*f(xn)-xn*f(x0))/(f(xn)-f(x0));
       xn=x1;
       x0=x1;
   end 
   sc=xn;

end

