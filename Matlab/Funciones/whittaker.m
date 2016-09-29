function wf=whittaker(fnc,x0,er)
    dfnc=diff(fnc);
    ddfnc=diff(dfnc);
    
    f=double(subs(fnc,x0));
    df=double(subs(dfnc,x0));
    ddf=double(subs(ddfnc,x0));
    
    lf=double(f*ddf/df^2);
    xn=double(x0-f*(2-lf)/(2*df));
    ab=double(abs(xn-x0)/abs(xn));
    c=1
    while ab>er
    	f=double(subs(fnc,x0));
    	df=double(subs(dfnc,x0));
    	ddf=double(subs(ddfnc,x0));
    	lf=double(f*ddf/df^2);
    	xn=double(x0-f*(2-lf)/(2*df));
    	ab=double(abs(xn-x0)/abs(xn));
    	c=c+1
    end
 	wf=xn
end