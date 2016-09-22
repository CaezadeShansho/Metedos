function r=secante(fnc,x0,x1,e)
c=0;
	while true
		xnew=(x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0))
		if abs(xnew-x1) < e
			r=xnew;
			return
        end
        c=c+1
		x0=x1;
		x1=xnew;
	end
end
