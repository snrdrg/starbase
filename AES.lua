goto (:AES+1)
:fcuupdown=((:AESB<1000)or(:AESLB<1000)or(:AESRB<1000))*100
:fcuupdown-=((:AEST<1000)or(:AESLT<1000)or(:AESRT<1000))*100
:fcurightleft=((:AESRT<1000)or(:AESRM<1000)or(:AESRB<1000))*100
:fcurightleft-=((:AESLT<1000)or(:AESLM<1000)or(:AESLB<1000))*100
:fcurightleft=(:AESFR<1000)*100 :fcurightleft=(-1)*(:AESFL<1000)*100
goto 1
