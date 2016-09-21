function nt = newton(fnc,x0,er)
 dfun=diff(fnc);
 f=subs(fnc,x0);
 df=subs(dfun,x0);
 c=1;
 x1=x0-f/df;
 ab=abs(x1-x0)
 while ab>er
     x0=x1;
     f=subs(fnc,x0);
     df=subs(dfun,x0);
     x1=x0-f/df;
     ab=abs(x1-x0)
     c=c+1
 end 
 nt=x1
end

