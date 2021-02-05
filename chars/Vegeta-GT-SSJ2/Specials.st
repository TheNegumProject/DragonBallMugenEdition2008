
;Statedef Data:

;1000-2999: Specials Atacks

;1000-1003  - Ki Charge
;1100-1106  - Renzouken Energy Dan
;1200       - Zenzouken
;1300-1301  - Counter
;1400       - W.Sonic Knee
;1500-1501  - S. Sonic knee
;1600-1601  - Flying Kick
;1700-1701  - Air Elbow
;1800-1805  - Bakuhatsu_x
;1900-1902  - Bakuhatsu_y
;2000-2010  - Kienzan_x
;2100-2110  - Kienzan_y
;2300       - Recover Kick


;------------------------------------------------------------------------------
; Ki Charge
[Statedef 1000]
type    = S
movetype= I
physics = S
juggle  = 9
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 0
facep2 = 1

[State 1000,Envcolor]
type = Envcolor
trigger1 =(AnimElem=2)
time = 3

[State 1000,BGPalFX]
type = BGPalFX
trigger1=((Time>40)&&((GameTime%80)=0))
time = 50
add=0,0,0
sinadd=-80,-80,-80,100


[State 1000,Poweradd]
type = Poweradd
trigger1=(Time>=12)
value = 5

[State 1000,EnvShake]
type	= EnvShake
trigger1= (Time>40)&&(GameTime%5=0)
time	= 5
freq	= 60
ampl	= -4
phase	= 90



[State 1000, Explod]
type = Explod
triggerall=(Pos Y >= 0)
trigger1 = (Time>40)&&(GameTime%30=0)
anim = 6018
ID = 6018
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
removetime = -2
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 1000,Explod]
type = Explod
trigger1 =(Time=6)&&(!NumExplod(6013))
anim = 6014
ID = 6013
pos = 2,-30
postype = p1
facing = 1
vfacing = 1
bindtime =-1
random = 0,0
supermove = 1
scale = 1,1
ontop = 1
ownpal = 1
removeongethit=1



[State 1000,Helper]
type = Helper
trigger1 = (AnimElem=2)
helpertype = normal
name = "Aura_Dinamic"
id = 1002
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
stateno = 1002
keyctrl = 0
ownpal = 1

[State 1000,Helper]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	= normal
name		= "Push Effect"
id              = 1003
pos		= 0,0
postype         = p1
facing		= 1
stateno	        = 1003
keyctrl	        = 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	= 1
size.yscale	= 1

;Aura sound
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem =2
value = 1000,0
volume = 0
channel = 5
freqmul = 1.1
loop = 1
pan = 0

;Ground
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem =2
value = S190,1
volume = 0
channel = 13
freqmul = 1.0
loop = 1
pan = 0

[State 1000,ChangeState]
type = ChangeState
trigger1 =(command!="holda")||(command!="holdx")
trigger1 =(time >= 40)
trigger2 =(power >= 3000)
value = 1001
ctrl = 0
;--------------------------------------------------------------------------------
; End Charge Ki
[Statedef 1001]
type = S
movetype = I
physics = N
anim = 1001
ctrl = 0
poweradd = 0
juggle = 9
sprpriority = 1

[State 1001,Envcolor]
type = Envcolor
trigger1 =(!time)
time = 3


[State 1001,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)&&(Pos Y<0)
value = 900

[State 1001,End aura mode]
type = ChangeState
trigger1 =(!Animtime)
value = 0
ctrl = 1
;------------------------------------------------------------------------
;Helper aura_dimamic
[Statedef 1002]
type = S
movetype= I
physics = N
anim = 9999
sprpriority = 4

[State 1002,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1002,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 1002,Track P1]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y
ignorehitpause = 1


[State 1002,Explod-01]
type=Explod
trigger1=(random<200)
anim=6000
ID=6000
pos=0,-30
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=1
bindtime=1
random=22,50
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,Explod-02]
type=Explod
trigger1=(random=[300,699])
anim=6001
ID=6001
pos=0,-30
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=1
bindtime=1
random=50,50
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1


[State 1002,Explod-03]
type=Explod
trigger1=(random=[500,899])
anim= 6002
ID= 6002
pos=20,-40
postype=p1
facing=1
vfacing=1
bindtime=1
random=20,50
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,Explod-04]
type=Explod
trigger1=(random=[500,899])
anim= 6003
ID= 6003
pos=-20,-40
postype=p1
facing=1
vfacing=1
bindtime=1
random=20,50
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,Explod-05]
type=Explod
trigger1=(random<200)
anim=6004
ID=6004
pos=20,-20
postype=p1
facing=1
vfacing=1
bindtime=1
random=15,40
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,Explod-05]
type=Explod
trigger1=(random<200)
anim=6005
ID=6005
pos=-20,-20
postype=p1
facing=1
vfacing=1
bindtime=1
random=15,40
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,Explod-06]
type=Explod
trigger1=(random=[500,899])
anim=6006
ID=6006
pos=15,-15
postype=p1
facing=1
vfacing=1
bindtime=1
random=20,40
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,Explod-07]
type=Explod
trigger1=(random=[500,899])
anim=6007
ID=6007
pos=-10,-15
postype=p1
facing=1
vfacing=1
bindtime=1
random=20,40
supermove= 1
scale=0.3,0.3
sprpriority=ifelse(random<500,-3,3)
ownpal=1

[State 1002,DestroySelf]
type = DestroySelf
trigger1 = (parent,stateno!=1000)
trigger1 = (parent,stateno!=181)
trigger1 = (parent,stateno!=191)
trigger1 = (parent,stateno!=4001)
;---------------------------------------------------------------------------
;Push Effect
[Statedef 1003]
type            = S
movetype        = I
physics         = S
anim            = 9997
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0

[State 1003,VelSet]
type   = VelSet
trigger1 = (!Time)
x = 15
y = 0

[State 1003,PlayerPush]
type     = PlayerPush
trigger1 = (1)
value    = 1

[State 1003,NotHitBy]
type      = NotHitBy
trigger1  = (1)
time      = 1
value     = SCA

[State 1003,DestroySelf]
type      = DestroySelf
trigger1  = (Time = 20)
;--------------------------------------------------------------------------
; Renzouken Energy Dan
[Statedef 1100]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0,0
poweradd=0
anim= 1100

[State 1100,Explod]
type = Explod
trigger1 =(!Time)&&(!Numexplod(6010))
Anim = 6010
Pos = -10,-40
Id = 6010
postype=p1
facing=1
vfacing=1
bindtime=-1
removetime = -1
vel=0,0
accel=0,0
random=0,0
scale=0.5,0.5
ontop=1
shadow=0,0,0
ownpal=1
removeongethit=1


[State 1100,Explod]
type=Explod
trigger1 =(!Time)&&(!Numexplod(6011))
anim=6010
id=6011
pos= 14,-32
postype=p1
facing=1
vfacing=1
bindtime=-1
removetime = -1
vel=0,0
accel=0,0
random=0,0
scale=0.5,0.5
ontop=1
shadow=0,0,0
ownpal=1
removeongethit=1

[State 1100, RemoveExplod]
type = RemoveExplod
trigger1=(Command="x")&&(Time>7)
trigger2=(Command="y")&&(Time>7)
trigger3=(Command ="a")
trigger4=(Command ="b")
trigger5=(Command ="z")
trigger6=(Time > 40)
trigger7 =(Win=1)
id = 6010

[State 1100, RemoveExplod]
type = RemoveExplod
trigger1=(Command="x")&&(Time>7)
trigger2=(Command="y")&&(Time>7)
trigger3=(Command ="a")
trigger4=(Command ="b")
trigger5=(Command ="z")
trigger6=(Time > 40)
trigger7 =(Win=1)
id = 6011

[State 1100,changestate1]
type=changestate
trigger1=(Command="x")&&(Time>7)||(Var(59)!=0)&&(Time>7)&&(random>100)
value=1102
ctrl=1

[State 1100,changestate2]
type=changestate
trigger1=(Command="y")&&(Time>7)||(Var(59)!=0)&&(Time>7)&&(random>100)
value=1105
ctrl=1

[State 1100,ChangeState4]
type=ChangeState
trigger1=(Command ="a")
trigger2=(Command ="b")
trigger3=(Command ="z")
trigger4=(Time > 40)
trigger5 =(Win=1)
value=0
ctrl=1
;------------------------------------------------
;Renzouken Energy Dan-Trow Fireball No1
[Statedef 1102]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0,0
poweradd=-100
anim=1101

[State 1102,Helper]
type=Helper
trigger1=(!time)
helpertype=normal
name="Fireball_x"
id=1102
pos=10,-40
ownpal = 1
size.xscale=0.3
size.yscale=0.15
stateno=1103

[State 1102,Explod]
type=Explod
trigger1=(!time)&&(!numexplod(6012))
anim=6010
id =6012
pos= -5,-38
postype=p1
facing=1
vfacing=1
bindtime=-1
removetime = -1
vel=0,0
accel=0,0
random=0,0
scale=0.5,0.5
ontop=1
shadow=0,0,0
ownpal=1
removeongethit=1

[State 1102, RemoveExplod]
type = RemoveExplod
trigger1=(Command="y")&&(Time>7)
trigger2=(power<200)
trigger3= (!Animtime)
id = 6012

[State 1102,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 1100,0

[State 1102,changestate]
type=ChangeState
trigger1=(Command="y")&&(Time>7)
value=1105
ctrl=1

[State 1102,changestate1]
type=ChangeState
trigger1=(power<200)
value=5300
ctrl=0

[State 1102,ChangeState2]
type=ChangeState
trigger1=(!Animtime)
value=1100
ctrl=1
;-------------------------------------------
;Helper Renzouken No1
[Statedef 1103]
type = A
movetype = A
physics = N
anim = 6009
velset = 0,0
ctrl = 0

[State 1103, VelSet]
type = VelSet
trigger1 =(!time)
x = 12
y = IfElse(random >500,-0.5,0.5)


[State 2110,Afterimage]
Type           = AfterImage
Trigger1       = (!Time)
Time           = 30
Trans          = Add
Length         = 10
TimeGap        = 1
FrameGap       = 1
PalBright      = 0 , 0 , 0
PalContrast    = 110,110,110
PalAdd         = 0,0,0
PalMul         = .50,.50,.50

[State 1103,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 3

[State 1103,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow

[State 1103,NoHitBy]
type=NotHitBy
trigger1=1
time=-1
value=SCA,SA,HA,NT,ST,HT


[State 1103,HitBy]
type=HitBy
trigger1=1
value=SCA,NP
time=-1

[State 1103,HitOverride]
type=HitOverride
trigger1=1
slot=1
time=-1
stateno=1107
attr=SCA,NP


[State 1103, Explod]
type = Explod
trigger1 = (Movecontact)
anim = 6011
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.3,0.3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1103,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NP
animtype  = Medium
priority = 4,Hit
damage    = 20
getpower = -100,0
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound   = s1800,0
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2
air.velocity = -2
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time=20
envshake.freq= 50
envshake.ampl= -2

[State 1103,DestroySelf]
type = DestroySelf
trigger1 =Movecontact
trigger2 =Pos Y >= 0
trigger3 = ScreenPos x > 400
trigger4 = ScreenPos x < -1

;---------------------------------------------------
;Override Renzouken
[Statedef 1104]
type=S
movetype=A
physics=N

[State 1104,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1104,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 1104,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible

[State 1104,Velocity]
type=VelSet
trigger1=1
x=0
y=0

[State 1104,Destroy]
type=DestroySelf
trigger1=1
ignorehitpause=1

;-------------------------------------
;Renzouken Energy Dan-Trow Fireball No2
[Statedef 1105]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0,0
poweradd=-100
anim=1102

[State 1105,Helper]
type=Helper
trigger1=(!time)
helpertype=normal
name="Fireball_y"
id=1102
pos=10,-40
ownpal = 1
size.xscale=0.3
size.yscale=0.15
stateno=1106


[State 1105,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 1100,0

[State 1105,changestate]
type=ChangeState
trigger1=(Command="x")&&(Time>7)
value=1102
ctrl=1


[State 1105,changestate]
type=ChangeState
trigger1=(power<200)
value=5300
ctrl=0

[State 1105,ChangeState2]
type=ChangeState
trigger1= (!Animtime)
value=1100
ctrl=1
;-------------------------------------------
;Helper Renzouken No2
[Statedef 1106]
type = A
movetype = A
physics = N
anim = 6009
velset = 0,0
ctrl = 0

[State 1106, VelSet]
type = VelSet
trigger1 =(!time)
x = 12
y = IfElse(random >500,-0.5,0.5)


[State 2110,Afterimage]
Type           = AfterImage
Trigger1       = (!Time)
Time           = 30
Trans          = Add
Length         = 10
TimeGap        = 1
FrameGap       = 1
PalBright      = 0 , 0 , 0
PalContrast    = 110,110,110
PalAdd         = 0,0,0
PalMul         = .50,.50,.50

[State 1106,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 3

[State 1106,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow

[State 1103,NoHitBy]
type=NotHitBy
trigger1=1
time=-1
value=SCA,SA,HA,NT,ST,HT


[State 1106,HitBy]
type=HitBy
trigger1=1
value=SCA,NP
time=-1

[State 1106,HitOverride]
type=HitOverride
trigger1=1
slot=1
time=-1
stateno=1107
attr=SCA,NP


[State 1106, Explod]
type = Explod
trigger1 = (Movecontact)
anim = 6011
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.3,0.3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1106,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NP
animtype  = Medium
damage    = 20
priority = 4,Hit
getpower = -100,0
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound   = s1800,0
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2
air.velocity = -2
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time=20
envshake.freq= 50
envshake.ampl= -2

[State 1106,DestroySelf]
type = DestroySelf
trigger1 =Movecontact
trigger2 =Pos Y >= 0
trigger3 = ScreenPos x > 400
trigger4 = ScreenPos x < -1
;------------------------------------------------------------------------------
;Override Renzouken
[Statedef 1107]
type=S
movetype=A
physics=N
anim = 9999


[State 1107,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1107,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 1107, Explod]
type = Explod
trigger1 = (!time)
anim = 6011
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.3,0.3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0


[State 1107,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=timerfreeze

[State 1107,Velocity]
type=VelSet
trigger1=1
x=0
y=0

[State 1107,Destroy]
type=DestroySelf
trigger1=1
ignorehitpause=1
;------------------------------------------------------------------------------
;Zanzouken
[statedef 1200]
type = S
Movetype = I
physics = S
Anim = IfElse(command="holdback",1201,1200)
poweradd = 0
ctrl = 0

[State 1200,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1200, VelSet]
type = VelSet
trigger1 =(!time)
x = IfElse(Anim=1201,-15,15)
y = 0

[State 1200,AfterImage]
type=AfterImage
trigger1=(!Time)
time=7
timegap=3
framegap=1
length=10
paladd=0,0,0
palmul=.50,.50,.50
palcontrast=110,110,110
trans=add

[State 1200,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 1200,0

[State 1200,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)&&(Pos Y < 0)
value = 900

[state 1200,changestate]
type = changestate
trigger1 =(!animtime)
value = 0
ctrl = 1

;-----------------------------------------------------------------
;Counter
[Statedef 1300]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0,0
poweradd=-500
anim=1300

[State 1300,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA


[State 1300,Helper]
type = Helper
trigger1 = (!time)
helpertype = normal
name = "Counter_Effect"
ID = 1300
stateno = 1301
pos = 0,-30
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.6
size.yscale = 0.6
ignorehitpause = 1

[State 1300,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)&&(Pos Y < 0)
value = 900

[state 1300,changestate]
type = changestate
trigger1 =(!animtime)
value = 0
ctrl = 1
;------------------------------------------------------------
;Counter Effect
[Statedef 1301]
type = A
movetype = A
physics = N
anim = 6015
velset = 0,0
ctrl = 0

[State 1301,NotHitBy]
type = NotHitBy
trigger1= 1
value = SCA,NA

[State 1301,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 7

[State 1301,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = timerfreeze
flag3 = unguardable

[State 1301,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 100
getpower = 100,0
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5,-2
air.velocity = -2.5,-3.5
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ignorehitpause = 1
fall = 1

[State 1301,DestroySelf]
type = DestroySelf
trigger1 = (!Animtime)
;---------------------------------------------------
;Weak Sonic Knee
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 3

[State 1400, VelAdd]
type = VelAdd
trigger1 = animelem=3
x = 8
y = -3.5

[State 1400,VelSet]
type=VelSet
trigger1= time = 15
x= 0
y=-0

[State 1400,hitdef]
type = HitDef
trigger1 = (!time)
attr = S, NA
animtype  = Medium
damage    = 50,25
guardflag = MA
pausetime = 11,11
sparkno = s6016
sparkxy = -10,-45
hitsound = s0,9
guardsound = 6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1, -6
air.velocity = -1, -6
fall = 1
fall.recover= 0
envshake.time=20
envshake.freq= 50
envshake.ampl= -4

[State 1400,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 1

[State 1400,ChangeState]
type = ChangeState
trigger1 = (!animtime)
value = 50
ctrl = 1

;-------------------------------------------------
;Strong Sonic Knee
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 3

[State 1500, VelAdd]
type = VelAdd
trigger1 = animelem=3
x = 8
y = -6.5

[State 1500,VelSet]
type=VelSet
trigger1= animelem = 4
x= 0
y=-0

[State 1500,hitdef]
type = HitDef
trigger1 = (!time)
attr = S, NA
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 11,11
sparkno = s6016
sparkxy = -10,-45
hitsound = s0,9
guardsound = 6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1, -5
air.velocity = -1, -5
fall = 1
fall.recover= 0
envshake.time=20
envshake.freq= 50
envshake.ampl= -4

[State 1500,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 1

[State 1500,ChangeState]
type = ChangeState
trigger1 = AnimElem = 4
value = 1501
ctrl = 0
;------------------------------------------------
;Strong Sonic Knee
[Statedef 1501]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1600
sprpriority = 3

[State 1500, VelAdd]
type = VelAdd
trigger1 = (animelem=2)
x = 11
y = 7.0

[State 1500,VelSet]
type=VelSet
trigger1= (Pos Y >= 0)
x= 0
y= 0

[State 1501, Explod]
type = Explod
trigger1 = (Animelem = 2)
anim = 6013
pos = 25,-15
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1501,hitdef]
type = HitDef
trigger1 = (!time)
attr = S, NA
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 11,11
sparkno = s6016
hitsound = s0,10
guardsound = 6, 0
sparkxy = -10,-10
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3, 6
air.velocity = -3, 6
fall = 1
fall.recover= 0
envshake.time=20
envshake.freq= 50
envshake.ampl= -4

[State 1501,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,0

[State 1501,ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0)
value = 52
ctrl = 0
;-------------------------------------------------------------
;Flying Kick
[Statedef 1600]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1600
sprpriority = 3

[State 1600,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,0


[State 1600, VelAdd]
type = VelAdd
trigger1 = (animelem=2)
x = 10
y = 6.0

[State 1600,VelSet]
type=VelSet
trigger1= (Pos Y >= 0)
x= 0
y= 0

[State 1600, Explod]
type = Explod
trigger1 = (Animelem = 2)
anim = 6013
pos = 25,-15
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1600,hitdef]
type = HitDef
trigger1 = (!time)
attr = S, NA
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 11,11
sparkno = s6016
hitsound = 5, 3
guardsound = 6, 0
sparkxy = -10,-10
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3, 6
air.velocity = -3, 6
fall = 1
fall.recover= 0
envshake.time=20
envshake.freq= 50
envshake.ampl= -4

[State 1600,ChangeState]
type=ChangeState
trigger1=(movecontact)
value= 105

[State 1600,ChangeState2]
type=ChangeState
trigger1= (animtime = 0)
trigger2= (Pos Y >= 0)
value=52
ctrl=1
;-------------------------------------------------------------
; Air Elbow
[Statedef 1700]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 20
sprpriority = 2


[State 1700,HitDef]
type = HitDef
trigger1 =(AnimElem = 3)
attr = S, NA
damage = 15
getpower = 25,10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,9
sparkno = s6016
sparkxy = -10, -40
hitsound = s0,7
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -3
airguard.velocity = -3,-.8
air.type = High
air.velocity = -1,-2
air.hittime = 12

[State 1700, Explod]
type = Explod
trigger1 = (Animelem = 3)
anim = 6019
ID = 6019
pos = 10,-40
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1700,VelSet]
type = VelSet
trigger1 = 1
x = 5
y = 0

[State 1700,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900

[State 1700,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1

;-------------------------------------------------------------
;Bakuhatsu_x
[Statedef 1800]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1800
sprpriority = 2


[State 1800,ChangeState]
type = ChangeState
trigger1 = (command!= "holdx")&&(Time >= 10)
trigger2 = (Time >= 50)
value = 1801
ctrl = 0

;------------------------------------------------------------
;Bakuhatsu_x
[Statedef 1801]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1801
sprpriority = 2

[State 1801,Helper]
type = Helper
trigger1 = (Animelem = 1)
helpertype = normal
name = "Bakuhatsu_x"
ID = 1801
stateno = 1802
pos = 50,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 1801,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,0

[State 1801,ChangeState]
type = ChangeState
trigger1 =(!Animtime)
value = 0
ctrl = 1
;--------------------------------------------------------------
;Bakuhatsu_x Helper
[Statedef 1802]
type = A
movetype = A
physics = N
anim = 6700
velset = 0,0
ctrl = 0

[State 1802,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 3

[State 1802,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = timerfreeze
flag3 = unguardable

[State 1802,NoHitBy]
type=NotHitBy
trigger1=1
time=1
value=SCA,SA,HA,NT,ST,HT
ignorehitpause=1

[State 1802,HitBy]
type=HitBy
trigger1=1
value=SCA,NP,SP,HP
time=1
ignorehitpause=1

[State 1802,HitOverride]
type=HitOverride
trigger1=1
slot=1
time=1
stateno=1903
attr=SCA,NP,SP,HP
ignorehitpause=1

[State 1802,Explod]
type = Explod
trigger1 = Time= 8
trigger1 = (Pos Y <= 0)
anim = F60
pos = 0,50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1802,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 50,25
getpower = 50,0
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = s1800,0
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -1.5,-10
air.velocity = -1-5,-10
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
palfx.time = 30
palfx.mul = 120,224,150
palfx.add = 0,50,240

[State 1802,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 1600,0
volume = 0

[State 1802,DestroySelf]
type = DestroySelf
trigger1 =(!Animtime)

;--------------------------------------------------------------------
;Bakuhatsu_y
[Statedef 1900]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1800
sprpriority = 2

[State 1900,Hold]
type = ChangeState
trigger1 = (command!= "holdy")&&(Time >= 10)
trigger2 = (Time >= 50)
value = 1901
ctrl = 0

;--------------------------------------------------------------------
;Bakuhatsu_y
[Statedef 1901]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1801
sprpriority = 2


[State 1901,Helper]
type = Helper
trigger1 = (Animelem = 1)
helpertype = normal
name = "Bakuhatsu_y"
ID = 1902
stateno = 1902
pos = 100,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 1900,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,0

[State 1900,ChangeState]
type = ChangeState
trigger1 =(!Animtime)
value = 0
ctrl = 1
;--------------------------------------------------------------
;Bakuhatsu_y Helper
[Statedef 1902]
type = A
movetype = A
physics = N
anim = 6700
velset = 0,0
ctrl = 0

[State 1902,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 3

[State 1902,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = timerfreeze
flag3 = unguardable

[State 1902,NoHitBy]
type=NotHitBy
trigger1=1
time=-1
value=SCA,SA,HA,NT,ST,HT


[State 1902,HitBy]
type=HitBy
trigger1=1
value=SCA,NP,SP
time=-1


[State 1902,HitOverride]
type=HitOverride
trigger1=1
slot=1
time=-1
stateno=1903
attr=SCA,NP,SP


[State 1902,Explod]
type = Explod
trigger1 = Time= 8
trigger1 = (Pos Y <= 0)
anim = F60
pos = 0,50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1902,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 50,25
getpower = 50,0
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = s1800,0
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -1.5,-10
air.velocity = -1.5,-10
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
palfx.time = 30
palfx.mul = 120,224,150
palfx.add = 0,50,240

[State 1902,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 1600,0
volume = 0

[State 1902,DestroySelf]
type = DestroySelf
trigger1 =(!Animtime)
;---------------------------------------------------
;Override Bakuhatsu
[Statedef 1903]
type=S
movetype=A
physics=N
anim = 9999
sprpriority = 4

[State 1903,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1903,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible


[State 1903,AssertSpecial]
type=AssertSpecial
trigger1=time>=0
flag=noshadow
flag2=timerfreeze

[State 1903,Velocity]
type=VelSet
trigger1=1
x=0
y=0

[State 1903,Destroy]
type=DestroySelf
trigger1=1
ignorehitpause=1
;--------------------------------------------------
;Kienzan_x
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1700
sprpriority = 2



[State 2000,Explod]
type = Explod
trigger1 = (Time>0)&&(GameTime%11=0)
anim = 6800
ID =  6800
pos = -5,-77
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.9,0.2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 2000,RemoveExplod]
type = RemoveExplod
trigger1 =(command!= "holdx")&&(Time >= 25)||(stateno!=2000)
trigger2 = (Time >= 50)
id = 6800


[State 2000,PlaySnd]
type = PlaySnd
trigger1 = (!time)
value = 2000,0
loop=1
freqmul=1.0
channel = 7

[State 2000,ChangeState]
type = ChangeState
trigger1 = (command!= "holdx")&&(Time >= 25)
trigger2 = (Time >= 50)
value = 2001
ctrl = 0

;----------------------------------------------
;Kienzan_x Trow
[Statedef 2001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1701
sprpriority = 2

[State 2001,Helper]
type = Helper
trigger1 = (!Time)
helpertype = normal ;player
name = "Kienzan_x"
ID = 2010
stateno = 2010
pos = -5,-77
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.9
size.yscale = 0.2
ignorehitpause = 1

[State 2001,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)&&(Pos Y<0)
value = 900

[State 2001,ChangeState]
type = ChangeState
trigger1 = (!Animtime)
value = 0
ctrl = 1

;-----------------------------------------------
;Kienzan_x Helper
[Statedef 2010]
type = A
movetype = A
physics = N
anim = 6800
velset = 0,0
ctrl = 0

[State 2010, VelAdd]
type = VelAdd
trigger1 = (!time)
x = 15
y = 6

[State 2010, VelAdd]
type = VelAdd
trigger1 = (time = 10)
y = -4

[State 2010, VelAdd]
type = VelAdd
trigger1 = (time = 15)
y = -5


[State 2010,Afterimage]
Type           = AfterImage
Trigger1       = (!Time)
Time           = 30
Trans          = Add
Length         = 10
TimeGap        = 1
FrameGap       = 1
PalBright      = 0 , 0 , 0
PalContrast    = 110,110,110
PalAdd         = 0,0,0
PalMul         = .50,.50,.50

[State 2010,NotHitBy]
type = NotHitBy
trigger1= 1
value = SCA,NA

[State 2010,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 3

[State 2010,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = unguardable


[State 2010,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 50,25
getpower = 50,0
guardflag = MA
pausetime = 0,0
sparkno = 10
sparkxy = -10,0
hitsound   = s1800,0
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2,0
air.velocity = -2,-2
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0


[State 2010,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 2000,1
volume = 0

[State 2010,DestroySelf]
type = DestroySelf
trigger1 = ScreenPos x > 400
trigger2 = ScreenPos x < -1
trigger3 = time = 50
trigger4 = !stateno = 2000
;--------------------------------------------------
;Kienzan_y
[Statedef 2100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1700
sprpriority = 2



[State 2100,Explod]
type = Explod
trigger1 = (Time>0)&&(GameTime%11=0)
anim = 6800
ID =  6801
pos = -5,-77
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.9,0.2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1



[State 2100,RemoveExplod]
type = RemoveExplod
trigger1 = (command!= "holdy")&&(Time >= 25)
trigger2 = (Time >= 50)
id = 6801


[State 2100,PlaySnd]
type = PlaySnd
trigger1 = (!time)
value = 2000,0
loop=1
freqmul=1.0
channel = 8


[State 2100,ChangeState]
type = ChangeState
trigger1 = (command!= "holdy")&&(Time >= 25)
trigger2 = (Time >= 50)
value = 2101
ctrl = 1

;----------------------------------------------
;Kienzan_y Trow
[Statedef 2101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1701
sprpriority = 2

[State 2101,Helper]
type = Helper
trigger1 = (!Time)
helpertype = normal ;player
name = "Kienzan_y"
ID = 2110
stateno = 2110
pos = -5,-77
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.9
size.yscale = 0.2
ignorehitpause = 1


[State 2101,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)&&(Pos Y<0)
value = 900


[State 2101,ChangeState]
type = ChangeState
trigger1 = (!Animtime)
value = 0
ctrl = 1

;-----------------------------------------------
;Kienzan Helper
[Statedef 2110]
type = A
movetype = A
physics = N
anim = 6800
velset = 0,0
ctrl = 0

[State 2110, VelAdd]
type = VelAdd
trigger1 = (!time)
x = 15
y = 4

[State 2110, VelAdd]
type = VelAdd
trigger1 = (time = 10)
y = -4

[State 2110, VelAdd]
type = VelAdd
trigger1 = (time = 15)
y = -5


[State 2110,Afterimage]
Type           = AfterImage
Trigger1       = (!Time)
Time           = 30
Trans          = Add
Length         = 10
TimeGap        = 1
FrameGap       = 1
PalBright      = 0 , 0 , 0
PalContrast    = 110,110,110
PalAdd         = 0,0,0
PalMul         = .50,.50,.50

[State 2110,NotHitBy]
type = NotHitBy
trigger1= 1
value = SCA,NA

[State 2110,SprPriority]
type = SprPriority
trigger1 = (!time)
value = 3

[State 2110,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = unguardable


[State 2110,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 50,25
getpower = 50,0
guardflag = MA
pausetime = 0,0
sparkno = 10
sparkxy = -10,0
hitsound   = s1800,0
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2,0
air.velocity = -2,-2
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0


[State 2110,PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = 2000,1
volume = 0

[State 2110,DestroySelf]
type = DestroySelf
trigger1 = ScreenPos x > 400
trigger2 = ScreenPos x < -1
trigger3 = time = 50
trigger4 = !stateno = 2100

;---------------------------------------------------------
;recover kick Charge
[Statedef 2300]
type    = L
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1900
sprpriority = 2


[State 2300,ChangeState]
type = ChangeState
trigger1 =(command!="b")&&(Time>=10)
trigger1 =(command!="a")&&(Time>=10)
value = 2301
ctrl = 1
;---------------------------------------
;recovery kick
[Statedef 2301]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1901
sprpriority = 2

[State 2301, AfterImage]
type = AfterImage
trigger1 = (!Time)
time = 5
timegap = 2
framegap = 1
length = 5
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 110,110,110
trans = add
persistent = 0

[State 2301,VelAdd]
type = VelAdd
trigger1 = (Animelem=1)
x = 10
y = 0

[State 2301,VelSet]
type = VelSet
trigger1 = (Animelem=3)
x = 0
y = 0

[State 2301,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 30,15
getpower = 30,0
guardflag = MA
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-30
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.5
air.velocity = -2.5,-3.5
fall = 1
recover.fall= 0

[State 2301,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 1

[State 2301,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 6


[State 2301,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1


