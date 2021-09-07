if :t_angl>90 then al=90 else al=:t_angl end
if al==0 then al=1 end al=(1-al/90)*100 :align=al goto 1
