function sf=schroder(fnc,x0,er)
    dfnc=diff(fnc);
    ddfnc=diff(dfnc);
    f=double(subs(fnc,x0));
    df=double(subs(dfnc,x0));
    ddf=double(subs(ddfnc,x0));
    xn=double((x0-f)/(df^2-f*ddf));
    ab=double(abs(xn-x0)/abs(xn));
    c=1
    while ab>er
        x0=xn;
        f=double(subs(fnc,x0));
        df=double(subs(dfnc,x0));
        ddf=double(subs(ddfnc,x0));
        xn=double((x0-f)/(df^2-f*ddf));
        ab=double(abs(xn-x0)/abs(xn));
        c=c+1
    end
    sf=xn
end

