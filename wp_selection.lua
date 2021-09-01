--variables in memory chip
:nav_point
:sel_point
:wp1x :wp1y :wp1z etc.
support 16 waypoints

---basic chip - selection of wp
if(:wp_i==1)then :sel_pnt+=1 end if(:wp_d==1)then :sel_pnt-=1 end 
if(:sel_pnt>16)then :sel_pnt=1 end if(:sel_pnt<1)then :sel_pnt=16 end
if (:set_nav ==0) then goto 1 else goto(:sel_pnt+3) end
:tx=:wp1x :ty=:wp1y :tz=:wp1z
:tx=:wp2x :ty=:wp2y :tz=:wp2z
:tx=:wp3x :ty=:wp3y :tz=:wp3z
:tx=:wp4x :ty=:wp4y :tz=:wp4z
:tx=:wp5x :ty=:wp5y :tz=:wp5z
:tx=:wp6x :ty=:wp6y :tz=:wp6z
:tx=:wp7x :ty=:wp7y :tz=:wp7z
:tx=:wp8x :ty=:wp8y :tz=:wp8z
:tx=:wp9x :ty=:wp9y :tz=:wp9z
:tx=:wp10x :ty=:wp10y :tz=:wp10z
:tx=:wp11x :ty=:wp11y :tz=:wp11z
:tx=:wp12x :ty=:wp12y :tz=:wp12z
:tx=:wp13x :ty=:wp13y :tz=:wp13z
:tx=:wp14x :ty=:wp14y :tz=:wp14z
:tx=:wp15x :ty=:wp15y :tz=:wp15z
:tx=:wp16x :ty=:wp16y :tz=:wp16z
:set_nav=0 goto 1
