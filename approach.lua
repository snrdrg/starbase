goto (:Approach+1)
p=2 i=0 d=0 t=10 res=0 pe=0 ppe=0
e=:R-t res+=p*(e-pe)+i*e+d*(e-2*pe+ppe) ppe=pe pe=e
:fcuforward=(e>0)*(res) :fcubackward=(e<0)*res
goto (:Approach*2+1)
