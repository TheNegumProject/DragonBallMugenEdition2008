;_-Broli's ST1-_______________
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
;states 7000-7030
;-----------------------------------------------------------
;kick combo 1
[Statedef 7000]
type = S
movetype = A
physics = S
anim = 212
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

;[State 7000, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2
y = 0

[State 7000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 7000, 2]
type = HitDef
trigger1 = animelem=2
attr = S, NA
animtype  = Medium
damage    = 26
guardflag = MA
pausetime = 10,15
sparkno = S6000
sparkxy = 0, -4
hitsound = s3,1
guardsound = s5, 30
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2.5,-3.5
guard.sparkno = S6000
envshake.time   = 3
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1  

[State 7000, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 60) && (command = "b")
value = 7001
ctrl = 1

[State 7001, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 50) && (command = "z")
value = 7002
ctrl = 1

[State 7000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------
;kick2
[Statedef 7001]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,26
channel = 1 

;[State 7001, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7001, VelSet]
type = VelSet
trigger1 = time = 0
x = 2
y = 0

[State 7001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 7001, 2]
type = HitDef
trigger1 = animelem=2
attr = S, NA
animtype  = Medium
damage = 36
guardflag = MA
pausetime = 10,15
sparkno = S6000
sparkxy = 0,-48
hitsound   = s3,2
guardsound = s5, 30
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -2.5,-3.5
guard.sparkno = S6000  
envshake.time   = 3
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 7001, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 50) && (command = "z")
value = 7002
ctrl = 1

[State 7001, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (command = "z")
value = 340
ctrl = 1

[State 7001, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------
; Standing Strong punch
[Statedef 7002]
type = S
movetype = A
physics = S
anim = 201
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,26
channel = 1 

[State 7002, PlayerPush]
type = PlayerPush
trigger1 = Anim = 201
value = 1

;[State 7002, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage    = 40,10
guardflag = MA
pausetime = 20,16
hitsound   = s3,4
guardsound = s5, 30
animtype        = back
air.animtype    = back
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -30
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0,-82
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   

[State 215, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 20,10
guardflag = MA
pausetime = 6,6
hitsound   = s3,4
guardsound = s5, 30
ground.type = High
ground.slidetime = 6
ground.hittime  = 7
ground.velocity = -25
air.velocity = -10, 7
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0,-91
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   

[State 215, 4]
type = velAdd
trigger1 = AnimElem = 3
x = 15

[State 215, 4]
type = velset
trigger1 = AnimElem = 4
x = 0

[State 7002, Dust]
Type = Explod
Trigger1 = time = 0
Anim = 6135
ID = 6135
Pos = -25, 0
PosType = P1
Facing = 1
BindTime = 1
PauseMoveTime = 10
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[State 7002, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 100) && (command = "a")
value = 7003
ctrl = 1

[State 7002, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (command = "z")
value = 340
ctrl = 1

[State 7002, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------
;Kick3
[Statedef 7003]
type = S
movetype = A
physics = S
anim = 217
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,26
channel = 1 

;[State 7003, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7003, VelSet]
type = Velset
trigger1 = time=0
x = 40

[State 7003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 7003, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = back
air.animtype = back
damage = 46
guardflag = MA
pausetime = 10,15
sparkno = 60000000
sparkxy = -10,-60
hitsound   = s3,3
guardsound = s5, 30
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime = 14
ground.velocity = -2, -10
air.velocity = -2, -15
air.juggle = 4
sparkno= -1
guard.sparkno = -1 
envshake.time   = 10
envshake.freq   = 100
envshake.ampl   = -2
envshake.phase  = 1
fall=1

[State 7003, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 0, -96
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1.1, 1.1

[State 7003, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 100) && (command = "z")
value = 7004
ctrl = 1

[State 7002, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (command = "z")
value = 340
ctrl = 1

[State 7003, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------
;smash
[Statedef 7004]
type = S
movetype = A
physics = A
anim = 216
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

;[State 7004, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7004, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 5
y = -10

[State 7004,veladd]
type = VelAdd
trigger1 = time =14
x = 0
ignorehitpause = 0
persistent = 1

[State 7004, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 7004, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = back
air.animtype = back
damage    = 46
guardflag = MA
pausetime = 10,15
sparkno = -1
hitsound   = s3,3
guardsound = s5, 30
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -2, 30
air.velocity = -2, 30
air.juggle = 4
sparkno= -1
fall= 1
fall.yvelocity = -6
fall.recover = 0
fall.damage = 10
guard.sparkno = -1
envshake.time   = 10
envshake.freq   = 100
envshake.ampl   = -2
envshake.phase  = 1   
down.bounce = 1
fall.envshake.time =10
fall.envshake.freq = 300
fall.envshake.ampl = -4
fall.envshake.phase = 1

[State 7004, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 0, -60
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1.1, 1.1

[State 7004, go to ground]
type = velset
trigger1= Animtime = 0
x = 2
y = 5

[State 7004, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;-------------------------------------------------------------
;ball throw
[Statedef 340]
type = S
physics = S
movetype = A
anim = 330
ctrl = 0
poweradd = -1000
velset = 0,0

;[State 340, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 340, ballchargesnd]
type = PlaySnd
trigger1 = Time = 0
value = S1,1
channel = 1

[State 340, ball shoot]
type = PlaySnd
trigger1 = animelem = 3
value = S1,2
channel = 2

[state 340, ring]
type = explod
trigger1 = time = 2
anim = 6055
pos = -19, -76
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

[state 340, ball]
type = helper
trigger1 = time = 0
helpertype = normal
name = "ball"
ID = 342
pos = -19,-76
postype = p1
stateno = 342
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[state 340, ball]
type = helper
trigger1 = animelem = 2
helpertype = normal
name = "ball"
ID = 343
pos = -10,-72
postype = p1
stateno = 343
keyctrl = 0
ownpal = 1
bindtime = 1

[state 340, ball]
type = helper
trigger1 = animelem = 3
helpertype = normal
name = "ball"
ID = 341
pos = 60,-60
postype = p1
stateno = 341
keyctrl = 0
ownpal = 1

[State 340,change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------
;ball
[statedef 341]
anim = 6075
type = A
movetype = A
physics = N

[State 341, AfterImage]
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

[State 192,Pause]
type = Pause
trigger1 = (movecontact)&&((GameTime%1) = 0)
time = 1
movetime = 0

[State 341, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 341, velset]
type = velset
trigger1 = (!time)
x = 20
y = 0

[State 341,nohitby]
type = NotHitBy
trigger1 = 1
value = SCA

[state 341, hitdef]
type = hitdef
trigger1 = 1
numhits = -1
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
damage = 100, 35
pausetime =20
guard.pausetime = 10 
sparkxy = 34,0
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
ground.velocity = -30
guard.velocity = -10 
air.velocity = -30
airguard.velocity = -10
ground.cornerpush.veloff = 0
superpause= 40
sparkno= -1
guard.sparkno = -1 
envshake.time   = 15
envshake.freq   = 150
envshake.ampl   = -2
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

[state 341, destroy]
type = destroyself
trigger1 = MoveContact
ignorehitpause = 1
;----------------------------------------------------
;ball2
[statedef 342]
anim = 6070
type = S
movetype = A
physics = N
sprpriority = 100000000000000

[State 0, ]
type = BindToParent
trigger1 = 1
time = 52
facing = 0
pos = -19,-76

[State 341, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 341, destroy]
type = destroyself
trigger1 = time = 52
ignorehitpause = 1
;----------------------------------------------------
;ball3
[statedef 343]
anim = 6075
type = S
movetype = A
physics = N
sprpriority = 1000000

[State 341, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 341, destroy]
type = destroyself
trigger1 = time = 10
ignorehitpause = 1
;-------------------------------------------
;Combo 2
[Statedef 7010]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

;[State 7010, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[state 7010, 1]
type = velset
trigger1 = time = 0
x = 2

[State 7010, 2]
type = HitDef
trigger1 = animelem=2
attr = S, NA
animtype  = Medium
damage    = 46
guardflag = MA
pausetime = 20,20
sparkno = -1
hitsound   = s3,2
guardsound = s5, 30
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -2.5,-3.5
sparkno= -1
guard.sparkno = -1
envshake.time   = 3
envshake.freq   = 60
envshake.ampl   = -3
envshake.phase  = 1   

[State 7010, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 0, -54
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = .7,.7

[State 7010, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 50) && (command = "b")
value = 7011
ctrl = 1

[State 7010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;combo2 cont.....
[statedef 7011]
type = S
movetype = A
physics = S
anim = 212
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

;[State 7011, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7011, 2]
type = HitDef
trigger1 = animelem=2
attr = S, NA
animtype  = Medium
damage    = 36
guardflag = MA
pausetime = 20,20
sparkno = -1
hitsound   = s3,1
guardsound = s5, 30
ground.type = high
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2.5,-3.5
sparkno= -1
guard.sparkno = -1
envshake.time   = 3
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   

[State 7011, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 0, -8
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = .5,.5

[State 7011, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 30) && (command = "c")
value = 7012
ctrl = 1

[State 7011, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------
;combo2 cont2.....
[statedef 7012]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 211
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,26
channel = 1 

;[State 7012, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7012, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = back
air.animtype = back
damage    = 46
guardflag = MA
pausetime = 23,20
sparkno = 60000000
sparkxy = -10,-60
hitsound   = s3,3
guardsound = s5, 30
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -5, -6
air.velocity    = -5, -6
air.juggle      = 4
sparkno= -1
guard.sparkno = -1
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   

[State 7012, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 0, -96
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1.1, 1.1

[State 7013, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 100) && (command = "c")
value = 7013
ctrl = 1

[State 7002, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (command = "z")
value = 340
ctrl = 1

[State 7012, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------
;combo2 cont3.....
[Statedef 7013]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
velset = 0,0
anim = 42

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 7013, getting in air]
type = VelSet
trigger1 = time = 0
x = 8
y = -2

[State 7013, anim]
type = ChangeAnim
trigger1 = Time = 20
value = 218

;[State 7013, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7013, PlayerPush]
type = PlayerPush
trigger1 = Anim = 218
value = 0

[State 7013, Lunge]
type = Velset
trigger1 = (anim =218)||(AnimElem = 2)
x = 10
y = 0

[State 7013, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 0, -40
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1,1

[State 7013, Hitdef]
type = HitDef
trigger1 = (Anim = 218) && (AnimElem = 2)
attr = S, NA
damage    = 50,20
animtype  = medium
hitflag = MAF
guardflag = MAF
pausetime = 28, 24
sparkno = -1
hitsound   = s3,3
guardsound = s5, 30
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-8
air.velocity = -5,-3
Fall = 1
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   


[State 7013, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 100) && (command = "c")
value = 7014
ctrl = 1

[State 7013, End]
type = ChangeState
trigger1 = (Anim = 218) && (!Animtime)
value = 50
ctrl = 1
;--------------------------------------------------------------
;combo2 smash.........
[Statedef 7014]
type = S
movetype = A
physics = A
anim = 216
ctrl = 0
poweradd = 30
juggle = 5
facep2 = 1
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,26
channel = 1 

;[State 7014, AfterImage]
;type = AfterImage
;trigger1 = (!Time)
;time = 20
;timegap	= 1
;framegap = 2
;length = 15
;paladd = 50, 50, 50
;palmul = .40, .40, .40
;palcontrast = 110,110,110
;trans = add

[State 7014, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 12
y = -4

[State 7014,veladd]
type = VelAdd
trigger1 = time =18
x = 0
ignorehitpause = 0
persistent = 1

[State 7014, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 7014, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = back
air.animtype = back
damage    = 50,30
guardflag = MA
pausetime = 25,20
sparkno = -1
hitsound   = s3,3
guardsound = s5, 30
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -2, 30
air.velocity = -2, 30
air.juggle = 4
sparkno= -1
fall= 1
fall.yvelocity = -6
fall.recover = 0
fall.damage = 10
guard.sparkno = -1
envshake.time   = 10
envshake.freq   = 100
envshake.ampl   = -2
envshake.phase  = 1
down.bounce =  1 
fall.envshake.time =10
fall.envshake.freq = 300
fall.envshake.ampl = -4
fall.envshake.phase = 1

[State 7014, Spark]
Type = Explod
Trigger1 = Movecontact
Anim = 6000
ID = 6000
Pos = 16, -60
PosType = P2
Facing = -1
BindTime = 1
PauseMoveTime = 50
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0
scale = 1.1, 1.1

[State 7014, go to ground]
type = velset
trigger1= Animtime = 0
x = 2
y = 5

[State 7014, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------------------------------------------------------
;Punch Combo
[Statedef 7025]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 3                      
velset = 0,0                     
ctrl = 0                         
anim = 222                       
poweradd = 20                    
sprpriority = 1   

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 7000, AfterImage]
type = AfterImage
trigger1 = (!Time)
time = 20
timegap	= 1
framegap = 2
length = 15
paladd = 50, 50, 50
palmul = .40, .40, .40
palcontrast = 110,110,110
trans = add             

[State 7025, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                    
damage = 30, 10                   
animtype = Light                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                
pausetime = 10,8                
hitsound = s3, 1                 
guardsound = s5, 30               
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -2             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12 
sparkno= S6000
guard.sparkno = s6000 
sparkxy = 0, -74
envshake.time   = 3
envshake.freq   = 30
envshake.ampl   = -2
envshake.phase  = 1   

[State 7025, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 50) && (command = "x")
value = 7026
ctrl = 1

[State 7025, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 40) && (command = "c")
value = 7012
ctrl = 1

[State 7025, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------
;Punch Combo
[Statedef 7030]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 3                      
velset = 0,0                     
ctrl = 1                         
anim = 210                       
poweradd = 20                    
sprpriority = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40,10
guardflag = MA
pausetime =14,11
hitsound   = s3,2
guardsound = s5, 30
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno =S6000
sparkxy = 0, -82
envshake.time   = 3
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1  
fall = 1
fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 10
down.velocity = 1,3
down.hittime = 4
down.bounce = 2

[State 210, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 14,11
hitsound   = s3,2
guardsound = s5, 30
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0, -91
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   
fall = 1
fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 10
down.velocity = 1,3
down.hittime = 4
down.bounce = 2

[State 7030, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 40) && (command = "x")
value = 7031
ctrl = 1

[State 7030, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------
; Standing Medium punch
[Statedef 7031]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
velset = 0,0
anim = 201
sprpriority = -1 

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40,10
guardflag = MA
pausetime =14,11
hitsound   = s3,2
guardsound = s5, 30
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno =S6000
sparkxy = 0, -82
fall= 1
fall.yvelocity = -6
fall.recover = 0
fall.damage = 10
guard.sparkno = -1
envshake.time   = 10
envshake.freq   = 100
envshake.ampl   = -2
envshake.phase  = 1
down.bounce =  1 
fall.envshake.time =10
fall.envshake.freq = 300
fall.envshake.ampl = -4
fall.envshake.phase = 1

[State 210, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 14,11
hitsound   = s3,2
guardsound = s5, 30
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0, -91
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------
;Punch Combo kick
[Statedef 7032]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 3                      
velset = 0,0                     
ctrl = 1                         
anim = 210                       
poweradd = 20                    
sprpriority = 1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = back
air.animtype = back
damage    = 46
guardflag = MA
pausetime = 16,14
sparkxy = 0,-95
hitsound   = s3,4
guardsound = s5, 30
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -4, -12
air.velocity    = -4, -12
air.juggle      = 4
fall = 1
sparkno= S6000
guard.sparkno =S6000
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
fall.damage = 5

[State 7030, Continue combo]
type = ChangeState
trigger1 = (movecontact = 1) && (p2bodydist X < 50) && (command = "x")
value = 7031
ctrl = 1

[State 7032, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------
;lunge kick
[statedef 7040]
type = A
movetype = I
physics = N
anim = 41
velset = 6,-5
ctrl = 1
poweradd = -20
sprpriority = 2

[State 70, ]
type = Explod
trigger1 = time = 0
anim = 6030
ID = 6030
pos = -30,5
postype = p1
facing = 1
bindtime = 1
removetime = 10
pausemovetime = 0
scale = 1, 1
sprpriority = 0
shadow = 0,0,0
removeongethit = 0
ignorehitpause = 0
persistent = 1

[State 70, ]
type = PlaySnd
trigger1 = time = 0
value = s5,31
channel = -1
loop = 0
ignorehitpause = 0
persistent = 1

[State 70, ChangeState]
type = ChangeState
trigger1 = Time = 6
value = 7045
ctrl = 1

[state 70, VelFwd]
type = VelSet
trigger1 = command = "holdfwd"
x = 4 

[state 7020, screenbound]
type= screenbound
trigger1 = movehit
value = 0
;---------------------------------------------------------------------------
;lunge2
[statedef 7045]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 218
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65,30
priority = 4, Hit
Hitflag = HA
guardflag = HA
priority = 4
pausetime = 11,12
sparkno = S6000
guard.sparkno = S6000
sparkxy = 0,-27
hitsound   = s5,9
guardsound = s5, 30
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -40,0
air.velocity = -30,0
Fall = 1
envshake.time   = 6
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1   

[state 7020, screenbound]
type= screenbound
trigger1 = movehit
value = 0
;------------------------------------------------------
;elbow lv1
[statedef 360]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 3                      
velset = 5,0                     
ctrl = 0                         
anim = 412                       
poweradd = 20                    
sprpriority = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 6020
ID = 6020
pos = -0,10
postype = p1
facing = 1
removetime = -2
scale = 1, 1
sprpriority = 2
removeongethit = 0
ignorehitpause = 1
persistent = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 0, ]
type = VelSet
trigger1 = time = 5
x = 0
y = 0

[State 210, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MAF
priority = 5, Hit
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 14,16
hitsound   = s3,2
guardsound = s5, 30 
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -5
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0, -61
envshake.time   = 8
envshake.freq   = 160
envshake.ampl   = -5
envshake.phase  = 1  

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------
;elbow lvl2
[statedef 370]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 3
velset = 15,0                     
ctrl = 0                         
anim = 100                       
poweradd = 20                    
sprpriority = 1

[State 370, dust]
Type = Explod
Trigger1 = time = 0
Anim = 6030
ID = 6030
Pos = -20, 0
PosType = P1
Facing = 1
BindTime = 1
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0

[State 370, ]
type = ChangeAnim
trigger1 = time = 5
value = 413

[State 370, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
hitflag = MAF
priority = 5, Hit
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 10,11
hitsound   = s3,2
guardsound = s5, 30 
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -8
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0, -64
envshake.time   = 5
envshake.freq   = 160
envshake.ampl   = -5
envshake.phase  = 1 

[State 370, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 2 

[State 370, VelSet]
type = VelSet
trigger1 = time=10
x = 0
y = 0

[State 370, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 370, ChangeState]
type = ChangeState
trigger1 = (animtime=0)
value = 0
ctrl = 1
;------------------------------
;elbow lvl3
[statedef 380]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 3
velset = 20,0                     
ctrl = 0                         
anim = 100                       
poweradd = 20                    
sprpriority = 1

[State 380, dust]
Type = Explod
Trigger1 = time = 0
Anim = 6030
ID = 6030
Pos = -20, 0
PosType = P1
Facing = 1
BindTime = 1
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0

[State 380, ]
type = ChangeAnim
trigger1 = time = 10
value = 414

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
hitflag = MAF
priority = 4, Hit
damage    = 40,10
guardflag = MA
pausetime = 7,8
hitsound   = s3,4
guardsound = s5, 30 
animtype        = back
air.animtype    = back
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -3
air.velocity = -2.5,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0,-64
envshake.time   = 5
envshake.freq   = 160
envshake.ampl   = -5
envshake.phase  = 1  

[State 215, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MA
priority = 4, Hit
animtype  = Medium
damage    = 20,10
guardflag = MA
pausetime = 11,12
hitsound   = s3,4
guardsound = s5, 30 
ground.type = High
ground.slidetime = 6
ground.hittime  = 7
ground.velocity = -20
air.velocity = -10, 7
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0,-61
envshake.time   = 5
envshake.freq   = 180
envshake.ampl   = -5
envshake.phase  = 1 

[State 380, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 2 

[State 380, VelSet]
type = VelSet
trigger1 = time=15
x = 0
y = 0

[State 380, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 380, ChangeState]
type = ChangeState
trigger1 = (animtime=0)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;[Statedef -2]
