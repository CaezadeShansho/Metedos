function pto=ptofijo(p0,k,tol)
for i=1:k
    pnew=f(p0);
    if error(pnew,p0)>tol
        pnew;
        break
    end
    p0=pnew;
end 
pto=pnew

end
