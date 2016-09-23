function r=secante(fnc,x0,x1,e)
    c=1
	while true
		xnew=double((x0*subs(fnc,x1)-x1*subs(fnc,x0))/(subs(fnc,x1)-subs(fnc,x0)));
        c=c+1
		if abs(xnew-x1) < e
			r=xnew;
			return
        end 
		x0=x1;
		x1=xnew;
	end
end
