import math
##----------------------------
tx = 100
ty = 0
tz = 0
xx = 0
yy = -100
zz = 0
px = 0
py = 0
pz = 0
disp=""
fwd = ""
##----------------------------
s=""
#----calculate normalized direction to target from current position-----
tdx = tx - xx
tdy = ty - yy
tdz = tz - zz
td = pow((tdx*tdx + tdy*tdy + tdz*tdz), 0.5)
if td!= 0:
    ndx = tdx/td
    ndy = tdy/td
    ndz = tdz/td
#----calculate normalized direction of movement-----
mx = xx - px
my = yy - py
mz = zz - pz
m = pow((mx*mx + my*my + mz*mz), 0.5)
if m!=0:
    nmx = mx/m
    nmy = my/m
    nmz = mz/m
#------------------angles----------------------------
#--xy angle----
cosxy = (ndx*nmx+ndy*nmy)/pow((ndx*ndx+ndy*ndy)*(nmx*nmx+nmy*nmy),0.5)
scrx = cosxy*3+3
axy = math.degrees(math.acos(cosxy))
#aprox_axy = 
#--yz angle----
cosyz = (ndy*nmy+ndz*nmz)/pow((ndy*ndy+ndz*ndz)*(nmy*nmy+nmz*nmz),0.5)
scry = cosyz*3+3
ayz = math.degrees(math.acos(cosyz))
#aprox_azy = 
#------------------print-----------------------------

print("Target - ("+str(ndx)+","+str(ndy)+","+str(ndz)+")")
print("Movement - ("+str(nmx)+","+str(nmy)+","+str(nmz)+")")
print("Angle xy:" + str(axy) + "; Angle yz:" + str(ayz))
print("Scrx:" + str(scrx) + "; Scry:" + str(scry))
print(s)
