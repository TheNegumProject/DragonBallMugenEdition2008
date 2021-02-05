
;Statedef Data:

;2999-4999: Supers Atacks

;2999-3002  - Armor Mode
;3100       - Power Mode
;3200-3300  - Big Bang
;3500-3505  - Final Flash
;4100-4110  - Final Shine

;-------------------------------------------------------------------------------
;Armor Mode
[Statedef 2999]
type = S
movetype = I
physics = S
anim = 1000
velset = 0,0
poweradd = 0
ctrl = 0

[State 2999,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2999,Pause]
type = SuperPause
trigger1 =(!Time)
time = 30
movetime = 30
anim =-1
darken = 0

[State 2999,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-80,-80,-80,100;-255,-255,-255,100
time=30

[State 2999, Explod]
type = Explod
trigger1 = (!Time)
anim = 6014
pos = 2,-30
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
supermovetime= 24
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 2999,PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 2999,0
Volume = 0

[State 2999,VarSet]
type = VarSet
trigger1 = (!Time)
v = 4
value = 1

[State 2999,ChangeState]
type = ChangeState
trigger1 = (!AnimTime)
value = 0
ctrl = 1

;~~~~~~~~~~~~~~~~~~~~~---------------------------------------------------------
;Armor Mode Hited StateS
[Statedef 3000]
type = S
movetype = H
physics = S
ctrl = 1
anim = 0

[State 3000,PosSet]
type = PosSet
trigger1 = (Pos Y!= 0)
y = 0

[State 3000,ChangeState]
type = ChangeState
trigger1 = (Pos Y = 0)
value = 0
;-------------------------------------------------------------------------------
;Armor Mode Hited StateC
[Statedef 3001]
type = C
movetype = H
physics = C
ctrl = 1
anim = 11

[State 3001,PosSet]
type = PosSet
trigger1 = (Pos Y != 0)
y = 0

[State 3001, 0]
type = ChangeState
trigger1 = (time!= 0)&&(Pos Y = 0)
value = 11
;-------------------------------------------------------------------------------
;Armor Mode Hited StateA
[Statedef 3002]
type = A
movetype = H
physics = A
ctrl = 1

[State 3002,CtrlSet]
type = CtrlSet
trigger1 = (!time)
value = 1
;-------------------------------------------------------------------------------
;Power Mode
[Statedef 3100]
type = S
movetype = I
physics = S
anim = 1000
velset = 0,0
poweradd = 0
ctrl = 0

[State 3100,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3100,Pause]
type = SuperPause
trigger1 =(!Time)
time = 30
movetime = 30
anim =-1
darken = 0

[State 3100,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-80,-80,-80,100
time=30

[State 3100, Explod]
type = Explod
trigger1 = (!Time)
anim = 6014
pos = 2,-30
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
supermovetime= 24
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3100,PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 2999,0

[State 3100,VarSet]
type = VarSet
trigger1 = (!Time)
v = 5
value = 1

[State 3100,ChangeState]
type = ChangeState
trigger1 = (!AnimTime)
value = 0
ctrl = 1
;---------------------------------------------------------
;Big bang Charge
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = 2


[State 3200,Superpause]
type=Superpause
trigger1=(!Time)
time=45
darken=0
movetime=45
anim=-1

[State 3200,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-255,-255,-255,100
time=45

[State 3200,PalFXWiz]
type = PalFX
trigger1 = (Time>50)&&(GameTime%50=0)
time = 10
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 1
color = 0

[State 3200,BGPalFX]
type = BGPalFX
trigger1=((Time>60)&&((GameTime%80)=0))
time = 50
add=0,0,0
sinadd=-80,-80,-80,100

[State 3200,EnvShake]
type	= EnvShake
trigger1= (Time>60)&&(GameTime%5=0)
time	= 5
freq	= 10
ampl	= -4
phase	= 90

[State 3200,Helper]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	= normal
name		= "Push Effect"
id              = 3200
pos		= 0,0
postype         = p1
facing		= 1
stateno	        = 3300
keyctrl	        = 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	= 1
size.yscale	= 1

[State 3200,Explod]
type = Explod
trigger1 =(Time>5)&&!NumExplod(6900)
anim = 6900
ID =  6900
pos = 35,-55
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
supermove = 1
scale = 0.3,0.3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3200,Explod]
type = Explod
trigger1 = (Time>5)&&(GameTime%30=0)
anim = 6910
ID =  6910
pos = 35,-53
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.3,0.3
supermove = 1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 3200,Explod]
type = Explod
trigger1 = (time >5)&&!NumExplod(6008)
anim = 6008
ID = 6008
pos = 0,-40
postype = p1
facing = 1
vfacing = 1
bindtime = -1
random=0,10
supermove = 1
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority= 0

[State 3200,Explod]
type=Explod
trigger1=(Time>55)&&(GameTime%40=0)
anim=6754
pos=20,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,-2
accel=0,0
random=30,0
scale=0.5,0.5
sprpriority=3
ontop=1
shadow=0,0,0
ownpal=1
removeongethit=1

[State 3200,Explod]
type=Explod
trigger1=(Time>55)&&(GameTime%55=0)
anim=6755
pos=-20,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,-2
accel=0,0
random=30,0
scale=0.5,0.5
sprpriority=3
ontop=1
shadow=0,0,0
ownpal=1
removeongethit=1

[State 3200,Explod]
type=Explod
trigger1=(Time>55)&&(GameTime%65=0)
anim=6755
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,-2
accel=0,0
random=30,0
scale=0.5,0.5
sprpriority=3
ontop=1
shadow=0,0,0
ownpal=1
removeongethit=1

[State 3200,PlaySnd]
type =PlaySnd
trigger1 = (!Time)
value = 3200,3
volume = 0
channel= 9


[State 3200,PlaySnd]
type =PlaySnd
trigger1 = (Time=40)
value = 1000,1
volume = 0
channel= 10
loop = 1
pan = 0

[State 3200, StopSnd]
type = StopSnd
trigger1 =(command!="holdx")&&(Time>=50)
trigger2 = (Time >= 100)
channel = 9

[State 3200, StopSnd]
type = StopSnd
trigger1 =(command!="holdx")&&(Time>=50)
trigger2 = (Time >= 100)
channel = 10


[State 3200,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdx")&&(Time>=45)
trigger2 = (Time >= 100)
id = 6900

[State 3200,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdx")&&(Time>=45)
trigger2 = (Time >= 100)
id = 6910

[State 3200,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdx")&&(Time>=45)
trigger2 = (Time >= 100)
id = 6930

[State 3200,ChangeState]
type = ChangeState
trigger1 =(command!="holdup")&&(command!="holdx")&&(Time>=45)
trigger2 = (Time >= 100)
value = 3201
ctrl = 0

;Up
[State 3200,ChangeState]
type = ChangeState
trigger1 =(command="holdup")&&(command!="holdx")&&(Time>=45)
trigger2 = (Time >= 100)
value = 3203
ctrl = 0

;-------------------------------------------------------
;Big bang trow
[Statedef 3201]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3201
sprpriority = 2

[State 3201,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-255,-255,-255,100
time=45

[State 3201,Helper]
type = Helper
trigger1 = (!Time)&&(!NumHelper(3201))
helpertype = normal
name = "Big Bang"
ID =3201
stateno = 3202
pos = 30,-55
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.3
size.yscale = 0.3
ignorehitpause = 1

[State 3201, PlaySnd]
type = PlaySnd
trigger1 = (!time)
value = 3200,1
volume = 255
channel = 11
freqmul = 1.0
loop = 0
pan = 0

[State 3201,ScreenBound]
type = ScreenBound
trigger1 =  p2movetype = H || (BackEdgeBodyDist < -1)
movecamera = 0,0
value = 0


[State 3201,changestate]
type = changestate
trigger1 =  IfElse(BackEdgeBodydist >= -5,0,100)
trigger1 = time >= 60
value = 100
ctrl = 1

[State 3201,ChangeState]
type = ChangeState
trigger1 = (!Animtime)
value = 0
ctrl = 1

;-----------------------------------------------
;Big Bang  Helper
[Statedef 3202]
type = A
movetype = A
physics = N
anim = 6920
velset = 0,0
ctrl = 0

[State 3202,SprPriority]
type =SprPriority
trigger1 = (!time)
value = 3

[State 3202,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = unguardable


[State 3202,makedust]
type = makedust
trigger1 = (time>0)&&(pos y>=-55)
pos = 0,60

[State 3202,VelAdd]
type = VelAdd
trigger1 = (!time)
x = 12


[State 3202,Afterimage]
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

[State 3202,NoHitBy]
type=NotHitBy
trigger1=(time>=0)
time=1
value=SCA,SA,HA,NT,ST,HT
ignorehitpause=1

[State 3202,HitBy]
type=HitBy
trigger1=(time>=0)
value=SCA,SP
time=1
ignorehitpause=1

[State 3202,HitOverride]
type=HitOverride
trigger1=(time>=0)
slot=1
time=1
stateno=3207
attr=SCA,SP
ignorehitpause=1


[State 3202, Explod]
type = Explod
trigger1 = Movecontact
anim = 6930
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.8,0.8
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3202, EnvColor]
type = EnvColor
trigger1 = Movecontact
value = 255,255,255
time = 1


[State 3202,HitDef]
type = HitDef
trigger1 =(!time)
attr = S, SP
animtype  = Hard
damage    = 150,100
getpower  = 0
priority  = 4
guardflag = MA
pausetime = 0,0
sparkxy = -0,0
hitsound   = s3200,2
guardsound = s3200,2
ground.type = Low
sparkno = -1
guard.sparkno = -1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,-5
guard.velocity = -7
air.velocity = -10,-5
airguard.velocity = -5, -4
fall = 1
fall.recover = 0
envshake.time=10
envshake.freq= 50
envshake.ampl= -2

[State 3202, DestroySelf]
type = DestroySelf
trigger1 =Movecontact
trigger2 =Pos Y >= 0
trigger3 = ScreenPos x > 400
trigger4 = ScreenPos x < -1
;-----------------------------------------------
;Big bang trow Up
[Statedef 3203]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3202
sprpriority = 2


[State 3203,Helper]
type = Helper
trigger1 = (!Time)&&(!NumHelper(3203))
helpertype = normal
name = "Big Bang Up"
ID =3203
stateno = 3204
pos = 30,-55
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.3
size.yscale = 0.3
ignorehitpause = 1

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = (!time)
value = 3200,1
volume = 255
channel = 11
freqmul = 1.0
loop = 0
pan = 0

[State 3203,ChangeState]
type = ChangeState
trigger1 = (!Animtime)
value = 0
ctrl = 1

;-----------------------------------------------
;Big Bang UP Helper
[Statedef 3204]
type = A
movetype = A
physics = N
anim = 6920
velset = 0,0
ctrl = 0

[State 3204,SprPriority]
type =SprPriority
trigger1 = (!time)
value = 3

[State 3204,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = unguardable

[State 3204,VelAdd]
type = VelAdd
trigger1 = (!time)
x = 12
y = -8


[State 3204,Afterimage]
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

[State 3204,NoHitBy]
type=NotHitBy
trigger1=(time>=0)
time=1
value=SCA,SA,HA,NT,ST,HT
ignorehitpause=1

[State 3204,HitBy]
type=HitBy
trigger1=(time>=0)
value=SCA,SP
time=1
ignorehitpause=1

[State 3204,HitOverride]
type=HitOverride
trigger1=(time>=0)
slot=1
time=1
stateno=3207
attr=SCA,SP
ignorehitpause=1

[State 3204, Explod]
type = Explod
trigger1 = (Movecontact)
anim = 6930
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.8,0.8
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3204, EnvColor]
type = EnvColor
trigger1 = (Movecontact)
value = 255,255,255
time = 1

[State 3204,HitDef]
type = HitDef
trigger1 =(!time)
attr = S, SP
animtype  = Hard
damage    = 150,100
getpower  = 0
priority  = 4
guardflag = MA
pausetime = 0,0
sparkxy = -0,0
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
sparkno = -1
guard.sparkno = -1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,-5
guard.velocity = -7
air.velocity = -10,-5
airguard.velocity = -5, -4
fall = 1
envshake.time=20
envshake.freq= 50
envshake.ampl= -2

[State 3204, DestroySelf]
type = DestroySelf
trigger1 = (Movecontact)
trigger2 = (ScreenPos y < -200)

;----------------------------------------------
;Hitoverride Big Bang
[Statedef 3207]
type=S
movetype=A
physics=N

[State 3207,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3207,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3207,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible

[State 3207, Explod]
type = Explod
trigger1 = (!time)
anim = 6930
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.8,0.8
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3207,Velocity]
type=VelSet
trigger1=1
x=0
y=0

[State 3207,Destroy]
type=DestroySelf
trigger1=1
ignorehitpause=1

;-----------------------------------------------
;Push Effect Big Bang
[Statedef 3300]
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

[State 3300,VelSet]
type   = VelSet
trigger1 = (!Time)
x = 15
y = 0

[State 3300,PlayerPush]
type     = PlayerPush
trigger1 = (1)
value    = 1

[State 3300,NotHitBy]
type      = NotHitBy
trigger1  = (1)
time      = 1
value     = SCA

[State 3300,DestroySelf]
type      = DestroySelf
trigger1  = (Time = 20)
;--------------------------------------------
;Final Flash Fly
[Statedef 3500]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3500
ctrl = 0
poweradd = -2000

[State 3500,Superpause]
type=Superpause
trigger1=(!Time)
time=25
darken=0
movetime=25
anim=-1

[State 3500,VelAdd]
type = VelSet
trigger1=(time >=0)
x = 0
y = -5

[State 3500,changestate]
type = changestate
trigger1 =(!animtime)
value = 3501
ctrl = 0
;----------------------------------------------
;Final Flash Charge
[Statedef 3501]
type = S
movetype = I
physics = N
ctrl = 0
anim = 3501
velset = 0,0
poweradd = IfElse(prevstateno = 3500,0,-2000)

[State 3501,Superpause]
type=Superpause
triggerall=(prevstateno!= 3500)
trigger1=(!Time)
time=40
darken=0
movetime=40
anim=-1

[State 3501,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-255,-255,-255,100
time=45

[State 3501,PalFXWiz]
type = PalFX
trigger1 = (Time>40)&&(GameTime%50=0)
time = 10
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 1
color = 0

[State 3501,BGPalFX]
type = BGPalFX
trigger1=((Time>40)&&((GameTime%80)=0))
time = 50
add=0,0,0
sinadd=-80,-80,-80,100

[State 3501,EnvShake]
type	= EnvShake
trigger1= (Time>40)&&(GameTime%5=0)
time	= 5
freq	= 10
ampl	= -4
phase	= 90

[State 3501,Helper]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	= normal
name		= "Push Effect"
id              = 3501
pos		= 0,0
postype         = p1
facing		= 1
stateno	        = 3505
keyctrl	        = 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	= 1
size.yscale	= 1

[State 3501,Explod]
type = Explod
trigger1 = (time >10)&&!NumExplod(3501)
anim = 6008
ID = 3501
pos = 5,-45
postype = p1
facing = 1
vfacing = 1
bindtime = -1
random=0,10
supermove = 1
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority= 0


[State 3501, Explod]
type = Explod
trigger1 = (Time>=0)&&(GameTime%32=0)
anim = 6940
ID =  6940
pos = -20,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
supermove = 1
pausemove = 1
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 3501, Explod]
type = Explod
trigger1 = (Time>=0)&&(GameTime%32=0)
anim = 6940
ID =  6940
pos = 25,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
supermove = 1
pausemove = 1
scale = 0.4,0.4
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 3501,Explod]
type = Explod
trigger1= (time >=0)&&!NumExplod(6960)
anim = 6960
ID =  6960
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
supermove = 1
pausemove = 1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 3501,PlaySnd]
type =PlaySnd
trigger1 = (!Time)
value = 3200,3
volume = 0
channel= 11


[State 3501,PlaySnd]
type =PlaySnd
trigger1 = (Time=50)
value = 1000,1
volume = 0
channel= 12
loop = 1
pan = 0


[State 3501, StopSnd]
type = StopSnd
trigger1 =(command!="holdy")&&(Time>=50)
trigger2 = (Time >= 100)
channel = 11

[State 3501, StopSnd]
type = StopSnd
trigger1 =(command!="holdy")&&(Time>=50)
trigger2 = (Time >= 100)
channel = 12

[State 3501,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdy")&&(Time>=40)
trigger2 = (Time >= 100)
id = 6940


[State 3501,ChangeState]
type = ChangeState
trigger1 =(command!="holdy")&&(Time>=40)
trigger2 = (Time >= 100)
value = 3502
ctrl = 0
;-----------------------------------------------
;Final Flash Trow
[Statedef 3502]
type = S
movetype = I
physics = N
ctrl = 0
anim = 3502
velset = 0,0
sprpriority = 0


[State 3502,EnvShake]
type	= EnvShake
trigger1= (Time>0)&&(GameTime%5=0)
time	= 10
freq	= 10
ampl	= -20
phase	= 90

[State 3502,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-255,-255,-255,90
time=45

[State 3502, Helper]
type = Helper
trigger1 =(!time)
helpertype = normal
name = "FinalFlash"
ID =  3502
stateno = 3503
pos = 0,-45
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove = 1
pausemove = 1

[State 3502,PlaySnd]
type =PlaySnd
trigger1 = (!Time)
value = 3500,1
volume = 0
freqmul = 1
loop = 0
pan = 0

[State 3502,changestate]
type = changestate
trigger1 =(!Animtime)
value = 900
ctrl = 1
;-----------------------------------------
;Helper Final Flash
[Statedef 3503]
type = A
movetype = A
physics = N
anim = 6950
velset = 0,0
sprpriority = 7
ctrl = 0

[State 3503,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = unguardable

[State 3503,NoHitBy]
type=NotHitBy
trigger1=1
time=-1
value=SCA


[State 3503,HitDef]
type = HitDef
trigger1 = (!movecontact)
attr = S, NP
animtype  = Medium
damage    = 300,250
priority = 4,Hit
getpower = 0,0
guardflag = MA
pausetime = 1,1
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound   = -1
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
fall = 1


[State 3503,DestroySelf]
type = DestroySelf
trigger1 =(!Animtime)

;------------------------------------------------------
;Push Effect FinalFlash
[Statedef 3505]
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

[State 3505,VelSet]
type   = VelSet
trigger1 = (!Time)
x = 15
y = 0

[State 3505,PlayerPush]
type     = PlayerPush
trigger1 = (1)
value    = 1

[State 3505,NotHitBy]
type      = NotHitBy
trigger1  = (1)
time      = 1
value     = SCA

[State 3505,DestroySelf]
type      = DestroySelf
trigger1  = (Time = 20)
;----------------------------------------------------------------------
;Final Shine Charge
[Statedef 4100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 4000
sprpriority = 2

[State 4100,Superpause]
type=Superpause
trigger1=(!Time)
time=45
darken=0
movetime=45
anim=-1

[State 4100,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-255,-255,-255,100
time=45

[State 4100,PalFXWiz]
type = PalFX
trigger1 = (Time>50)&&(GameTime%50=0)
time = 10
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 1
color = 0

[State 4100,BGPalFX]
type = BGPalFX
trigger1=((Time>60)&&((GameTime%80)=0))
time = 50
add=0,0,0
sinadd=-80,-80,-80,100

[State 4100,EnvShake]
type	= EnvShake
trigger1= (Time>60)&&(GameTime%5=0)
time	= 5
freq	= 10
ampl	= -4
phase	= 90

[State 4100,Helper]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	= normal
name		= "Push Effect"
id              = 4100
pos		= 0,0
postype         = p1
facing		= 1
stateno	        = 3300
keyctrl	        = 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	= 1
size.yscale	= 1

[State 4100,Explod]
type = Explod
trigger1 =(Time>5)&&!NumExplod(6970)
anim = 6970
ID =  6970
pos = -10,-35
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
supermove = 1
scale = 0.3,0.3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 4100,Explod]
type = Explod
trigger1 = (time >5)&&!NumExplod(6008)
anim = 6008
ID = 6008
pos = 0,-40
postype = p1
facing = 1
vfacing = 1
bindtime = -1
random=0,10
supermove = 1
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority= 0


[State 4100, Explod]
type = Explod
trigger1 = (Time>5)&&(GameTime%30=0)&&(pos y>=0)
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
sprpriority = -3
supermove = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 4100,PlaySnd]
type =PlaySnd
trigger1 = (!Time)
value = 3200,3
volume = 0
channel= 14


[State 4100,PlaySnd]
type =PlaySnd
trigger1 = (Time=50)
value = 1000,1
volume = 0
channel= 15
loop = 1
pan = 0

[State 4100,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdz")&&(Time>=45)
trigger2 = (Time >= 100)
id = 6970


[State 4100,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdz")&&(Time>=45)
trigger2 = (Time >= 100)
id = 6008

[State 4100,RemoveExplod]
type = RemoveExplod
trigger1 =(command!="holdz")&&(Time>=45)
trigger2 = (Time >= 100)
id = 6018

[State 4100, StopSnd]
type = StopSnd
trigger1 =(command!="holdz")&&(Time>=50)
trigger2 = (Time >= 100)
channel = 14

[State 4100, StopSnd]
type = StopSnd
trigger1 =(command!="holdz")&&(Time>=50)
trigger2 = (Time >= 100)
channel = 15


[State 4100,ChangeState]
type = ChangeState
trigger1 =(command!="holdz")&&(Time>=45)
trigger2 = (Time >= 100)
value = 4101
ctrl = 1
;----------------------------------------------------------
;Final Shine trow
[Statedef 4101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4001
sprpriority = 0

[State 4101,EnvShake]
type	= EnvShake
trigger1= (Time>0)&&(GameTime%5=0)
time	= 10
freq	= 10
ampl	= -20
phase	= 90

[State 4101,BgPalFx]
type=BgPalFx
trigger1=(!Time)
add=0,0,0
sinadd=-255,-255,-255,100
time=45

[State 4101,Explod]
type = Explod
trigger1 =(Animelem=2)&&!NumExplod(6980)
anim = 6970
ID =  6980
pos = 30,-50
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
supermove = 1
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 4101,Helper]
type = Helper
trigger1 = (Animelem=2)&&(!NumHelper(4101))
helpertype = normal
name = "Final Shine"
ID =4101
stateno = 4102
pos = 30,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 0.3
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999


[State 4101,PlaySnd]
type =PlaySnd
trigger1 = (!Time)
value = 3500,1
volume = 0
freqmul = 1
loop = 0
pan = 0

[State 3201,ScreenBound]
type = ScreenBound
trigger1 =  p2movetype = H || (BackEdgeBodyDist < -1)
movecamera = 0,0
value = 0


[State 3201,changestate]
type = changestate
trigger1 =  IfElse(BackEdgeBodydist >= -5,0,100)
trigger1 = time >= 80
value = 100
ctrl = 1


[State 4101,ChangeState]
type = ChangeState
trigger1 = (!Animtime)
value = 0
ctrl = 1
;---------------------------------------
;Helper Final Shine
[Statedef 4102]
type = A
movetype = A
physics = N
anim = 6980
velset = 0,0
sprpriority = 7
ctrl = 0

[State 4102,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  =NoShadow
flag2 = unguardable


[State 4102,NoHitBy]
type=NotHitBy
trigger1=1
time=-1
value=SCA


[State 4102,HitDef]
type = HitDef
trigger1 = (!movecontact)
attr = S, SP
animtype  = Medium
damage    = 300,250
priority = 7,Hit
getpower = 0,0
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 13
ground.velocity = -6,-2
air.velocity = -6,-2
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0


[State 4102,DestroySelf]
type = DestroySelf
trigger1 = (!Animtime)
;--------------------------------------
