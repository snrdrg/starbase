goto(:AES==1 and :Track==1)+1
l=0 h=2 sl=3 sh=2 csl=0 csh=0 
csl=(-1)*(:AESLB<:trd or :AESLT<:trd or :AESLM<:trd)*sl
csl+=(:AESLB<:trd or :AESLT<:trd or :AESLM<:trd)*sl
csh=(-1)*(:AESB<:trd or :AESRB<:trd or :AESLB<:trd)*sh
csl+=(:AEST<:trd or :AESRT<:trd or :AESLT:<trd)*sh
l+=csl h=sh-h r=:min_aes
b=sqrt(l^2+r^2) x=sqrt(b^2+h^2) a=r/b g=b/x
:tr=180*sqrt((1-a)/(4+a)) :tp=180*sqrt((1-g)/(4+g))
if csh<h then :tp=-:tp end if csl<0 then :tr=-:tr end
:tracktor=1 goto 1
