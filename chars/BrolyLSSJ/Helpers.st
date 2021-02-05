;[------Y------][-----][------]
;[------N------][-----][--B--]
;[------V------][-----][--R--]
;[------A------][-'S-][---O--]
;[------S------][-----][--L--]
;[------E------][-----][--Y--]
;[------R------][-----][------]
;[---Don't forget to check out the Shugen-Do--]
;[------game engine at www.sakirsoft.com------]
;[----------------Helper's ST----------------]
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...
;------------------------------------------------------------------------------
;[KI Charge]
;(Used in StateNo 217)
[Statedef 219]
type 			= A
movetype		= A
physics		= N
anim			= 6106
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 219, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 219, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)-15
y = (rootdist Y)-77

[State 219:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 219:	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 217)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;[Aura]
;(Used in Sayan's Fury mode)
[statedef 301]
type = S
movetype = I
physics = N
anim = 6090
velset = 0,0
ctrl = 0
sprpriority = 15

[State 301, DestroySelf]
type = DestroySelf
trigger1 = (parent,var(7) = 1)

[State 301, charge]
type = PlaySnd
trigger1 = (Timemod = 20,0)
value = S1,4
volume = 1
channel = 10

[State 301, SprPriority]
type = SprPriority
trigger1 = 1
value = 15

[State 301:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 301, PosAdd]
type = PosAdd
Triggerall = Parent,StateNo != 217 || Parent,StateNo != 218
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)
y = (rootdist Y)

[State 301, PosAdd]
type = PosAdd
Triggerall = Parent,StateNo = 217
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)+10
y = (rootdist Y)

[State 301, PosAdd]
type = PosAdd
Triggerall = Parent,StateNo = 218
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)+15
y = (rootdist Y)

[State 301, NotHitBy]
type = NotHitBy
trigger1 = 1
value = S,NA
time = 1

[State 301, Yellow PalFX]
type = PalFX
trigger1 = 1
time = -1
mul = 166,256,36
color = 0

[State 301:	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, Var(25) != 1)
;------------------------------------------------------------------------------
;[Aura 2]
;(Used in StateNo 191,300,1010,1020,1030,1050)
[statedef 302]
type = S
movetype = I
physics = N
anim = 6090
velset = 0,0
ctrl = 0
sprpriority = 15

[State 302, Helper]
type = Helper
triggerall = Parent,Stateno != 191
trigger1 = (Timemod = 4,0)
helpertype = normal
name = "Push Helper Fwd"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 302, Helper]
type = Helper
trigger1 = (Timemod = 4,0)
triggerall = Parent,Stateno != 191
helpertype = normal
name = "Push Helper Backward"
ID = 6301
stateno = 6301
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 302, Helper]
type = Helper
trigger1 = (Timemod = 4,0)
triggerall = Parent,Stateno != 191
helpertype = normal
name = "Push Helper Up"
ID = 6302
stateno = 6302
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 302, SprPriority]
type = SprPriority
trigger1 = 1
value = 15

[State 302:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 302, PosAdd]
type = PosAdd
triggerall = (parent,stateno = 300 || parent,stateno = 191)
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)
y = (rootdist Y)

[State 302, PosAdd]
type = PosAdd
triggerall = (parent,stateno = 1050)
triggerall = (time <= 100)
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)-5
y = (rootdist Y)

[State 302, PosAdd]
type = PosAdd
triggerall = (parent,stateno = 1050)
triggerall = (time > 100)
trigger1 = 1
x = (rootdist X)
y = (rootdist Y)

[State 302, PosAdd]
type = PosAdd
triggerall = (parent,stateno = 1010)
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)+10
y = (rootdist Y)

[State 302, PosAdd]
type = PosAdd
triggerall = (time <= 130)
triggerall = (parent,stateno = 1020)
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)
y = (rootdist Y)

[State 302, PosAdd]
type = PosAdd
triggerall = (time > 130)
triggerall = (parent,stateno = 1020)
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)+10
y = (rootdist Y)

[State 302, NotHitBy]
type = NotHitBy
trigger1 = 1
value = S,NA
time = 1

[State 302, Yellow PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = 166,256,36
color = 0

;[State 302, Green PalFX]
;type = PalFX
;trigger1 = 1
;time = 1
;mul = 128,256,32
;color = 256

;[State 302, White PalFX]
;type = PalFX            ;It's a shame that broly had a green aura
;trigger1 = 1            ;because this white version looks so cool!
;time = 1                ;Have a look if you discover this.
;mul = 256,256,256
;color = 0

[State 302:	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 300) && (Parent, StateNo != 1010) && (Parent, StateNo != 1020)
trigger1                = (Parent,StateNo != 1030) && (Parent, StateNo != 1031) && (Parent, StateNo != 191)
trigger1                = (Parent,StateNo != 1050)
trigger2                = (Parent,StateNo = 1031) && (Time >= 5)
trigger3                = (Parent,StateNo = 191) && (Time >= 156)
;---------------------------------------------------------------------------
;Broly's a tough guy! (Armor)
[StateDef 330]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 330, DestroySelf]
type = DestroySelf
trigger1 = (parent,var(25) = 0)

[State 330, Follow]
type = BindToRoot
trigger1 = 1
time = -1
facing = 1
pos = 0,0

[State 330, Mimic]
type = ChangeAnim
trigger1 = SelfAnimExist(Root,Anim)
value = Root,Anim
elem = Root,AnimElemNo(0)

[State 330, STSS]
type = StateTypeSet
trigger1 = Root,StateType = S
StateType = S

[State 330, STSC]
type = StateTypeSet
trigger1 = Root,StateType = C
StateType = C

[State 330, STSA]
type = StateTypeSet
trigger1 = Root,StateType = A
StateType = A

[State 330, STSL]
type = StateTypeSet
trigger1 = Root,StateType = L
StateType = L

[State 330, MTSA]
type = StateTypeSet
trigger1 = Root,MoveType = A
MoveType = A

[State 330, MTSI]
type = StateTypeSet
trigger1 = Root,MoveType = I
MoveType = I

[State 330, MTSH]
type = StateTypeSet
trigger1 = Root,MoveType = H
MoveType = H

[State 330, Hide]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = NoShadow

[State 330, NHB]
type = NotHitBy
trigger1 = 1
value = , AT
time = -1

[State 330, HO]
type = HitOverride
trigger1 = 1
attr = SCA, AA,AP,AT
time = -1
stateno = 331

;Broly's still tough--------------------------------------------------
;(Armor)
[StateDef 331]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 331, DestroySelf]
type = DestroySelf
trigger1 = (parent,var(25) = 0)

[State 331, PVS]
type = ParentVarSet
trigger1 = 1
var(20) = GetHitVar(damage)

[State 331, Revert]
type = ChangeState
trigger1 = 1
value = 330
;------------------------------------------------------------------------------
;[Renzoku Projectile AIR]
;(Used in StateNo 680)
[Statedef 681]
type 			= A
movetype		= A
physics		= N
anim			= 6110
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 681:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 681:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 681:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 681:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= 1,-1

[State 681:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 1
range			= 1,-1

[State 681:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 14+(Var(1))
y			= 8+(Var(0))

[State 681:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 681:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 10
pausetime		= 5,5
guard.pausetime	= 15,20
sparkno		= S6150
guard.sparkno	= S6150
sparkxy		= 0,40
hitsound		= S5,13
guardsound		= S5,13
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8
guard.velocity	= -8
air.velocity	= -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff = 0
fall.xvelocity	= -1
fall.yvelocity	= -3
fall.recover	= 0
air.fall		= 1
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 25
palfx.time		= 12
palfx.mul		= 256,256,256
palfx.add		= 200,50,10
palfx.sinadd	= 175,25,5,4
envshake.time 	= 12
envshake.freq 	= 120
envshake.ampl 	= -4
persistent		= 0

[State 681:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
trigger2                = (Time = 50)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[Small Renzoku Charge AIR]
;(Used in StateNo 680)
[Statedef 682]
type 			= A
movetype		= A
physics		= N
anim			= 6105
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 682:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 682, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 682, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)+44
y = (rootdist Y)-29

[State 682, AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 682, DestroySelf]
type			= DestroySelf
trigger1		= Time = 8

;------------------------------------------------------------------------------
;[Leg Projectile]
;(Used in StateNo 251)
[Statedef 690]
type 			= A
movetype		= A
physics		= N
anim			= 6114
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 1

[State 251, Green PalFX]
type = PalFX
TriggerAll = (parent,var(25) = 1)
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 690, AssertSpecial]
type = AssertSpecial
triggerall = (parent,var(25)=1)
trigger1 = 1
flag = unguardable

[State 690, SprPriority]
type = SprPriority
trigger1 = 1
value = 1

[State 690, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,2
volume = 140

[State 690:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 690:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 690:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -2,2

[State 690:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 2
y			= (Var(0))

[State 690, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = -1
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 96,96,97
PalAdd      =   5,  5,  5
PalBright = 30,30,31
palpostbright = 3,3,3
palmul = .50,.50,.51

[State 690:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 3
pausetime		= 6,6
guard.pausetime	= 15,20
sparkno = S6000
guard.sparkno = -1
sparkxy		= 10,-45
hitsound		= S8,5
guardsound		= S8,3
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -2
guard.velocity	= -2
air.velocity	= -2,-3.5
airguard.velocity	= -2,-3
ground.cornerpush.veloff = 0
fall.xvelocity	= -1
fall.yvelocity	= -3
fall.recover	= 0
air.fall		= 0
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 25
envshake.time = 4
envshake.freq = 120
envshake.ampl = 3
envshake.phase = 140
persistent		= 0

[State 690:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10) || (Time >= 5)
trigger2                = (Parent,stateno != 251)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[KI Bomb Charge Lvl 1]
;(Used in StateNo 1000)
[Statedef 6107]
type 			= A
movetype		= A
physics		= N
anim			= 6107
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 6107:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6107, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 6107, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)+45
y = (rootdist Y)-67

[State 6107:	DestroySelf]
type			= DestroySelf
trigger1		= (Time >=60)
trigger2                = (Parent, StateNo != 1000)

;------------------------------------------------------------------------------
;[KI Bomb Charge Lvl 2]
;(Used in StateNo 1010)
[Statedef 6108]
type 			= A
movetype		= A
physics		= N
anim			= 6107
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 6108:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6108, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 6108, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)+45
y = (rootdist Y)-67

[State 6108:	DestroySelf]
type			= DestroySelf
trigger1		= (Time >=90)
trigger2                = (Parent, StateNo != 1010)

;------------------------------------------------------------------------------
;[KI Bomb Charge Lvl 3]
;(Used in StateNo 1020)
[Statedef 6109]
type 			= A
movetype		= A
physics		= N
anim			= 6107
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 6109:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6109, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 6109, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)+45
y = (rootdist Y)-67

[State 6109:	DestroySelf]
type			= DestroySelf
trigger1		= (Time >=100)
trigger2                = (Parent, StateNo != 1020)
;------------------------------------------------------------------------------
;[Renzoku Projectile]
;(Used in StateNo 216,218,410)
[Statedef 6110]
type 			= A
movetype		= A
physics		= N
anim			= 6110
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6110:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6110:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6110:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6110:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -3,3

[State 6110:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 1
range			= 2,0

[State 6110:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 14+(Var(1))
y			= (Var(0))

[State 6110:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6110:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 10
pausetime		= 5,5
guard.pausetime	= 15,20
sparkno		= S6150
guard.sparkno	= S6150
sparkxy		= 0,40
hitsound		= S5,13
guardsound		= S5,13
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8
guard.velocity	= -8
air.velocity	= -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff = 0
fall.xvelocity	= -1
fall.yvelocity	= -3
fall.recover	= 0
air.fall		= 1
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 25
palfx.time		= 12
palfx.mul		= 256,256,256
palfx.add		= 200,50,10
palfx.sinadd	= 175,25,5,4
envshake.time 	= 12
envshake.freq 	= 120
envshake.ampl 	= -4
persistent		= 0

[State 6110:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[KI Bomb Projectile Lvl 1]
;(Used in StateNo 1000)
[Statedef 6111]
type 			= A
movetype		= A
physics		= N
anim			= 6111
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6111, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 0, 20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6111, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 0, -20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6111:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2                   = unguardable

[State 6111:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6111:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6111:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 12
y			= 0

[State 6111:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6111:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 100
pausetime		= 5,5
guard.pausetime	= 15,20
sparkno		= S6150
guard.sparkno	= S6150
sparkxy		= 2,30
hitsound		= S7,3
guardsound		= S7,3
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8
guard.velocity	= -8
air.velocity	= -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff = 0
fall.xvelocity	= -1
fall.yvelocity	= -3
fall.recover	= 0
air.fall		= 1
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 100
palfx.time		= 12
palfx.mul		= 236,256,236
palfx.add		= 50,200,10
palfx.sinadd	= 25,175,5,4
envshake.time 	= 12
envshake.freq 	= 140
envshake.ampl 	= -5
persistent		= 0
kill = 1
guard.kill = 1

[State 6111, PlaySnd]
type = PlaySnd
trigger1 = (MoveContact)
value = S7,3
volume = 200

[State 6111:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause	= 1

;[KI Supporter Projectile]--------------------------------
;(Used in StateNo 6111,6113)
[Statedef 6112]
type 			= A
movetype		= A
physics		= N
anim			= 6110
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6112:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6112:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6112:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6112:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 13
y			= (ifelse(ParentDist Y < Pos Y,5,-5))

[State 6112:	VelAdd]
type 			= VelAdd
trigger1 		= (Time > 0) && (ParentDist Y > Pos Y) && (Vel Y < 10)
y 			= 1

[State 6112:	VelAdd]
type 			= VelAdd
trigger1 		= (Time > 0) && (ParentDist Y <= Pos Y) && (Vel Y > -10)
y 			= -1

[State 6112:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 8
timegap  = 2
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6112:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 10
pausetime		= 1,1
guard.pausetime	= 15,20
sparkno		= S6140
guard.sparkno	= S6140
sparkxy		= 0,0
hitsound		= -1
guardsound		= -1
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8
guard.velocity	= -8
air.velocity	= -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff = 0
guard.kill = 1
fall.xvelocity	= -1
fall.yvelocity	= -3
fall.recover	= 0
air.fall		= 1
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 25
palfx.time		= 12
palfx.mul		= 256,256,256
palfx.add		= 200,50,10
palfx.sinadd	= 175,25,5,4
envshake.time 	= 12
envshake.freq 	= 120
envshake.ampl 	= -4
persistent		= 0

[State 6112:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[KI Bomb Projectile Lvl 2]
;(Used in StateNo 1010)
[Statedef 6113]
type 			= A
movetype		= A
physics		= N
anim			= 6111
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 0, 20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 0, -20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 5, 10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6113, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 5, -10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6113:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2                   = unguardable

[State 6113:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6113:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6113:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 12
y			= 0

[State 6113:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6113:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 8, Hit
damage		= 250
pausetime		= 5,5
guard.pausetime	= 15,20
sparkno		= S6150
guard.sparkno	= S6150
sparkxy		= 2,30
hitsound		= S7,4
guardsound		= S7,4
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8,-5
guard.velocity	= -8
air.velocity	= -9,-6.5
airguard.velocity	= -8,-5.5
ground.cornerpush.veloff = 0
fall.xvelocity	= 8
fall.yvelocity	= -5
fall.recover	= 0
air.fall		= 1
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 200
palfx.time		= 12
palfx.mul		= 236,256,236
palfx.add		= 50,200,10
palfx.sinadd	= 25,175,5,4
envshake.time 	= 14
envshake.freq 	= 150
envshake.ampl 	= -6
persistent		= 0
fall = 1
kill = 1
guard.kill = 1

[State 6113:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[KI Bomb Projectile Lvl 3]
;(Used in StateNo 1020)
[Statedef 6114]
type 			= A
movetype		= A
physics		= N
anim			= 6111
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6114, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 0, 30
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6114, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 0, -30
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6114, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 5, 20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6114, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = 5, -20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6114, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = -5, 10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6114, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KI Supporter Projectile"
ID = 6112
stateno = 6112
pos = -5, -10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6114:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2                   = unguardable

[State 6114:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6114:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6114:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 12
y			= 0

[State 6114:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6114:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 8, Hit
damage		= 350
pausetime		= 5,5
guard.pausetime	= 15,20
sparkno		= S6150
guard.sparkno	= S6150
sparkxy		= 2,30
hitsound		= S7,4
guardsound		= S7,4
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8,-5
guard.velocity	= -8
air.velocity	= -9,-6.5
airguard.velocity	= -8,-5.5
ground.cornerpush.veloff = 0
fall.xvelocity	= 10
fall.yvelocity	= -6
fall.recover	= 0
air.fall		= 1
down.velocity	= -2,-3
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 500
palfx.time		= 12
palfx.mul		= 236,256,236
palfx.add		= 50,200,10
palfx.sinadd	= 25,175,5,4
envshake.time 	= 16
envshake.freq 	= 160
envshake.ampl 	= -6
persistent		= 0
fall = 1
kill = 1
guard.kill = 1

[State 6114:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[Eraser Cannonball]
;(Used in StateNo 1031)
[Statedef 6115]
type 			= A
movetype		= A
physics		= N
anim			= 6112
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6115:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2                   = unguardable

[State 6115:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6115:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6115:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 10
y			= 0

[State 6115:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6115:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		        = MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		        = 100+ifelse(parent,var(10)=2,50,0)+ifelse(parent,var(10)=3,150,0)
pausetime		= 5,5
guard.pausetime	        = 15,20
sparkno		        = S6150
guard.sparkno	        = S6150
sparkxy		        = 2,30
hitsound		= S7,4
guardsound		= S7,4
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	        = 25
air.hittime		= 25
ground.velocity	        = -8
guard.velocity	        = -8
air.velocity	        = -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff= 0
fall.xvelocity	        = -1
fall.yvelocity	        = -3
fall.recover	        = 0
down.velocity	        = -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 100
palfx.time		= 12
palfx.mul		= 236,256,236
palfx.add		= 50,200,10
palfx.sinadd	        = 25,175,5,4
envshake.time 	        = 12
envshake.freq 	        = 140
envshake.ampl 	        = -5
persistent		= 0
fall = 1
kill = 1
guard.kill = 1

[State 6115:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[Eraser Charge Lvl 1]
;(Used in StateNo 1030)
[Statedef 6116]
type 			= A
movetype		= A
physics		= N
anim			= 6106
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 6116:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6116, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 6116, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)-20
y = (rootdist Y)-55

[State 6116:	DestroySelf]
type			= DestroySelf
trigger1                = (Parent, StateNo != 1030)

;------------------------------------------------------------------------------
;[Expanding Energy Blast Charge]
;(Used in StateNo 1050)
[Statedef 6117]
type 			= A
movetype		= A
physics		= N
anim			= 6115
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 6117:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6117, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 6117, PosAdd]
type = PosAdd
triggerall = Time >= 0
triggerall = Time <= 78
trigger1 = 1
x = (rootdist X)-27
y = (rootdist Y)-48

[State 6117, PosAdd]
type = PosAdd
triggerall = Time >= 79
triggerall = Time <= 81
trigger1 = 1
x = (rootdist X)+54
y = (rootdist Y)-77

[State 6117:	DestroySelf]
type			= DestroySelf
trigger1		= (Time >80)
trigger2                = (Parent, StateNo != 1050)

;-------------------------------------------------------------------------------
;[Expanding Energy Blast]
;(Used in StateNo 1050)
[Statedef 6118]
type 			= A
movetype		= A
physics		= N
anim			= 6115
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6118:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2                   = unguardable

[State 6118:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6118:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6118:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 12
y			= -11

[State 6118:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 10
timegap  = 1
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6118:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		        = MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		        = 250
pausetime		= 5,5
guard.pausetime	        = 15,20
sparkno		        = S6150
guard.sparkno	        = S6150
sparkxy		        = 2,30
hitsound		= S7,4
guardsound		= S7,4
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	        = 25
air.hittime		= 25
ground.velocity	        = -8
guard.velocity	        = -8
air.velocity	        = -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff= 0
fall.xvelocity	        = -1
fall.yvelocity	        = -3
fall.recover	        = 0
down.velocity	        = -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 100
palfx.time		= 12
palfx.mul		= 236,256,236
palfx.add		= 50,200,10
palfx.sinadd	        = 25,175,5,4
envshake.time 	        = 12
envshake.freq 	        = 140
envshake.ampl 	        = -5
persistent		= 0
fall = 1
kill = 1
guard.kill = 1

[State 6118, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 11
value = S5,27
volume = 180

[State 6118, EnvColor]
type = EnvColor
trigger1 = Time = 10
value = 255,255,255
time = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118, Helper]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Expanding Energy Blast Child Proj"
ID = 6119
stateno = 6119
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 6118:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10) || (Time >= 11)
ignorehitpause	= 1

;[Expanding Energy Blast Child Proj]--------------------------------
;(Used in StateNo 6118)
[Statedef 6119]
type 			= A
movetype		= A
physics		= N
anim			= 6110
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 1
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 6119:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 6119:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 6119:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 6119:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= 2,0

[State 6119:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 1
range			= 9,-9

[State 6119:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= (Var(1))
y			= (10+Var(0))

[State 6119:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 8
timegap  = 2
framegap 		= 1
length 		= 5
paladd 		= 40, 40, 40
palmul 		= .35, .35, .35
palcontrast 	= 105,105,105
trans 		= add

[State 6119:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 20
pausetime		= 1,1
guard.pausetime	= 15,20
sparkno		= S6140
guard.sparkno	= S6140
sparkxy		= 0,0
hitsound		= S5,13
guardsound		= S5,13
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime	= 25
air.hittime		= 25
ground.velocity	= -8
guard.velocity	= -8
air.velocity	= -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff = 0
guard.kill = 1
fall.xvelocity	= -1
fall.yvelocity	= -3
fall.recover	= 0
air.fall		= 1
down.velocity	= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 25
palfx.time		= 12
palfx.mul		= 256,256,256
palfx.add		= 200,50,10
palfx.sinadd	= 175,25,5,4
envshake.time 	= 12
envshake.freq 	= 120
envshake.ampl 	= -4
persistent		= 0

[State 6119, PlaySnd]
type = PlaySnd
trigger1 = (Pos Y) = 1
value = S5,13
volume = 160

[State 6119, Explod]
type = Explod
trigger1 = (Pos Y) = 1
anim = 6140
ID = 6140
pos = 0,-30
postype = p1
facing = 1
bindtime = 1
removetime = 28
scale = 1,1
sprpriority = 9
ontop = 1
shadow = 999,999,999
ownpal = 1

[State 6119:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (FrontEdgeBodyDist < -10)
trigger2                = (Pos Y > 1)
ignorehitpause	= 1
;---------------------------------------------------------------------------
;Push Helper Foward
;(Used in StateNo 218,1000)
[Statedef 6300]
type 		= S
movetype	= I
physics		= N
anim		= 6300
velset		= 0,0
ctrl		= 0
poweradd	= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 0

[State 6300, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6300, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 6300, VelSet]
type = VelSet
trigger1 = (!Time)
x = 10

[State 6300, DestroySelf]
type = DestroySelf
triggerall = (parent,stateno = 302)
trigger1 = (Time > 6)

[State 6300, DestroySelf]
type = DestroySelf
triggerall = (parent,stateno != 302)
trigger1 = (Time > 20)

;---------------------------------------------------------------------------
;Push Helper Backwards
[Statedef 6301]
type 		= S
movetype	= I
physics		= N
anim		= 6300
velset		= 0,0
ctrl		= 0
poweradd	= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 0

[State 6301, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6301, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6301, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 6301, VelSet]
type = VelSet
trigger1 = (!Time)
x = -10

[State 6301, DestroySelf]
type = DestroySelf
triggerall = (parent,stateno = 302)
trigger1 = (Time > 6)

[State 6301, DestroySelf]
type = DestroySelf
triggerall = (parent,stateno != 302)
trigger1 = (Time > 20)

;---------------------------------------------------------------------------
;Push Helper Up
[Statedef 6302]
type 		= S
movetype	= I
physics		= N
anim		= 6301
velset		= 0,0
ctrl		= 0
poweradd	= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 0

[State 6302, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6302, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6302, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 6302, VelSet]
type = VelSet
trigger1 = (!Time)
y = -10

[State 6302, DestroySelf]
type = DestroySelf
triggerall = (parent,stateno = 302)
trigger1 = (Time > 6)

[State 6302, DestroySelf]
type = DestroySelf
triggerall = (parent,stateno != 302)
trigger1 = (Time > 20)

