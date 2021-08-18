-- For use you need ISAN, advanced yolo chip, yolo memory chip, 24x24 text panel
-- allow external modules for ISAN
-- Name fields in memory chip as following :cx,:cy,:cz,:tx,:ty,:tz,:px,:py,:pz
-- Rename text panel as "Dir"
-- Name ISAN coords at memory chip - :cx,:cy,:cz
-- Target coords from memory chip - :tx,:ty,:tz - input manually
-- Prev tick ISAN coords, cached in memory chip :px,:py,:pz
---------- START YOLO CODE
c1=0 c2=0 s="" 
l=(:tx^2+:ty^2+:tz^2)^0.5
nx=:tx/l ny=:ty/l nz=:tz/l 
dx=:cx-:px dy=:cy-:py dz=:cz-:pz 
dm=(dx^2+dy^2+dz^2)^0.5
ndx=dx/dm dny=dy/dm ndz=dz/dm
p=ndx*nx+ndy*ny+ndz*nz
nx1=nx-p*ndx ny1=ny-p*ndy nz1=nz-p*ndz
if p>0 then fwd="o" else fwd="x" end
txx=((ny1/10000)*10000)*24
txy=((nx1/10000)*10000)*24
if c1<txy-1 then s+="\n" c+=1 goto 10 end
if c2<txx-1 then s+=" " c+=1 goto 11 end
s=s+fwd+"\n"
:dir=s
-- delete this comment. Need to add check if moving from fcu
:px=:cx :py=:cy :pz=:cz
goto 1
---------- END OF YOLO CODE
