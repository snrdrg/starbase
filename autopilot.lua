---basic chip 1 - pitch correction
goto (:nav+1)
p=0.5 i=0.1 d=0.5 res=0 pe=0 ppe=0
e=(:t_angl-0.05:t_angl) res+=p(e-pe)+i*e+d(e-2pe+ppe) ppe=pe pe=e
:fcurotationalpitch=(e>0)(res)
goto (:nav*2+1)

---basic chip 2 - yaw correction
goto (:nav+1)
p=0.5 i=0.1 d=0.5 res=0 pe=0 ppe=0
e=(:t_angl-0.05:t_angl) res+=p(e-pe)+i*e+d(e-2pe+ppe) ppe=pe pe=e
:fcurotationalyaw=(e>0)(res)
goto (:nav*2+1)

---basic chip 3 - autopiloting stage
goto (:nav+1)
if :t_angle>10 then :fcuforward=25 else :fcuforward=100 end goto(:nav+1)
