' macro for shocking real wage
'
' generates charts 3 and 4 in the paper
'

create a 1950 2050

smpl 1950 2050
' PARAMETERS
' consumption function
genr a1 = 0.8
genr a1d1 = 0.2
genr a1d2 = 0.2
genr a2 = 0.025
genr a3 = 0.08
' investment function
genr gr0 = -0.05
genr gr1 = 2
genr gr2 = 1
genr gr3 = 0.2
genr gr4 = 0.4
' full capacity production
genr lambda = 1.3
' Discouraged workers effect
genr parlf=0.4
' retained profits
genr ret=0.10
' mark-up
genr ro = 0.4
' tax rates
genr dtrate = 0.15
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
genr lam00 = 0.24
genr lam01 = 0.30
genr lam02 = 0.25
genr lam03 = 0.01
genr lam04 = 0.10
genr lam10 = 0.43
genr lam11 = 0.45
genr lam12 = 0.25
genr lam13 = 0.01
genr lam14 = 0.25

genr pokun=3
genr ngr0 = 0.05

genr rb = 0.03
genr rc = 0.025
genr rl = 0.03
genr rm = 0.02
genr rrc=0.025
genr rrb=0.03
' Banks spreads on central bank interest rate
genr spread1 = 0.005
genr spread2 = -0.005


' Real exogenous
genr gk = 800
genr prod = 1
genr wage = 1
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
genr q=(pe*E)/K

genr sfc=lambda*KK
genr u=sk/sfc
genr vke=vk

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
genr inflw=infl+prodg
genr inflw=0.02
genr inflw0=0
genr ro0=ro
genr parlc = 0.2
genr Lc0=Lc
genr parbb = 0.4
genr Bb0=bb
genr W = wage*N
genr FT = ro*W
genr TF = tfrate*FT
genr FD = (1-ret)*(FT-rl(-1)*L(-1)-TF)
genr CG = (pe-pe(-1))*E(-1)
genr CGE=CG
genr re=(FD+CGE)/(pe(-1)*e(-1))
genr ree = re
genr rree = (1+ree)/(1+infle)-1
genr rrm = (1+rm)/(1+infle)-1
genr rrl = (1+rl)/(1+infle)-1
genr unorm = 0.75
genr bb=0

genr FB = rl(-1)*L(-1)+rb(-1)*Bb(-1) -(rm(-1)*M(-1)+rc(-1)*Lc(-1))
genr yh=w+rm(-1)*m(-1) + fd + fb + rb(-1)*bh(-1)

genr grg = 0.03
genr grg0 = 0

delete *_model
model a_model
a_model.append SK = CONSK + IK + GK
a_model.append S = SK*p
a_model.append CONS = CONSK*p
a_model.append I = IK*p
a_model.append G = GK*p
a_model.append FT = ro*W
a_model.append YH = W+FD+rm(-1)*M(-1)+FB+rb(-1)*Bh(-1)
a_model.append Y = YH-DT
a_model.append YK = Y/p
a_model.append Sh = Y - CONS
a_model.append FU = FT - rl(-1)*L(-1) - FD-TF
a_model.append FB = rl(-1)*L(-1)+rb(-1)*Bb(-1) -(rm(-1)*M(-1)+rc(-1)*Lc(-1))
a_model.append FC = rc(-1)*Lc(-1) + rb(-1)*Bc(-1)
a_model.append GD = (G+rb(-1)*Bh(-1)+rb(-1)*Bb(-1)+rb(-1)*Bc(-1))-(IT+DT+TF+Fc)
a_model.append IK = KK-KK(-1)
a_model.append KK = (1+gr)*KK(-1)
a_model.append K = KK*p
a_model.append lev = L/K
a_model.append q = (pe*E)/K
a_model.append u = sk/sfc
a_model.append gry = sk/sk(-1)-1
a_model.append infl = p/p(-1)-1
a_model.append CG = (pe-pe(-1))*E(-1)
a_model.append prod = prod(-1)*(1+prodg)
a_model.append wage = wage(-1)*(1+inflw)
a_model.append re=(FD+CGE)/(pe(-1)*e(-1))
a_model.append ree=re+thetare*(ree(-1)-re(-1))
a_model.append rree = (1+ree)/(1+infle)-1

a_model.append p = (1+ro)*wage/(prod*(1-tau))
a_model.append W = wage*N
a_model.append N = SK/prod
a_model.append IT = tau*S
a_model.append DT = dtrate*YH
a_model.append TF = tfrate*FT
a_model.append FD = (1-ret)*(FT-rl(-1)*L(-1)-TF)
a_model.append CONSK = a1*(1-dtrate)*(W+rm(-1)*M(-1)+rb(-1)*Bh(-1))/p+a1d1*(1-dtrate)*(fb/p) +a1d2*(1-dtrate)*(fd/p) + a2*VK(-1) + a3*(CGKE-infle*vk(-1)/(1+infle))
a_model.append gr = gr0+gr1*FU(-1)/K(-2)-gr2*rrl(-1)*lev(-1)+gr3*q(-1)+gr4*(u(-1)-unorm)
a_model.append sfc = lambda*KK
a_model.append gk = gk(-1)*(1+grye+grg0)
a_model.append UR = ((ur(-1)-(gry-ngr0)/pokun)<0)*0+((ur(-1)-(gry-ngr0)/pokun)>0)*(ur(-1)-(gry-ngr0)/pokun)

a_model.append V = V(-1) + Y -CONS +CG
a_model.append VK = V/p

a_model.append grye = gry(-1) + thetagr*(grye(-1) - gry(-1))
a_model.append infle = infl(-1) + thetap*(infle(-1)-infl(-1))
a_model.append prodge = prodg(-1) + thetapr*(prodge(-1)-prodg(-1))
a_model.append YKE = YK(-1)*(1+grye)
a_model.append YE = Y(-1)*(1+grye)*(1+infle)
a_model.append VE = V(-1) + YE-CONS +CGE
a_model.append pee = pe(-1)*(1+pege)
a_model.append pege = pe(-1)/pe(-2)-1 + thetape*(pege(-1)-(pe(-1)/pe(-2)-1))
a_model.append CGKE = (pee-pe(-1))*E(-1)/(p(-1)*(1+infle))
a_model.append CGE = (pee-pe(-1))*E(-1)

a_model.append ur1=(ur<=0)*0+(ur>=0.2)*0.2+(ur>0)*(ur<0.2)*ur
a_model.append wshare = 2-@sqrt(ur1/0.05)

a_model.append B = B(-1) + GD
a_model.append BH = vpar1*(VE-HH)
a_model.append pe = (vpar2*(VE-HH)-x*(I-Fu))/E(-1)
a_model.append M = V-HH-BH-E*pe
a_model.append HH = hhpar*CONS
a_model.append HB = hbpar*M
a_model.append E = E(-1)+x*(I-Fu)/pe
a_model.append L=L(-1)+I-FU-pe*(E-E(-1))
a_model.append Bc = B-Bh-Bb
a_model.append vpar2 = lam00-lam01*rrm+lam02*rree-lam03*(Y/Ve)-lam04*rrb
a_model.append vpar1 = lam10-lam11*rrm-lam12*rree-lam13*(Y/Ve)+lam14*rrb
a_model.append rc = (1+rrc)*(1+infl*(1-thetap)+thetap*infle)-1
a_model.append rb = (1+rrb)*(1+infl*(1-thetap)+thetap*infle)-1
a_model.append prodg = prodg0+shockprod

a_model.append rl = rc+spread1
a_model.append rm = rc+spread2
a_model.append rrm = (1+rm)/(1+infle)-1
a_model.append rfc = fu/k(-1)
a_model.append rrl = (1+rl)/(1+infle)-1

a_model.append inflw = infle+prodge+inflw0

a_model.append Lc0 = Hh+Hb-Bc
a_model.append Lc = Bb + L + Hb - M

a_model.scenario "Baseline"

a_model.solve

genr yt_0=cons_0+g_0+i_0
genr yd_0=w_0+rm_0(-1)*m_0(-1) + fd_0 + fb_0 + rb_0(-1)*bh_0(-1)-dt_0
genr yg_0 = dt_0 + tf_0 + it_0 + fc_0 - rb_0(-1)*b_0(-1)

smpl 1990 1990
inflw0 = +0.05
smpl 1990 2050
ro = 0.33458
smpl 1950 2050

a_model.scenario "Scenario 1"

a_model.solve


genr yt_1=cons_1+g_1+i_1
genr yd_1=w_1+rm_1(-1)*m_1(-1) + fd_1 + fb_1 + rb_1(-1)*bh_1(-1)-dt_1
genr yg_1 = dt_1 + tf_1 + it_1 + fc_1 - rb_1(-1)*b_1(-1)


group data0 (pe_1*e_1/v_1)/(pe_0*e_0/v_0) (bh_1/v_1)/(bh_0/v_0) (m_1/v_1)/(m_0/v_0)
group data1 rfc_1/rfc_0 q_1/q_0 rrl_1*lev_1/(rrl_0*lev_0) u_1/u_0
group data2 gry_1-gry_0 gr_1-gr_0 consk_1/consk_1(-1)-(consk_0/consk_0(-1)) gk_1/gk_1(-1)-(gk_0/gk_0(-1))
group data3 infl_1-infl_0
group data4 ur_1-ur_0
group data5 (yd_1/yt_1)/(yd_0/yt_0) (yg_1/yt_1)/(yg_0/yt_0)
smpl 1989 2010

show data1
show data2

