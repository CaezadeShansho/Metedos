function y= secant(fnc,x0,x1,e)

xnew=(x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0));

while true
    if abs(xnew-x1) < e
			y=xnew;
			break
    end
    x0=x1;
    x1=xnew;
    xnew=(x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0));
    
end 
y=xnew
end
    
  