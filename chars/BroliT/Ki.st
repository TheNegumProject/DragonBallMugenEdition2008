;_-Broli's ST3-_______________
;-----------------------------
;Author:Toad__________________
;homepage:www.zgteam.com/toad/
;-----------------------------
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
;states 300-331
;---------------------------------------------------------------------------
;Power Up
[statedef 300]
type = S
movetype = I
physics = N
anim = 300
velset = 0,0
ctrl = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = 1
value = 6

[State 300, scream]
type = PlaySnd
trigger1 = (Time = 15)
value = S1,3
volume = 15
channel = 11

[state 300, end scream]
type = stopsnd
channel = 11
trigger1 = ((command !="holdc")||(command !="holdz"))

[State 300, scream]
type = PlaySnd
trigger1 = (Power = [1995,2000])
value = S1,3
volume = 15
channel = 20

[state 300, end scream]
type = stopsnd
channel = 20
trigger1 = ((command !="holdc")||(command !="holdz"))

[State 300, charge]
type = PlaySnd
trigger1 = Time = 15
value = S1,4
loop = 1
volume = 1
channel = 10

[state 300, end charge]
type = stopsnd
channel = 10
trigger1 = ((command !="holdc")||(command !="holdz"))

[State 300, charge]
type = PlaySnd
trigger1 = Time = 15
value = S7,1
loop = 1
volume = 2
channel = 12
removeongethit = 1

[State 300, charge]
type = PlaySnd
trigger1 = ((command !="holdc")||(command !="holdz"))
value = S5,23
volume = 1
channel = 5

[state 300, end charge]
type = stopsnd
channel = 12
trigger1 = ((command !="holdc")||(command !="holdz"))

[State 300, Aura]
type = explod
trigger1 = time = 15
anim = 6040
ID = 6040
pos = 0,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove aura]
type = RemoveExplod
trigger1 = ((command !="holdc")||(command !="holdz"))
ID = 6040
ignorehitpause = 0
persistent = 1

[State 300, Aura]
type = explod
trigger1 = ((command !="holdc")||(command !="holdz"))
anim = 6046
ID = 6046
pos = 0,0
sprpriority = 5
removetime = 6
removeongethit = 1
bindtime = -1

[state 300, dust1]
type = explod
trigger1 = time = 55
anim = 6020
ID = 6020
pos = -30,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = ((command !="holdc")||(command !="holdz"))
ID = 6020
ignorehitpause = 0
persistent = 1

[state 300, dust1]
type = explod
trigger1 = time = 15
anim = 6025
ID = 6025
pos = 30,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = ((command !="holdc")||(command !="holdz"))
ID = 6025
ignorehitpause = 0
persistent = 1

[State 300, dust2]
type = explod
trigger1 = (power= [1995,2000])
anim = 6270
pos = -30, 5
id = 6270
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999

[State 300, dust2]
type = explod
trigger1 = (power= [1995,2000])
anim = 6275
pos = 30, 5
id = 6275
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999

[State 300, dust2]
type = explod
trigger1 = (time = 15)&&(power>2000)
anim = 6270
pos = -30, 5
id = 6270
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999

[State 300, dust2]
type = explod
trigger1 = (time = 15)&&(power>2000)
anim = 6275
pos = 30, 5
id = 6275
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999

[state 300, dust3]
type = explod
trigger1 = time = 15
anim = 6120
ID = 6120
pos = 0,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove dust3]
type = RemoveExplod
trigger1 = ((command !="holdc")||(command !="holdz"))
ID = 6120
ignorehitpause = 0
persistent = 1

[state 300, grey ring]
type = explod 
trigger1 = time =15
anim = 6060
Id = 6060
pos = 4, -63
sprpriority = 10000000000
scale = 3,3
ontop =1
bindtime = -1

[State 300, dust2]
type = explod
trigger1 = time = 15
anim = 6135
pos = -30, 5
id = 6135
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1

[State 300, dust2]
type = explod
trigger1 = time = 15
anim = 6130
pos = 30, 5
id = 6130
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1

[state 300, lightning1]
type = helper
trigger1 = (Time > 100) && ((GameTime%99) = 0)
helpertype = normal
name = "rock"
ID = 302
postype = p1
stateno = 302
keyctrl = 0
ownpal = 1
bindtime = -1
size.xscale = 2
size.yscale = 1

[state 300, lightning1]
type = helper
trigger1 = (Power>2000)&& (Time > 40) && ((GameTime%99) = 0)
helpertype = normal
name = "lightning 2"
ID = 304
postype = p1
stateno = 304
keyctrl = 0
ownpal = 1
bindtime = -1
size.xscale = 2
size.yscale = 1

[state 300, lightning2]
type = helper
trigger1 = (Power>2000) && (Time > 130) && ((GameTime%120) = 0)
helpertype = normal
name = "rock1"
ID = 305
postype = p1
stateno = 305
keyctrl = 0
ownpal = 1
bindtime = -1
size.xscale = 2
size.yscale = 1

[state 300, lightning2]
type = helper
trigger1 = (Time > 180) && ((GameTime%120) = 0)
helpertype = normal
name = "rock"
ID = 303
postype = p1
stateno = 303
keyctrl = 0
ownpal = 1
bindtime = -1
size.xscale = 2
size.yscale = 1

[state 300, rock1]
type = helper
trigger1 = (Time > 30) && ((GameTime%20) = 0)
helpertype = normal
name = "rock"
ID = 301
postype = p1
stateno = 301
keyctrl = 0
ownpal = 1
bindtime = -1

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(time >15)
time = 4
freq = 300
ampl = -3

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(power>2000)
trigger2 = (time = 15)
time = 3
freq = 300
ampl = -12

[State 1300, Pause]
type = Pause
trigger1 = (power = [1800,2200])&&((GameTime%1) = 0)
time = 1
movetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =(Power > 2000) && (Anim != 415)
value = 415

[State 0, Bigger Aura]
type  = Helper
trigger1 = (Power >2000)&&(anim !=306)
helpertype = normal
ID = 306
pos = 0,0
stateno = 306
ownpal  = 1
size.xscale = 1.3
size.yscale = 1.3
ignorehitpause = 0
persistent = 0

[state 300, change]
type = changestate
trigger1 =(command != "holdc") || (command != "holdz")
value = 0
ctrl = 1
;-------------------------------------------------------
;Rock1
[Statedef 301]
type = S
movetype = I
physics = N
anim =6100
ctrl = 0
sprpriority = 10000000000000000000000000000000

[State 300, charge]
type = PlaySnd
trigger1 = Time = 0
value = S5,24
volume = 1
channel = 1

[State 301, VarRandom]
type = VarRandom
trigger1 = !Time
v = 0
range = -200,200

[State 301, PosSet]
type = PosSet
trigger1 = !Time
x = (Var(0))
y = 0

[State 301, VelSet]
type = VelSet
trigger1 = Time = 1
x = (ifelse(random <= 10,0,0))
y = (ifelse(random <= 50,0,0))

[State 301, VelAdd]
type = VelAdd
trigger1 = time = 4
y = -3

[State 301, DestroySelf]
type = DestroySelf
trigger1 = (Pos Y < -300)||(!AnimTime)
;-------------------------------------------------------
;lightning1
[Statedef 302]
type = S
movetype = I
physics = N
anim =6170
ctrl = 0
sprpriority = 10000000000000000000000000000000

[State 303, Lightning3]
type = PlaySnd
trigger1 = (!animtime)
value = S6,3
volume = 3
channel = 1

[State 300,shake]
type = EnvShake
trigger1 = time = 2
time = 6
freq = 60
ampl = -15

[State 303, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 302, VarRandom]
type = VarRandom
trigger1 = !Time
v = 0
range = -200,200

[State 302, PosSet]
type = PosSet
trigger1 = !Time
x = (Var(0))
y = -260

[State 302, DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
;-------------------------------------------------------
;lightning2
[Statedef 303]
type = S
movetype = I
physics = N
anim =6180
ctrl = 0
sprpriority = 10000000000000000000000000000000

[State 303, Lightning2]
type = PlaySnd
trigger1 = (!animtime)
value = S6,2
volume = 3
channel = 1

[State 300,shake]
type = EnvShake
trigger1 = time = 2
time = 6
freq = 40
ampl = -15

[State 302, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 302, VarRandom]
type = VarRandom
trigger1 = !Time
v = 0
range = -300,300

[State 303, PosSet]
type = PosSet
trigger1 = !Time
x = (Var(0))
y = -260

[State 303, DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
;-------------------------------------------------------
;lightning1
[Statedef 304]
type = S
movetype = I
physics = N
anim =6170
ctrl = 0
sprpriority = 10000000000000000000000000000000

[State 303, Lightning3]
type = PlaySnd
trigger1 = (!animtime)
value = S6,3
volume = 3
channel = 1

[State 300,shake]
type = EnvShake
trigger1 = time = 2
time = 6
freq = 60
ampl = -15

[State 303, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 302, VarRandom]
type = VarRandom
trigger1 = !Time
v = 0
range = -200,200

[State 0, ]
type = AllPalFX
trigger1 = time = 0
time =10 
add	= 10,10,10
mul	= 256,256,256
sinadd = -10,-10,-10,10
invertall = 0
color = 30

[State 302, PosSet]
type = PosSet
trigger1 = !Time
x = (Var(0))
y = -260

[State 302, DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
;-------------------------------------------------------
;lightning2
[Statedef 305]
type = S
movetype = I
physics = N
anim =6180
ctrl = 0
sprpriority = 10000000000000000000000000000000

[State 303, Lightning2]
type = PlaySnd
trigger1 = (!animtime)
value = S6,2
volume = 3
channel = 1

[State 0, ]
type = AllPalFX
trigger1 = time = 0
time =10 
add	= 10,10,10
mul	= 256,256,256
sinadd = -10,-10,-10,10
invertall = 0
color = 30

[State 300,shake]
type = EnvShake
trigger1 = time = 2
time = 6
freq = 40
ampl = -15

[State 302, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 302, VarRandom]
type = VarRandom
trigger1 = !Time
v = 0
range = -300,300

[State 303, PosSet]
type = PosSet
trigger1 = !Time
x = (Var(0))
y = -260

[State 303, DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
;-------------------------------------------------------
;Bigger Aura
[Statedef 306]
type = S
movetype = I
physics = N
anim = 7040
ctrl = 0
poweradd = 0
juggle = 0
sprpriority = 2

[State 0, Bind]
type = BindToParent
trigger1 = 1
time = -2
pos = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Destroy]
type = DestroySelf
trigger1 = (command != "holdc") || (command != "holdz")
;-------------------------------------------------------
;ball
[statedef 310]
type = S
physics = S
movetype = A
anim = 310
velset = 0,0
ctrl = 0

[State 310, ballchargesnd]
type = PlaySnd
trigger1 = Time = 0
value = S1,1
channel = 1

[State 310, ball shoot]
type = PlaySnd
trigger1 = animelem = 4
value = S1,2
channel = 2

[state 310, ring]
type = explod
trigger1 = time = 5
anim = 6055
pos = 29, -47
id = 6055
sprpriority = 1111
ontop = 1
bindtime = -1
removetime = -2
supermove = -1
pausemovetime = -1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 310, ball ]
type = explod
trigger1 = time = 5
anim = 6070
pos = 29, -47
id = 6070
sprpriority = 1111
ontop = 1
bindtime = 1
removetime = 70
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
scale = .5,.5

[state 310, ball]
type = helper
trigger1 = animelem=4
helpertype = normal
name = "ball"
ID = 311
pos = 29,-47
postype = p1
stateno = 311
keyctrl = 0
ownpal = 1

[state 310, change]
type = changestate
trigger1 =(!animtime)
value = 0
ctrl = 1
;------------------------------------------------
;ball
[statedef 311]
anim = 6075
type = A
movetype = A
physics = N
sprpriority = 4

[State 7004, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
PalBright =  40, 40,  0
PalContrast =  70, 70, 40
PalAdd = -10,-10,-10
PalMul = .80,.80,.50
TimeGap = 1
FrameGap = 1
Trans = Add
time = 10

[State 311, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 311,nohitby]
type = NotHitBy
trigger1 = 1
value = SCA

[State 311, Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State 311, VelSet]
type = VelSet
trigger1 = (!Time)
x = 6

[State 311, VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -8)
x = -0.6

[State 311, VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 8)
x = 0.6

[State 311, VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y > Pos Y) && (Vel Y < 8)
y = 0.6

[State 311, VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y <= Pos Y) && (Vel Y > -8)
y = -0.6

[state 331, hitdef]
type = hitdef
trigger1 = 1
numhits = -1
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
damage = 100
pausetime =20
guard.pausetime = 10 
sparkxy = 34,0
ground.type = High
air.type = High
ground.slidetime = 10
guard.slidetime = 5
ground.hittime = 10
guard.hittime = 5
air.hittime = 20
air.fall = 1
superpause= 40
sparkno= -1
guard.sparkno = -1
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1 
hitsound   = s7,3
guardsound = s7,3

[State 310, explosion]
Type = Explod
Trigger1 =(MoveContact) || (Time > 200)
Anim = 6150
ID = 6150
Pos = 0, -50
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3000000000000000000000
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[state 311, destroy]
type = destroyself
trigger1 = (MoveContact) || (Time > 200)
ignorehitpause = 1
;------------------------------------------------
;kishot
[statedef 320]
type = S
physics = S
movetype = A
anim = 321
ctrl = 0
poweradd = -100

[State 320, ball shoot]
type = PlaySnd
trigger1 = time = 20
value = S1,2
channel = 1

[state 320, ring]
type = explod
trigger1 = time = 0
anim = 6055
pos = 44, -83
id = 6055
sprpriority = 1111
ontop = 1
bindtime = -1

[State 0, ]
type = Projectile
trigger1 = time = 3
ProjID = 6070 
projanim = 6070
projscale = .5,.5
projremovetime = 17
velocity = 0,0
projhits = 0
projpriority = 20000000000
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 44,-83
postype = p1

[state 320, change]
type = changestate
trigger1 =time = 20
value = 321
ctrl = 1
;----------------------------------------
;kishot
[statedef 321]
type = S
physics = S
movetype = A
anim = 322
ctrl = 0
velset = 0, 0

[state 320, ring]
type = explod
trigger1 = time = 0
anim = 6210
pos = 44, -83
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1

[state 321, blast]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blast"
ID = 322
pos = 44,-83
postype = p1
stateno = 322
keyctrl = 0
ownpal = 1
scale = .5,.5

[State 321,change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------
;blast
[statedef 322]
anim = 6080
type = S
movetype = A
physics = S
ctrl = 0

[State 7004, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
PalBright =  40, 40,  0
PalContrast =  70, 70, 40
PalAdd = -10,-10,-10
PalMul = .80,.80,.50
TimeGap = 1
FrameGap = 2
Trans = Add
time = 10

[State 321, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 321, hitdef]
type = hitdef
trigger1 = var(2) = 0
numhits = 1
attr = S, HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
damage = 40,20
pausetime = 5
guard.pausetime = 2
sparkno = S6140
sparkxy = 0,0
priority = 8, Hit
guard.sparkno = S6140
ground.type = Hard
air.type = Hard
ground.slidetime = 20
guard.slidetime = 10
ground.hittime = 27
guard.hittime = 8
air.hittime = 27
ground.velocity = -7
guard.velocity = -2
air.velocity = -7,-0.2
airguard.velocity = -2,-0.1
getpower = 0
envshake.time   = 6
envshake.freq   = 90
envshake.ampl   = -2
envshake.phase  = 1
hitsound   = s7,2
guardsound = s7,2

[State 321,velset]
type = VelSet
trigger1 = 1
x = 12

[State 321,nohitby]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 321,hitby]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[state 321, destroy]
type = destroyself
trigger1 = screenpos x != [-10,330]
trigger2 = movecontact = 1
ignorehitpause = 1
;--------------------------------
;double kishot
;kishot
[statedef 325]
type = S
physics = S
movetype = A
anim = 321
ctrl = 0
poweradd = -300

[State 320, ball shoot]
type = PlaySnd
trigger1 = time = 20
value = S1,2
channel = 1

[state 325, ring]
type = explod
trigger1 = time = 0
anim = 6055
pos = 44, -83
id = 6055
sprpriority = 1111
ontop = 1
bindtime = -1

[State 325, ]
type = Projectile
trigger1 = time = 3
ProjID = 6070 
projanim = 6070
projscale = .5,.5
projremovetime = 17
velocity = 0,0
projhits = 0
projpriority = 20000000000
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 44,-83
postype = p1

[state 325, change]
type = changestate
trigger1 =time = 20
value = 326
ctrl = 0
;----------------------------------------
;kishot
[statedef 326]
type = S
physics = S
movetype = A
anim = 322
ctrl = 0
velset = 0, 0

[state 320, ring]
type = explod
trigger1 = time = 0
anim = 6210
pos = 44, -83
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1

[state 321, blast]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blast"
ID = 322
pos = 44,-83
postype = p1
stateno = 322
keyctrl = 0
ownpal = 1
scale = .5,.5

[State 326,change]
type = ChangeState
trigger1 = time = 10
value = 327
ctrl = 0
;---------------------------------------
;2nd shot
[statedef 327]
type = S
physics = S
movetype = A
anim = 320
ctrl = 0

[State 325, ]
type = Projectile
trigger1 = time = 3
ProjID = 6071 
projanim = 6071
projscale = .5,.5
projremovetime = 7
velocity = 0,0
projhits = 0
projpriority = 20000000000
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 44,-83
postype = p1

[State 320, ball shoot]
type = PlaySnd
trigger1 = time = 10
value = S1,2
channel = 1

[state 320, ring]
type = explod
trigger1 = time = 10
anim = 6210
pos = 44, -83
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1


[state 328, blast]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blast"
ID = 322
pos = 44,-83
postype = p1
stateno = 322
keyctrl = 0
ownpal = 1
scale = .5,.5

[State 328,change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------
;kisheild
[statedef 330]
type = S
physics = S
movetype = A
anim = 416
ctrl = 0
SprPriority = 5
velset = 0, 0

[State 330, sheild]
type = PlaySnd
trigger1 = time = 5
value = S1,6
channel = 1

[State 330, sheild]
type = PlaySnd
trigger1 = time = 5
value = S1,8
channel = 2

[state 330, endsheild]
type = stopsnd
trigger1 = time = 26
channel = 1

[state 330, endsheild]
type = stopsnd
trigger1 = time = 26
channel =2

[State 215, Dust]
Type = Explod
Trigger1 = time = 5
Anim = 6270
ID = 6270
Pos = -37, 0
PosType = P1
Facing = 1
BindTime = 1
PauseMoveTime = 10
SprPriority = 4
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[State 215, Dust]
Type = Explod
Trigger1 = time = 5
Anim = 6275
ID = 6275
Pos = 44, 0
PosType = P1
Facing = 1
BindTime = 1
PauseMoveTime = 10
SprPriority = 4
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[state 330, sheild]
type = helper
trigger1 = time = 5
helpertype = normal
name = "sheild"
ID = 331
postype = p1
stateno = 331
SprPriority = 3
keyctrl = 0
ownpal = 1

[State 330,change]
type = ChangeState
trigger1 = time = 26
value = 0
ctrl = 1
;---------------------------------------------
;sheild
[statedef 331]
anim = 6220
type = S
movetype = A
physics = S
ctrl = 0
poweradd = -200

[State 321, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 331, hitdef]
type = hitdef
trigger1 = var(2) = 0
numhits = -1
attr = S, HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
damage = 15,8
pausetime = 5
guard.pausetime = 2
sparkno = S6150
sparkxy = 0,0
priority = 8, Hit
fall=1
guard.sparkno = S6150
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -50
air.velocity = -20, 15
sparkno= -1
guard.sparkno = S6150
getpower = 0
envshake.time   = 3
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
hitsound   = s7,2
guardsound = s7,2

[State 331, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 2,-51

[State 321,nohitby]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 321,hitby]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[state 321, destroy]
type = destroyself
trigger1 = (Animtime = 0)
ignorehitpause = 1
;--------------------------------------------------------------
;triple kishot
[statedef 350]
type = S
physics = S
movetype = A
anim = 321
ctrl = 0
poweradd = -400

[State 320, ball shoot]
type = PlaySnd
trigger1 = time = 20
value = S1,2
channel = 1

[state 325, ring]
type = explod
trigger1 = time = 0
anim = 6055
pos = 44, -83
id = 6055
sprpriority = 1111
ontop = 1
bindtime = -1

[State 325, ]
type = Projectile
trigger1 = time = 3
ProjID = 6070 
projanim = 6070
projscale = .5,.5
projremovetime = 17
velocity = 0,0
projhits = 0
projpriority = 20000000000
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 44,-83
postype = p1

[state 325, change]
type = changestate
trigger1 =time = 20
value = 351
ctrl = 0
;----------------------------------------
;kishot
[statedef 351]
type = S
physics = S
movetype = A
anim = 322
ctrl = 0
velset = 0, 0

[state 320, ring]
type = explod
trigger1 = time = 0
anim = 6210
pos = 44, -83
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1

[state 321, blast]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blast"
ID = 322
pos = 44,-83
postype = p1
stateno = 322
keyctrl = 0
ownpal = 1
scale = .5,.5

[State 326,change]
type = ChangeState
trigger1 = time = 10
value = 352
ctrl = 0
;---------------------------------------
;2nd shot
[statedef 352]
type = S
physics = S
movetype = A
anim = 320
ctrl = 0

[State 325, ]
type = Projectile
trigger1 = time = 3
ProjID = 6071 
projanim = 6071
projscale = .5,.5
projremovetime = 7
velocity = 0,0
projhits = 0
projpriority = 20000000000
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 44,-83
postype = p1

[State 320, ball shoot]
type = PlaySnd
trigger1 = time = 10
value = S1,2
channel = 1

[state 320, ring]
type = explod
trigger1 = time = 10
anim = 6210
pos = 44, -83
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1


[state 328, blast]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blast"
ID = 322
pos = 44,-83
postype = p1
stateno = 322
keyctrl = 0
ownpal = 1
scale = .5,.5

[State 328,change]
type = ChangeState
trigger1 = time = 20
value = 353
ctrl = 1
;---------------------------------------
;3rd shot
[statedef 353]
type = S
physics = S
movetype = A
anim = 320
ctrl = 0

[State 325, ]
type = Projectile
trigger1 = time = 3
ProjID = 6071 
projanim = 6071
projscale = .5,.5
projremovetime = 7
velocity = 0,0
projhits = 0
projpriority = 20000000000
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 44,-83
postype = p1

[State 320, ball shoot]
type = PlaySnd
trigger1 = time = 10
value = S1,2
channel = 1

[state 320, ring]
type = explod
trigger1 = time = 10
anim = 6210
pos = 44, -83
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1


[state 328, blast]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blast"
ID = 322
pos = 44,-83
postype = p1
stateno = 322
keyctrl = 0
ownpal = 1
scale = .5,.5

[State 328,change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
[Statedef -2]

[State 0, ]
type = StopSnd
trigger1 = ((StateNo != 192) && (StateNo != 300) && (StateNo != 1200) && (stateno !=1300))
channel = 10

[State 0, ]
type = StopSnd
trigger1 = ((StateNo != 192) && (StateNo != 300) && (StateNo != 1200) && (stateno !=1300))
channel = 11

[State 0, ]
type = StopSnd
trigger1 = ((StateNo != 192) && (StateNo != 300) && (StateNo != 1200) && (stateno !=1300))
channel = 12

[State 0, ]
type = StopSnd
trigger1 = (StateNo != 300)
channel = 20
