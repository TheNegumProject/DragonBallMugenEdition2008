;_-Broli's ST2-_______________
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
;states 1000-1230
;---------------------------------------------------------------------------
;Ball throw LV1
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= -1000
ctrl = 0
anim = 340
sprpriority = 2

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(time >20)
time = 4
freq = 80
ampl = -3

[State 1000, Pause]
type = Pause
trigger1 = (Time = [0,20])&&((GameTime%1) = 0)
time = 1
movetime = 0

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,10
channel = 2
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 20
value = S1,1
channel = 1
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = Explod
trigger1 = time = 20 
anim = 6070
ID = 6070
pos = -18,-57
postype = p1
facing = 1
bindtime = 51
removetime = 51
supermove = 999
pausemovetime = 999
scale = .5, .5
sprpriority = 10
removeongethit = 1

[State 0, ]
type = SuperPause
trigger1 = time =20
time = 40
anim = -1
sound = -1
pos = 0,0
movetime = 40
darken = 0
poweradd = 0
unhittable = 1

[State 0, ]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "ring"
ID = 6055
pos = -18,-57
postype = p1
facing = 1
stateno = 1002
keyctrl = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 1000, NextLV1]
type = ChangeState
trigger1 = time = 70
value = 1001
ctrl = 1
;--------------------------------------------------------------------
[Statedef 1001]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 351
sprpriority = 2

[State 340, ball shoot]
type = PlaySnd
trigger1 = animelem = 3
value = S1,2
channel = 2

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 6075
ID = 6075
pos = -18,-57
postype = p1
facing = 1
bindtime = 16
removetime = 16
scale = .5, .5
sprpriority = 10
removeongethit = 1

[State 0, ]
type = ModifyExplod
trigger1 = time = 8
anim = 6075
pos = -9,-74
postype = p1
facing = 1
bindtime = 16
removetime = 16
scale = .5,.5
sprpriority = 10
removeongethit = 0
ignorehitpause = 0
persistent = 1

[state 340, ball]
type = helper
trigger1 = animelem = 3
helpertype = normal
name = "ball"
ID = 1003
pos = 60,-60
postype = p1
stateno = 341
keyctrl = 0
ownpal = 1

[State 1001,end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------
[statedef 1002]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 6055
sprpriority = 5

[State 0, AfterImage]
type = AfterImage
trigger1 = (!Time)
time = 20
timegap = 3
framegap = 4
length = 6
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add

[State 0, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 0, destroy]
type = destroyself
trigger1 = time = 50
ignorehitpause = 1
;--------------------------------------------------------------------
;ball
[statedef 1003]
anim = 6075
type = A
movetype = A
physics = N

[State 1003, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright =  40, 40,  0
PalContrast =  70, 70, 40
PalAdd = -10,-10,-10
PalMul = .80,.80,.50
TimeGap = 1
FrameGap = 1
Trans = Add
time = 10

[State 1003, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1003, velset]
type = velset
trigger1 = (!time)
x = 20
y = 0

[State 1003,nohitby]
type = NotHitBy
trigger1 = 1
value = SCA

[state 1003, hitdef]
type = hitdef
trigger1 = 1
numhits = 1
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
damage = 120, 55
pausetime =20
guard.pausetime = 10 
sparkxy = 60,-60
ground.type = Hard
air.type = Hard
ground.slidetime = 30
guard.slidetime = 15
ground.hittime = 10
guard.hittime = 5
air.hittime = 20
air.fall = 1
fall = 1
fall.recover = 0
ground.velocity = -30,2
guard.velocity = -10 
air.velocity = -30
airguard.velocity = -10
ground.cornerpush.veloff = 0
superpause= 40
sparkno= -1
guard.sparkno = -1 
envshake.time   = 15
envshake.freq   = 200
envshake.ampl   = -4
envshake.phase  = 1 
hitsound   = s7,4
guardsound = s7,4

[State1003, explosion]
Type = Explod
Trigger1 = MoveContact
Anim = 6150
ID = 6150
Pos = 0, -60
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3000000000000000000000
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[state 1003, destroy]
type = destroyself
trigger1 = (MoveContact =1)&&(screenpos x != [-10,330])
ignorehitpause = 1
;---------------------------------------------------------------------------
;Ball Hit LV1
[Statedef 1100]
type    = S
movetype= A
physics = S
poweradd= -1000
ctrl = 0
anim = 340
sprpriority = 2

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(time >20)
time = 4
freq = 80
ampl = -3

[State 1000, Pause]
type = Pause
trigger1 = (Time = [0,20])&&((GameTime%1) = 0)
time = 1
movetime = 0

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,10
channel = 2
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 20
value = S1,1
channel = 1
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = Explod
trigger1 = time = 20 
anim = 6200
ID = 6200
pos = 45,-62
postype = p1
facing = 1
bindtime = 61
removetime = 61
supermove = 999
pausemovetime = 999
scale = 1, 1
sprpriority = 10
removeongethit = 1

[State 0, ]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "ring"
ID = 6055
pos = 45,-62
postype = p1
facing = 1
stateno = 1102
keyctrl = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, ]
type = SuperPause
trigger1 = time =20
time = 50
anim = -1
sound = -1
pos = 0,0
movetime = 50
darken = 0
poweradd = 0
unhittable = 1

[State 1000, NextLV1]
type = ChangeState
trigger1 = time = 80
value = 1101
ctrl = 1
;--------------------------------------------------------------------
[Statedef 1101]
type = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 370
sprpriority = 2

[State 340, ball shoot]
type = PlaySnd
trigger1 = animelem = 3
value = S1,2
channel = 2

[state 320, ring]
type = explod
trigger1 = time = 14
anim = 6210
pos = 65, -70
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1
scale = 1.5,1.5

[state 1200, ball]
type = helper
trigger1 = time = 0
helpertype = normal
name = "ball3"
ID = 1103
pos = 45,-62
postype = p1
stateno = 1103
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1001,end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------
[statedef 1102]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 6055
sprpriority = 5

[State 0, AfterImage]
type = AfterImage
trigger1 = (!Time)
time = 20
timegap = 2
framegap = 3
length = 2
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add

[State 0, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 0, destroy]
type = destroyself
trigger1 = time = 50
ignorehitpause = 1
;--------------------------------------------------------------------
;ball
[statedef 1103]
anim = 6250
type = S
movetype = A
physics = N
sprpriority = 100000
removetime = -1
supermove = -1
pausemovetime = -1

[State 341, AfterImage]
type = AfterImage
trigger1 = time = 14
length = 20
PalBright =  40, 40,  0
PalContrast =  70, 70, 40
PalAdd = -10,-10,-10
PalMul = .80,.80,.50
TimeGap = 1
FrameGap = 1
Trans = Add
time = 10

[State 341, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 341, velset]
type = velset
trigger1 = time = 14
x = 30
y = 0

[State 341,nohitby]
type = NotHitBy
trigger1 = 1
value = SCA

[state 341, hitdef]
type = hitdef
trigger1 = time > 14
numhits = -1
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
damage = 200,65
pausetime =20
guard.pausetime = 10 
sparkxy = 45,0
ground.type = Hard
air.type = Hard
ground.slidetime = 40
guard.slidetime = 20
ground.hittime = 10
guard.hittime = 5
air.hittime = 20
air.fall = 1
fall = 1
fall.recover = 0
ground.velocity = -40
guard.velocity = -15 
air.velocity = -40
airguard.velocity = -15
ground.cornerpush.veloff = 0
superpause= 40
sparkno= -1
guard.sparkno = -1 
envshake.time   = 15
envshake.freq   = 200
envshake.ampl   = -4
envshake.phase  = 1
hitsound   = s7,4
guardsound = s7,4

[State 341, explosion]
Type = Explod
Trigger1 = MoveContact
Anim = 6150
ID = 6150
Pos = 0, -60
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3000000000000000000000
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[state 1003, destroy]
type = destroyself
trigger1 = MoveContact
ignorehitpause = 1
;----------------------------------------------------------------
;Ball throw LV2
[statedef 1200]
type    = S
movetype= A
physics = S
poweradd= -2000
ctrl = 0
anim = 302
sprpriority = 2

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(time >50)
time = 4
freq = 300
ampl = -8

[State 1000, Pause]
type = Pause
trigger1 = (Time = [0,20])&&((GameTime%1) = 0)
time = 1
movetime = 0

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,10
channel = 1
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = SuperPause
trigger1 = time =20
time = 150
anim = -1
sound = -1
pos = 0,0
movetime = 150
darken = 0
poweradd = 0
unhittable = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S1,9
channel = 2
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 116
value = S1,1
channel = 12
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 65
value = S1,4
channel = 10
loop = 1
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 206
value = S5,23
channel = 6
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = StopSnd
trigger1 = time = 206
channel = 4
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 110
value = S2,3
channel = 11
loop = 0
ignorehitpause = 0
persistent = 1

[State 300, Aura]
type = explod
trigger1 = time = 48
anim = 6040
ID = 6040
pos = 0,0
sprpriority = 5
removetime = -1
supermove = 999
pausemovetime = 999
removeongethit = 1
bindtime = -1

[State 300, remove aura]
type = RemoveExplod
trigger1 = time = 206
ID = 6040
ignorehitpause = 0
persistent = 1

[State 0, ]
type = ChangeAnim
trigger1 = animtime = 0
value = 341

[State 0, ]
type = Explod
trigger1 = time = 116 
anim = 6070
ID = 6070
pos = -18,-57
postype = p1
facing = 1
bindtime = 91
removetime = 91
supermove = 999
pausemovetime = 999
scale = .5, .5
sprpriority = 10
removeongethit = 1

[State 300, Aura]
type = explod
trigger1 = time = 206
anim = 6046
ID = 6046
pos = 0,0
sprpriority = 5
removetime = 6
removeongethit = 1
bindtime = -1

[state 300, dust1]
type = explod
trigger1 = time = 50
anim = 6020
ID = 6020
pos = -30,0
sprpriority = 5
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = time = 206
ID = 6020
ignorehitpause = 0
persistent = 1

[state 300, dust1]
type = explod
trigger1 = time = 50
anim = 6025
ID = 6025
pos = 30,0
sprpriority = 5
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = time = 206
ID = 6025
ignorehitpause = 0
persistent = 1

[state 300, dust3]
type = explod
trigger1 = time = 20
anim = 6120
ID = 6120
pos = 0,0
sprpriority = 5
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
bindtime = -1

[State 300, remove dust3]
type = RemoveExplod
trigger1 = time = 206
ID = 6120
ignorehitpause = 0
persistent = 1

[State 300, dust2]
type = explod
trigger1 = time = 48
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
trigger1 = time = 48
anim = 6275
pos = 30, 5
id = 6275
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Helper
trigger1 = time = 116
helpertype = normal
name = "ring"
ID = 6055
pos = -18,-57
postype = p1
facing = 1
stateno = 1202
keyctrl = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1.5
size.yscale = 1.5

[State 1000, NextLV1]
type = ChangeState
trigger1 = time = 206
value = 1201
ctrl = 1
;--------------------------------------------------------------------
[Statedef 1201]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 351
sprpriority = 2

[State 1201, ball shoot]
type = PlaySnd
trigger1 = animelem = 3
value = S1,2
channel = 2

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 6075
ID = 6075
pos = -18,-57
postype = p1
facing = 1
bindtime = 16
removetime = 16
scale = .5, .5
sprpriority = 10
removeongethit = 1

[State 1201, ]
type = ModifyExplod
trigger1 = time = 8
anim = 6075
pos = -9,-74
postype = p1
facing = 1
bindtime = 16
removetime = 16
scale = .5,.5
sprpriority = 10
removeongethit = 0
ignorehitpause = 0
persistent = 1

[state 1201, ball]
type = helper
trigger1 = animelem = 3
helpertype = normal
name = "ball"
ID = 1203
pos = 60,-60
postype = p1
stateno = 1203
keyctrl = 0
ownpal = 1

[State 1201,end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------
[statedef 1202]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 6055
sprpriority = 5

[State 0, AfterImage]
type = AfterImage
trigger1 = (!Time)
time = 20
timegap = 3
framegap = 4
length = 6
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add

[State 0, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 0, destroy]
type = destroyself
trigger1 = time = 90
ignorehitpause = 1
;--------------------------------------------------------------------
;ball
[statedef 1203]
anim = 6075
type = A
movetype = A
physics = N

[State 1203, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright =  40, 40,  0
PalContrast =  70, 70, 40
PalAdd = -10,-10,-10
PalMul = .80,.80,.50
TimeGap = 1
FrameGap = 1
Trans = Add
time = 10

[State 1203, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1203, velset]
type = velset
trigger1 = (!time)
x = 20
y = 0

[State 1203,nohitby]
type = NotHitBy
trigger1 = 1
value = SCA

[state 1203, hitdef]
type = hitdef
trigger1 = 1
numhits = 1
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
damage = 200, 105
pausetime =40
guard.pausetime = 10 
sparkxy = 60,-60
ground.type = Hard
air.type = Hard
ground.slidetime = 30
guard.slidetime = 15
ground.hittime = 10
guard.hittime = 5
air.hittime = 20
air.fall = 1
fall = 1
fall.recover = 0
ground.velocity = -30,2
guard.velocity = -10 
air.velocity = -30
airguard.velocity = -10
ground.cornerpush.veloff = 0
superpause= 40
sparkno= -1
guard.sparkno = -1 
envshake.time   = 15
envshake.freq   = 600
envshake.ampl   = -15
envshake.phase  = 1 
hitsound   = s5,2
guardsound = s5,2

[State 1203, explosion]
Type = Explod
Trigger1 = MoveContact
Anim = 6150
ID = 6150
Pos = 0, -60
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3000000000000000000000
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[state 1203, destroy]
type = destroyself
trigger1 = (MoveContact)
ignorehitpause = 1
;---------------------------------------------------------------------------
;Ball Hit LV2
[Statedef 1300]
type    = S
movetype= A
physics = S
poweradd= -2000
ctrl = 0
anim = 340
sprpriority = 2

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(time >20)
time = 4
freq = 300
ampl = -8

[State 1300, Pause]
type = Pause
trigger1 = (Time = [0,20])&&((GameTime%1) = 0)
time = 1
movetime = 0

[State 0, ]
type = PlaySnd
trigger1 = time = 20
value = S5,23
channel = 4
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 20
value = S1,4
channel = 5
loop = 1
ignorehitpause = 0
persistent = 1

[State 0, ]
type = StopSnd
trigger1 = time = 90
channel = 5
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 90
value = S5,23
channel = 6
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 30
value = S2,2
channel = 11
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,10
channel = 2
loop = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 20
value = S1,1
channel = 1
loop = 0
ignorehitpause = 0
persistent = 1

[State 300, Aura]
type = explod
trigger1 = time = 20
anim = 6040
ID = 6040
pos = 0,0
sprpriority = 5
removetime = -1
supermove = 999
pausemovetime = 999
removeongethit = 1
bindtime = -1

[State 300, remove aura]
type = RemoveExplod
trigger1 = time = 90
ID = 6040
ignorehitpause = 0
persistent = 1

[State 300, Aura]
type = explod
trigger1 = time = 90
anim = 6046
ID = 6046
pos = 0,0
sprpriority = 5
removetime = 6
removeongethit = 1
bindtime = -1

[state 300, dust1]
type = explod
trigger1 = time = 20
anim = 6020
ID = 6020
pos = -30,0
sprpriority = 5
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = time = 90
ID = 6020
ignorehitpause = 0
persistent = 1

[state 300, dust1]
type = explod
trigger1 = time = 20
anim = 6025
ID = 6025
pos = 30,0
sprpriority = 5
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = time = 90
ID = 6025
ignorehitpause = 0
persistent = 1

[state 300, dust3]
type = explod
trigger1 = time = 20
anim = 6120
ID = 6120
pos = 0,0
sprpriority = 5
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
bindtime = -1

[State 300, remove dust3]
type = RemoveExplod
trigger1 = time = 90
ID = 6120
ignorehitpause = 0
persistent = 1

[State 300, dust2]
type = explod
trigger1 = time = 28
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
trigger1 = time = 28
anim = 6275
pos = 30, 5
id = 6275
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
trigger1 = time = 20 
anim = 6200
ID = 6200
pos = 45,-62
postype = p1
facing = 1
bindtime = 82
removetime = 82
supermove = 999
pausemovetime = 999
scale = 1, 1
sprpriority = 10
removeongethit = 1

[State 0, ]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "ring"
ID = 6055
pos = 45,-62
postype = p1
facing = 1
stateno = 1102
keyctrl = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, ]
type = SuperPause
trigger1 = time =20
time = 50
anim = -1
sound = -1
pos = 0,0
movetime = 50
darken = 0
poweradd = 0
unhittable = 1

[State 1300, NextLV1]
type = ChangeState
trigger1 = time = 90
value = 1301
ctrl = 1
;--------------------------------------------------------------------
[Statedef 1301]
type = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 370
sprpriority = 2

[State 340, ball shoot]
type = PlaySnd
trigger1 = animelem = 3
value = S1,2
channel = 2

[state 320, ring]
type = explod
trigger1 = time = 14
anim = 6210
pos = 65, -70
id = 6210
sprpriority = 1111
ontop = 1
bindtime = -1
scale = 1.5,1.5

[state 1200, ball]
type = helper
trigger1 = time = 0
helpertype = normal
name = "ball3"
ID = 1303
pos = 45,-62
postype = p1
stateno = 1303
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1301,end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------
[statedef 1302]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 6055
sprpriority = 5

[State 0, AfterImage]
type = AfterImage
trigger1 = (!Time)
time = 20
timegap = 2
framegap = 3
length = 2
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add

[State 0, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 0, destroy]
type = destroyself
trigger1 = time = 50
ignorehitpause = 1
;--------------------------------------------------------------------
;ball
[statedef 1303]
anim = 6250
type = S
movetype = A
physics = N
sprpriority = 100000
removetime = -1
supermove = -1
pausemovetime = -1

[State 341, AfterImage]
type = AfterImage
trigger1 = time = 14
length = 20
PalBright =  40, 40,  0
PalContrast =  70, 70, 40
PalAdd = -10,-10,-10
PalMul = .80,.80,.50
TimeGap = 1
FrameGap = 1
Trans = Add
time = 10

[State 341, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 341, velset]
type = velset
trigger1 = time = 14
x = 30
y = 0

[State 341,nohitby]
type = NotHitBy
trigger1 = 1
value = SCA

[state 341, hitdef]
type = hitdef
trigger1 = time > 14
numhits = -1
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
damage = 200,65
pausetime =20
guard.pausetime = 10 
sparkxy = 45,0
ground.type = Hard
air.type = Hard
ground.slidetime = 40
guard.slidetime = 20
ground.hittime = 10
guard.hittime = 5
air.hittime = 20
air.fall = 1
fall = 1
fall.recover = 0
ground.velocity = -40
guard.velocity = -15 
air.velocity = -40
airguard.velocity = -15
ground.cornerpush.veloff = 0
superpause= 40
sparkno= -1
guard.sparkno = -1 
envshake.time   = 15
envshake.freq   = 600
envshake.ampl   = -15
envshake.phase  = 1 
hitsound   = s7,4
guardsound = s7,4

[State 341, explosion]
Type = Explod
Trigger1 = MoveContact
Anim = 6150
ID = 6150
Pos = 0, -60
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3000000000000000000000
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[state 1303, destroy]
type = destroyself
trigger1 = MoveContact
ignorehitpause = 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
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
trigger1 = (StateNo != 192)
channel = 13

;--------------------------------------------------------------
