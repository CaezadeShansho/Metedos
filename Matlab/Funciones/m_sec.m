function r=fposicion(fnc,x0,x1,e)
	while true
		xnew=(x0*fnc(x1)-x1*nc(x0))/fnc(x1)-fnc(x0)
		if abs(xnew-x1) < e
			r=xnew
			return
		end
		x0=x1
		x1=xnew
	end
end