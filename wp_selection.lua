--variables in memory chip
:nav_point
:sel_point
:wp1x :wp1y :wp1z etc.

---basic chip - selection of wp
if(:wp_i==1) then :sel_pnt+=1 end if(:wp_d==1) then :sel_pnt-=1 end 
if(:sel_pnt > #N) then :sel_pnt=1 end if(:sel_pnt < 1) then :sel_pnt=#N end
if (:set_nav ==0) then goto 1 else goto(:sel_pnt+3) end
:tx=:wp1x :ty=:wp1y :tz=:wp1z
#more lines with more wp
:set_nav=0 goto 1
