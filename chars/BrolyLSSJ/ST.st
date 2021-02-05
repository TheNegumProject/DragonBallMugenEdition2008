;[------Y------][-----][------]
;[------N------][-----][--B--]
;[------V------][-----][--R--]
;[------A------][-'S-][---O--]
;[------S------][-----][--L--]
;[------E------][-----][--Y--]
;[------R------][-----][------]
;[---Don't forget to check out the Shugen-Do--]
;[------game engine at www.sakirsoft.com------]
;[----------------ST----------------]
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
;-----[Basics]-----
;------------------------------------------------------------------------------
;Stand Light Punch (Stand X)
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 200

[State 200, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 200, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 200, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 40)
Triggerall = (Random <= 190)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 200, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,1
volume = 120

[State 200, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 10+(var(25)*5)
guardflag = MA
pausetime = 14,14
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-75
envshake.time = 6
envshake.freq = 120
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,6
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,-2

[State 200, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Stand Light Punch 2 (Stand X 2)
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 222

[State 201, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 201, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 201, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 50)
Triggerall = (Random <= 200)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 201, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 201, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,1
volume = 120

[State 201, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 10+(var(25)*5)
guardflag = MA
pausetime = 12,12
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-75
envshake.time = 6
envshake.freq = 120
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,6
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,-2

[State 201, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Stand Light Punch 3 (Stand X 3)
[Statedef 202]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 413

[State 202, PowerAdd]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = 5000
trigger2 = prevstateno = 5001
trigger3 = prevstateno = 5002
trigger4 = prevstateno = 5010
trigger5 = prevstateno = 5011
trigger6 = prevstateno = 5012
value = -250

[State 202, NotHitBy]
type = NotHitBy
triggerall = time = 0
trigger1 = prevstateno = 5000
trigger2 = prevstateno = 5001
trigger3 = prevstateno = 5002
trigger4 = prevstateno = 5010
trigger5 = prevstateno = 5011
trigger6 = prevstateno = 5012
value = S, NA
value2 = C,NA
time = 2

[State 202, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 202, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 202, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 50)
Triggerall = (Random <= 300)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 203, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 202, VelAdd]
type = VelAdd
trigger1 = Time = 6
x = 15

[State 202, VelAdd]
type = VelAdd
trigger1 = Time >= 7
trigger1 = Time <= 20
x = 1

[State 202, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,0
volume = 120

[State 202, Explod]
type = Explod
trigger1 = Time = 6
anim = 6020
ID = 6020
pos = 40,0
postype = p1
facing = 0
removetime = 39
scale = 1,1
sprpriority = 0
ontop = 0
shadow = -999,-999,-999
ownpal = 1
removeongethit = 0

[State 202, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 20+(var(25)*10)
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = -12,-75
envshake.time = 7
envshake.freq = 120
envshake.ampl = 4
envshake.phase = 125
hitsound = S8,6
guardsound = 6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -9,-2
fall = 1
airguard.velocity = -1
air.velocity = -10,-3

[State 202, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;Stand Strong Punch (Stand Y)
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 201

[State 210, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 210, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 210, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 0)
Triggerall = (Random <= 300)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 210, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,0
volume = 120

[State 210, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 5
guardflag = MA
pausetime = 1,1
sparkno = -1
guard.sparkno = -1
sparkxy = -8,-85
envshake.time = 6
envshake.freq = 120
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,5
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,-1

[State 210, Hitdef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 20+(var(25)*10)
guardflag = MA
pausetime = 16,16
sparkno = S6000
guard.sparkno = -1
sparkxy = -8,-85
envshake.time = 8
envshake.freq = 120
envshake.ampl = 4
envshake.phase = 125
hitsound = S8,4
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -9
airguard.velocity = -12
air.velocity = -10,-4

[State 210, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Stand Strong Punch 2 (Stand Y)
[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 202

[State 211, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 211, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 211, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 100)
Triggerall = (Random <= 300)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 211, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 211, PlaySnd]
type = PlaySnd
trigger1 = Time = 3
value = S9,1
volume = 120

[State 211, Hitdef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 20+(var(25)*10)
guardflag = MA
pausetime = 10,10
sparkno = S6000
guard.sparkno = -1
sparkxy = -8,-85
envshake.time = 8
envshake.freq = 120
envshake.ampl = 4
envshake.phase = 125
hitsound = S8,4
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 11
ground.velocity = -15
airguard.velocity = -16,-2
air.velocity = -16,-4

[State 211, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Stand Strong Punch 3 (Stand Y)
[Statedef 212]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 203

[State 212, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = S,NA
value2 = C,NA
time = 7

[State 212, PowerAdd]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = 5000
trigger2 = prevstateno = 5001
trigger3 = prevstateno = 5002
trigger4 = prevstateno = 5010
trigger5 = prevstateno = 5011
trigger6 = prevstateno = 5012
trigger7 = prevstateno = 5020
trigger8 = prevstateno = 5030
trigger9 = prevstateno = 5035
trigger10 = prevstateno = 5040
trigger11 = prevstateno = 5050
trigger12 = prevstateno = 5071
value = -500

[State 212, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 212, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 212, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 650, AfterImage]
type = AfterImage
triggerall = var(25) = 0
trigger1 = Time = 0
time = 40
trans = add
TimeGap  = 1
FrameGap = 1
length = 8
PalContrast = 115,110,110
PalAdd      =   12,  11,  11
PalBright = 33,32,32
palpostbright = 4,3,3
palmul = .62,.58,.58

[State 650, GreenAfterImage]
type = AfterImage
triggerall = var(25) = 1
trigger1 = Time = 0
time = 40
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 118,128,108
PalAdd      =   13,  15,  10
PalBright = 35,40,30
palpostbright = 4,5,3
palmul = .60,.65,.55

[State 212, VelSet]
type = VelSet
trigger1 = Time = 0
x = 5

[State 212, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S12,5
volume = 120

[State 212, PosAdd]
type = PosAdd
trigger1 = Time = 7
x = (280+(p2bodydist X))

[State 212, PosSet]
type = PosSet
trigger1 = Time = 7
y = 0

[State 212, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = S12,5
volume = 120

[State 212, Turn]
type = Turn
trigger1 = Time = 7

[State 212, VelSet]
type = VelSet
trigger1 = Animelem = 5
trigger2 = Animelem = 6
x = 20

[State 212, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = S10,0
volume = 120

[State 212, dust]
Type = Explod
trigger1 = Time = 8
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

[State 212, Hitdef]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Hard
damage    = 30+(var(25)*15)
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = -8,-85
envshake.time = 8
envshake.freq = 120
envshake.ampl = 6
envshake.phase = 125
hitsound = S8,1
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 11
ground.velocity = -15,3
airguard.velocity = -16,-5
air.velocity = -16,-5
fall = 1
kill = 1
guard.kill = 1

[State 212, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;KI Shot Type Decider
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 0

[State 215, ChangeState]
type = ChangeState
trigger1 = command != "holdz"
trigger2 = power = 0
value = 216
ctrl = 0

[State 215, ChangeState]
type = ChangeState
triggerall = power > 50
trigger1 = Command = "holdz"
trigger1 = Time > 10
value = 217
ctrl = 0
;------------------------------------------------------------------------------
;Stand Ki Shot (Stand Z)
[Statedef 216]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 310

[State 216, PlaySnd]
type = PlaySnd
trigger1 = Time = 11
value = S5,27;S1,2
volume = 220;120
channel = 2

[State 216, Helper]
type = Helper
triggerall = var(25) = 1
trigger1 = Time = 12
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 28, -47
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 216, Helper]
type = Helper
trigger1 = Time = 12
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 28, -47
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 216, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -2

[State 216, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
trigger2 = Time = 2
trigger3 = Time = 3
trigger4 = Time = 4
trigger5 = Time = 5
trigger6 = Time = 6
trigger7 = Time = 7
trigger8 = Time = 8
trigger9 = Time = 9
trigger10 = Time = 10
trigger11 = Time = 11
trigger12 = Time = 12
value = -4

[State 216, Ki]
Type = Explod
trigger1 = time = 0
anim = 6105
pos = 29, -47
id = 6070
sprpriority = 1111
ontop = 1
bindtime = 1
removetime = 12
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
scale = .5,.55

[State 216, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;[Trap Shooter]-Charge
[Statedef 217]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 330

[State 217, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S5,8
volume = 200
channel = 5

[State 217, VarSet]
type = VarSet
trigger1 = Time = 0
v = 10
value = 1

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 8
time = 8
color = 128

[State 217, VarSet]
type = VarSet
trigger1 = Time = 16
v = 10
value = 2

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 16
time = 16
color = 64

[State 217, VarSet]
type = VarSet
trigger1 = Time = 32
v = 10
value = 3

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 32
time = 16
color = 32

[State 217, VarSet]
type = VarSet
trigger1 = Time = 48
v = 10
value = 4

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 48
time = 16
color = 16

[State 217, VarSet]
type = VarSet
trigger1 = Time = 64
v = 10
value = 5

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 64
time = 16
color = 8

[State 217, VarSet]
type = VarSet
trigger1 = Time = 80
v = 10
value = 6

[State 217, EnvShake]
type = EnvShake
trigger1 = Time = 80
time = 16
freq = 140
ampl = -2
phase = 140

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 80
time = 16
color = 4

[State 217, VarSet]
type = VarSet
trigger1 = Time = 96
v = 10
value = 7

[State 217, EnvShake]
type = EnvShake
trigger1 = Time = 96
time = 16
freq = 142
ampl = 2
phase = 142

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 96
time = 16
color = 2

[State 217, VarSet]
type = VarSet
trigger1 = Time = 112
v = 10
value = 8

[State 217, EnvShake]
type = EnvShake
trigger1 = Time = 96
time = 16
freq = 144
ampl = -4
phase = 144

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 112
time = 16
color = 1

[State 217, VarSet]
type = VarSet
trigger1 = Time = 128
v = 10
value = 9

[State 217, EnvShake]
type = EnvShake
trigger1 = Time = 128
time = 50
freq = 146
ampl = 4
phase = 146

[State 217, BGPalFX]
type = BGPalFX
trigger1 = Time = 128
time = 50
color = 0

[State 217, PowerAdd]
type = PowerAdd
trigger1 = 1
value = -4

[State 217, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Ki Charge"
id = 219
stateno = 219
pos = -15, -77
postype = p1
facing = 0
keyctrl = 0
ownpal = 1

[State 217, ChangeState]
type = ChangeState
triggerall = var(59) > 0
triggerall = time >= 8
trigger1 = inguarddist
value = 218
ctrl = 1

[State 217, ChangeState]
type = ChangeState
trigger1 = command != "holdz"
trigger1 = time >= 8
trigger2 = Animtime = 0
trigger3 = power = 0
value = 218
ctrl = 1

;[Trap Shooter]-Shoot
[Statedef 218]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 335

[State 218, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Push Helper Foward"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 216, Ki]
Type = Explod
trigger1 = time = 0
anim = 6105
pos = -13, -76
id = 6070
sprpriority = 1111
ontop = 1
bindtime = 1
removetime = 2
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
scale = .5,.55

[State 218, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 5

[State 218, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 6106

[State 218, PlaySnd]
type = PlaySnd
trigger1 = var(10) >= 1
trigger1 = time = 3
trigger2 = var(10) >= 2
trigger2 = time = 5
trigger3 = var(10) >= 3
trigger3 = time = 9
trigger4 = var(10) >= 4
trigger4 = time = 12
trigger5 = var(10) >= 5
trigger5 = time = 15
trigger6 = var(10) >= 6
trigger6 = time = 18
trigger7 = var(10) >= 7
trigger7 = time = 21
trigger8 = var(10) >= 8
trigger8 = time = 24
trigger9 = var(10) = 9
trigger9 = time = 27
value = S5,27
volume = 220

[State 218, ForceFeedback]
type = ForceFeedback
trigger1 = var(10) >= 1
trigger1 = time = 3
trigger2 = var(10) >= 2
trigger2 = time = 5
trigger3 = var(10) >= 3
trigger3 = time = 9
trigger4 = var(10) >= 4
trigger4 = time = 12
trigger5 = var(10) >= 5
trigger5 = time = 15
trigger6 = var(10) >= 6
trigger6 = time = 18
trigger7 = var(10) >= 7
trigger7 = time = 21
trigger8 = var(10) >= 8
trigger8 = time = 24
trigger9 = var(10) = 9
trigger9 = time = 27
waveform = "sine"
time = 2
freq = 128,64,32,16
ampl = 128,64,32,16
self = 1

[State 216, Helper]
type = Helper
trigger1 = var(10) >= 1
trigger1 = time = 3
trigger2 = var(10) >= 1
trigger2 = time = 4
trigger3 = var(10) >= 2
trigger3 = time = 5
trigger4 = var(10) >= 2
trigger4 = time = 6
trigger5 = var(10) >= 3
trigger5 = time = 9
trigger6 = var(10) >= 3
trigger6 = time = 10
trigger7 = var(10) >= 4
trigger7 = time = 12
trigger8 = var(10) >= 4
trigger8 = time = 13
trigger9 = var(10) >= 5
trigger9 = time = 15
trigger10 = var(10) >= 5
trigger10 = time = 16
trigger11 = var(10) >= 6
trigger11 = time = 18
trigger12 = var(10) >= 6
trigger12 = time = 19
trigger13 = var(10) >= 7
trigger13 = time = 21
trigger14 = var(10) >= 7
trigger14 = time = 22
trigger15 = var(10) >= 8
trigger15 = time = 24
trigger16 = var(10) >= 8
trigger16 = time = 25
trigger17 = var(10) = 9
trigger17 = time = 27
trigger18 = var(10) = 9
trigger18 = time = 28
trigger19 = var(10) >= 9
trigger19 = time = 29
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 90, -50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 216, Helper]
type = Helper
triggerall = var(25) = 1
trigger1 = var(10) >= 1
trigger1 = time = 3
trigger2 = var(10) >= 2
trigger2 = time = 5
trigger3 = var(10) >= 3
trigger3 = time = 9
trigger4 = var(10) >= 4
trigger4 = time = 12
trigger5 = var(10) >= 5
trigger5 = time = 15
trigger6 = var(10) >= 6
trigger6 = time = 18
trigger7 = var(10) >= 7
trigger7 = time = 21
trigger8 = var(10) >= 8
trigger8 = time = 24
trigger9 = var(10) = 9
trigger9 = time = 27
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 90, -50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 216, VarSet]
type = VarSet
trigger1 = Animtime = 0
v = 10
value = 0

[State 216, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Stand Low/Light Kick (Stand A)
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 15
ctrl = 0
velset = 0,0,0
anim = 212

[State 230, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 230, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 250, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 0)
Triggerall = (Random <= 200)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 230, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,2
volume = 140

[State 230, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 15+(var(25)*5)
guardflag = L
pausetime = 15,15
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-25
envshake.time = 7
envshake.freq = 140
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,-2

[State 230, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Stand Low/Light Kick 2 (Stand A)
[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 15
ctrl = 0
velset = 0,0,0
anim = 227

[State 231, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 231, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 231, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,2
volume = 140

[State 231, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 15+(var(25)*5)
guardflag = L
pausetime = 15,15
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-25
envshake.time = 7
envshake.freq = 140
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,6
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -5
airguard.velocity = -1
air.velocity = -1,-2

[State 231, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Stand Low/Light Kick 3 (Stand A)
[Statedef 232]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 20
ctrl = 0
anim = ifelse(prevstateno=231,228,229)

[State 232, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = C,NA
value2 = S,NA
time = 10

[State 232, PowerAdd]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = 5000
trigger2 = prevstateno = 5001
trigger3 = prevstateno = 5002
trigger4 = prevstateno = 5010
trigger5 = prevstateno = 5011
trigger6 = prevstateno = 5012
trigger7 = prevstateno = 5020
trigger8 = prevstateno = 5030
trigger9 = prevstateno = 5035
trigger10 = prevstateno = 5040
trigger11 = prevstateno = 5050
trigger12 = prevstateno = 5071
value = -500

[State 232, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 232, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 232, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S12,5
volume = 120

[State 232, AfterImage]
type = AfterImage
triggerall = var(25) = 0
trigger1 = Time = 0
time = 14
trans = add
TimeGap  = 1
FrameGap = 1
length = 8
PalContrast = 115,110,110
PalAdd      =   12,  11,  11
PalBright = 33,32,32
palpostbright = 4,3,3
palmul = .62,.58,.58

[State 650, GreenAfterImage]
type = AfterImage
triggerall = var(25) = 1
trigger1 = Time = 0
time = 14
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 118,128,108
PalAdd      =   13,  15,  10
PalBright = 35,40,30
palpostbright = 4,5,3
palmul = .60,.65,.55

[State 232, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 9
statetype = A
movetype = A
physics = A

[State 232, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 150
movecamera = 150,-20

[State 232, PosAdd]
type = PosAdd
trigger1 = Time = 9
x = (225+(p2bodydist X))
y = (-60+(p2bodydist Y))

[State 232, Turn]
type = Turn
trigger1 = Time = 10

[State 232, PlaySnd]
type = PlaySnd
trigger1 = Time = 11
value = S12,5
volume = 120

[State 232, 1]
type = VelSet
trigger1 = Time = 11
x = 10
y = 1

[State 232, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = S9,1
volume = 140

[State 232, Hitdef]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = (25+(var(25)*10))+(Vel Y)+(Vel X)
guardflag = MA
pausetime = 1,1
sparkno = S6000
guard.sparkno = -1
sparkxy = -10,-16
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,1
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -12
airguard.velocity = -10,6
air.velocity = -10,6
air.fall = 1
down.velocity = -8,8
down.hit = 1
fall = 1
kill = 1
guard.kill = 1

[State 232, CtrlSet]
type = CtrlSet
trigger1 = time = 18
trigger2 = time > 18
value = 1
;------------------------------------------------------------------------------
;Stand Medium Kick (Stand B)
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 210

[State 240, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 240, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 240, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 0)
Triggerall = (Random <= 300)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 240, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,1
volume = 140

[State 240, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 20+(var(25)*10)
guardflag = MA
pausetime = 17,17
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-55
envshake.time = 8
envshake.freq = 140
envshake.ampl = 4
envshake.phase = 125
hitsound = S8,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -9
airguard.velocity = -1
air.velocity = -8,-2

[State 240, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;Stand High/Strong Kick (Stand C)
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 25
ctrl = 0
velset = 0,0,0
anim = 211

[State 250, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 250, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 250, PlaySnd]
type = PlaySnd
Triggerall = (Random >= 0)
Triggerall = (Random <= 300)
trigger1 = Time = 2
value = S4,3
volume = 140

[State 250, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,0
volume = 140

[State 250, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 25+(var(25)*10)
guardflag = MA
pausetime = 17,17
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-82
envshake.time = 8
envshake.freq = 160
envshake.ampl = 5
envshake.phase = 145
hitsound = S8,1
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -12
airguard.velocity = -1
air.velocity = -12,-6

[State 250, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Stand High/Strong Kick 2 (Stand C)
[Statedef 251]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 230

[State 251, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 251, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 690:	HitDef]
type			= HitDef
trigger1		= (Animelem = 3)
attr			= S, NA
hitflag		= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage		= 5
pausetime		= 5,5
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
persistent		= 0

[State 690, SprPriority]
type = SprPriority
trigger1 = 1
value = 4

[State 251, VelAdd]
type = VelAdd
trigger1 = Time = 0
x = 4

[State 251, VelAdd]
type = VelAdd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 35
trigger5 = Time = 45
x = 2

[State 251, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 35
trigger5 = Time = 45
value = S4,3
volume = 180

[State 251, Helper]
type = Helper
trigger1 = Time = 5
trigger2 = Time = 50
helpertype = normal
name = "Leg Proj"
ID = 690
stateno = 690
pos = -3,-4
postype = p1
facing = 1
keyctrl = 0

[State 251, Helper]
type = Helper
trigger1 = Time = 10
trigger2 = Time = 45
helpertype = normal
name = "Leg Proj"
ID = 690
stateno = 690
pos = -3,-2
postype = p1
facing = 1
keyctrl = 0

[State 251, Helper]
type = Helper
trigger1 = Time = 15
trigger2 = Time = 40
helpertype = normal
name = "Leg Proj"
ID = 690
stateno = 690
pos = -3,0
postype = p1
facing = 1
keyctrl = 0

[State 251, Helper]
type = Helper
trigger1 = Time = 20
trigger2 = Time = 35
helpertype = normal
name = "Leg Proj"
ID = 690
stateno = 690
pos = -3,2
postype = p1
facing = 1
keyctrl = 0

[State 251, Helper]
type = Helper
trigger1 = Time = 25
trigger2 = Time = 30
helpertype = normal
name = "Leg Proj"
ID = 690
stateno = 690
pos = -3,4
postype = p1
facing = 1
keyctrl = 0

[State 251, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;Rapid KI Shots
[Statedef 260]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 320

[State 260, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 20
trigger3 = Time = 35
value = S5,27;S1,2
volume = 220;120
channel = 2

[State 260, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
trigger2 = Time = 2
trigger3 = Time = 3
trigger4 = Time = 4
trigger5 = Time = 5
trigger6 = Time = 6
trigger7 = Time = 7
trigger8 = Time = 8
trigger9 = Time = 9
trigger10 = Time = 10
trigger11 = Time = 11
trigger12 = Time = 12
trigger13 = Time = 13
trigger14 = Time = 14
trigger15 = Time = 15
trigger16 = Time = 16
trigger17 = Time = 17
trigger18 = Time = 18
trigger19 = Time = 19
trigger20 = Time = 20
trigger21 = Time = 21
trigger22 = Time = 22
trigger23 = Time = 23
trigger24 = Time = 24
trigger25 = Time = 25
value = -20

[State 260, Helper]
type = Helper
trigger1 = Time = 5
trigger2 = Time = 20
trigger3 = Time = 35
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 52, -83
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 260, Helper]
type = Helper
triggerall = Var(25) = 1
trigger1 = Time = 5
trigger2 = Time = 20
trigger3 = Time = 35
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 53, -83
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 260, Helper]
type = Helper
trigger1 = Time = 5
trigger2 = Time = 35
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 53, -82
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 260, Helper]
type = Helper
triggerall = Var(25) = 1
trigger1 = Time = 5
trigger2 = Time = 35
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 52, -82
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 260, Helper]
type = Helper
trigger1 = Time = 5
trigger2 = Time = 20
trigger3 = Time = 35
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 52, -81
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 260, Helper]
type = Helper
triggerall = Var(25) = 1
trigger1 = Time = 5
trigger2 = Time = 20
trigger3 = Time = 35
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 53, -81
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 260, Ki]
Type = Explod
trigger1 = time = 0
trigger2 = time = 15
trigger3 = time = 30
anim = 6105
pos = 52, -82
id = 6070
sprpriority = 9
ontop = 1
bindtime = 1
removetime = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
scale = 1.00,1.00

[State 260, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;Chrouch Light Punch (Chrouch X)
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 224
sprpriority = 2

[State 400, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 400, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 400, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,2
volume = 140

[State 400, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Light
damage    = 10+(var(25)*5)
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-42
envshake.time = 6
envshake.freq = 120
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,3
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1,-1
air.velocity = -3,-1

[State 400, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;Chrouch Hard Punch (Chrouch Y)
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 213
sprpriority = 2

[State 405, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 405, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 400, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,1
volume = 140

[State 400, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Hard
damage    = 20+(var(25)*10)
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-50
envshake.time = 7
envshake.freq = 130
envshake.ampl = 4
envshake.phase = 135
hitsound = S8,1
guardsound = 6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -3
airguard.velocity = -4,-1
air.velocity = -5,-1

[State 400, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;Chrouch Ki Shot (Chrouch Z)
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 223
sprpriority = 2

[State 216, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = S5,27;S1,2
volume = 220;120
channel = 2

[State 216, Helper]
type = Helper
triggerall = var(25) = 1
trigger1 = Time = 8
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 54, -46
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 216, Helper]
type = Helper
trigger1 = Time = 8
helpertype = normal
name = "Renzoku Projectile"
ID = 6110
stateno = 6110
pos = 54, -46
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 216, PowerAdd]
type = PowerAdd
trigger1 = Time = 4
trigger2 = Time = 5
trigger3 = Time = 6
trigger4 = Time = 7
trigger5 = Time = 8
value = -10

[State 216, Ki]
Type = Explod
trigger1 = time = 4
anim = 6105
pos = 54, -46
id = 6070
sprpriority = 1111
ontop = 1
bindtime = 1
removetime = 4
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
scale = .5,.55

[State 400, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;Chrouch Light Kick (Chrouch A)
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 215
sprpriority = 2

[State 430, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 430, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 430, PlaySnd]
type = PlaySnd
trigger1 = Time = 3
value = S9,2
volume = 140

[State 430, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Light
damage    = 15+(var(25)*5)
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-15
envshake.time = 7
envshake.freq = 120
envshake.ampl = 3
envshake.phase = 125
hitsound = S8,6
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1,-1
air.velocity = -3,-1

[State 430, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1
;------------------------------------------------------------------------------
;Chrouch Medium Kick (Chrouch B)
[Statedef 435]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 20
ctrl = 0
anim = 219
sprpriority = 2

[State 435, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 435, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 435, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
value = S9,1
volume = 140

[State 435, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Medium
damage    = 20+(var(25)*10)
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S6000
guard.sparkno = -1
sparkxy = -15,-30
envshake.time = 8
envshake.freq = 140
envshake.ampl = 4
envshake.phase = 140
hitsound = S8,5
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1,-1
air.velocity = -3,-1

[State 435, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1
;------------------------------------------------------------------------------
;Chrouch Dash/Strong Kick (Chrouch C)
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 20
ctrl = 0
anim = 215
sprpriority = 2

[State 440, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 440, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 440, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,0
volume = 140

[State 440, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1
volume = 140

[State 440, VelAdd]
type = VelAdd
trigger1 = Time = 1
trigger2 = Time = 3
x = 4

[State 440, Explod]
type = Explod
trigger1 = Time = 1
anim = 6020
ID = 6020
pos = 40,0
postype = p1
facing = 0
removetime = 39
scale = 1,1
sprpriority = 0
ontop = 0
shadow = -999,-999,-999
ownpal = 1
removeongethit = 0

[State 440, Hitdef]
type = HitDef
trigger1 = Animelem = 1
attr = C, NA
animtype  = Hard
damage    = (20 + (Vel X))+(var(25)*10)
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S6000
guard.sparkno = -1
sparkxy = -15,-30
envshake.time = 8
envshake.freq = 140
envshake.ampl = 5
envshake.phase = 140
hitsound = S8,5
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1,-1
air.velocity = -3,-1

[State 440, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;Jump Low Kick (Jump A)
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 10
ctrl = 0
anim = 214

[State 630, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 630, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 630, VelAdd]
type = VelAdd
trigger1 = Time = 0
y = -2

[State 250, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,2
volume = 140

[State 250, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
guardflag = HA
animtype  = Light
damage    = 25+(var(25)*10)
guardflag = MA
pausetime = 17,17
sparkno = S6000
guard.sparkno = -1
sparkxy = -10,-16
envshake.time = 8
envshake.freq = 160
envshake.ampl = 3
envshake.phase = 145
hitsound = S8,5
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -12
airguard.velocity = -1
air.velocity = -10,5

[State 250, CtrlSet]
type = CtrlSet
trigger1 = time = 17
trigger2 = time > 17
value = 1

;------------------------------------------------------------------------------
;Jump Medium Kick (Jump B)
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 218

[State 640, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 640, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 630, VelAdd]
type = VelAdd
triggerall = prevstateno = 630
triggerall = movecontact = 1
trigger1 = Time = 0
y = -2

[State 250, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,1
volume = 140

[State 250, Hitdef]
type = HitDef
triggerall = var(14)=0
trigger1 = AnimElem = 2
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = 25+(var(25)*10)
guardflag = MA
pausetime = 17,17
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-42
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -12
airguard.velocity = -1
air.velocity = -12,-2

[State 250, Hitdef]
type = HitDef
triggerall = var(14)=1
trigger1 = AnimElem = 2
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = 10+(var(25)*5)
guardflag = MA
pausetime = 7,7
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-32
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,-1

[State 670, ChangeState]
type = ChangeState
triggerall = (prevstateno = 670)
trigger1 = movecontact
value = 650
ctrl = 0

[State 250, CtrlSet]
type = CtrlSet
trigger1 = time = 17
trigger2 = time > 17
value = 1

;------------------------------------------------------------------------------
;Jump Low Airborne Kick (Jump C)
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 225

[State 650, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 650, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 650, NormalAfterImage]
type = AfterImage
triggerall = var(25) = 0
triggerall = var(14)=0
trigger1 = Time = 0
time = 20
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 128,128,128
PalAdd      =   15,  15,  15
PalBright = 40,40,40
palpostbright = 5,5,5
palmul = .65,.65,.65

[State 650, GreenAfterImage]
type = AfterImage
triggerall = var(25) = 1
triggerall = var(14)=0
trigger1 = Time = 0
time = 20
trans = add
TimeGap  = 1
FrameGap = 1
length = 12
PalContrast = 118,128,108
PalAdd      =   13,  15,  10
PalBright = 35,40,30
palpostbright = 4,5,3
palmul = .60,.65,.55

[State 650, 1]
type = VelSet
trigger1 = Time = 0
x = 8
y = 2

[State 650, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1
volume = 140

[State 650, Hitdef]
type = HitDef
triggerall = var(14)=0
trigger1 = AnimElem = 1
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = 25+(Vel Y)+(Vel X)+(var(25)*10)
guardflag = MA
pausetime = 1,1
sparkno = S6000
guard.sparkno = -1
sparkxy = -10,-16
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -12
airguard.velocity = -10,6
air.velocity = -10,6
air.fall = 1
down.velocity = -8,8
down.hit = 1

[State 650, Hitdef]
type = HitDef
triggerall = var(14)=1
trigger1 = AnimElem = 1
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = 15+(var(25)*5)
guardflag = MA
pausetime = 1,1
sparkno = S6000
guard.sparkno = -1
sparkxy = -10,-16
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,1

[State 670, VarSet]
type = VarSet
trigger1 = Time = 1
v = 14
value = 0

[State 650, CtrlSet]
type = CtrlSet
trigger1 = time = 17
trigger2 = time > 17
value = 1

;------------------------------------------------------------------------------
;Jump High Airborne Kick (Jump X)
[Statedef 660]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 218

[State 660, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 660, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 660, AfterImage]
type = AfterImage
Triggerall = Var(25) = 0
trigger1 = Time = 0
time = 10
trans = add
TimeGap  = 1
FrameGap = 2
length = 10
PalContrast = 128,128,128
PalAdd      =   15,  15,  15
PalBright = 40,40,40
palpostbright = 5,5,5
palmul = .65,.65,.65

[State 660, AfterImage]
type = AfterImage
Triggerall = Var(25) = 1
trigger1 = Time = 0
time = 10
trans = add
TimeGap  = 1
FrameGap = 1
length = 12
PalContrast = 118,128,108
PalAdd      =   13,  15,  10
PalBright = 35,40,30
palpostbright = 4,5,3
palmul = .60,.65,.55

[State 660, 1]
type = VelSet
trigger1 = Time = 0
x = 10
y = -2

[State 660, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,0
volume = 140

[State 660, Hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = 25+(Vel X)+(var(25)*10)
guardflag = MA
pausetime = 1,1
sparkno = S6000
guard.sparkno = -1
sparkxy = -12,-32
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -12
airguard.velocity = -1
air.velocity = -12,-1
air.fall = 1
down.velocity = -10,5
down.hit = 1

[State 660, CtrlSet]
type = CtrlSet
trigger1 = time = 17
trigger2 = time > 17
value = 1

;------------------------------------------------------------------------------
;Jump Quickswitch Airborne Kick (Jump Y)
[Statedef 670]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 225

[State 670, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State 670, AssertSpecial]
type = AssertSpecial
triggerall = var(25)=1
trigger1 = 1
flag = unguardable

[State 670, VarSet]
type = VarSet
trigger1 = Time = 0
v = 14
value = 1

[State 650, AfterImage]
type = AfterImage
Triggerall = Var(25) = 0
trigger1 = Time = 0
time = 20
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 128,128,128
PalAdd      =   15,  15,  15
PalBright = 40,40,40
palpostbright = 5,5,5
palmul = .65,.65,.65

[State 650, AfterImage]
type = AfterImage
Triggerall = Var(25) = 1
trigger1 = Time = 0
time = 20
trans = add
TimeGap  = 1
FrameGap = 1
length = 12
PalContrast = 118,128,108
PalAdd      =   13,  15,  10
PalBright = 35,40,30
palpostbright = 4,5,3
palmul = .60,.65,.55

[State 670, 1]
type = VelSet
trigger1 = Time = 0
x = 9
y = 3

[State 670, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S9,1
volume = 140

[State 670, Hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
guardflag = HA
animtype  = Medium
damage    = 20+(var(25)*10)
guardflag = MA
pausetime = 5,5
sparkno = S6000
guard.sparkno = -1
sparkxy = -10,-16
envshake.time = 8
envshake.freq = 160
envshake.ampl = 4
envshake.phase = 145
hitsound = S8,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -1
airguard.velocity = -1
air.velocity = -1,1

[State 670, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 640
ctrl = 0

[State 670, CtrlSet]
type = CtrlSet
trigger1 = time = 22
trigger2 = time > 22
value = 1

;------------------------------------------------------------------------------
;Jump Kishot (Jump Z)
[Statedef 680]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 220

[State 680, VelAdd]
type = VelAdd
trigger1 = Time = 14
y = -4
x = -2

[State 680, PlaySnd]
type = PlaySnd
trigger1 = Time = 14
trigger2 = Time = 15
value = S5,27;S1,2
volume = 220;120
channel = 2

[State 680, PowerAdd]
type = PowerAdd
trigger1 = Time = 7
trigger2 = Time = 8
trigger3 = Time = 9
trigger4 = Time = 10
trigger5 = Time = 11
trigger6 = Time = 12
trigger7 = Time = 13
value = -10

[State 680, PowerAdd]
type = PowerAdd
trigger1 = Time = 14
trigger2 = Time = 15
value = -15

[State 680, Helper]
type = Helper
trigger1 = Time = 14
helpertype = normal
name = "Renzoku Projectile Air"
ID = 681
stateno = 681
pos = 45,-28
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 680, Helper]
type = Helper
trigger1 = Time = 15
helpertype = normal
name = "Renzoku Projectile Air"
ID = 681
stateno = 681
pos = 45,-28
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 680, Helper]
type = Helper
triggerall = var(25) = 1
trigger1 = Time = 14
helpertype = normal
name = "Renzoku Projectile Air"
ID = 681
stateno = 681
pos = 45,-29
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 680, Helper]
type = Helper
triggerall = var(25) = 1
trigger1 = Time = 15
helpertype = normal
name = "Renzoku Projectile Air"
ID = 681
stateno = 681
pos = 45,-27
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 680, Helper]
type = Helper
trigger1 = Time = 7
helpertype = normal
name = "Small Kiball Charge"
ID = 682
stateno = 682
scale = .5,.5
pos = 45,-28
postype = p1
facing = 0
keyctrl = 0
ownpal = 1

[State 680, CtrlSet]
type = CtrlSet
trigger1 = time = 18
trigger2 = time > 18
value = 1

;------------------------------------------------------------------------------
;Charge
[Statedef 300]
type = S
movetype = I
physics = N
anim = 300 ;(For SPARTA! :D)
velset = 0,0
ctrl = 0

[State 300, Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal
name = "Push Helper Fwd"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 300, Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal
name = "Push Helper Backward"
ID = 6301
stateno = 6301
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 300, Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal
name = "Push Helper Up"
ID = 6302
stateno = 6302
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 300:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 300, VarSet]
type = VarSet
trigger1 = Time = 15
v = 7
value = 1

[State 300, VarRandom]
type = VarRandom
trigger1 = (timemod = 10,0)
v = 12
range = 99,0

[State 300, Envsake Down]
type = EnvShake
triggerall = (var(12)>=0)
triggerall = (var(12)<50)
trigger1 = (timemod = 4,0)&&(time >15)
time = 4
freq = 300
ampl = (-5)-(ifelse(power >=2000,1,0))

[State 300, Envshake Up]
type = EnvShake
triggerall = (var(12)>=50)
triggerall = (var(12)<100)
trigger1 = (timemod = 4,0)&&(time >15)
time = 4
freq = 300
ampl = 5+(ifelse(power >=2000,1,0))

[State 300, Start Shake]
type = EnvShake
trigger1 = (time = 15)
time = 3
freq = 300
ampl = -12

[State 300, BGPalFX]
type = BGPalFX
trigger1 = (time >15)
trigger1 = (time <=30)
time = 1
color = 128

[State 300, BGPalFX]
type = BGPalFX
trigger1 = (time >30)
trigger1 = (time <=45)
time = 1
color = 96

[State 300, BGPalFX]
type = BGPalFX
trigger1 = (time >45)
trigger1 = (time <=60)
time = 1
color = 64

[State 300, BGPalFX]
type = BGPalFX
trigger1 = (time >60)
trigger1 = (time <=75)
time = 1
color = 32

[State 300, BGPalFX]
type = BGPalFX
triggerall = (time >75)
trigger1 = 1
time = 1
color = 0

[State 301, Green PalFX]
type = PalFX            ;Remove/modify this if
triggerall = (time >15) ;you prefer to use White PalFX
trigger1 = 1            ;in state 301
time = 1
mul = 192,256,128
color = 128

[State 300, Aura Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal
name = "Aura 2"
ID = 302
stateno = 302
pos = 0,0
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 300, PowerAdd]
type = PowerAdd
triggerall = (time > 15)
trigger1 = 1
value = 6

[State 300, VarSet]
type = VarSet
trigger1 = Time = 15
v = 7
value = 1

[State 300, scream]
type = PlaySnd
triggerall = var(7)=1
triggerall = (Power > 0)
triggerall = (Power < 2000)
trigger1 = (Time = 15)
value = S1,3
volume = 15
channel = 11

[state 300, end scream]
type = stopsnd
channel = 11
trigger1 = ((command !="holdc")||(command !="holdz"))
trigger2 = stateno != 300

[State 300, scream]
type = PlaySnd
triggerall = var(7)=1
triggerall = (Power > 2000)
trigger1 = (Time = 15)
value = S0,3
volume = 15
channel = 20

[State 300, scream]
type = PlaySnd
trigger1 = (Power = [1995,2000])
value = S5,6
volume = 15
channel = 20

[state 300, end scream]
type = stopsnd
channel = 20
trigger1 = ((command !="holdc")||(command !="holdz"))
trigger2 = stateno != 300

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
trigger2 = stateno != 300

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
trigger2 = stateno != 300

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
ownpal = 1

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
ownpal = 1

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
ownpal = 1

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
ownpal = 1

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
ownpal = 1

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
ownpal = 1

[state 300, dust3]
type = explod
trigger1 = time = 15
anim = 6120
ID = 6120
pos = 0,0
sprpriority = 3
removetime = -1
removeongethit = 1
bindtime = -1
ownpal = 1

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
ownpal = 1

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
ownpal = 1

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
ownpal = 1

[State 300, ChangeAnim]
type = ChangeAnim
triggerall = var(7) = 1
trigger1 =(Power > 2000) && (Anim != 303)
value = 303

[State 300, ChangeAnim]
type = ChangeAnim
triggerall = var(7) = 0
trigger1 =(Power > 2000) && (Anim != 415)
value = 415

[State 300, VarSet]
type = VarSet
trigger1 =(command != "holdc") || (command != "holdz")
trigger2 = stateno != 300
v = 7
value = 0

[state 300, change]
type = changestate
trigger1 =(command != "holdc") || (command != "holdz")
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;-----[Hypers]-----
;------------------------------------------------------------------------------

;KI Bomb (Lvl 1)
[Statedef 1000]
type 		= S
movetype	= A
physics		= S
anim		= 1000
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1000, What are U lookin' at?]
type = Turn
triggerall = Time = 0
trigger1 = P2BodyDist X < 0

[State 1000, Stay on the ground, sucker]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 25
sound = S5,10
pos = -999,-999
movetime = 25

[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 6030

[State 1000, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1000, Helper]
type = Helper
trigger1 = Animelem = 3
helpertype = normal
name = "Push Helper Foward"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 1000, PowerAdd]
type = PowerAdd
trigger1 = Time > 35
trigger1 = Time <= 85
value = -20

[State 1000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 7
value = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 26
value = S1,1
volume = 150
channel = 20

[State 1000, KI Bomb Charge Helper]
type = Helper
trigger1 = Time = 26
helpertype = normal
name = "KI Bomb Charge Lvl 1"
id = 6107
stateno = 6107
pos = 45, -67
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1000, StopSnd]
type = StopSnd
trigger1 = Time = 85
channel = 20

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S8,6
volume = 70

[State 1000, EnvColor]
type = EnvColor
trigger1 = Animelem = 3
value = 255,255,255
time = 1

[State 1000, KI Bomb Projecile Helper]
type = Helper
trigger1 = Animelem = 3
helpertype = normal
name = "KI Bomb Lvl 1"
ID = 6111
stateno = 6111
pos = 45,-67
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;KI Bomb (Lvl 2)
[Statedef 1010]
type 		= S
movetype	= A
physics		= S
anim		= 1010
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1010, What are U lookin' at?]
type = Turn
triggerall = Time = 0
trigger1 = P2BodyDist X < 0

[State 1010, Stay on the ground, sucker]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1010, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
sound = S5,10
pos = -999,-999
movetime = 40

[State 1010, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 6030

[State 1010, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1010, Helper]
type = Helper
trigger1 = Animelem = 3
helpertype = normal
name = "Push Helper Foward"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 1010, PowerAdd]
type = PowerAdd
trigger1 = Time > 30
trigger1 = Time <= 130
value = -20

[State 1010, VarSet]
type = VarSet
trigger1 = Time = 0
v = 7
value = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 41
value = S1,1
volume = 150
channel = 20

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 80
value = S12,3
volume = 180

[State 1010, KI Bomb Charge Helper]
type = Helper
trigger1 = Time = 41
helpertype = normal
name = "KI Bomb Charge Lvl 2"
id = 6108
stateno = 6108
pos = 45, -67
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

;[State 1010, Aura Helper]
;type = Helper
;trigger1 = Time = 41
;helpertype = normal
;name = "Aura"
;ID = 301
;stateno = 301
;pos = 10,0
;postype = p1
;facing = 0
;keyctrl = 0
;ownpal = 1
;size.xscale = 0.70
;size.yscale = 0.70

[State 1010, Aura Helper]
type = Helper
trigger1 = Time = 41
helpertype = normal
name = "Aura"
ID = 302
stateno = 302
pos = 10,0
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1010, Green PalFX]
type = PalFX              ;Remove/modify this, if you
triggerall = (time >39)   ;prefer to use white PalFX
trigger1 = 1              ;in state 301
time = 1
mul = 192,256,128
color = 128

[State 1010, BGPalFX]
type = BGPalFX
trigger1 = (time =40)
time = 10
color = 50

[State 1010, BGPalFX]
type = BGPalFX
trigger1 = (time =50)
time = 10
color = 40

[State 1010, BGPalFX]
type = BGPalFX
trigger1 = (time =60)
time = 10
color = 30

[State 1010, BGPalFX]
type = BGPalFX
trigger1 = (time =70)
time = 10
color = 20

[State 1010, BGPalFX]
type = BGPalFX
trigger1 = (time =80)
time = 10
color = 10

[State 1010, BGPalFX]
type = BGPalFX
trigger1 = (time =90)
time = 60
color = 0

[State 1010, Aura SND]
type = PlaySnd
trigger1 = Time = 41
value = S1,4
loop = 1
volume = 1
channel = 10

[State 300, Backround SND]
type = PlaySnd
trigger1 = Time = 41
value = S7,1
loop = 1
volume = 2
channel = 12
removeongethit = 1

[State 1010, StopSnd]
type = StopSnd
trigger1 = Time = 130
channel = 20

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S8,5
volume = 70

[State 1010, EnvColor]
type = EnvColor
trigger1 = Animelem = 3
value = 255,255,255
time = 1

[State 1010, KI Bomb Projecile Helper]
type = Helper
trigger1 = Animelem = 3
helpertype = normal
name = "KI Bomb Lvl 2"
ID = 6113
stateno = 6113
pos = 45,-67
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.25
size.yscale = 1.25

[State 1010, End Aura SND]
type = StopSND
channel = 10
trigger1 = Animelem = 3

[State 1010, End Background SND]
type = StopSND
channel = 12
trigger1 = Animelem = 3

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;KI Bomb (Lvl 3)
[Statedef 1020]
type 		= S
movetype	= A
physics		= S
anim		= 1020
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1020, What are U lookin' at?]
type = Turn
triggerall = Time = 0
trigger1 = P2BodyDist X < 0

[State 1020, Stay on the ground, sucker]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1020, VarSet]
type = VarSet
trigger1 = Time = 0
v = 7
value = 1

[State 1020, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
sound = S5,10
pos = -999,-999
movetime = 40

[State 1020, Scream]
type = PlaySnd
trigger1 = Animelem = 2
value = S1,3
volume = 140
channel = 10

[State 1020, EnvShake]
type = EnvShake
trigger1 = Time = 41
time = 90
freq = 120
ampl = -5
phase = 140

[State 1020, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 6030

[State 1020, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1020, Helper]
type = Helper
trigger1 = Animelem = 18
helpertype = normal
name = "Push Helper Foward"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 1020, PowerAdd]
type = PowerAdd
trigger1 = Time > 30
trigger1 = Time <= 230
value = -15

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = Time = 131
value = S1,1
volume = 150
channel = 20

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = Time = 170
value = S12,3
volume = 180

[State 1020, KI Bomb Charge Helper]
type = Helper
trigger1 = Time = 131
helpertype = normal
name = "KI Bomb Charge Lvl 3"
id = 6109
stateno = 6109
pos = 45, -67
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.25
size.yscale = 1.25

[State 1020, EnvShake]
type = EnvShake
trigger1 = Time = 131
time = 100
freq = 120
ampl = -3
phase = 120

;[State 1020, Aura Helper]
;type = Helper
;trigger1 = Time = 41
;helpertype = normal
;name = "Aura"
;ID = 301
;stateno = 301
;pos = 5,0
;postype = p1
;facing = 0
;keyctrl = 0
;ownpal = 1
;size.xscale = 0.70
;size.yscale = 0.70

[State 1020, Aura Helper]
type = Helper
trigger1 = Time = 41
helpertype = normal
name = "Aura 2"
ID = 302
stateno = 302
pos = 5,0
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1020, Green PalFX]
type = PalFX              ;Remove/modify this, if you
triggerall = (time >40)   ;prefer to use white PalFX
trigger1 = 1              ;in state 301
time = 1
mul = 192,256,128
color = 128

[State 1020, BGPalFX]
type = BGPalFX
trigger1 = (time =40)
time = 10
color = 50

[State 1020, BGPalFX]
type = BGPalFX
trigger1 = (time =50)
time = 10
color = 40

[State 1020, BGPalFX]
type = BGPalFX
trigger1 = (time =60)
time = 10
color = 30

[State 1020, BGPalFX]
type = BGPalFX
trigger1 = (time =70)
time = 10
color = 20

[State 1020, BGPalFX]
type = BGPalFX
trigger1 = (time =80)
time = 10
color = 10

[State 1020, BGPalFX]
type = BGPalFX
trigger1 = (time =90)
time = 160
color = 0

[State 300, Aura SND]
type = PlaySnd
trigger1 = Time = 131
value = S1,4
loop = 1
volume = 1
channel = 10

[State 1020, Backround SND]
type = PlaySnd
trigger1 = Time = 131
value = S7,1
loop = 1
volume = 2
channel = 12
removeongethit = 1

[State 1020, StopSnd]
type = StopSnd
trigger1 = Time = 231
channel = 20

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 18
value = S8,2
volume = 70

[State 1020, EnvColor]
type = EnvColor
trigger1 = Animelem = 18
value = 255,255,255
time = 1

[State 1020, KI Bomb Projecile Helper]
type = Helper
trigger1 = Animelem = 18
helpertype = normal
name = "KI Bomb Lvl 3"
ID = 6114
stateno = 6114
pos = 45,-67
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.25
size.yscale = 1.25

[State 1020, End Aura SND]
type = StopSND
channel = 10
trigger1 = Animelem = 18

[State 1020, End Background SND]
type = StopSND
channel = 12
trigger1 = Animelem = 18

[State 1020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Eraser Cannon Phase 1
[Statedef 1030]
type 		= S
movetype	= A
physics		= S
anim		= 1030
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1030, What are U lookin' at?]
type = Turn
triggerall = Time = 0
trigger1 = P2BodyDist X < 0

[State 1030, Stay on the ground, sucker]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1030, VarSet]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 1030, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 20
sound = S5,10
pos = -999,-999
movetime = 20

[State 1030, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 6030

[State 1030, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1030, PowerAdd]
type = PowerAdd
trigger1 = Time > 20
trigger1 = Time <= 120
value = -20

[State 1030, BGPalFX]
type = BGPalFX
trigger1 = Time = 55
time = 10
color = 96

[State 1030, BGPalFX]
type = BGPalFX
trigger1 = Time = 65
time = 10
color = 64

[State 1030, BGPalFX]
type = BGPalFX
trigger1 = Time = 75
time = 10
color = 32

[State 1030, BGPalFX]
type = BGPalFX
trigger1 = Time = 85
time = 50
color = 0

[State 1030, Aura Helper]
type = Helper
trigger1 = Time = 90
helpertype = normal
name = "Aura 2"
ID = 302
stateno = 302
pos = 5,0
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = Time = 90
value = S5,23
volume = 140

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = Time = 91
value = S7,1
volume = 140
channel = 20

[State 1030, VarSet]
type = VarSet
trigger1 = Time = 0
v = 7
value = 1

[State 1030, VarSet]
type = VarSet
trigger1 = Time = 55
v = 10
value = 1

[State 1030, VarSet]
type = VarSet
trigger1 = Time = 85
v = 10
value = 2

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = Time = 85
value = S12,2
volume = 160

[State 1030, VarSet]
type = VarSet
trigger1 = Time = 115
v = 10
value = 3

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = S5,33
volume = 150
channel = 20

[State 1030, KI Bomb Charge Helper]
type = Helper
trigger1 = Time = 21
helpertype = normal
name = "Eraser Charge"
id = 6116
stateno = 6116
pos = -20, -55
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1030, StopSnd]
type = StopSnd
trigger1 = Time = 119
channel = 20

[State 1030, ChangeState]
type = ChangeState
triggerall = var(59) > 0
triggerall = time > 20
triggerall = var(10) > 0
trigger1 = inguarddist
value = 1031

[State 1030, ChangeState]
type = ChangeState
triggerall = time > 20
triggerall = var(10) > 0
trigger1 = command != "holdx"
trigger2 = animtime = 0
trigger3 = power = 0
value = 1031

;Eraser Cannon Phase 2
[Statedef 1031]
type 		= S
movetype	= A
physics		= S
anim		= 1031
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
value = S5,12
volume = 140

[State 1031, Eraser Cannonball]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Eraser Cannonball"
ID = 6115
stateno = 6115
pos = 90,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1031, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Sayan's Fury
[Statedef 1040]
type 		= S
movetype	= A
physics		= S
anim		= 1040
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1040, Stay on the ground, sucker]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1040, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 20
sound = S5,10
pos = -999,-999
movetime = 30

[State 300, Start Shake]
type = EnvShake
trigger1 = (time = 31)
time = 10
freq = 300
ampl = -12

[State 1040, BGPalFX]
type = BGPalFX
triggerall = Time = 31
trigger1 = 1
time = 105
color = 0

[State 1040, Envsake Down]
type = EnvShake
trigger1 = (Time = 41)
time = 65
freq = 300
ampl = (-5)

[State 1040, VarSet]
type = VarSet
trigger1 = Animelem = 2
var(25) = 1

[State 1040, EnvColor]
type = EnvColor
trigger1 = Animelem = 2
value = 255,255,255
time = 1

[State 1040, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S5,23
volume = 180

[State 1040, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Push Helper Fwd"
ID = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 1040, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Push Helper Backward"
ID = 6301
stateno = 6301
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[State 1040, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Push Helper Up"
ID = 6302
stateno = 6302
pos = 0,0
postype = p1
facing = 1
keyctrl = 0

[state 1040, grey ring]
type = explod
trigger1 = time =31
anim = 6060
Id = 6060
pos = 4, -63
sprpriority = 10000000000
scale = 3,3
ontop =1
bindtime = -1

[State 1040, dust2]
type = explod
trigger1 = time = 31
anim = 6135
pos = -30, 5
id = 6135
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1

[State 1040, dust2]
type = explod
trigger1 = time = 31
anim = 6130
pos = 30, 5
id = 6130
scale = 1, 1
sprpriority = -1
ontop = 1
bindtime = -1

[State 1040, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,3
volume = 180
channel = -1

[State 1040, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Expanding Energy Blast
[Statedef 1050]
type 		= S
movetype	= A
physics		= S
anim		= 1050
ctrl		= 0
poweradd	= 0
sprpriority	= 2

[State 1050, What are U lookin' at?]
type = Turn
triggerall = Time = 0
trigger1 = P2BodyDist X < 0

[State 1050, Stay on the ground, sucker]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1050, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 20
sound = S5,10
pos = -999,-999
movetime = 20

[State 1050, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 6030

[State 1050, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1050, PowerAdd]
type = PowerAdd
trigger1 = Time >= 0
trigger1 = Time <= 100
value = -20

[State 1050, Green PalFX]
type = PalFX
triggerall = (time >20)
trigger1 = 1
time = 1
mul = 192,256,128
color = 128

[State 1050, EnvShake]
type = EnvShake
trigger1 = Time = 20
time = 82
freq = 120
ampl = -2
phase = 120

[State 1050, BGPalFX]
type = BGPalFX
trigger1 = Time = 20
time = 10
color = 128

[State 1050, BGPalFX]
type = BGPalFX
trigger1 = Time = 30
time = 10
color = 96

[State 1050, BGPalFX]
type = BGPalFX
trigger1 = Time = 40
time = 10
color = 64

[State 1050, BGPalFX]
type = BGPalFX
trigger1 = Time = 50
time = 10
color = 32

[State 1050, BGPalFX]
type = BGPalFX
trigger1 = Time = 60
time = 50
color = 0

[State 1050, Aura Helper]
type = Helper
trigger1 = Time = 20
helpertype = normal
name = "Aura 2"
ID = 302
stateno = 302
pos = 5,0
postype = p1
facing = 0
keyctrl = 0
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = Time = 21
value = S1,1
volume = 180

[State 1050, Helper]
type = Helper
trigger1 = Time = 21
helpertype = normal
name = "Expanding Energy Blast Charge"
ID = 6117
stateno = 6117
pos = -27,-48
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = Time = 103
value = S5,17
volume = 180

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = Time = 102
value = S12,7
volume = 190

[State 1050, EnvShake]
type = EnvShake
trigger1 = Time = 102
time = 10
freq = 180
ampl = -5
phase = 140

[State 1050, ForceFeedback]
type = ForceFeedback
trigger1 = Time = 102
waveform = "sine"
time = 10
freq = 128,64,64,10
ampl = 128,64,64,10
self = 1

[State 1050, Helper]
type = Helper
trigger1 = Time = 103
helpertype = normal
name = "Expanding Energy Blast"
ID = 6118
stateno = 6118
pos = 86,-107
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1050, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

