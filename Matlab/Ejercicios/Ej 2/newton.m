function nt = newton(f,x0,er)
    df=diff(f);
    fx1=f(x0);
    dfx1=(df(x0));
    xn1=x0-fx1/dfx1;
    fx2=f(xn1);
    dfx2=df(xn1);
    xn2=xn1-fx2/dfx2;
    c=1;
    while abs(xn2-xn1)>er
        xn1=xn2
        fx2=f(xn1);
        dfx2=df(xn1);
        xn2=xn1-fx2/dfx2
        c=c+1;
    end    
    c
    xn1
    
end

