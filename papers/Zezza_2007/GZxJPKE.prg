
wfcreate berlin u 1 200
smpl 1 200
' PARAMETERS
' consumption function
genr a11 = 0.7
genr a20 = 0
genr a21 = 0.8
genr a24 = 10
genr a2 = 0.025
genr a3 = 0.08
' investment function
' genr gr0 = 0.005
genr gr0 = -0.05
genr gr1 = 2
genr gr2 = 1
genr gr3 = 0.2
' genr gr4 = 0.025
genr gr4 = 0.4
' full capacity production
genr lambda = 1.3
' Discouraged workers effect
genr parlf=0.4
' retained profits
genr ret=0.10
' mark-up
genr ro = 0.4 
genr ropar=0.01
' tax rates
genr dtrate = 0.20
genr tau = 0.10
genr tfrate = 0.40
' expectations
genr thetagr = 0.75
genr thetap = 0.75
genr thetape = 0.75
genr thetapr = 0.75
genr thetare = 0.75
' Cash
genr hhpar = 0.20
genr hbpar = 0.25
' assets
genr vpar1 = 0.4
genr vpar2 = 0.25
' share of investment financed by issuing equities
genr x = 0.25
' share of loans in cash
genr lcpar = 0.4

' Parameters in asset demand function
genr lam00 = 0.18
genr lam01 = 0.30
genr lam02 = 0.25
genr lam03 = 0.01
genr lam04 = 0.10
genr lam05 = 0.05
genr lam10 = 0.50
genr lam11 = 0.45
genr lam12 = 0.25
genr lam13 = 0.01
genr lam14 = 0.25
genr lam15 = 0.05
genr lam20 = 0.18
genr lam21 = 0.45
genr lam22 = 0.25
genr lam23 = 0.01
genr lam24 = 0.25
genr lam25 = 0.10

' Parameters for wage adj function
genr chi0=2
genr chi2=0.05

genr pokun=3
genr ngr0 = 0.0338

genr rb = 0.03
genr rc = 0.025
genr rl = 0.03
genr rm = 0.02
genr rrc=0.025
genr rrb=0.03
' Banks spreads on central bank interest rate
genr spread1 = 0.005
' genr spread2 = -0.005
genr spread2 = -0.025
genr spread3 = 0.0025

' Real exogenous
genr gk = 800
genr wage1sh=0.05
genr wage2sh=0.95
genr wage2=10/12
genr wage1=5*wage2
genr prod2 = 10/12
genr prod1=5*prod2
genr wage = wage1sh*wage1+wage2sh*wage2
genr prod = wage1sh*prod1+wage2sh*prod2
genr popg = 0.0225
genr p = (1+ro)*wage/(prod*(1-tau))
genr pe = 5

genr sk = 2.66*gk
genr s = sk*p
genr consk = 0.55*sk
genr cons = consk*p
genr ik = sk - gk - consk
genr i = ik*p
genr Yk = 0.68*sk
genr Y = Yk*p
genr v = 2*S
genr vk = v/p
genr gd = 0.086*Y
genr b = 0.36*v
genr bh = 0.01*v
genr bb = 0.17*v
genr bc = 0.18*v
genr e = 0.31*v/pe
genr l = 0.33*v
genr lc = 0.26*v
genr m = v-bh-e*pe

genr fu = 0.05*s
genr gry=0.02
genr grye=gry
genr infl = 0
genr infle = infl
genr pee = pe
genr K = 1*S
genr kk=K/p
genr lev=L/K
genr q=pe*E/K

genr sfc=lambda*KK
genr u=sk/sfc
genr vke=vk

'genr prodg = 0.02+nrnd/10000
genr prodg = 0.02
genr prodg0 = prodg
genr shockprod = 0
genr n=sk/prod
genr lf = n/0.95
genr un=lf-n
genr ur=un/lf
genr prodge=prodg
genr pege = 0

genr wshare = 1
genr rfc=fu/k(-1)
genr inflw1=infl+prodg
genr inflw2=inflw1
genr inflw1=0.02
genr inflw2=inflw1
genr shockinflw1=0
genr shockinflw2=0
genr ro0=ro
genr parlc = 0.2
genr Lc0=Lc
genr parbb = 0.6
genr Bb0=bb
genr W = wage*N
genr FT = ro*W
genr TF = tfrate*FT
genr FD = (1-ret)*(FT-rl(-1)*L(-1)-TF)
genr CGE = (pe-pe(-1))*E(-1)
genr CGE_E=CGE
genr re=(FD+CGE_E)/(pe(-1)*e(-1))
genr ree = re
genr rree = (1+ree)/(1+infle)-1
genr rrm = (1+rm)/(1+infle)-1
genr rrl = (1+rl)/(1+infle)-1
genr unorm = 0.75
genr du=0
genr parprod=1
genr bb=0
genr chi0=2
genr chi1=0.05
genr chi2=1

' NEW VARIABLES
genr N1=wage1sh*n
genr n2=N-N1
genr m1=1383
genr m2=2000
genr dt=dtrate*y
genr dt1=dt
genr dt2=0
' genr rent=0.05
genr rent=0.5
genr rents=rent*750
genr y1k=0.842277*yk
genr y2k=0.157723*yk
genr v1=v
genr v2=0
genr v2k=0
genr v1k=vk
genr v2k=0
genr v1e=v1
genr Y1 = Wage1*n1+rents+FD+rm*M+rb*Bh-DT1
genr y2=y2k*p
genr cge1=cge
genr cgh1=0
genr cgh2=0
genr cgH2k_e=0
genr ph=3
genr h1=37
genr h1r=37
genr h2=1430
genr phge=0
' genr mo=0
genr mo=1000
genr rmo= 0.025
genr rh=0.01875
genr rhe=0.01875
genr pbh=p
genr hu=100
genr nh=0
genr a1nh=0.5
genr a2nh=1
genr a1ph = 1/2000
genr ihk=0
genr ih=0
genr shockphge =0
genr dh2=0
genr nhd=0
genr nhs=0
genr cons1k=consk
genr cons2k=consk
genr parim = 0.0
genr pegeshock = 0
genr morep=0.01

' simulation 1
' MAKE INFLATION EXOGENOUS
' Make wage share exogenous
chi0=1
chi2=0
parprod=0
ropar=0

delete *_model
model a_model
a_model.append SK = CONSK + IK + GK +IHK
a_model.append IH =IHK*pbh
a_model.append IHK = NH*pbh
a_model.append pbh=p
a_model.append S = SK*p
a_model.append CONS1 = CONS1K*p
a_model.append CONS2 = CONS2K*p
a_model.append CONS=CONS1+CONS2
a_model.append I = IK*p
a_model.append G = GK*p
a_model.append FT = ro*W
a_model.append Y0 = (Wage1*n1+wage2*n2)+FD+rm(-1)*M(-1)+FB+rb(-1)*Bh(-1)-DT
a_model.append Y1 = Wage1*n1+rents+FD+rm(-1)*M1(-1)+FB+rb(-1)*Bh(-1)-DT1
a_model.append Y2 = Wage2*n2-rents+rm(-1)*m2(-1)-rmo(-1)*mo(-1)-DT2
a_model.append rents = rent*h1r(-1)
a_model.append Y = Y1+Y2
a_model.append YK = Y/p
a_model.append Y1K = Y1/p
a_model.append Y2K = Y2/p
a_model.append Sh1 = Y1 - CONS1
a_model.append Sh2 = Y2 - CONS2
a_model.append FU = FT - rl(-1)*L(-1) - FD-TF
a_model.append FB = rl(-1)*L(-1)+rb(-1)*Bb(-1)+rmo(-1)*mo(-1) -(rm(-1)*M(-1)+rc(-1)*Lc(-1))
a_model.append FC = rc(-1)*Lc(-1) + rb(-1)*Bc(-1)
a_model.append GD = (G+rb(-1)*Bh(-1)+rb(-1)*Bb(-1)+rb(-1)*Bc(-1))-(IT+DT+TF+Fc)
a_model.append IK = KK-KK(-1)
a_model.append KK = (1+gr)*KK(-1)
a_model.append K = KK*p
a_model.append lev = L/K
a_model.append q = pe*E/K
a_model.append u = sk/sfc
a_model.append gry = sk/sk(-1)-1
a_model.append infl = p/p(-1)-1
a_model.append CGe = (pe-pe(-1))*E(-1)
a_model.append cgh1 = (ph-ph(-1))*h1(-1)
a_model.append cgh2 = (ph-ph(-1))*h2(-1)
a_model.append wage = wage1sh*wage1+wage2sh*wage2
a_model.append prod = wage1sh*prod1+wage2sh*prod2
a_model.append prod1 = prod1(-1)*(1+prodg)
a_model.append prod2 = prod2(-1)*(1+prodg)
a_model.append wage1 = wage1(-1)*(1+inflw1)
a_model.append wage2 = wage2(-1)*(1+inflw2)
a_model.append re=(FD+CGe_E)/(pe(-1)*e(-1))
a_model.append ree=re(-1)+thetare*(ree(-1)-re(-1))
a_model.append rree = (1+ree)/(1+infle)-1
a_model.append rh=(RENTS+CGh1_E)/(ph(-1)*h1(-1))
a_model.append rhe=rh(-1)+thetare*(rhe(-1)-rh(-1))
a_model.append rrhe = (1+rhe)/(1+infle)-1

a_model.append p = (1+ro)*wage/(prod*(1-tau))
a_model.append W = wage*N
a_model.append N = SK/prod
a_model.append N1 = wage1sh*N
a_model.append N2 = N-N1
a_model.append IT = tau*S
a_model.append DT1 = dtrate*Wage1*n1
a_model.append DT2 = dtrate*Wage2*n2
a_model.append DT = DT1 + DT2
a_model.append TF = tfrate*FT
a_model.append FD = (1-ret)*(FT-rl(-1)*L(-1)-TF)
' a_model.append CONSK = a1*YKE + a2*VK(-1) + a3*(CGKE-infle*vk(-1)/(1+infle))
a_model.append CONS1K = a11*Y1KE + a2*V1K(-1) + a3*(CGeK_E+cgh1k_e-infle*v1k(-1)/(1+infle))
a_model.append CONS2K = a20+a21*Y2KE + a2*V2K(-1) + a3*(CGH2K_E-infle*v2k(-1)/(1+infle)) + parim*n2*(cons1k(-1)/n1-cons2k(-1)/n2)-a24*morep*mo(-1)/y2(-1)
a_model.append CONSK=CONS1K+CONS2K
a_model.append gr = gr0+gr1*FU(-1)/K(-2)-gr2*rrl(-1)*lev(-1)+gr3*q(-1)+gr4*(u(-1)-unorm)
a_model.append sfc = lambda*KK(-1)
a_model.append gk = gk(-1)*(1+grye)
a_model.append UR = ((ur(-1)-(gry-ngr0)/pokun)<0)*0+((ur(-1)-(gry-ngr0)/pokun)>0)*(ur(-1)-(gry-ngr0)/pokun)

a_model.append V1 = V1(-1) + sh1 +CGE+CGH1
a_model.append V2 = V2(-1) + sh2 +CGH2
a_model.append V1K = V1/p
a_model.append V2K = V2/p

a_model.append grye = gry(-1) + thetagr*(grye(-1) - gry(-1))
a_model.append infle = infl(-1) + thetap*(infle(-1)-infl(-1))
a_model.append prodge = prodg(-1) + thetapr*(prodge(-1)-prodg(-1))
a_model.append YKE = YK(-1)*(1+grye)
a_model.append Y1KE = Y1K(-1)*(1+grye)
a_model.append Y2KE = Y2K(-1)*(1+grye)
a_model.append Y1E = Y1(-1)*(1+grye)*(1+infle)
a_model.append V1E = V1(-1) + Y1E-CONS1 +CGE_E+CGH1_e
a_model.append pee = pe(-1)*(1+pege)
a_model.append pege = pe(-1)/pe(-2)-1 + thetape*(pege(-1)-(pe(-1)/pe(-2)-1))+pegeshock
a_model.append CGeK_E = (pee-pe(-1))*E(-1)/(p(-1)*(1+infle))
a_model.append CGe_E = (pee-pe(-1))*E(-1)
a_model.append phe=ph(-1)*(1+phge)
a_model.append phge = ph(-1)/ph(-2)-1 + thetape*(phge(-1)-(ph(-1)/ph(-2)-1)) + shockphge
a_model.append cgh1_e = (phe-ph(-1))*h1(-1)
a_model.append cgh2_e = (phe-ph(-1))*h2(-1)
a_model.append cgh1k_e = (phe-ph(-1))*h1(-1)/(p(-1)*(1+infle))
a_model.append cgh2k_e = (phe-ph(-1))*h2(-1)/(p(-1)*(1+infle))

a_model.append ur1=(ur<=0)*0+(ur>=0.2)*0.2+(ur>0)*(ur<0.2)*ur
a_model.append wshare = chi0-chi2*@sqrt(ur1/chi1)

a_model.append B = B(-1) + GD
a_model.append BH = vpar1*(V1E-HH1)
a_model.append pe = (vpar2*(V1E-HH1)-x*(I-Fu))/E(-1)
a_model.append h1 = vpar3*(V1E-HH1)/ph
a_model.append M1 = V1-HH1-BH-E*pe-ph*h1
' next equation was wrong
a_model.append M2 = V2-HH2-ph*h2+mo
a_model.append M = M1+M2
a_model.append HH1 = hhpar*CONS1
a_model.append HH2 = hhpar*CONS2
a_model.append HH = HH1+HH2
a_model.append HB = hbpar*M
a_model.append E = E(-1)+x*(I-Fu)/pe
a_model.append L=L(-1)+I-FU-pe*(E-E(-1))
a_model.append Bc = B-Bh-Bb
a_model.append vpar3 = lam20-lam21*rrm-lam22*rree-lam23*(Y1e/V1e)-lam24*rrb+lam25*rrhe
a_model.append vpar2 = lam00-lam01*rrm+lam02*rree-lam03*(Y1e/V1e)-lam04*rrb-lam05*rrhe
a_model.append vpar1 = lam10-lam11*rrm-lam12*rree-lam13*(Y1e/V1e)+lam14*rrb-lam15*rrhe
a_model.append rc = (1+rrc)*(1+infle)-1
a_model.append rb = (1+rrb)*(1+infle)-1
a_model.append du=(u-unorm>0)*((u-unorm)/100)+0
a_model.append prodg = prodg0-parprod*du+shockprod

a_model.append rl = rc+spread1
a_model.append rm = rc+spread2
a_model.append rmo = rc+spread3
a_model.append rrm = (1+rm)/(1+infle)-1
a_model.append rfc = fu/k(-1)
a_model.append rrl = (1+rl)/(1+infle)-1


a_model.append inflw1 = infle+prodge*wshare+shockinflw1
a_model.append inflw2 = infle+prodge*wshare+shockinflw2
a_model.append ro = (ropar*(prodg-inflw2)+1)*(1+ro(-1))-1

a_model.append bb= parbb*m
' a_model.append Bb0 = parbb*L
' a_model.append Bb = M+Lc-L-Hb
' a_model.append Lc0 = Hh+Hb-Bc
a_model.append Lc = L+Hb+Bb+mo-M

a_model.append rent = rent(-1)*(1+grye)
a_model.append nhd=((a1nh*(h1(-1))*grye+a1nh*dh2+a2nh*(ph(-3)-ph(-4)))>0)*(a1nh*(h1(-1))*grye+a1nh*dh2+a2nh*(ph(-3)-ph(-4)))+0
a_model.append nh = ((nhd-hu(-1))>0)*nhd+0
a_model.append nhs = nh+hu(-1)
a_model.append hu=((hu(-1)+nh-(h1-h1(-1))-(h2-h2(-1)))>0)*(hu(-1)+nh-(h1-h1(-1))-(h2-h2(-1)))+0
a_model.append ph1 = ph(-1)+ph(-1)*a1ph*(h1(-1)*grye+dh2-nhs(-1))
a_model.append ph2 = ph(-1)-a1ph*(hu(-1)-hu(-2))
a_model.append ph = (hu<10)*ph1+(hu>=10)*ph2

a_model.append h2=h2(-1)+dh2
a_model.append dh2=h2(-1)*((n2/n2(-1)-1)+0.001*(y2k/y2k(-1)-1))-20*d((rmo(-1)+morep(-1))*mo(-2)/y2(-1))
a_model.append mo=mo(-1)*(1-morep)+((ph*dh2-sh2)>0)*(ph*dh2-sh2)

smpl 1 115
a_model.scenario "Baseline"

a_model.solve


a_model.scenario "Scenario 1"
series rrc_1=rrc
series rrb_1=rrb
series spread2_1=spread2
smpl 75 115
rrc_1=rrc-0.01
rrb_1=rrb-0.01
spread2_1=spread2+0.01
smpl 1 115
a_model.override rrc rrb spread2
a_model.solve

a_model.scenario(n) "Scenario 2"
series rrc_2=rrc
series spread2_2=spread2
smpl 75 115
rrc_2=rrc-0.01
spread2_2=spread2+0.01
smpl 1 115
a_model.override rrc spread2
a_model.solve

a_model.scenario(n) "Scenario 3"
series shockphge_3=shockphge
smpl 75 80
shockphge_3 = 0.01
smpl 1 115
a_model.override shockphge
a_model.solve


a_model.scenario(n) "Scenario 4"
series parim_4=parim
smpl 75 115
parim_4 = 0.01
smpl 1 115
a_model.override parim
a_model.solve

a_model.scenario(n) "Scenario 5"
series ret_5=ret
smpl 75 115
ret_5 = 0.09
smpl 1 115
a_model.override ret
a_model.solve


a_model.scenario(n) "Scenario 6"
series shockinflw2_6=shockinflw2
series shockinflw1_6=shockinflw1
smpl 75 80
shockinflw1_6 = +0.01
shockinflw2_6 = -0.01
smpl 1 115
a_model.override shockinflw1 shockinflw2
a_model.solve

smpl 73 115
graph fig01.line(m) ph_3/ph_0 ((sh1_3+sh2_3)/(y1_3+y2_3))-((sh1_0+sh2_0)/(y1_0+y2_0)) (y1k_3+y2k_3)/(y1k_0+y2k_0) (mo_3/y2_3)/(mo_0/y2_0)
fig01.align(2,1,1)
fig01.addtext(t) Figure 1. A Shock to expected house prices

graph fig02.line(m) ph_4/ph_0 ((sh1_4+sh2_4)/(y1_4+y2_4))-((sh1_0+sh2_0)/(y1_0+y2_0)) (y1k_4+y2k_4)/(y1k_0+y2k_0) (mo_4/y2_4)/(mo_0/y2_0)
fig02.align(2,1,1)
fig02.addtext(t) Figure 2. Imitation effects on consumption

graph fig03.line(m) ph_1/ph_0 ((sh1_1+sh2_1)/(y1_1+y2_1))-((sh1_0+sh2_0)/(y1_0+y2_0)) (y1k_1+y2k_1)/(y1k_0+y2k_0) (mo_1/y2_1)/(mo_0/y2_0)
fig03.align(2,1,1)
fig03.addtext(t) Figure 3. A shock to both the interest rate on bills and the Central bank discount rate


graph fig04.line(m) ph_2/ph_0 ((sh1_2+sh2_2)/(y1_2+y2_2))-((sh1_0+sh2_0)/(y1_0+y2_0)) (y1k_2+y2k_2)/(y1k_0+y2k_0) (mo_2/y2_2)/(mo_0/y2_0)
fig04.align(2,1,1)
fig04.addtext(t) Figure 3. A shock to the Central bank discount rate

graph fig05.line(m) ph_5/ph_0 ((sh1_5+sh2_5)/(y1_5+y2_5))-((sh1_0+sh2_0)/(y1_0+y2_0)) (y1k_5+y2k_5)/(y1k_0+y2k_0) (mo_5/y2_5)/(mo_0/y2_0)
fig05.align(2,1,1)
fig05.addtext(t) Figure 5. A shock to dividends

graph fig06.line(m) ph_6/ph_0 ((sh1_6+sh2_6)/(y1_6+y2_6))-((sh1_0+sh2_0)/(y1_0+y2_0)) (y1k_6+y2k_6)/(y1k_0+y2k_0) (mo_6/y2_6)/(mo_0/y2_0)
fig06.align(2,1,1)
fig06.addtext(t) Figure 6. A shock to relative wages


