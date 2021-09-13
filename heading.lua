--ISAN heading and distance to target
--Setup - 2 memory chips with following variables x,y,z,tx,ty,tz,mx,my,mz,td,t_angl,px,py,pz
--last version of ISAN (better Quad), with enabled modules (4 nav recievers, advanced yolo  chip)
--advanced yolo chip with following  code
if (:px==:x)and(:py==:y)and(:pz==:z) then goto 1 else goto 2 end
:mx=:x-:px :my=:y-:py :mz=:z-:pz 
tdx=:tx-:x tdy=:ty-:y tdz=:tz-:z l=sqrt(tdx^2+tdy^2+tdz^2) //test direction td vector
if l==0 then :Heading="Arrived\n" goto 1 end
ct=(tdx*:mx+tdy*:my+tdz*:mz)/(sqrt((:mx)^2+(:my)^2+(:mz)^2)*l)
:t_angl=180*sqrt((1-ct)/(4+ct)) :td=(l/100000)*100
:Heading="Trgt:\n"+:t_angl+" deg\n"+:td+"km"
:px=:x :py=:y :pz=:z goto 1

--24x24 text panel with name "Heading"
--fields tx,ty,tz - coordinates of target point
