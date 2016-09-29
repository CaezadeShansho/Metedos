function fal=falsa_posicion(a,b,fnc,er)
	if subs(fnc,a)*subs(fnc,b)<0
		c=double((a*subs(fnc,b)-b*subs(fnc,a))/(subs(fnc,b)-subs(fnc,a)));
        while error(a,b)>er
        	if subs(fnc,a)*subs(fnc,c)<0
        		b=c
        	else
        		a=c
        	end
        	c=double((a*subs(fnc,b)-b*subs(fnc,a))/(subs(fnc,b)-subs(fnc,a)));
        end	
        fal=c
    end
        
end