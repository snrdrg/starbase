--variables in memory chip
:cr_wp
:sel_wp
:wp1x :wp1y :wp1z etc.
support 15 waypoints

---basic chip - selection of wp
if(:wp_i==1)then :sel_wp+=1 end if(:wp_d==1)then :sel_wp-=1 end 
if(:sel_wp>15)then :sel_wp=1 end if(:sel_wp<1)then :sel_wp=15 end
if (:set_nav==0) then goto 1 else goto(:sel_pnt+3) end
:tx=:wp1x :ty=:wp1y :tz=:wp1z :cr_wp=1 goto 19
:tx=:wp2x :ty=:wp2y :tz=:wp2z :cr_wp=2 goto 19
:tx=:wp3x :ty=:wp3y :tz=:wp3z :cr_wp=3 goto 19
:tx=:wp4x :ty=:wp4y :tz=:wp4z :cr_wp=4 goto 19
:tx=:wp5x :ty=:wp5y :tz=:wp5z :cr_wp=5 goto 19
:tx=:wp6x :ty=:wp6y :tz=:wp6z :cr_wp=6 goto 19
:tx=:wp7x :ty=:wp7y :tz=:wp7z :cr_wp=7 goto 19
:tx=:wp8x :ty=:wp8y :tz=:wp8z :cr_wp=8 goto 19
:tx=:wp9x :ty=:wp9y :tz=:wp9z :cr_wp=9 goto 19
:tx=:wp10x :ty=:wp10y :tz=:wp10z :cr_wp=10 goto 19
:tx=:wp11x :ty=:wp11y :tz=:wp11z :cr_wp=11 goto 19
:tx=:wp12x :ty=:wp12y :tz=:wp12z :cr_wp=12 goto 19
:tx=:wp13x :ty=:wp13y :tz=:wp13z :cr_wp=13 goto 19
:tx=:wp14x :ty=:wp14y :tz=:wp14z :cr_wp=14 goto 19
:tx=:wp15x :ty=:wp15y :tz=:wp15z :cr_wp=15 goto 19
:Nav="Sel wp:"+:sel_wp+"\n" :Nav="Cur wp:" +:cr_wp+"\n" 
:set_nav=0 goto 1
