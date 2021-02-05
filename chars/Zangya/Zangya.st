;---------------------------------------------------------------------------
;-----------------------| States for Super Zangya |-------------------------
;---------------------------| By SSj3 Vejita |------------------------------
;---------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0,0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;---------------------------------------------------------------------------
[Statedef 180]
type = S
ctrl = 0
velset = 0,0,0

[State 0, Not Lamers]
type = ChangeState
triggerall = var(7) = 0
trigger1 = life < 200
value = 181

[State 0, Lamers]
type = ChangeState
triggerall = var(7) = 1
trigger1 = life < 200
value = 184

[State 0, Not lamers]
type = ChangeState
triggerall = var(7) = 0
trigger1 = life = [200,700]
value = 183

[State 0, Lamers]
type = ChangeState
triggerall = var(7) = 1
trigger1 = life = [200,700]
value = 184

[State 0, Not Lamers]
type = ChangeState
trigger1 = life > 700
value = 182
;---------------------------------------------------------------------------
;Light
[Statedef 181]
type = S
ctrl = 0
velset = 0,0,0

[State 0, ]
type = AssertSpecial
trigger1 = time = [0,220]
flag = roundnotover

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 181
;---------------------------------------------------------------------------
;Hard
[Statedef 182]
type = S
ctrl = 0
velset = 0,0,0
anim = 180

[State 0, ]
type = AssertSpecial
trigger1 = time = [0,180]
flag = roundnotover
;---------------------------------------------------------------------------
;medium
[Statedef 183]
type = S
ctrl = 0
velset = 0,0,0
anim = 182

[State 0, ]
type = AssertSpecial
trigger1 = time = [0,180]
flag = roundnotover
;---------------------------------------------------------------------------
;Lamers
[Statedef 184]
type = S
ctrl = 0
velset = 0,0,0
anim = 183

[State 0, ]
type = AssertSpecial
trigger1 = time = [0,180]
flag = roundnotover
;---------------------------------------------------------------------------
;charge
[Statedef 550]
type = S
movetype = I
physics = S
anim = 550
velset = 0,0,0
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = Time = 0
value = 0,2
channel = 2

[State 0, ]
type = EnvShake
trigger1 = time = 10
time = 10
freq = 60
ampl = -4
phase = 8

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 551
;---------------------------------------------------------------------------
[Statedef 551]
type = S
movetype = I
physics = S
velset = 0,0,0
anim = 551

[State 0, ]
type = PlaySnd
triggerall = time > 40
trigger1 = (gametime%28) = 0
value = 0,11
channel = 3

[State 0, ]
type = Helper
TRIGGER1 = time = 0
helpertype = normal
sprpriority = -2
name = "aura"
ID = 736
pos = 0,5
postype = p1
facing = 1
stateno = 738
keyctrl = 0
ownpal = 1
size.xscale=0.6
size.yscale=0.6

[State 0, ]
type = AllPalFX
trigger1 = power > 2500
trigger1 = random > 950
time = 1
add = 150,150,150
ignorehitpause = 1

[State 0, ]
type = PowerAdd
trigger1 = gametime%2=0
value = 8

[State 0, ]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = time > 10
trigger1 = command != "charge"
trigger2 = var(59) > 0
trigger2 = random > 970
trigger2 = time > 90
value = 552
;---------------------------------------------------------------------------
[Statedef 552]
type = S
movetype = I
physics = S
velset = 0,0,0
anim = 552

[State 0, ]
type = StopSnd
trigger1 = time=0
channel = 2

[State 0, ]
type = StopSnd
trigger1 = time=0
channel = 3

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Air Charge
[Statedef 553]
type = A
movetype = I
physics = N
anim = 553
velset = 0,0,0
ctrl = 0

[State 0, ]
type = EnvShake
trigger1 = time = 10
time = 10
freq = 60
ampl = -4
phase = 8

[State 0, Floating code]
type = PosAdd
trigger1 = pos y < 0
y = ifelse(var(17)=1,0.1,-0.1)

[State 0, ]
type = PlaySnd
trigger1 = Time = 0
value = 0,2
channel = 2

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 554
;---------------------------------------------------------------------------
[Statedef 554]
type = A
movetype = I
physics = N
anim = 554
velset = 0,0,0

[State 0, ]
type = PlaySnd
triggerall = time > 60
trigger1 = (gametime%28) = 0
value = 0,11
channel = 3

[State 0, Floating code]
type = PosAdd
trigger1 = pos y < 0
y = ifelse(var(17)=1,0.1,-0.1)

[State 0, ]
type = Helper
TRIGGER1 = time = 0
helpertype = normal
sprpriority = -2
name = "aura"
ID = 736
pos = 0,0
postype = p1
facing = 1
stateno = 738
keyctrl = 0
ownpal = 1
size.xscale=0.6
size.yscale=0.6

[State 0, ]
type = PowerAdd
trigger1 = gametime%2=0
value = 7

[State 0, ]
type = ChangeState
trigger1 = command != "charge"
value = 555
;---------------------------------------------------------------------------
[Statedef 555]
type = A
movetype = I
physics = N
anim = 555
velset = 0,0,0

[State 0, Floating code]
type = PosAdd
trigger1 = pos y < 0
y = ifelse(var(17)=1,0.1,-0.1)

[State 0, ]
type = StopSnd
trigger1 = time=0
channel = 2

[State 0, ]
type = StopSnd
trigger1 = time=0
channel = 3

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
ctrl = 0
anim = 200

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25,12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1,1
numhits = 1
sparkno = S4
guard.sparkno = S8
sparkxy = 0,-42
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = 0
airguard.velocity = 0
air.velocity = -0.2,-1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Disperse
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
ctrl = 0
anim = 201

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25,12
animtype = Light
hitflag = MAFPD
guardflag = MA
priority = 3, Hit
pausetime = 1,1
numhits = 1
sparkno = S4
guard.sparkno = S8
sparkxy = -5,-50
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 3
ground.hittime = 7
ground.velocity = 0
airguard.velocity = 0
air.velocity = -0.2,-1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; hard punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 3
velset = 0,0,0
ctrl = 0
anim = 205

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1
 
[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 31,15
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2,2
numhits = 1
sparkno = S4
guard.sparkno = S8
sparkxy = -5,-42
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -4
airguard.velocity = -1.9
air.velocity = -1.3,-3

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Uppercut
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 7
velset = 0,0,0
ctrl = 0
anim = 220

[State 210, 0]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1
 
[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 210, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 31,15
animtype = Mdium
affectteam = E
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,3
sparkno = S4
guard.sparkno = S8
numhits = 1
sparkxy = -5,-40
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -1,-7
airguard.velocity = -1.9
air.velocity = -1.3,-5
fall = 1

[State 0, ]
type = PlayerPush
trigger1 = AnimElemno(0) = 2
trigger2 = AnimElemno(0) = 3
trigger3 = AnimElemno(0) = 4
value = 0

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 2
x =  2
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(1) = 2
x =  1.3
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 3
x =  0.6
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(1) = 3
x =  0.3
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 4
x =  0
y = -5

[State 202, 3]
type = VelSet
trigger1 = AnimElemno(0) = 5
x = 0
y = 0

[State 202, 7]
type = ChangeState
trigger1 = AnimElemno(0) = 6
value = 50
;---------------------------------------------------------------------------
; Light Kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 36,16
guardflag = MA
animtype = medium
priority = 3
pausetime = 3,3
sparkno = S4
guard.sparkno = S8
sparkxy = -10,-50
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 4
ground.hittime = 4
ground.velocity = -0.6
airguard.velocity = -0.9
air.velocity = -0.1,-2

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hard Kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 240

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = hard
damage = 42,16
guardflag = MA
pausetime = 4,4
sparkno = S4
guard.sparkno = S8
sparkxy = -10,-48
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -1
air.velocity = -2.2,-3.2

[State 240, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Kick Uppercut
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
velset = 0,0,0
anim = 250

[State 250, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Up
affectteam = E
damage = 46,17
guardflag = MA
pausetime = 5,5
sparkno = S4
guard.sparkno = S8
sparkxy = -3,-65
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2,-8.5
air.velocity = -2.2,-3.2
fall = 1

[State 250, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Light Punch - Crouching
[Statedef 300]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 300

[State 330, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 0

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 212, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 22,13
animtype = light
guardflag = LA
pausetime = 1,1
sparkno = S4
guard.sparkno = S8
sparkxy = -0,-25
hitsound = S12,5
guardsound = S12,3
ground.type = Low
ground.slidetime = 7
ground.hittime = 13
ground.velocity = -4.3
air.velocity = -2.5,-3

[State 212, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Hard Punch - Crouching
[Statedef 310]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 310

[State 310, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 310, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 28,14
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 2,2
sparkno = S4
guard.sparkno = S8
sparkxy = -2,-41
hitsound = S12,5
guardsound = S12,3
ground.type = Low
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 310, 3]
type = CtrlSet
trigger1 = Time = 4
value = 1

[State 310, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;Light Kick - Crouching
[Statedef 330]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
velset = 0,0,0
anim = 330

[State 330, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 330, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 37,15
guardflag = LA
animtype = medium
priority = 3
pausetime = 3,3
sparkno = S4
guard.sparkno = S8
sparkxy = -10,-5
hitsound = S12,5
guardsound = S12,3
ground.type = Low
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -4.5
airguard.velocity = -1.9
air.velocity = -1.3,-3

[State 330, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Hard Kick - Crouching (slide kick)
[Statedef 340]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
velset = 0,0,0
anim = 340

[State 340, 0]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 340, 1]
type = Velset
trigger1 = animelem = 2
x = 14

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 340, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 42,16
animtype = Hard
hitflag = MAFD
guardflag = LA
pausetime = 4,4
sparkno = S4
guard.sparkno = S8
sparkxy = -5,-5
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 10
ground.hittime = 15
ground.velocity = -1.5
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 340, 3]
type = Velset
trigger1 = animelem = 3
x = 0

[State 340, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;light punch In Air
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 205

[State 630, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
v = 5
range = 5,30

[State 630, 2]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 25,12
guardflag = HA
priority = 3
animtype = light
pausetime = 1,1
sparkno = S4
guard.sparkno = S8
sparkxy =  -5,-52
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -3.5
air.velocity = -2,-3
airguard.velocity = -3     

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Hard Punch In Air
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 640

[State 640, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 640, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 37,18
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = S4
guard.sparkno = S8
sparkxy =  4,-40
hitsound = S12,5
guardsound = S12,3
animtype = medium
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -2.5,8.1
air.velocity = -2.5,8.1
airguard.velocity = -2.3
fall = 1

[State 640, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;Light Kick In Air
[Statedef 430]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 430

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 42,9
animtype = medium
guardflag = MA
pausetime = 3,3
sparkno = S4
guard.sparkno = S8
sparkxy = -10,-48
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -3.5
air.velocity = -1.5,-2.1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;--------------------------------------------------------------------------- 
;Hard Kick In Air
[Statedef 440]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 440

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = hard
damage = 50,24
guardflag = HA
priority = 3
pausetime = 4,5
sparkno = S4
guard.sparkno = S8
sparkxy = 0,-12
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -4
air.velocity = -7.3,7.3
fall = 1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;------------------------------------------------------------
;Initials for flying
[Statedef 99]
type = S
movetype = I
physics = S
velset = 0,0,0
Anim = 98
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 7,1
channel = 1

[State set the flying controller on]
type = VarSet
triggerall = prevstateno != 50
triggerall = prevstateno != 1770
triggerall = prevstateno != 1771
triggerall = prevstateno != 98
trigger1 = pos y < 0
trigger1 = animelem = 4
v = 8
value = 1

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 98

[State Air Ctrl]
type = VarSet
trigger1 = pos y < 0
v = 8
value = 1

[State 0, ]
type = VelAdd
trigger1 = animelem = 4
y = -6

[State 0, ]
type = ChangeState
trigger1 = !animtime
value = 98
ctrl = 1

;---------------------------------------------------------------------------
;Fly
[Statedef 98]
type = A
movetype = I
physics = N
ctrl = 1
anim = 99
velset = 0,0,0

[State Air block]
type = VarSet
trigger1 = 1
v = 9
value = 0

[State Air Ctrl]
type = VarSet
trigger1 = 1
v = 8
value = 1

[State 0, ]
type = ChangeAnim
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = Var(59) > 0 && Vel X = 0 && Vel Y = 0 && Anim != 99
trigger3 = Vel X = 0 && Vel Y = 0 && Anim != 99
value = 99

[State 0, ->]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = Var(59) > 0 && Vel X > 0 && Anim != 42
value = 42

[State 0, <-]
type = ChangeAnim
trigger1 = command != "holdfwd"
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = Var(59) > 0 && Vel X < 0 && Anim != 43
value = 43

[State 0, /\]
type = ChangeAnim
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command = "holdup"
trigger1 = command != "holddown"
trigger2 = var(59) > 0 && Vel X = 0 && Vel Y < 0 && Anim != 41
value = 41

[State 0, \/]
type = ChangeAnim
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command = "holddown"
trigger2 = var(59) > 0 && Vel X = 0 && Vel Y > 0 && Anim != 97
value = 97

[State idle velocity]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = command = "holdup"
trigger1 = command = "holddown"
y = 0

[State 0, ]
type = VelSet
trigger1 = command = "holdup"
trigger1 = command != "holddown"
y = -4

[State 0, ]
type = VelSet
trigger1 = command = "holddown"
trigger1 = command != "holdup"
y = 4

[State 0, ]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = command = "holdback"
x = 0

[State 0, ]
type = VelSet
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
x = -4

[State 0, ]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = command != "holdback"
x = 4

[State 0, ]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 0, ]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0

[State 0, Turn Over]
type = Turn
trigger1 = P2dist X < 0

[State 0, ]
type = VelSet
trigger1 = ScreenPos Y < 0 && Vel Y < 0
y = 0

[State 0, AI]
type = VelSet
trigger1 = Var(59) > 0
x = p2bodydist x / 20
y = p2bodydist y / 10

[State 0, Floating code]
type = PosAdd
trigger1 = vel y = 0
y = ifelse(var(17)=1,0.1,-0.1)

[State 0, Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1

[State 0, Turn Off]
type = ChangeState
trigger1 = command = "fly"
trigger1 = prevstateno != 50
trigger1 = prevstateno != 1770
trigger1 = prevstateno != 1771
trigger1 = prevstateno != 5040
value = 50
ctrl = 1

[State 0, Turn Block Off]
type = VarSet
trigger1 = Pos Y >= 0
trigger2 = command = "fly"
trigger2 = ctrl = 1
v = 11
value = 0

[State 0, Block]
type = ChangeState
trigger1 = p2movetype = A
trigger1 = p2bodydist x < 20
trigger1 = p2bodydist y = [-20,20]
trigger1 = command = "holdback"
value = 132

[State 0, Win or lose = land]
type = ChangeState
trigger1 = Win = 1
trigger2 = Lose = 1
value = 50

;---------------------------------------------------------------------------
; Initial Throw - catch
[Statedef 900]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 900

[State 0, ]
type = PlaySnd
trigger1 = Time = 1
value = 1,7

[State 0, ]
type = HitDef
Trigger1 = Time = 0
Trigger1 = Command = "holdfwd"
attr = S, NT
hitflag = M-
priority = 1, Miss
snap = 34,0
sparkno = -1
p1facing = 1
p2facing = -1
p1stateno = 905
p2stateno = 910
p2getp1state = 1
fall = 1

[State 0, ]
type = Playerpush
Trigger1 = 1
value = 0

[State 0, ]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------
; Throw - Animation
[Statedef 905]
type    = S
movetype= A
physics = S
anim = 905
velset = 0,0,0

[State 0, ]
type = Playerpush
Trigger1 = 1
value = 0

[State 0, ]
type = Turn
Trigger1 = AnimElem = 3

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,1
volume = 255

[State 0, ]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Throw - the enemy
[Statedef 910]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0,0

[State 0, ]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 0, ]
type = HitFallSet
Trigger1 = Time = 0
value = 1

[State 0, ]
type = ChangeAnim2
Trigger1 = time = 0
value = 909

[State 0, ]
type = ChangeState
Trigger1 = time >= 33
value = 911

;---------------------------------------------------------------------------
; Throw - the enemy Part 2
[Statedef 911]
type    = A
movetype= H
physics = N
velset = -15.5,-11.5

[State 0, ]
type = VelAdd
Trigger1 = Time >= 0
y = .35

[State 0, ]
type = ChangeAnim2
Trigger1 = Time = 0
value = 910

[State 0, ]
type = ChangeState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 912

[State 0, ]
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive = 1
triggerall = CanRecover = 1
trigger1 = Command = "recovery"
value = 5200

[State 0, ]
type = SelfState
triggerall = Vel Y > -1
triggerall = Vel Y < 40
triggerall = alive = 1
triggerall = CanRecover = 1
trigger1 = Command = "recovery"
value = 5210
;---------------------------------------------------------------------------
; Throw - the enemy Part 3
[Statedef 912]
type    = L
movetype= H
physics = N

[State 0, ]
type = ChangeAnim
Trigger1 = Time = 0
value = 5100

[State 0, ]
type = PosSet
Trigger1 = Time = 0
y = 0

[State 0, ]
type = VelSet
Trigger1 = Time = 0
y = 0

[State 0, ]
type = VelMul
Trigger1 = Time = [0,2]
x = 0.85

[State 0, ]
type = HitFallDamage
trigger1 = Pos Y <= 0

[State 0, ]
type = GameMakeAnim
trigger1 = Time = 0
value = 15
pos = 0, 0
under = 1

[State 0, ]
type = LifeAdd
Trigger1 = Pos Y >= 0
value = -7

[State 0, ]
type = PlaySnd
trigger1 = Time = 3
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 0, ]
type = SelfState
Trigger1 = Time = 3
value = 5101
;----------------------------------------------------------------
;Fireball
[Statedef 1000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1
velset = 0,0,0

[state 0, ]
type = varset
trigger1 = time = 0
var(13) = 1

[state 0, ]
type = varadd
trigger1 = time = 0
v = 15
value = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,10

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 0, ]
type = Helper
trigger1 = var(15) < 8
trigger1 = AnimElem = 4
helpertype = normal
name = "fireball"
ID = 222
pos = 46,-44
postype = p1
stateno = 1322
ignorehitpause = 1

[State 0, ]
type = Projectile
trigger1 = var(15) < 8
trigger1 = AnimElem = 4
ProjAnim = 9
ProjHitAnim = 717
offset = 46, -44
velocity = 10,0
velmul = 1,0
remvelocity = 0,0
accel = 0,0
projid = 223
attr = S, SP
damage = 22,11
animtype = Medium
hitflag = MADFP
guardflag = MA
pausetime = 0,12
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 0, ]
type = Projectile
trigger1 = var(15) = 8
trigger1 = AnimElem = 4
ProjAnim = 7
offset = 39, -44
velocity = 0,0
velmul = 1,0
scale = 0.6,0.6
remvelocity = 0,0
projremovetime = 16
accel = 0,0
projid = 223
attr = S, SP
damage = 22,11
animtype = Medium
hitflag = MADFP
guardflag = MA
pausetime = 0,12
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 0, ]
type = PowerAdd
trigger1 = AnimElem = 4
value = -200

[State 0, ]
type = ChangeState
triggerall = Animelem = 5
trigger1 = Power = 0
trigger2 = var(15) >= 8
value = 5301

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------
;Laser
[Statedef 1100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 13
velset = 0,0,0

[state 0, ]
type = varset
trigger1 = time = 0
var(13) = 1

[state 0, ]
type = varadd
trigger1 = time = 0
v = 15
value = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,7

[State 0, ]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Laser"
ID = 223
pos = 28,-45
postype = p1
stateno = 1329
ignorehitpause = 1

[State 0, ]
type = PowerAdd
trigger1 = AnimElem = 2
value = -200

[State 0, ]
type = ChangeState
trigger1 = Power = 0
trigger1 = AnimTime = 0
trigger2 = var(15) >= 8
trigger2 = AnimTime = 0
value = 5301

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Exhausted
[Statedef 5300]
type = S
ctrl = 0
velset = 0,0,0

[State 0, ]
type = ChangeAnim
trigger1 = pos y = 0 && anim != 5300
value = 5300

[State 0, ]
type = ChangeAnim
trigger1 = pos y < 0 && anim != 5350
value = 5350

[State 0, Falling code]
type = PosAdd
trigger1 = pos y < 0
y = 0.2

[State 0, ]
type = varset
trigger1 = time = 0
var(15) = 0

[State 0, ]
type = varset
trigger1 = time = 0
var(14) = 0

[State 0, ]
type = varset
trigger1 = time = 0
var(13) = 0

[State 0, ]
type = Changestate
triggerall = var(59) < 2
trigger1 = Var(5) = 0
value = 0
ctrl = 1

[State 0, ]
type = Changestate
triggerall = var(59) >= 2
trigger1 = Var(5) <= 300
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Exhausted - fireball
[Statedef 5301]
type = S
ctrl = 0
velset = 0,0,0

[State 0, ]
type = ChangeAnim
trigger1 = pos y = 0 && anim != 5300
value = 5300

[State 0, ]
type = ChangeAnim
trigger1 = pos y < 0 && anim != 5350
value = 5350

[State 0, Falling code]
type = PosAdd
trigger1 = pos y < 0
y = 0.2

[State 0, ]
type = varset
trigger1 = time = 0
var(15) = 0

[State 0, ]
type = varset
trigger1 = time = 0
var(14) = 0

[State 0, ]
type = varset
trigger1 = time = 0
var(13) = 0

[State 0, ]
type = Changestate
trigger1 = Var(59) = 0
trigger1 = time >= 180
value = 0
ctrl = 1

[State 0, ]
type = Changestate
triggerall = Var(59) < 2
trigger1 = time >= 150
value = 0
ctrl = 1

[State 0, ]
type = Changestate
triggerall = Var(59) >= 2
trigger1 = time >= 80
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Super jump
[Statedef 1770]
type    = A
movetype= I
physics = A
velset = 0,0,0
ctrl = 1

[State 0, ]
type = Veladd
trigger1 = Vel X >= 0 && vel x < 4 && vel y < 0
trigger1 = command = "holdfwd"
trigger2 = Vel X < 0
trigger2 = command != "holdback"
trigger2 = command != "holdfwd"
x = 0.2

[State 0, ]
type = Veladd
trigger1 = Vel X <= 0 && vel x > -4 && vel y < 0
trigger1 = command = "holdback"
trigger2 = Vel X > 0
trigger2 = command != "holdback"
trigger2 = command != "holdfwd"
x = -0.2

[State 0, ]
type = VelSet
trigger1 = time = 0
x = const(velocity.jump.neu.x)
y = -14.0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 2]
type = ChangeAnim
trigger1 = Vel x != 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))
persistent=0

[State 50, 2]
type = ChangeAnim
trigger1 = Vel x = 0
value = 41
persistent=0

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 0, ]
type = ChangeState
trigger1 = time > 10
trigger1 = pos y >= 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;renzoku - charge
[Statedef 1200]
type    = S
movetype= A
physics = S
velset = 0,0,0
juggle  = 8
ctrl = 0
anim = 1200

[State 0, ]
type = ChangeState
trigger1 = animelem = 4
value = 1201
;---------------------------------------------------------------------------
;renzoku energy dan
[Statedef 1201]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 5
anim = 1004
velset = 0,0,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = 0,10

[State 0, ]
type = VarRandom
trigger1 = time > 0
v = 26
range = 9

[State 0, ]
type = Projectile
trigger1 = animelem = 2
trigger2 = animelem = 4
ProjAnim = 2
ProjHitAnim = 717
offset = 35, -44
velocity = 5,IfElse(Var(26) = 0,-0.5,IfElse(Var(26) = 1,0.5,  IfElse(Var(26) = 2,-0.4,  IfElse(Var(26) = 3,0.4,  IfElse(Var(26) = 4,0.3,  IfElse(Var(26) = 5,-0.3,IfElse(Var(26) = 6,0.2,  IfElse(Var(26) = 7,-0.2,  IfElse(Var(26) = 8,-1,0.1)))))))))
accel = 0,IfElse(Var(26) = 0,0.01, IfElse(Var(26) = 1,-0.01, IfElse(Var(26) = 2,0.02, IfElse(Var(26) = 3,-0.02, IfElse(Var(26) = 4,-0.03, IfElse(Var(26) = 5,0.03, IfElse(Var(26) = 6,-0.01, IfElse(Var(26) = 7,0.01, IfElse(Var(26) = 8,0.01,-0.01)))))))))
remvelocity = 0,0
scale = 0.2,0.2
attr = S, SP
damage    = 10,5
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,2
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = S12,1
guardsound = S12,3
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 0, ]
type = PowerAdd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = -200

[State 0, ]
type = ChangeState
trigger1 = Power = 0
trigger2 = time > 150
value = 5301

[State 0, ]
type = ChangeState
trigger1 = win = 1
value = 0
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Counter attack
[Statedef 70]
type = S
movetype = A
physics = N
juggle = 4
poweradd = 0
anim = 231
velset = 0,0,0
ctrl = 0

[State 0, ]
type = Turn
trigger1 = p2dist x < 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = -200
ignorehitpause = 1

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, ]
type = AllPalFX
trigger1 = movehit
time = 4
add = 120,120,120
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 4,Hit
damage = 40,10
pausetime = 10,10
sparkno = S4
guard.sparkno = S8
sparkxy = -7,-51
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 30
ground.hittime = 50
ground.velocity = -7,-1
air.velocity = -7,-2
fall = 1
fall.damage = 10
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 260
envshake.ampl = -4
envshake.phase = 90

[State 0, ]
type = ChangeState
trigger1 = animTime = 0
trigger1 = pos y >= 0
value = 0
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = var(8) = 1
trigger1 = animTime = 0
trigger1 = pos y < 0
value = 98
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = var(8) = 0
trigger1 = animTime = 0
trigger1 = pos y < 0
value = 50
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Sharp Shooter
[Statedef 69]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 729
velset = 0,0,0

[State 0, ]
type = VelSet
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 11
x = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 7

[State 0, ]
type = VelSet
trigger1 = animelem = 4
x = 2

[State 0, ]
type = VelSet
trigger1 = animelem = 6
x = 18

[State 0, ]
type = Turn
trigger1 = animelem = 7

[State 0, ]
type = VelSet
trigger1 = animelem = 10
x = 31

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = animelem = 10
value = 0,0
volume = 255

[State 0, ]
type = PlayerPush
trigger1 = Time = [23,38]
trigger2 = Time = [47,77]
value = 0

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
time = 15
TimeGap  = 1
FrameGap = 2
length = 10
Paladd = 0,0,0
PalMul = .50,.50,.50
PalContrast = 125,125,125
trans = add

[State 0, ]
type = VarRandom
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
v = 5
range = 5,30

[State 0, ]
type = HitDef
trigger1 = animelem = 6
attr = S,SA
hitflag = MAF
guardflag = L
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 30,13
pausetime = 10,26
sparkno = S4
guard.sparkno = S8
sparkxy = 0,0
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 14
ground.hittime = 16
air.hittime = 50
fall = 0
fall.damage = 1
air.fall = 0
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = HitDef
trigger1 = animelem = 10
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 5,Hit
damage = 30,15
pausetime = 10,15
sparkno = S4
guard.sparkno = S8
sparkxy = 20,-47
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 12
ground.hittime = 15
air.hittime = 15
ground.velocity = -2.5
air.velocity = -3,-3
fall = 1
fall.damage = 1
air.fall = 1
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------------
;Slash Liner
[Statedef 68]
type    = S
movetype= A
physics = S
poweradd= 0
velset= 0,0,0
ctrl = 0
anim = 728

[State sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
value = 0,1

[State velset]
type = VelSet
trigger1 = time = [0,50]
x = 3

[State posadd]
type = PosAdd
trigger1 = AnimElem = 2
x = 3
y = -15

[State hitdef]
type = HitDef
trigger1 = animelem = 3
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Medium
priority = 4,Hit
damage = 43,21
pausetime = 4,4
sparkno = S4
guard.sparkno = S8
sparkxy = 10,-3
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 5
ground.hittime = 50
air.hittime = 50
fall = 0
fall.damage = 1
air.fall = 0
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State hitdef]
type = HitDef
trigger1 = animelem = 5
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Medium
priority = 4,Hit
damage = 43,21
pausetime = 4,4
sparkno = S4
guard.sparkno = S8
sparkxy = -5,-37
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 5
ground.hittime = 50
air.hittime = 50
fall = 0
fall.damage = 1
air.fall = 0
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State hitdef]
type = HitDef
trigger1 = animelem = 7
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Medium
priority = 4,Hit
damage = 43,21
pausetime = 4,4
sparkno = S4
guard.sparkno = S8
sparkxy = -3,-40
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 5
ground.hittime = 50
air.hittime = 50
fall = 0
fall.damage = 1
air.fall = 0
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State posadd]
type = PosAdd
trigger1 = AnimElem = 9
x = 3
y = 15

[State velset]
type = VelSet
trigger1 = animelem = 10
x = 3

[State 0]
type = VarRandom
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 10
v = 5
range = 18,40

[State hitdef]
type = HitDef
trigger1 = animelem = 10
attr = S,SA
hitflag = MAF
guardflag = L
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 63,31
pausetime = 4,4
sparkno = S4
guard.sparkno = S8
sparkxy = -10,-4
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 5
ground.hittime = 10
air.hittime = 10
ground.velocity = -3.5,-1
air.velocity = -3.5,-2
fall = 1
fall.damage = 1
air.fall = 1
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State velset]
type = VelSet
trigger1 = pos y > -1
y = 0

[State posset]
type = PosSet
trigger1 = !Animtime
trigger1 = pos y > -1
y = 0

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Sky Zapper
[Statedef 67]
type    = S
movetype= A
physics = S
poweradd= 0
velset = 0,0,0
ctrl = 0
anim = 727

[State VelSet]
type = VelSet
trigger1 = time > 0
x = 3
y = 0

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
value = 0,0

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,1

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = animelem = 10
v = 5
range = 18,40

[State HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 3,3
sparkno = S4
guard.sparkno = S8
sparkxy = -14,-40
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 15
fall = 0
fall.damage = 1
air.fall = 0
kill = 1
fall.kill = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State VelSet]
type = VelSet
trigger1 = time >= 30
x = 0
y = 0

[State VelSet]
type = VelSet
trigger1 = time >= 34
x = -13
y = -13

[State VelSet]
type = VelSet
trigger1 = time >= 40
x = 0
y = 0

[State VelSet]
type = VelSet
trigger1 = time >= 44
x = 17
y = 17

[State VelSet]
type = VelSet
trigger1 = time >= 49
trigger1 = pos y > -1
x = 0
y = 0

[State Posadd]
type = Posadd
trigger1 = animelem = 10
x = 5

[State Posadd]
type = Posadd
trigger1 = animelem = 11
x = 12

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = 6,0

[State PosSet]
type = PosSet
trigger1 = time >= 49
trigger1 = pos y > -1
y = 0

[State PosSet]
type = PosSet
trigger1 = !Animtime
trigger1 = pos y > -1
y = 0

[State HitDef]
type = HitDef
trigger1 = animelem = 10
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 20,10
pausetime = 5,10
sparkno = S4
guard.sparkno = S8
sparkxy = -0,-5
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -5,-5
air.velocity = -8,9
fall = 1
fall.damage = 1
air.fall = 1
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Energy Zan
[Statedef 63]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 726

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 0, ]
type = VarRandom
trigger1 = AnimElem = 4
v = 5
range = 25,80

[State 0, ]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Energy Zan"
ID = 223
pos = 46,0
postype = p1
stateno = 1328
ignorehitpause = 1

[State Projectile]
type = Projectile
trigger1 = AnimElem = 4
ProjAnim = 9;725
ProjHitAnim = 724
projid = 227
offset = 46,0
velocity = 6,0
remvelocity = 0,0
accel = 0,0
attr = S, SP
damage = 40,20
animtype  = Medium
hitflag = MADP
guardflag = L
pausetime = 0,12
sparkxy = 0,0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 4
value = -300

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Sommersault Splash
[Statedef 62]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 723

[State PlayerPush]
type = PlayerPush
trigger1 = Time = [6,17]
trigger2 = Time = [31,50]
value = 0

[State Sound]
type = PlaySnd
trigger1 = Animelem = 2
trigger2 = Animelem = 6
value = 0,1

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
v = 5
range = 18,40

[State landing Sound]
type = PlaySnd
trigger1 = Animelem = 9
trigger1 = pos y >= -10
value = 6,0


[State Velset]
type = VelSet
trigger1 = time = [6,17]
x = 15
y = -8

[State Velset]
type = VelSet
trigger1 = time >= 17
x = 0
y = 0

[State Velset]
type = VelSet
trigger1 = Time = [43,54]
x = 15
y = 8

[State PosAdd]
type = PosAdd
trigger1 = Animelem = 4
y = -40

[State PosAdd]
type = PosAdd
trigger1 = Animelem = 7
y = 40

[State PosAdd]
type = PosAdd
trigger1 = Animelem = 9
y = 5

[State Turn]
type = Turn
trigger1 = !animtime

[State Hitdef]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 5,5
sparkno = S4
guard.sparkno = S8
sparkxy = 20,-40
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 50
fall = 0
fall.damage = 1
air.fall = 0
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State Hitdef]
type = HitDef
trigger1 = animelem = 6
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 5,5
sparkno = S4
guard.sparkno = S8
sparkxy = -0,80
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 50
ground.velocity = -1,5
air.velocity = -1,9
fall = 1
fall.damage = 1
air.fall = 1
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Lift Strike
[Statedef 61]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 722

[State Sound]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,1

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
v = 5
range = 15,40

[State Hitdef]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 5,15
sparkno = S4
guard.sparkno = S8
sparkxy = -20,-50
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 25
ground.hittime = 55
air.hittime = 50
ground.velocity = 0,-3.5
air.velocity = 0,-3.5
fall = 0
fall.damage = 1
fall.recover = 0
air.fall = 0
p1stateno = 60
kill = 0
fall.kill = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
;-----------------------------------------------------------------------------------------------
;Lift Strike #2
[Statedef 60]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 721

[State Sound]
type = PlaySnd
trigger1 = Animelem = 2
trigger2 = Animelem = 5
value = 0,1

[State 0, ]
type = VarRandom
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
v = 5
range = 10,30

[State Hitdef]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = 
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 45,20
pausetime = 10,5
sparkno = S4
guard.sparkno = S8
sparkxy = 5,-60
hitsound = S12,5
guardsound = S12,3
ground.type = High
ground.slidetime = 30
ground.hittime = 30
air.hittime = 30
ground.velocity = 0,-10
air.velocity = 0,-10
fall = 1
fall.damage = 1
fall.recover = 0
air.fall = 1
kill = 0
fall.kill = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = VelSet
trigger1 = time = [35,50]
x = 0.4
y = -8

[State 0, ]
type = VelSet
trigger1 = time >= 51
x = 0
y = 0

[State Hitdef]
type = HitDef
trigger1 = animelem = 5
attr = S,SA
hitflag = MAF
guardflag = 
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 62,31
pausetime = 5,5
sparkno = S4
guard.sparkno = S8
sparkxy = 10,-60
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 15
ground.hittime = 15
air.hittime = 50
ground.velocity = -4,-6
air.velocity = -4,-6
fall = 1
fall.damage = 1
fall.recover = 0
air.fall = 1
kill = 1
fall.kill = 1
getpower = 0,0
givepower = 0,0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 50
ctrl = 1

;-----------------------------------------------------------------------------------------------
;Zanzoken
[Statedef 59]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0,0,0

[State Anim]
type = ChangeAnim
triggerall = stateno != [5000,5300]
trigger1 = anim != 0 && pos y = 0
value = 0

[State Flying Anim]
type = ChangeAnim
triggerall = stateno != [5000,5300]
trigger1 = anim != 99 && pos y < 0
value = 99

[State Teleport sound]
type = PlaySnd
trigger1 = time = 5
value = 0,7

[State Teleport sound]
type = PlaySnd
trigger1 = time = 45
value = 0,7

[State Disappear]
type = AssertSpecial
trigger1 = time = [0,45]
flag = invisible

[State Invincibility]
type = NotHitBy
trigger1 = time = [0,45]
value = SCA
time = 1

[State Untouchability]
type = Playerpush
trigger1 = time = [0,45]
value = 0

[State disappearing picture]
type = AfterImage
trigger1 = time = 0
time = 45
length = 45
palcolor = 256
paladd = 0,0,0
palmul = .65,.65,.65
palpostbright = 0,0,0
timegap = 4
framegap = 1
trans = add

[State 0, ]
type = VarSet
triggerall=time>=45
triggerall = var(8)=0
triggerall = pos y >= 0
trigger1 = command = "holdup"
trigger2 = command != "holdfwd"
trigger2 = command != "holdback"
trigger2 = command != "holddown"
trigger2 = command != "holdup"
var(8)=1

[State 0, ]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = time = 45
x = p2dist x + 55
y = p2dist y

[State 0, ]
type = PosAdd
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = time = 45
x = 165

[State 0, ]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = time = 45
x = -165

[State 0, ]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command = "holdup"
trigger1 = time = 45
y = -105

[State 0, ]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "holddown"
triggerall = command != "holdup"
triggerall = pos y < 0
trigger1 = time = 45
y = 105

[State 0, ]
type = PosAdd
triggerall = command = "holdfwd"
triggerall = command = "holdup"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = time = 45
x = 105
y = -105

[State 0, ]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command = "holdup"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = time = 45
x = -105
y = -105

[State 0, ]
type = PosAdd
triggerall = command = "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holdback"
triggerall = command = "holddown"
trigger1 = time = 45
x = 105
y = 105

[State 0, ]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command = "holdback"
triggerall = command = "holddown"
trigger1 = time = 45
x = -105
y = 105

[State 0, ]
type = Turn
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = !win
trigger1 = time = 45

[State 0, ]
type = ScreenBound
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = time >= 45
movecamera = 1,1
value = 0

[State appear]
type = ChangeAnim
trigger1 = Time = 45 
value = 720

[State end]
type = SelfState
trigger1 = time = 50
trigger1 = pos y = 0
value = 0
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = time >= 75
triggerall = pos y=0
value = 0
ctrl = 1

[State 0, ]
type = ChangeState
triggerall = var(8)=1
trigger1 = time >= 50
trigger1 = pos y < 0
value = 98
ctrl = 1

[State 0, ]
type = ChangeState
triggerall = var(8)=0
trigger1 = time >= 50
trigger1 = pos y < 0
value = 50
ctrl = 1
;--------------------------------------------------------------------------
;Invisible threads
[Statedef 110]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 718

[State 0, ]
type = PowerAdd
trigger1 = time > 5
value = -3

[State 110]
type = Projectile
trigger1 = time > 5
projanim = 719
projremovetime = 1
offset = 0,0
velocity = 0,0
attr = S,SP
damage = 0
animtype = Medium
Hitflag = MAF
guardflag = 
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
numhits = 0
guard.sparkno = -1
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = 0
air.animtype = Back
air.velocity = 0
air.juggle = 3

[State 110]
type = ChangeState
trigger1 = power = 0
value = 5301
ctrl = 0

[State 110]
type = ChangeState
trigger1 = time > 20
trigger1 = command != "hold_x"
trigger2 = time > 120
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Intro
[Statedef 191]
type = S
ctrl = 0
anim = 191

[State 191, 1]
type = ChangeState
trigger1 = ctrl = 1
value = 0

;---------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
velset = 0,0,0
anim = 182

[State 0, ]
type = AssertSpecial
trigger1 = time = [0,80]
flag = Intro

[State 192, 1]
type = ChangeState
triggerall = animtime = 0
trigger1 = ctrl = 1
value = 0

;---------------------------------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
velset = 0,0,0
anim = 192

[State 0, ]
type = PlaySnd
triggerall = pos y > -20
trigger1 = animelem = 5
trigger2 = animelem = 9
value = 6,0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 0, ]
type = PlaySnd
triggerall = pos y > -20
trigger1 = time = 115
value = 6,0

[State 0, ]
type = VelSet
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 10
y = -3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
y = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 12
y = 3

[State 0, ]
type = PosSet
triggerall = time >= 115
trigger1 = pos y > 0
y = 0

[State 0, ]
type = VelSet
triggerall = time >= 115
trigger1 = pos y >= 0
y = 0

[State 0, ]
type = AssertSpecial
trigger1 = time = [0,120]
flag = Intro

[State 191, 1]
type = ChangeState
trigger1 = animtime = 0
value = 191

;--------------------------------------------------------------------------
;Shoot blaster
[Statedef 1300]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1005

[State 0, ]
type = AssertSpecial
trigger1 = time > 20
flag = timerfreeze

[State 0, ]
type = PlaySnd
trigger1 = time = 50
value = 0,8
volume = 255
channel = 6
abspan = 0

[State 0, ]
type = Helper
TRIGGER1 = time = 50
helpertype = normal
sprpriority = -2
name = "aura"
ID = 736
pos = 0,5
postype = p1
facing = 1
stateno = 1366
keyctrl = 0
ownpal = 1
size.xscale=0.6
size.yscale=0.6

[State 0, ]
type = PowerAdd
trigger1 = time = [80,130]
value = -10

[State 0, ]
type = Helper
trigger1 = time = 80
helpertype = normal
name = "Ball of Energy"
ID = 1300
pos = 20,-90
postype = p1
stateno = 1312
keyctrl = 0
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = time >= 160
value = 1301

;--------------------------------------------------------------------------
;Shoot blaster - hold
[Statedef 1301]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0

[State 0, ]
type = PowerAdd
trigger1 = 1
value = -2

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 0, ]
type = Turn
trigger1 = p2dist X < -5

[State 0, ]
type = VarSet
triggerall = var(59) = 0
trigger1 = command != "holddown"
trigger1 = command = "holdup"
v = 12
value = 1

[State 0, ]
type = VarSet
triggerall = var(59) = 0
trigger1 = command = "holddown"
trigger1 = command != "holdup"
v = 12
value = 2

[State 0, ]
type = VarSet
triggerall = var(59) = 0
trigger1 = command != "holddown"
trigger1 = command != "holdup"
v = 12
value = 0

[State 0, UP]
type = VarSet
triggerall = var(59) > 0
trigger1 = p2dist y < -40
v = 12
value = 1

[State 0, ]
type = VarSet
triggerall = var(59) > 0
trigger1 = p2dist y > 40
v = 12
value = 2

[State 0, ]
type = VarSet
triggerall = var(59) > 0
trigger1 = p2dist y = [-40,40]
v = 12
value = 0

[State 0, ]
type = ChangeState
trigger1 = time > 30
trigger1 = command != "hold_a"
value = 1302

;--------------------------------------------------------------------------
;Shoot blaster - fire
[Statedef 1302]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1006

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 0, ]
type = PowerAdd
trigger1 = time = [35,55]
value = -70

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 8,0
volume = 255
channel = 7

[State 0, ]
type = PlaySnd
trigger1 = time = 35
value = 0,9
volume = -255
channel = 6
abspan = 0

[State 0, ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Ball of Energy"
ID = 1300
pos = 20,-90
postype = p1
stateno = 1311
keyctrl = 0
ownpal = 1

[State 0, ]
type = StopSnd
trigger1 = time = 100
channel = 6

[State 1000,Fly]
type = SelfState
trigger1 = Power = 0
trigger1 = time > 100
value = 5301

[State 0, ]
type = SelfState
trigger1 = time > 100
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Shoot blaster - aura
[Statedef 1366]
type = S
movetype = I
physics	= N
velset = 0,0,0
ctrl = 0
ANIM = 556
sprpriority = 1

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "PosX=%f,PosY=%f"
params = Pos X,Pos Y

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State BindToParent]
type = BindToParent
trigger1 = parent,stateno=1300
trigger2 = parent,stateno=1301
trigger3 = parent,stateno=1302
trigger3 = parent,time <= 35
time = 1
pos = 0,-8
ignorehitpause = 1

[State BindToParent]
type = BindToParent
trigger1 = parent,stateno=1302
trigger1 = parent,time > 35
time = 1
pos = 12,-8
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = parent, prevstateno = 1302
trigger2 = parent, stateno != [1300,1302]
trigger3 = parent, movetype = H
;--------------------------------------------------------------------------
;KED
[Statedef 1303]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 750

[State 0, ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Ball of Energy"
ID = 1300
pos = -20,-46
postype = p1
stateno = 1315
keyctrl = 0
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,10

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,1

[State 0, ]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "fireball"
ID = 223
pos = 29,-44
postype = p1
stateno = 1324
ignorehitpause = 1

[State 0, ]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "fireball 2"
ID = 223
pos = 22,-54
postype = p1
stateno = 1325
ignorehitpause = 1

[State 0, ]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "fireball 3"
ID = 223
pos = 22,-34
postype = p1
stateno = 1326
ignorehitpause = 1

[State 0, ]
type = Projectile
trigger1 = AnimElem = 2
ProjAnim = 2
ProjHitAnim = 717
offset = 29, -44
velocity = 15,0
remvelocity = 0,0
accel = 0,0
attr = S, SP
damage = 22,11
projID = 224
animtype = Medium
hitflag = MADFP
guardflag = MA
pausetime = 0,12
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 0, ]
type = Projectile
trigger1 = AnimElem = 2
ProjAnim = 2
ProjHitAnim = 717
offset = 22, -54
velocity = 14,0
remvelocity = 0,0
projID = 225
accel = 0,0
attr = S, SP
damage = 22,11
animtype = Medium
hitflag = MADFP
guardflag = MA
pausetime = 0,12
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 0, ]
type = Projectile
trigger1 = AnimElem = 2
ProjAnim = 2
ProjHitAnim = 717
projID = 226
offset = 22, -34
velocity = 14,0
remvelocity = 0,0
accel = 0,0
attr = S, SP
damage = 22,11
animtype = Medium
hitflag = MADFP
guardflag = MA
pausetime = 0,12
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 0, ]
type = PowerAdd
trigger1 = AnimElem = 2
value = -600

[State 0, ]
type = SelfState
trigger1 = Power = 0
trigger1 = AnimTime = 0
value = 5301

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Super Combo
[Statedef 1305]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1305
velset = 0,0,0

[State 0, ]
type = VelSet
trigger1 = time > 4
x = 10

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = 
affectteam = E
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 0,0
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
air.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = 5,0
air.velocity = 5,0
p1stateno = 1306
fall.recover = 0
ignorehitpause = 1
persistent = 1

[State 0, ]
type = SelfState
trigger1 = animtime = 0 && pos y = 0
value = 107

[State 0, ]
type = SelfState
trigger1 = animtime = 0 && pos y < 0
value = 98
ctrl = 1

;--------------------------------------------------------------------------
;Super Combo 2
[Statedef 1306]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0,0
anim = 1306

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 150
length = 50
palcolor = 256
palcontrast = 120,120,120
paladd = 10,10,10
palmul = .65,.65,.65
timegap = 1
framegap = 2
trans = add
ignorehitpause = 1
persistent = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAFD
guardflag = 
affectteam = E
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 20,10
pausetime = 10,10
sparkno = S4
guard.sparkno = S8
sparkxy = 20,-50
hitsound = S12,5
guardsound = S12,3
ground.type = High
air.type = High
ground.slidetime = 999
ground.hittime = 999
ground.velocity = 0,-6
air.velocity = 0,-6
fall.recover = 0
ignorehitpause = 1
persistent = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = Posadd
trigger1 = animelem = 4,= 3
x = p2dist x - 20;-267
y = p2dist y + 10;65
;x = 0
;y = -200

[State 0, ]
type = HitDef
trigger1 = animelem = 6
attr = S,SA
hitflag = MAFD
guardflag = 
affectteam = E
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 23,10
pausetime = 10,10
sparkno = S4
guard.sparkno = S8
sparkxy = -10,-50
hitsound = S12,5
guardsound = S12,3
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 80
ground.velocity = -6,-1
air.velocity = -6,-1
fall.recover = 0
ignorehitpause = 1
persistent = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = Turn
trigger1 = time = 44

[State 0, ]
type = PosAdd
trigger1 = time = 44
x = p2dist x - 20;-267
y = p2dist y + 10;65

[State 0, ]
type = HitDef
trigger1 = animelem = 9
attr = S,SA
hitflag = MAFD
guardflag = 
affectteam = E
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 26,10
pausetime = 10,10
sparkno = S4
guard.sparkno = S8
sparkxy = 10,-65
hitsound = S12,5
guardsound = S12,3
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 80
ground.velocity = -1,-6
air.velocity = -1,-6
fall.recover = 0
ignorehitpause = 1
persistent = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = PosAdd
trigger1 = time = 56
x = p2dist x - 20;-267
y = p2dist y - 30;65
;x = -62
;y = -189

[State 0, ]
type = VelSet
trigger1 = time = 56
x = 8
y = 4

[State 0, ]
type = HitDef
trigger1 = animelem = 12
attr = S,SA
hitflag = MAFD
guardflag = 
affectteam = E
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 30,20
pausetime = 10,10
sparkno = S4
guard.sparkno = S8
sparkxy = 0,-15
hitsound = S12,5
guardsound = S12,3
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 80
ground.velocity = -2,4
air.velocity = -2,4
fall.recover = 0
ignorehitpause = 1
persistent = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = PosAdd
trigger1 = time = 68
x = p2dist x - 20;-267
y = p2dist y + 60;65
;x = 30
;y = 140

[State 0, ]
type = VelSet
trigger1 = time = 67
x = 0
y = -5

[State 0, ]
type = PlayerPush
trigger1 = time = [67,77]
value = 0
ignorehitpause = 1

[State 0, ]
type = PlayerPush
trigger1 = time = [78,97]
value = 1
ignorehitpause = 1

[State 0, ]
type = PlayerPush
trigger1 = time = [98,150]
value = 0
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 14
attr = S,SA
hitflag = MAFD
guardflag = 
affectteam = E
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 35,10
pausetime = 10,10
sparkno = S4
guard.sparkno = S8
sparkxy = 10,-69
hitsound = S12,5
guardsound = S12,3
sprpriority = -1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 80
ground.velocity = 0,-10
air.velocity = 0,-10
ignorehitpause = 1
persistent = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = VelSet
trigger1 = time = 77
x = 0
y = 15

[State 0, ]
type = PosAdd
trigger1 = time = 76
x = p2dist x - 20;-267
y = p2dist y - 310;65
;x = 0
;y = -530

[State 0, ]
type = HitDef
trigger1 = animelem = 18
attr = S,SA
hitflag = MAFD
guardflag = 
affectteam = E
sprpriority = -1
animtype = Light
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 50,45
pausetime = 18,10
sparkno = S4
guard.sparkno = S8
sparkxy = 0,-0
hitsound = S12,5
guardsound = S12,3
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 80
ground.velocity = 0,30
air.velocity = 0,30
ignorehitpause = 1
persistent = 1
fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 260
envshake.ampl = -12

[State 0, ]
type = SelfState
triggerall = movecontact = 0
trigger1 = animelem = 6
trigger2 = animelem = 9
trigger3 = animelem = 12
trigger4 = animelem = 15
trigger5 = animelem = 18
value = 1307

[State 0, ]
type = SelfState
trigger1 = win = 1
trigger2 = lose = 1
value = 1307

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 1307

;--------------------------------------------------------------------------
;Super Combo 3
[Statedef 1307]
type    = A
movetype= I
physics = S
ctrl = 0
velset = 0,15,0
anim = 1307

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 0, ]
type = PosSet
trigger1 = pos y >= 0
y = 0

[State 0, ]
type = SelfState
trigger1 = pos y >= 0 && animtime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Diving Kick
[Statedef 1308]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
velset = 0,0,0
anim = 1308

[State 0, ]
type = Pause
trigger1 = time = 0
time = 1
anim = -1

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 15
y = 15

[State Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = 1
attr = S,SA
hitflag = MAFDL
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 40,30
pausetime = 6,6
sparkno = S4
guard.sparkno = S8
sparkxy = 6,-6
hitsound = S12,5
guardsound = S12,3
ground.slidetime = 20
ground.hittime = 30
ground.velocity = -2,6
air.velocity =-2,6
fall = 1
fall.recover = 0
fall.damage = 1
down.velocity = -2,6
down.hittime = 20
down.bounce = 50
p1stateno = 50
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = VelSet
trigger1 = movecontact = 1
trigger2 = pos y >= 0
x = 0
y = 5

[State 0, ]
type = posSet
trigger1 = pos y > 0
y = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 0, ]
type = SelfState
trigger1 = pos y >= 0
trigger2 = movecontact = 1
trigger3 = time > 60
value = 50

;--------------------------------------------------------------------------
;Sliding Dash Uppercut
[Statedef 1310]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1000

[State Sound]
type = PlaySnd
trigger1 = Animelem = 2
trigger2 = Animelem = 6
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAFDL
guardflag = L
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 40,30
pausetime = 3,3
sparkno = S4
guard.sparkno = S8
sparkxy = 20,-6
hitsound = S12,5
guardsound = S12,3
ground.slidetime = 20
ground.hittime = 30
ground.velocity = -2,0
air.velocity =-2,0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4

[State 0, ]
type = HitDef
trigger1 = animelem = 5
attr = S,SA
hitflag = MAFDL
guardflag = H
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 10,5
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 50,-20
numhits = 0
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0,0
air.velocity = 0,0

[State 0, ]
type = HitDef
trigger1 = animelem = 6
attr = S,SA
hitflag = MAFDL
guardflag = H
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 50,30
pausetime = 7,7
sparkno = S4
guard.sparkno = S8
sparkxy = -3,-46
hitsound = S12,5
guardsound = S12,3
ground.slidetime = 20
ground.hittime = 30
ground.velocity = -6,-8
air.velocity =-6,-8
fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 260
envshake.ampl = -12

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 2
x = 5
y = 0

[State 0, ]
type = PlayerPush
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
value = 0

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 6
x =  2
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(1) = 6
x =  1.3
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 7
x =  0.6
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(1) = 7
x =  0.3
y = -5

[State 202, 2]
type = VelSet
trigger1 = AnimElemno(0) = 8
x =  0
y = -5

[State 202, 3]
type = VelSet
trigger1 = AnimElemno(0) = 9
x = 0
y = 0

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 50
