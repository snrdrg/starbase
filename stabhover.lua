ppe=0 pre=0 ph=0 goto :hover+1
kp=0.1 ki=0 kd=0.07 i=0 h=:hoverheight
dt=0.6 if(:hfr==:hfl)and(:hbr==:hbl) then goto7 end
a1=:hfl-:hfr a2=:hbl-:hbr pe=(a1>=a2)*a1+(a2>a1)*a2
pp=pe pi+=pe pd=(pe-ppe)/dt pt=kp*pp+ki*pi+kd*pd ppe=pe
:fcurotationalpitch=pt dt+=0.8
if(:hfr==:hbr)and(:hfl==:hbl) then goto11 end
a1=:hfr-:hbr a2=:hfl-:hbl re=(a1>=a2)*a1+(a2>a1)*a2
rp=re ri+=re rd=(re-pre)/dt rl=kp*rp+ki*ri+kd*rd pre=re 
:fcurotationalroll=rl dt+=0.8
he=:hfr-h hp=he hi+=he hd=(he-ph)/dt up=kp*hp+ki*hi+kd*hd ph=he 
if up>0 then :fcuupdown=up end
if :hover==1 then goto 3 else goto 1 end
