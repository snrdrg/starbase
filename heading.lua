--ISAN heading and distance to target
--Setup - 2 memory chips with following variables xx,yy,zz,tx,ty,tz,mx,my,mz,td,t_angl,px,py,pz
--last version of ISAN (better Quad), with enabled modules (4 nav recievers, advanced yolo  chip)

--basic yolo chip  with following  code
if :px!=:x or :py!=:y or :pz!=:z then goto 2 else goto 1 end
:mx=:x-:px :my=:y-:py :mz=:z-:pz
--insert  delay 10 lines
:px=:x :py=:y :pz=:z goto 1

--advanced yolo chip with following  code
if (:px==:xx)and(:py==:yy)and(:pz==:zz) then goto 2 else goto 3 end
:Heading="Not moving" goto 1
tdx=:tx-:x tdy=:ty-:y tdz=:tz-:z l=sqrt(tdx^2+tdy^2+tdz^2)
if l==0 then :Heading="Arrived\n" goto1 end
ct=(tdx*:mx+tdy*:my+tdz*:mz)/(sqrt((:mx)^2+(:my)^2+(:mz)^2)*l)
:t_angl=180*sqrt((1-ct)/(4+ct)) :td=(l/100000)*100
:Heading="Trgt:\n"+:t_angl+" deg\n"+:td+"km" goto 1

--24x24 text panel with name "Heading"

--fields tx,ty,tz - coordinates of target point
