;---------------------------------------------------------------------------
;-----------------------| States for Super Zangya |-------------------------
;---------------------------| By SSj3 Vejita |------------------------------
;------------------------/Remake by Saikyo y SaWWeN/------------------------------
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 40,6
volume = 255

;---------------------------------------------------------------------------
;Hard
[Statedef 182]
type = S
ctrl = 0
velset = 0,0,0
anim = 180

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 40,7
volume = 255

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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 40,7
volume = 255

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

;-------------------------------------------------------------------------
;Cargar ki
[Statedef 550]
type = S
statetype = A
movetype= I
physics = N
juggle = 9
velset = 0,0
ctrl = 0
anim = 550;5040; animacion del char haciendo carga de ki
poweradd = 0
facep2 = 1

[State 1700, VelSetY]
Type = VelSet
Trigger1 = Time = 0
y = 0

[State 1701, VarSet1]
type = VarSet
Triggerall = Pos Y < 0
Trigger1 = Var(2) = 2
Trigger1 = Vel Y >= 2.0
Trigger2 = Time = 0
v = 2
value = 1

[State 1701, VarSet2]
type = VarSet
Trigger1 = Pos Y < 0
Trigger1 = Var(2) = 1
Trigger1 = Vel Y <= -2.0
v = 2
value = 2

[State 1701, FloatUp]
type = VelAdd
Trigger1 = Pos Y < 0
Trigger1 = Var(2) = 1
y = -0.1

[State 1701, FloatDown]
type = VelAdd
Trigger1 = Pos Y < 0
Trigger1 = Var(2) = 2
y = 0.1

[State 1701, Stop.Charge]
type = VarSet
Triggerall = Pos Y < 0
trigger1 = (command != "charge") || (command != "charge1")
v = 2
value = 0

[State 1701, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = 0

[State 1701, VarSet]
type = Varset
trigger1 = time = 0
v = 11
value = 0

[State 1701, VarSet]
type = Varset
trigger1 = Var(10) = -60
v = 11
value = 1

[State 1701, VarSet]
type = Varset
trigger1 = Var(10) = 0
v = 11
value = 0

[State 1701, VarAdd]
type = VarAdd
trigger1 = time >= 30 && Var(11) = 0
v = 10
value = -1

[State 1701, VarAdd]
type = VarAdd
trigger1 = time >= 30 && Var(11) = 1
v = 10
value = 1

[state 1701, BGColorFX]
type = BGPalFX
trigger1 = Time > 0
time = 1
add = Var(10),Var(10),Var(10)

[State 5040,Poweradd]
type = Poweradd
trigger1 = Time >= 1
value = 5

[State 1701, Shake]
type = EnvShake
trigger1 = time >= 100
trigger1 = Timemod = 8,0
Time = 8
freq = 60
ampl = -2
phase = 0

[State 5040]
type			= Explod
trigger1		= animelem = 2
triggerall = pos y = 0
anim			= 400
id			= 300
Pos = -50, -4
postype		= p1
facing		= 1
vfacing		= 1
bindtime		= -1
vel			= 0,0
accel			= 0,0
random		= 0,0
removetime		= -1
supermove = 1
pausemove
scale = 0.50,0.40
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 5040]
type			= Explod
trigger1		= animelem = 2
triggerall = pos y = 0
anim			= 400
id			= 301
pos= 50,-4
postype		= p1
facing		= -1
vfacing		= 1
bindtime		= -1
vel			= 0,0
accel			= 0,0
random		= 0,0
removetime		= -1
supermove = 1
pausemove
scale = 0.50,0.40
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1


[State 5043,AURA];Aura
type			= Explod
trigger1		= animelem = 2
anim			= 556;15070
id			= 700;15070
pos			= -1,0
postype		= p1
facing		= 1
vfacing		= 1
bindtime		= -1
vel			= 0,0
accel			= 0,0
random		= 0,0
removetime		= -1
supermove		= 0
supermovetime	= 0
pausemovetime	= 0
scale			= 0.67,0.68
sprpriority		= -1
ontop			= 1
shadow		= 0,0,0
ownpal		= 0
removeongethit	= 1

[State 5043];Cosa de atras
type			= Explod
trigger1		= animelem = 2
anim			= 557;15070
id			= 711;15070
pos			= 0,0
postype		= p1
facing		= 1
vfacing		= 1
bindtime		= -1
vel			= 0,0
accel			= 0,0
random		= 0,0
removetime		= -1
supermove		= 0
supermovetime	= 0
pausemovetime	= 0
scale			= 1,1
sprpriority		= -22
ontop			= 0
shadow		= 0,0,0
ownpal		= 0
removeongethit	= 1

[State 5043, Ring]
type = Explod
triggerall = pos y = 0
trigger1 = timemod = 33,0
Anim = 724
Pos = -2, 2
Id = 703
sprpriority = -2
removeongethit = 0
removetime = 20
Postype = p1
Bindtime = 33
SuperMove = 1
ownpal = 1
scale = 0.79, 0.76
removeongethit = 1


;[State 5040]
;type = Explod
;trigger1 =  time = 0 ;AnimElem = 5
;anim = 9430
;Pos = -25, 20
;ID = 9430
;postype = p1
;facing = 1
;bindtime = -1
;scale = .95,.95
;removetime = -2
;sprpriority = 4
;ownpal = 1

[State 5043,remover AURA ]
type			= RemoveExplod
id			= 700;15070;Aura Blanca
trigger1		= (command != "charge") || (command != "charge1") || (life = 0) || stateno != 550;(Time = 90)
trigger1 = time >= 0
value = 0; ir a stand
ctrl = 1

[State 5043,remover AURA ]
type			= RemoveExplod
id			= 703;15070;Aura Blanca
trigger1		= (command != "charge") || (command != "charge1") || (life = 0) || stateno != 550;(Time = 90)
trigger1 = time >= 0
value = 0; ir a stand
ctrl = 1

[State 5043,remover AURA ]
type			= RemoveExplod
id			= 300;15070;Aura Blanca
trigger1		= (command != "charge") || (command != "charge1") || (life = 0) || stateno != 550;(Time = 90)
trigger1 = time >= 0
value = 0; ir a stand
ctrl = 1

[State 5043,remover AURA ]
type			= RemoveExplod
id			= 711;15070;Aura Blanca
trigger1		= (command != "charge") || (command != "charge1") || (life = 0) || stateno != 550;(Time = 90)
trigger1 = time >= 0
value = 0; ir a stand
ctrl = 1

[State 5043,remover AURA ]
type			= RemoveExplod
id			= 301;15070;Aura Blanca
trigger1		= (command != "charge") || (command != "charge1") || (life = 0) || stateno != 550;(Time = 90)
trigger1 = time >= 0
value = 0; ir a stand
ctrl = 1

[State 5043, PlaySND]
type = PlaySnd
trigger1 = Time = 0
value = 0,9
volume = 255

[State 5043];
type = PlaySnd
trigger1 = (Time > 2) && ((GameTime%50) = 0)
value = 300,0
volume = 255

[State 0, StopSnd]
type = StopSnd
trigger1 = (command != "charge") || (command != "charge1")
channel = -1

;;flash blanco
;[State 5041,Envcolor]
;type = Envcolor
;id = 5040,1
;trigger1 = time = 0
;time = 5

[State 5041,Remover Aura]
type = ChangeState
trigger1 = (command != "charge") || (command != "charge1")
value = 5042

[Statedef 5042]
type = S
movetype = I
physics = N
anim = 701
ctrl = 0
poweradd = 0
juggle = 0
sprpriority = 1

[State 5042,fin]
type = playsnd
trigger1 = Time = 0
value = 0,14
volume = 255

[State 5042,Remover Aura]
type = ChangeState
trigger1 = (command != "charge") || (command != "charge1")
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
poweradd = 10
anim = 200

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 2
y = 0
;ignorehitpause =
;persistent =

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 200]
type = PlaySnd
triggerall = random >= 300
trigger1 = Time = 1
value = 40,10

[State 0, ]
type = PowerAdd
trigger1 = time = 10
value = 30
ignorehitpause = 1

[State 200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage    = 20
animtype  = LIGHT
guardflag = MA
pausetime = 10,12
ground.type = HIGH
ground.slidetime = 4
ground.hittime  = 8
ground.velocity = -4,0
air.velocity = -4,-3
down.velocity = -4,0
down.hittime = 20
sparkno = S500
guard.sparkno = S500
sparkno.scale = 0.7,0.7
sparkxy = -17,-42
hitsound = S30,0
guardsound = S30,0


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
poweradd = 20
ctrl = 0
anim = 201

[State 200]
type = PlaySnd
triggerall = random >= 300
trigger1 = Time = 1
value = 40,10

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
pausetime = 10,12
numhits = 1
sparkno = S505
guard.sparkno = S505
sparkxy = -15,-50
hitsound = S30,0
guardsound = S30,0
ground.type = High
ground.slidetime = 3
ground.hittime = 7
ground.velocity = -4
airguard.velocity = -4
air.velocity = -3.2,-4
down.hittime = 20
fall = 1

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
poweradd = 10
ctrl = 0
anim = 205

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 4
y = 0
;ignorehitpause =
;persistent =

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(1) >=0 && AnimElemTime(2) < 0
trigger2 = Pos Y = 0
pos = -17, 3
spacing = 1


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,2
 
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
pausetime = 10,12
numhits = 1
sparkno = S505
guard.sparkno = S505
sparkxy = -15,-42
hitsound = S30,1
guardsound = S30,1
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -4
airguard.velocity = -3.5
air.velocity = -3,-3
down.hittime = 20

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; hard punch
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd = 10
velset = 0,0,0
ctrl = 0
anim = 215


[State 200]
type = PlaySnd
triggerall = random >= 300
trigger1 = Time = 1
value = 40,8

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,2

[State 0, VelSet]
type = VelSet
trigger1 = time= 5
x = 6
y = 0
;ignorehitpause =
;persistent =

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(1) >=0 && AnimElemTime(2) < 0
trigger2 = Pos Y = 0
pos = -17, 3
spacing = 1

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
sparkno = S510
guard.sparkno = S510
sparkxy = -20,-55
hitsound = S30,0
guardsound = S30,0
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -4, -7
airguard.velocity = -4,-7
air.velocity = -3.5,-3.5
down.hittime = 20
fall = 1

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
poweradd = 10
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
sparkno = S500
guard.sparkno = S500
numhits = 1
sparkxy = -5,-40
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -3,-7
airguard.velocity = -3.9
air.velocity = -3.5,-5
down.hittime = 20
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
poweradd = 10
velset = 0,0,0
anim = 230

[State 200]
type = PlaySnd
triggerall = random >= 300
trigger1 = Time = 1
value = 40,9

[State 230, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2

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
pausetime = 13,13
sparkno = S500
guard.sparkno = S500
sparkxy = -10,-50
hitsound = S2,4
guardsound = S2,4
ground.type = High
ground.slidetime = 4
ground.hittime = 4
ground.velocity = -4
airguard.velocity = -4
air.velocity = -4,-4

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
poweradd = 20
anim = 240

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,3

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
pausetime =11,12
sparkno = S505
guard.sparkno = S505
sparkxy = -10,-48
hitsound = S2,4
guardsound = S2,4
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -4
air.velocity = -4.2,3.2

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
poweradd = 10
velset = 0,0,0
anim = 250

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 2
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 2
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2
y = 0


[State 250, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2

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
pausetime = 11,10
sparkno = S510
guard.sparkno = S510
sparkxy = -5,-65
hitsound = S2,4
guardsound = S2,4
ground.type = Trip
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4,-8.5
air.velocity = -4.2,-7.2
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
; Kick Uppercut
[Statedef 260]
type    = S
movetype= A
physics = S
juggle  = 9
ctrl = 0
poweradd = 10
velset = 0,0,0
anim = 260

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 2
y = 0
;ignorehitpause =
;persistent =



[State 250, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,3

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
sparkno = S510
guard.sparkno = S510
sparkxy = -5,-65
hitsound = S12,5
guardsound = S12,3
ground.type = Trip
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4,-8.5
air.velocity = -4.2,-4.2
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
poweradd = 10
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
pausetime = 10,10
sparkno = S500
guard.sparkno = S500
sparkxy = -7,-25
hitsound = S12,5
guardsound = S12,3
ground.type = Low
ground.slidetime = 7
ground.hittime = 13
ground.velocity = -2.3
air.velocity = -2.5,-2

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
poweradd = 10
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
pausetime = 12,12
sparkno = S510
guard.sparkno = S510
sparkxy = -7,-71
hitsound = S12,5
guardsound = S12,3
ground.type = Low
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -4
air.velocity = -2.3,-4
down.velocity = -3,0
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
poweradd = 10
velset = 0,0,0
anim = 330

[State 330, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,3

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
pausetime = 13,13
sparkno = S500
guard.sparkno = S500
sparkxy = -10,-5
hitsound = S2,4
guardsound = S2,4
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
poweradd = 10
anim = 340

[State 340, 0]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2

[State 340, 1]
type = Velset
trigger1 = animelem = 2
x = 14

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(1) >=0 && AnimElemTime(2) < 0
trigger2 = Pos Y = 0
pos = -17, 3
spacing = 2

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
sparkno = S510
guard.sparkno = S510
sparkxy = 10,-5
hitsound = S2,4
guardsound = S2,4
ground.type = Trip
ground.slidetime = 10
ground.hittime = 15
ground.velocity = -6.5,-4
air.velocity = -6.5,-3.9
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
pausetime = 11,11
sparkno = S500
guard.sparkno = S500
sparkxy =  -7,-52
hitsound = S2,4
guardsound = S2,4
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
;light punch In Air
[Statedef 635]
type    = A
movetype= A
physics = A
poweradd = 10
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
pausetime = 11,11
sparkno = S500
guard.sparkno = S500
sparkxy =  -7,-52
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
poweradd = 10
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
pausetime = 12,12
sparkno = S505
guard.sparkno = S505
sparkxy =  -6,-33
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
poweradd = 10
anim = 430

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 2,3

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
pausetime = 13,13
sparkno = S500
guard.sparkno = S500
sparkxy = -10,-48
hitsound = S2,4
guardsound = S2,4
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
;Light Kick In Air
[Statedef 435]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 430

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2

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
pausetime = 13,13
sparkno = S500
guard.sparkno = S500
sparkxy = -10,-48
hitsound = S2,4
guardsound = S2,4
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
poweradd = 10
ctrl = 0
anim = 440

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 2,3

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
pausetime = 14,15
sparkno = S510
guard.sparkno = S510
sparkxy = -9,-12
hitsound = S2,4
guardsound = S2,4
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

;-------------------------------------------------------------------------
; fly start
[Statedef 99]
type = A
movetype = A
physics = A
juggle  = 0
velset = 0, -6.6, 0
ctrl = 0
anim = 98

[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 1800]
type=Explod
trigger1=time=2
anim=400
ID=192
Pos = -40, 13
scale = 0.40,0.40
bindtime=1
sprpriority=3
ownpal=1

[State 1800]
type=Explod
trigger1=time=2
anim=400
facing= -1
ID=192
pos= 40,13
scale = 0.40,0.40
bindtime=1
sprpriority=3
ownpal=1

[State 1300, Super D]
type = AfterImage
trigger1 = Time = 0
trans = add1
TimeGap  = 1
FrameGap = 6
time = 20
length = 15
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1;.9, .9, .9

[State 410, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = S4, 0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 98
ctrl = 1

;---------------------------------------------------------------------------
;fly
[Statedef 98]
type = S
ctrl = 0
anim = 1900
velset = 0,0

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

[State 1900, para1]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(2) = 0
trigger2 = Pos Y < -405
x = 0
y = 0

[State 1900, para2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 41
value = 41

[State 1500,fuwavar(1)]
type = VarSet
Trigger1 = command != "holdfwd"
Trigger1 = command != "holdback"
Trigger1 = command != "holdup"
Trigger1 = command != "holddown"
Trigger1 = var(2) != 2
Trigger2 = var(2) = 2
Trigger2 = Vel Y >= 1.6
v = 2
value = 1

[State 1500,fuwavar(2)]
type = VarSet
Triggerall = var(2) = 1
Trigger1 = Vel Y <= -1.6
Trigger2 = P2BodyDist Y > 250
Trigger2 = Vel Y < 0
v = 2
value = 2

[State 1500,fuwaUp]
type = VelAdd
Trigger1 = var(2) = 1
y = -0.1

[State 1500,fuwaDown]
type = VelAdd
Trigger1 = var(2) = 2
y = 0.1

[State 1900,fuwaEnd]
type = VelSet
triggerall = Var(2) != 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
y = 0

[State 1900,fuwaEndVar]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
v = 2
value = 0

[State 1900, UpBorder]
type = PosSet
trigger1 = Pos Y < -405
y = -405

[State 1500, UpBorder2a]
type = PosAdd
trigger1 = P2BodyDist Y > 405
trigger1 = Vel Y < 0
y = 1

[State 1500, UpBorder2b]
type = VelSet
trigger1 = P2BodyDist Y > 405
trigger1 = Vel Y < 0
y = 0

[State 1900, GoDown1]
type = VelAdd
trigger1 = command = "holddown"
y = 0.17

[State 1900,GoDown2]
type = VelSet
trigger1 = command = "holddown"
trigger1 = Vel Y < 0
y = 0

[State 1900, GoUpAnim]
type = ChangeAnim
trigger1 = Anim != 97
trigger1 = command = "holddown"
value = 97

[State 1900, GoUp1]
type = VelAdd
trigger1 = command = "holdup"
y = -0.17

[State 1900,GoUp2]
type = VelSet
trigger1 = command = "holdup"
trigger1 = Vel Y > 0
y = 0

[State 1900, GoUpAnim]
type = ChangeAnim
trigger1 = Anim != 41
trigger1 = command = "holdup"
value = 41

[State 1900, GoBack1]
type = VelAdd
trigger1 = command = "holdback"
x = -0.17

[State 1900,GoBack2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = Vel X > 0
x = 0

[State 1900, GoBackAnim]
type = ChangeAnim
triggerall = Anim != 43
trigger1 = command = "holdback"
;trigger2 = command = "holddown"
value = 43

[State 1900, GoFwd1]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.17

[State 1900,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = Vel X < 0
x = 0

[State 1900, GoFwdAnim]
type = ChangeAnim
trigger1 = Anim != 42
trigger1 = command = "holdfwd"
value = 42

[State 900, Land1]
type = ChangeState
Trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 1900,Turn]
type = Turn
trigger1 = P2dist X < 0

[State 1900,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1

[State 2000,End]
type = ChangeState
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"
trigger1 = command = "holddown"
value = 50
ctrl = 1

[State 2000,WinALose]
type = ChangeState
trigger1 = Win = 1
trigger2 = Lose = 1
value = 50

;--------------------------------------------

[State 900, deslizar adelante]
type = ChangeState
Trigger1 = command ="FF"
value = 1901
ctrl = 1

[State 900, deslizar atras]
type = ChangeState
Trigger1 = command ="BB"
value = 1902
ctrl = 1

[State 900, deslizar ARRIBA]
type = ChangeState
Trigger1 = command ="UU"
value =  1903
ctrl = 1

[State 900, deslizar ABAJO]
type = ChangeState
Trigger1 = command ="DD"
value = 1904
ctrl = 1

[State 900, deslizar DIAGONAL ABAJO]
type = ChangeState
Trigger1 = command ="FD"
value = 1905;1904
ctrl = 1

[State 900, deslizar DIAGONAL ARRIBA]
type = ChangeState
Trigger1 = command ="FU"
value = 1906;1903
ctrl = 1

[State 900, deslizar DIAGONAL ABAJO ATRAS]
type = ChangeState
Trigger1 = command ="BD"
value = 1907; 1904
ctrl = 1

[State 900, deslizar DIAGONAL ARRIBA ATRAS]
type = ChangeState
Trigger1 = command ="BU"
value = 1908; 1903
ctrl = 1

;----------------------------------------------------------------------

;deslizamiento aire ADELANTE modo vuelo
[Statedef 1901]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 42
poweradd= 0
ctrl = 0
velset = 0

[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 100]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

;[State 60 ];viento
;type = Explod
;trigger1 = time%2=1
;Anim = 9011
;pos = 0,-20
;random = 60,30
;facing = -1
;ontop = 1
;accel = -0.3,0
;scale = 0.7,0.5

[State 0, ]
type = VelSet
trigger1 = AnimElem = 1
y = 0

[State 0,]
type = VelSet
trigger1 = AnimElem = 1
x = 9

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1
;-------------------------------------------------------------------------
;deslizamiento aire atras modo vuelo
[Statedef 1902]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 43
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 915]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 915];Viento
type = Explod
trigger1 = time%2=1
Anim = 9011
pos = 0,-25
random = 60,30
facing = 1
ontop = 1
accel = 0.3,0
scale = 0.6,0.5


[State 915]
type = VelSet
trigger1 = AnimElem = 1
y = 0

[State 915 ]
type = VelSet
trigger1 = AnimElem = 1
x = -9

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1
;==========================================================================
;deslizamiento aire arriba modo vuelo
[Statedef 1903]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 41
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 916];deslizamiento aire arriba modo vuelo cerrado
type = ChangeAnim
triggerall = P2BodyDist X <= 4
triggerall = P2BodyDist y >= 0
trigger1 = Time = 0
value = 918
ctrl = 1


[State 915]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 900 ];VIENT0
type = Explod
trigger1 = time%2=1
Anim = 9010
pos = 0,0
random = 60,30
ontop = 1
accel = 0,-0.3
scale = 0.5,0.6

[State 915]
type = VelSet
trigger1 = AnimElem = 1
y = -9

[State 915 ]
type = VelSet
trigger1 = AnimElem = 1
x = 0

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1
;----------------------------------------------------------------------------
;deslizamiento aire ABAJO modo vuelo
[Statedef 1904]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 97
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 915]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1


[State 900 ];VIENT0
type = Explod
trigger1 = time%2=1
Anim = 9010
pos = 0,-20
random = 60,30
ontop = 1
accel = 0,-0.3
scale = 0.5,0.6

[State 915]
type = VelSet
trigger1 = AnimElem = 1
y = 9

[State 915 ]
type = VelSet
trigger1 = AnimElem = 1
x = 0

[State 900, Land1]
type = ChangeState
Trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1

[State 1900,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1

;----------------------------------------------------------------------

;deslizamiento aire ADELANTE modo vuelo
[Statedef 1905]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 42
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 100]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 60 ];viento
type = Explod
trigger1 = time%2=1
Anim = 9011
pos = 0,-20
random = 60,30
facing = -1
ontop = 1
accel = -0.3,0
scale = 0.7,0.5

[State 0, ]
type = VelSet
trigger1 = AnimElem = 1
y = 8

[State 0,]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1

[State 1900,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1
;-------------------------------------------------------------------------
;deslizamiento aire atras modo vuelo
[Statedef 1906]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 42
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 915]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 915];Viento
type = Explod
trigger1 = time%2=1
Anim = 9011
pos = 0,-25
random = 60,30
facing = 1
ontop = 1
accel = 0.3,0
scale = 0.6,0.5


[State 915]
type = VelSet
trigger1 = AnimElem = 1
y = -8

[State 915 ]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1

[State 1900,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1
;==========================================================================
;deslizamiento aire arriba modo vuelo
[Statedef 1907]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 41
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 916];deslizamiento aire arriba modo vuelo cerrado
type = ChangeAnim
triggerall = P2BodyDist X <= 4
triggerall = P2BodyDist y >= 0
trigger1 = Time = 0
value = 918
ctrl = 1


[State 915]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 900 ];VIENT0
type = Explod
trigger1 = time%2=1
Anim = 9010
pos = 0,0
random = 60,30
ontop = 1
accel = 0,-0.3
scale = 0.5,0.6

[State 915]
type = VelSet
trigger1 = AnimElem = 1
y = 8

[State 915 ]
type = VelSet
trigger1 = AnimElem = 1
x = -8

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1

[State 1900,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1
;----------------------------------------------------------------------------
;deslizamiento aire ABAJO modo vuelo
[Statedef 1908]
type    = S
movetype= A
physics = N
juggle  = 0
Anim = 97
poweradd= 0
ctrl = 0
velset = 0


[State 730]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,0
volume = 255

[State 915]
type = AfterImage
trigger1 = animelem = 1
time = 10
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1


[State 900 ];VIENT0
type = Explod
trigger1 = time%2=1
Anim = 9010
pos = 0,-20
random = 60,30
ontop = 1
accel = 0,-0.3
scale = 0.5,0.6

[State 915]
type = VelSet
trigger1 = AnimElem = 1
y = -8

[State 915 ]
type = VelSet
trigger1 = AnimElem = 1
x = -8

[State 915 ]
type = ChangeState
trigger1 = time = 15
value = 98
ctrl = 1

[State 1900,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1

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

;[State 0, ]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 7,1
;volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S40,11
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
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
;Laser  2
[Statedef 1111]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 15
velset = 0,0,0

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
pos = 38,-27
postype = p1
stateno = 1329
ignorehitpause = 1

[State 0, ]
type = PowerAdd
trigger1 = AnimElem = 2
value = -200

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = 40,6
volume = 255

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

[State 0, ]
type = Changestate
trigger1 = time >= 66
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = 40,6
volume = 255

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

[State 1200];Cosa de atras
type			= Explod
trigger1		= time = 20
anim			= 557;15070
id			= 711;15070
pos			= 0,0
postype		= p1
facing		= 1
vfacing		= 1
bindtime		= -1
vel			= 0,0
accel			= 0,0
random		= 0,0
removetime		= -1
supermove		= 0
supermovetime	= 0
pausemovetime	= 0
scale			= 1,1
sprpriority		= -22
ontop			= 0
shadow		= 0,0,0
ownpal		= 0
removeongethit	= 1

[State 1200,AURA]
type			= Explod
trigger1  = Time = 20
anim			= 1201
id			= 1201
pos			= -4,5
postype		= p1
facing		= 1
vfacing		= 1
bindtime		= -1
removetime		= -1
supermove		= 0
supermovetime	= 210
pausemovetime	= 210
scale			= 1.3,1.4
sprpriority		= -2
shadow		= 0,0,0
ownpal		= 1
removeongethit	= 1

[State 1200,Explod Piso]
type			= Explod
trigger1  = Time = 20
anim	         	= 724
id			= 724
pos			= -4,0
postype		= p1
facing		= 1
vfacing		= 1
bindtime		= -1
removetime		= -1
supermove		= 0
supermovetime	= 210
pausemovetime	= 210
scale			= 0.8,0.6
sprpriority		= -2
shadow		= 0,0,0
ownpal		= 1
removeongethit	= 1

[State 1200,Bolas de recarga der]
type			= Explod
trigger1  = Time = 20
anim			= 1202
id			= 1202
pos			= 10,-32
postype		= p1
facing		= 1
bindtime		= -1
removetime		= -1
supermove		= 0
supermovetime	= 0
pausemovetime	= 0
scale			= .3 , .3
sprpriority		= 4
ontop = 1
shadow		= 0,0,0
removeongethit	= 1

[State 1200,Bolas de recarga izq]
type			= Explod
trigger1  = Time = 20
anim			= 1202
id			= 1202
pos			= -14,-32
postype		= p1
facing		= 1
bindtime		= -1
removetime		= -1
supermove		= 0
supermovetime	= 210
pausemovetime	= 210
scale			= .3 , .3
sprpriority		= 4
ontop = 1
shadow		= 0,0,0
removeongethit	= 1

[State 1200, sound1]
type = PlaySnd
trigger1 = Time = 20
value = 0,9
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = time = 1
value = 40,5
volume = 255

[State 3010, palfx]
type = BgPalfx
trigger1 = Time = 1
time = 320
color = 0
mul = 200,186,145

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

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 1
id = 1201

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 1
id = 1202

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 1
id = 724

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 1
id = 711

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
ProjHitAnim = 334
offset = 43, -42
velocity = 3,IfElse(Var(26) = 1,-1.5,IfElse(Var(26) = 1,0.5,  IfElse(Var(26) = 2,-0.4,  IfElse(Var(26) = 3,1.4,  IfElse(Var(26) = 4,0.3,  IfElse(Var(26) = 5,-2.3,IfElse(Var(26) = 6,2.2,  IfElse(Var(26) = 7,-2.2,  IfElse(Var(26) = 8,-1,0.1)))))))))
accel = 0.4,IfElse(Var(26) = 1,0.01, IfElse(Var(26) = 1,-0.01, IfElse(Var(26) = 2,0.02, IfElse(Var(26) = 3,-0.02, IfElse(Var(26) = 4,-0.03, IfElse(Var(26) = 5,0.03, IfElse(Var(26) = 6,-0.01, IfElse(Var(26) = 7,0.01, IfElse(Var(26) = 8,0.01,-0.01)))))))))
remvelocity = 0,0
projscale = 0.60,0.60
attr = S, SP
damage    = 12,6
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,2
sparkxy = 0, 0
sparkno = S334
guard.sparkno = S334
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
value = -35

[State 0, ]
type = ChangeState
trigger1 = Power = 0
trigger2 = time > 250
value = 5301

[State 0, ]
type = ChangeState
trigger1 = win = 1
value = 0
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301
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
poweradd= -100
ctrl = 0
anim = 729
velset = 0,0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 8
value = S2,0
volume = 255

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
x = 26


[State 105: Areia]
type = Explod
trigger1 = animelem = 10
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -50,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = 2,11
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


[State 105: Areia]
type = Explod
trigger1 = Time = 3
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -33,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1

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
sparkno = S500
guard.sparkno = S500
sparkxy = 0,0
hitsound = S2,10
guardsound = S2,10
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
sparkno = S505
guard.sparkno = S505
sparkxy = 20,-47
hitsound = S2,9
guardsound = S2,9
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
;Slash Liner  1
[Statedef 68]
type    = S
movetype= A
physics = S
velset= 0,0,0
poweradd = -70
ctrl = 0
anim = 728

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 4
value = S2,0
volume = 255

[State 105: Areia]
type = Explod
trigger1 = Time = 3
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -33,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1

[State sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
value = 2,11

[State velset]
type = VelSet
trigger1 = time = [0,25]
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
sparkno = S500
guard.sparkno = S500
sparkxy = 10,-3
hitsound = S2,9
guardsound = S2,9
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
sparkno = S505
guard.sparkno = S505
sparkxy = -5,-37
hitsound = S2,10
guardsound = S2,10
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

[State 0]
type = VarRandom
trigger1 = animelem = 3
trigger2 = animelem = 5
v = 5
range = 18,40

[State velset]
type = VelSet
trigger1 = pos y > -1
y = 0

[State posset]
type = PosSet
trigger1 = !Animtime
trigger1 = pos y > -1
y = 0

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(15) = 0 && time > 1)
trigger1 = (command = "b" || command = "b") || Var(39) = 1
v = 15
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = Time >= 12 && Var(15) = 1 && power > 0
value = 688
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------------
;Slash Liner  2
[Statedef 688]
type    = S
movetype= A
physics = S
poweradd= -90
velset= 0,0,0
ctrl = 0
anim = 7288

[State sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,11

[State velset]
type = VelSet
trigger1 = time = [0,15]
x = 3

[State posadd]
type = PosAdd
trigger1 = AnimElem = 2
x = 3
y = -15

[State hitdef]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Medium
priority = 4,Hit
damage = 43,21
pausetime = 4,4
sparkno = S500
guard.sparkno = S500
sparkxy = -3,-40
hitsound = S2,9
guardsound = S2,9
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
trigger1 = AnimElem = 2
x = 3
y = 15

[State velset]
type = VelSet
trigger1 = animelem = 2
x = 3

[State 0]
type = VarRandom
trigger1 = animelem = 2
v = 5
range = 18,40

[State velset]
type = VelSet
trigger1 = pos y > -1
y = 0

[State posset]
type = PosSet
trigger1 = !Animtime
trigger1 = pos y > -1
y = 0

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(15) = 0 && time > 1)
trigger1 = (command = "b" || command = "b") || Var(39) = 1
v = 15
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = Time >= 10 && Var(15) = 1 && power > 0
value = 6888
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------------
;Slash Liner  3
[Statedef 6888]
type    = S
movetype= A
physics = S
poweradd= -110
velset= 0,0,0
ctrl = 0
anim = 72888

[State sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,11

[State velset]
type = VelSet
trigger1 = time = [0,50]
x = 3

[State posadd]
type = PosAdd
trigger1 = AnimElem = 2
x = 3
y = -15

[State posadd]
type = PosAdd
trigger1 = AnimElem = 2
x = 3
y = 15

[State velset]
type = VelSet
trigger1 = animelem = 3
x = 3

[State 0]
type = VarRandom
trigger1 = animelem = 3
v = 5
range = 18,40

[State hitdef]
type = HitDef
trigger1 = animelem = 3
attr = S,SA
hitflag = MAF
guardflag = L
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 63,31
pausetime = 4,4
sparkno = S505
guard.sparkno = S505
sparkxy = -10,-4
hitsound = S2,9
guardsound = S2,9
ground.type = Trip
ground.slidetime = 5
ground.hittime = 10
air.hittime = 10
ground.velocity = -6.5,-7
air.velocity = -6.5,-7
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

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(15) = 0 && time > 1)
trigger1 = (command = "a" || command = "a") || Var(39) = 1
v = 15
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = Time >= 22 && Var(15) = 1 && power > 0
value = 1100
ctrl = 1

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
poweradd= -100
velset = 0,0,0
ctrl = 0
anim = 727

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 4
value = S2,0
volume = 255

[State 105: Areia]
type = Explod
trigger1 = Time = 3
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -33,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1

[State VelSet]
type = VelSet
trigger1 = time > 0
x = 3
y = 0

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 2,12

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
v = 5
range = 18,40

[State HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 3,3
sparkno = S500
guard.sparkno = S500
sparkxy = -14,-40
hitsound = S2,10
guardsound = S2,10
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

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(15) = 0 && time > 1)
trigger1 = (command = "c" || command = "c") || Var(39) = 1
v = 15
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = Time >= 18 && Var(15) = 1 && power > 0
value = 677
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------------
;Sky Zapper   2
[Statedef 677]
type    = S
movetype= A
physics = S
poweradd= -100
velset = 0,0,0
ctrl = 0
anim = 72777

[State VelSet]
type = VelSet
trigger1 = time > 0
x = 3
y = 0

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 2,12

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
v = 5
range = 18,40

[State HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 3,3
sparkno = S500
guard.sparkno = S500
sparkxy = -14,-40
hitsound = S2,10
guardsound = S2,10
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

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(15) = 0 && time > 1)
trigger1 = (command = "c" || command = "c") || Var(39) = 1
v = 15
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = Time >= 18 && Var(15) = 1 && power > 0
value = 6777
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------------
;Sky Zapper  3
[Statedef 6777]
type    = S
movetype= A
physics = S
poweradd= -100
velset = 0,0,0
ctrl = 0
anim = 7277

[State VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State VelSet]
type = VelSet
trigger1 = time >= 10
x = 0
y = 0

[State PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 2,12

[State 0]
type = VarRandom
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
v = 5
range = 18,40

[State HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 3,3
sparkno = S500
guard.sparkno = S500
sparkxy = -14,-40
hitsound = S2,10
guardsound = S2,10
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

[State HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,SA
hitflag = MAF
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 25,12
pausetime = 3,3
sparkno = S500
guard.sparkno = S500
sparkxy = -14,-40
hitsound = S2,10
guardsound = S2,10
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -3,-10
air.velocity = -3,-10
air.hittime = 15
fall = 1
fall.damage = 1
air.fall = 0
kill = 1
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
value = 40,15

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
ProjAnim = 725;9
ProjHitAnim = 777777;
projscale = 0.5,0.5
projid = 227
offset = 46,3
velocity = 6,0
remvelocity = 0,0
accel = 0,0
attr = S, SP
damage = 40,20
animtype  = Medium
hitflag = MADP
guardflag = L
pausetime = 0,12
sparkxy = 0,-10
sparkno = S333
guard.sparkno = S333
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5, -3
airguard.velocity = -3.5
air.type = Low
air.velocity = -5.5,-3.5
air.juggle = 3
fall = 1

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = movetype = H
trigger3 = time > 100
trigger4 = (parent, numprojid(227) = 0)

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
value = 2,3

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
sparkno = S500
guard.sparkno = S500
sparkxy = -10,-40
hitsound = S2,9
guardsound = S2,9
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
sparkno = S510
guard.sparkno = S510
sparkxy = -0,80
hitsound = S2,9
guardsound = S2,9
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
;Lift Strike #2
[Statedef 60]
type    = S
movetype= A
physics = S
poweradd= -100
ctrl = 0
velset = 0,0,0
anim = 721

[State 105: Areia]
type = Explod
trigger1 = Time = 3
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -33,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1

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
sparkno = S500
guard.sparkno = S500
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
sparkno = S510
guard.sparkno = S510
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

[State Flying Anim]
type = ChangeAnim
triggerall = stateno != [5000,5300]
trigger1 = anim != 11 && command = "holddown" && pos y = 0
value = 11

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
time = 30
length = 5
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
value = 98
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 1
value = S0,10
volume = 255


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
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -7, -2
airguard.velocity = -7,-2
air.velocity = -7.3,-3
fall = 1

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

[State 0, ]
type = PlaySnd
trigger1 = time = 1
value = 40,1
volume = 355

[State 0, StopSnd]
type = StopSnd
trigger1 = (command = "a") || (command = "b")  || (command = "c")  || (command = "x")  || (command = "y")  || (command = "z")|| (life = 0) || stateno != 191;(Time = 90)
trigger1 = time >= 0
channel = -1
value = 0; ir a stand
ctrl = 1

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


[State 0, ]
type = PlaySnd
trigger1 = time = 1
value = 40,0
volume = 255

[State 0, StopSnd]
type = StopSnd
trigger1 = (command = "a") || (command = "b")  || (command = "c")  || (command = "x")  || (command = "y")  || (command = "z")|| (life = 0) || stateno != 192;(Time = 90)
trigger1 = time >= 0
channel = -1
value = 0; ir a stand
ctrl = 1

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
type = PlaySnd
trigger1 = time = 10
value = 40,2
volume = 355

[State 0, StopSnd]
type = StopSnd
trigger1 = (command = "a") || (command = "b")  || (command = "c")  || (command = "x")  || (command = "y")  || (command = "z")|| (life = 0) || stateno != 193;(Time = 90)
trigger1 = time >= 0
channel = -1
value = 0; ir a stand
ctrl = 1

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


;---------------------------------------------------------------------------
; Taunt
[Statedef 777]
type    = S
anim = 179
ctrl = 0
velset = 0,0

[State 8050, 1]
type = superpause
trigger1 = time = 3
time = 125
movetime = 125
anim = -1
darken = 0

[state 3020, 1]
type = playsnd
trigger1 = animelem = 2
value = 40,4

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 7069, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Shoot blaster
[Statedef 1300]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1005

[State 4500]
type = SuperPause
trigger1 = time = 10
time = 157
movetime = 157
unhittable = 1
ignorehitpause = 1
persistent = 1
darken = 0
anim = -1

[State 3010, palfx]
type = BgPalfx
trigger1 = Time = 1
time = 270
color = 0
mul = 80,60,40;200,186,145

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
trigger1 = time = 50
triggerall = pos y = 0
helpertype = normal
sprpriority = -2
name = "aura"
ID = 737
pos = 0,-2
postype = p1
facing = 1
stateno = 1367
supermovetime = 1000
keyctrl = 0
ownpal = 0
size.xscale=0.7
size.yscale=0.6

[State 0, ]
type = Helper
trigger1 = time = 50
helpertype = normal
sprpriority = -2
name = "aura"
ID = 736
supermovetime = 1000
pos = 0,5
postype = p1
facing = 1
stateno = 1366
keyctrl = 0
ownpal = 0
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
supermovetime = 1000
pos = 33,-100
postype = p1
stateno = 1312
keyctrl = 0
ownpal = 1
size.xscale=0.8
size.yscale=0.8

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
size.xscale=0.8
size.yscale=0.8

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
;Shoot blaster - ring
[Statedef 1367]
type = S
movetype = I
physics	= N
velset = 0,0,0
ctrl = 0
ANIM = 724
sprpriority = 1
ownpal = 0

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
pos = 0,0
ignorehitpause = 1

[State BindToParent]
type = BindToParent
trigger1 = parent,stateno=1302
trigger1 = parent,time > 35
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = parent, prevstateno = 1302
trigger2 = parent, stateno != [1300,1302]
trigger3 = parent, movetype = H

;--------------------------------------------------------------------------
;Shoot blaster - aura
[Statedef 1366]
type = S
movetype = I
physics	= N
velset = 0,0,0
ctrl = 0
ANIM = 556
poweradd = -1500
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
pos = 0,-8
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = parent, prevstateno = 1302
trigger2 = parent, stateno != [1300,1302]
trigger3 = parent, movetype = H

;--------------------------------------------------------------------------
;Super Combo
[Statedef 1305]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1305
velset = 0,0,0
poweradd = -180


[State 105: Areia]
type = Explod
trigger1 = Time = 3
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -33,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1

[State 0, ]
type = VelSet
trigger1 = time > 4
x = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 4
value = S2,0
volume = 255


[State 102, AfterImage]
type = AfterImage
trigger1 = time = 4
time = 34
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

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

[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301

;--------------------------------------------------------------------------
;Super Combo 2
[Statedef 1306]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0,0
poweradd = -80
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
sparkno = S500
guard.sparkno = S500
sparkxy = 0,-50
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
sparkno = S500
guard.sparkno = S500
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

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 14
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(14) = 0 && time > 0)
trigger1 = (command = "c" || command = "c" || command = "c") || Var(39) = 1
v = 14
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = time >= 33 && Var(14) = 1 && power > 0
value = 13066
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301

;--------------------------------------------------------------------------
;Super Combo 2
[Statedef 13066]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0,0
poweradd = -80
anim = 13066

[State 0, ]
type = PosAdd
trigger1 = time = 1
x = p2dist x + 20;-267
y = p2dist y + 10;65


[State 0, ]
type = SelfState
triggerall = movecontact = 0
trigger1 = animelem = 3
value = 1307


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
damage = 26,10
pausetime = 10,10
sparkno = S500
guard.sparkno = S500
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
type = SelfState
trigger1 = win = 1
trigger2 = lose = 1
value = 1307

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 1307

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 14
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(14) = 0 && time > 0)
trigger1 = (command = "c" || command = "c" || command = "c") || Var(39) = 1
v = 14
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = time >= 18 && Var(14) = 1 && power > 0
value = 130666
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301
;--------------------------------------------------------------------------
;Super Combo 3
[Statedef 130666]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0,0
poweradd = -80
anim = 130666

[State 0, ]
type = SelfState
triggerall = movecontact = 0
trigger1 = animelem = 3
value = 1307

[State 0, ]
type = PosAdd
trigger1 = time = 1
x = p2dist x - 20;-267
y = p2dist y - 30;65
;x = -62
;y = -189

[State 0, ]
type = VelSet
trigger1 = time = 1
x = 8
y = 4

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
damage = 30,20
pausetime = 10,10
sparkno = S500
guard.sparkno = S500
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
type = SelfState
trigger1 = win = 1
trigger2 = lose = 1
value = 1307

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 1307

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 14
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(14) = 0 && time > 0)
trigger1 = (command = "c" || command = "c" || command = "c") || Var(39) = 1
v = 14
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = time >= 10 && Var(14) = 1 && power > 0
value = 1306666
ctrl = 1


[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301
;--------------------------------------------------------------------------
;Super Combo 4
[Statedef 1306666]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0,0
poweradd = -80
anim = 1306666

[State 0, ]
type = SelfState
triggerall = movecontact = 0
trigger1 = animelem = 3
value = 1307

[State 0, ]
type = PosAdd
trigger1 = time = 2
x = p2dist x + 20;-267
y = p2dist y + 60;65
;x = 30
;y = 140

[State 0, ]
type = VelSet
trigger1 = time = 2
x = 0
y = -5

[State 0, ]
type = PlayerPush
trigger1 = time = [1,10]
value = 0
ignorehitpause = 1

[State 0, ]
type = PlayerPush
trigger1 = time = [10,30]
value = 1
ignorehitpause = 1

[State 0, ]
type = PlayerPush
trigger1 = time = [30,80]
value = 0
ignorehitpause = 1

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
damage = 35,10
pausetime = 10,10
sparkno = S505
guard.sparkno = S505
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
type = SelfState
trigger1 = win = 1
trigger2 = lose = 1
value = 1307

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 1307

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 14
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(14) = 0 && time > 0)
trigger1 = (command = "c" || command = "c" || command = "c") || Var(39) = 1
v = 14
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = time >= 10 && Var(14) = 1 && power > 0
value = 13066666
ctrl = 1


[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301
;--------------------------------------------------------------------------
;Super Combo 5
[Statedef 13066666]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0,0
poweradd = -120
anim = 13066666

[State 0, ]
type = VelSet
trigger1 = time = 2
x = 0
y = 15

[State 0, ]
type = SelfState
triggerall = movecontact = 0
trigger1 = animelem = 5
value = 1307

[State 0, ]
type = PosAdd
trigger1 = time = 1
x = p2dist x - 20;-267
y = p2dist y - 310;65
;x = 0
;y = -530

[State 0, ]
type = HitDef
trigger1 = animelem = 2
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
sparkno = S510
guard.sparkno = S510
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
trigger1 = win = 1
trigger2 = lose = 1
value = 1307

[State 0, ]
type = SelfState
trigger1 = animtime = 0
value = 1307


[State 0, ]
type = ChangeState
trigger1 = Power = 0
value = 5301
;--------------------------------------------------------------------------
;Super Combo final
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 2
value = S0,1
volume = 255

[State 102, AfterImage]
type = AfterImage
trigger1 = time = 4
time = 34
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 0, ]
type = Pause
trigger1 = time = 0
time = 1
anim = -1

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 9
y = 9

[State Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 2,11

[State 0, ]
type = HitDef
trigger1 = 1
attr = S,SA
hitflag = MAFDL
guardflag = MA
affectteam = E
animtype = Hard
priority = 4,Hit
damage = 40,20
pausetime = 6,6
sparkno = S510
guard.sparkno = S510
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
;HILOS COMIENZO

[Statedef 1333]
type    = S
movetype= A
physics = S
juggle  = 4
PowerAdd = -2500
velset = 0,0
ctrl = 0
anim = 1333+ifelse(var(1)=0,0,3000)

[State Teleport sound]
type = PlaySnd
trigger1 = time = 5
value = 0,7
volume = 255

[State 3010, palfx]
type = BgPalfx
trigger1 = Time = 1
time = 140
color = 0
mul = 200,186,145

[State 1000]
type = Explod
trigger1 = time = 1
Anim = 666
Pos = -9, 0
Id = 12010
sprpriority = 3
removeongethit = 1
removetime = 20
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1, 1

[State 1850, AI.Next-Straight]
type = ChangeState
trigger1 = animtime = 0
value = 1334
ctrl = 1

;---------------------------------------------------------------------------
;hilos lanzados
[Statedef 1334]
type    = S
movetype= A
physics = S
velset = 0,0,0
ctrl = 0
anim = 1334+ifelse(var(1)=0,0,3000)

[State 12120, Explosion.Sound2]
type = PlaySND
trigger1 = time = 5
value = 2,1

[State 1000]
type = Explod
trigger1 = time = 1
Anim = 667
Pos = -9, 0
Id = 12010
sprpriority = 3
removeongethit = 1
removetime = 120
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 1, 1

[State 1801, PlaySND]
type = PlaySnd
trigger1 = time = 0
value = 3000,2

[State Teleport sound]
type = PlaySnd
trigger1 = time = 110
value = 0,7
VOLUME = 255

[State 1801, VelSetY]
Type = VelSet
Trigger1 = Time = 0
y = 0

[State 1801, Hilos.Helper]
type = Helper
trigger1 = Time = 1
name = "Hilos"
stateno = 1335
postype = p1
Pos = 232, -42
keyctrl = 0
size.xscale = 1.40
size.yscale = 0.70
ownpal = 0
id = 1335
removeongethit = 1

[State 1801, Hilos.Helper]
type = Helper
trigger1 = Time = 1
name = "Hilos"
stateno = 1335
postype = p1
Pos = 215, -35
keyctrl = 0
size.xscale = 1.40
size.yscale = 0.70
ownpal = 0
id = 1335
removeongethit = 1

[State 1801, End]
type = ChangeState
trigger1 = Time = 130
value	= IfElse(BackEdgeBodydist >= 0, 1337, 100)
ctrl = 1
;---------------------------------------------------------------------------
;Hilos final
[Statedef 1337]
type    = S
movetype= A
physics = S
velset = 0,0,0
ctrl = 0
sprpriority = -1

[State 1804, Animation]
type = ChangeAnim
trigger1 = time = 0
value = 1337+ifelse(var(1)=0,0,3000)

[State 2500, 3]
type=ChangeState
trigger1=AnimTime=0
trigger1=Pos Y < 0
value=1900

[State 1804, End]
type = ChangeState
trigger1 = animtime = 0
value	= 0
ctrl = 1

;---------------------------------------------------------------------------
;Hilos nomas
[StateDef 1335]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 1335
ctrl = 0
sprpriority = 4

[State 12100, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 12102, Explosion]
type = HitDef
trigger1 = time >= 1
attr = S, HP
animtype  = hard
Damage = 2,1
guardflag = MA
pausetime = 1,1
sparkno = -1
sparkxy = -1
hitsound   = -1
guardsound = -1
getpower = 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -25, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -25, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1

[State 12120, Explosion.Sound1]
type = PlaySND
trigger1 = movehit && numhelper(13100) = 0 && time >= 115
value = 12,6
volume = 255

[State 12120, Explosion.Sound2]
type = PlaySND
trigger1 = moveguarded && numhelper(13100) = 0 && time >= 115
value = 12,6

[State 12100, Explosion.Helper]
type = Helper
trigger1 = movecontact && numhelper(13100) = 0 && time >= 115
name = "Explosion"
stateno = 13100
postype = p2
pos = -15, -33
size.xscale = 0.8
size.yscale = 0.8
;keyctrl = 0
ownpal = 1
id = 13100

[State 12100, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Explosion Helper
[StateDef 13100]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 1011
ctrl = 0
sprpriority = 4

[State 13100, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 13100, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Weak Fireball 1
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0
anim = 1100

[State 1000, PowerAdd]
Type = PowerAdd
Trigger1 = time >= 1
value = -10

[State 1000, VelSetY]
Type = VelSet
Trigger1 = Time = 0
y = 0

[State 1000, Sound]
type = PlaySnd
trigger1 = time = 5
value = 7,1

[State 1000, Ring]
type = Explod
trigger1 = time = 5
Anim = 12010
Pos = 29, -43
Id = 12010
sprpriority = 3
removeongethit = 1
removetime = 12
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.40, 0.40

[State 1000, Projectile]
type = Projectile
trigger1 = Time = 5
ProjAnim = 2
ProjHitAnim = 334
ProjRemAnim = 334
projid = 12110
projscale = 0.6, 0.6
;ProjStageBound = 40
;ProjEdgeBound = 40
;ProjHeightBound = -240, 1
offset = 25, -42
velocity = 14, 0
remvelocity = .7, 0
accel = -0.02, 0.05
attr = S, SP
damage    = 23,4
animtype  = Medium
getpower  = 0
givepower = 30
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound   = S2,6
guardsound = S2,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
airguard.velocity = -5.5
air.type = Low
air.velocity = -4.5,-2.5
air.juggle = 3

[State 1000, VarSet]
type = VarSet
trigger1 = time = 0
v = 14
value = 0

[State 1000, VarSet]
type = VarSet
triggerall = (Var(14) = 0 && time > 0)
trigger1 = (command = "x" || command = "x" || command = "y") || Var(39) = 1
v = 14
value = 1

[State 1000, Next]
type = ChangeState
trigger1 = animtime = 0 && Var(14) = 1 && power > 0
value = 1001
ctrl = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0 && (Var(14) = 0 || power = 0)
value = 1003
ctrl = 1
;---------------------------------------------------------------------------
;Weak Fireball 2
[Statedef 1001]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0
anim = 1101

[State 1001, PowerAdd]
Type = PowerAdd
Trigger1 = time >= 1
value = -18

[State 1001, VelSetY]
Type = VelSet
Trigger1 = Time = 0
y = 0

[State 1001, Sound]
type = PlaySnd
trigger1 = time = 1
value = 7,1

[State 1001, Ring]
type = Explod
trigger1 = time = 1
Anim = 12010
Pos = 29, -43
Id = 12010
sprpriority = 3
removeongethit = 1
removetime = 12
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.40, 0.40

[State 1001, Projectile]
type = Projectile
trigger1 = Time = 1
ProjAnim = 2
ProjHitAnim = 334
ProjRemAnim = 334
projscale = 0.6, 0.6
;ProjStageBound = 40
;ProjEdgeBound = 40
;ProjHeightBound = -240, 1
offset = 25, -41
velocity = 14, 2.4
remvelocity = .7, 0
accel = -0.02, -0.085
attr = S, SP
damage    = 23,4
animtype  = Medium
getpower  = 0
givepower = 30
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound   = S2,6
guardsound = S2,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
airguard.velocity = -5.5
air.type = Low
air.velocity = -4.5,-2.5
air.juggle = 3

[State 1001, VarSet]
type = VarSet
triggerall = (Var(14) = 1 && time > 0)
trigger1 = (command = "x" || command = "x" || command = "y") || Var(39) = 1
v = 14
value = 2

[State 1001, Next]
type = ChangeState
trigger1 = animtime = 0 && Var(14) = 2 && power > 0
value = 1002
ctrl = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0 && (Var(14) = 1 || power = 0)
value = 1003
ctrl = 1
;---------------------------------------------------------------------------
;Weak Fireball 3
[Statedef 1002]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0
anim = 1100

[State 1002, PowerAdd]
Type = PowerAdd
Trigger1 = time >= 1
value = -18

[State 1002, VelSetY]
Type = VelSet
Trigger1 = Time = 0
y = 0

[State 1002, Sound]
type = PlaySnd
trigger1 = time = 1
value = 7,1

[State 1002, Ring]
type = Explod
trigger1 = time = 1
Anim = 12010
Pos = 29, -43
Id = 12010
sprpriority = 3
removeongethit = 1
removetime = 12
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.40, 0.40

[State 1002, Projectile]
type = Projectile
trigger1 = Time = 1
ProjAnim = 2
ProjHitAnim = 334
ProjRemAnim = 334
projid = 12110
projscale = 0.6, 0.6
;ProjStageBound = 40
;ProjEdgeBound = 40
;ProjHeightBound = -240, 1
offset = 25, -42
velocity = 14, -1.0
remvelocity = .7, 0
accel = -0.02, 0.06
attr = S, SP
damage    = 23,4
animtype  = Medium
getpower  = 0
givepower = 30
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound   = S2,6
guardsound = S2,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
airguard.velocity = -5.5
air.type = Low
air.velocity = -4.5,-2.5
air.juggle = 3

[State 1001, VarSet]
type = VarSet
triggerall = (Var(14) = 1 && time > 0)
trigger1 = (command = "x" || command = "x" || command = "y") || Var(39) = 1
v = 14
value = 2

[State 1001, Next]
type = ChangeState
trigger1 = animtime = 0 && Var(14) = 2 && power > 0
value = 1010
ctrl = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0 && (Var(14) = 1 || power = 0)
value = 1003
ctrl = 1

;---------------------------------------------------------------------------
;Weak Fireball End
[Statedef 1003]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0
anim = 1003

[State 1003, Tired]
type = ChangeState
trigger1 = AnimTime = 0 && power = 0
value = 5300
ctrl = 1

[State 1003, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Sliding Dash Uppercut
[Statedef 1310]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1000
poweradd = -100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S2,0
volume = 255

[State 105: Areia]
type = Explod
trigger1 = Time = 3
triggerall = Pos Y = 0
anim = 520
ID = 520
pos = -34,-27
postype	= p1
facing 	= 1
vfacing	= 1
vel = 0,0
accel = 0,0
scale = 1,0.70
ontop = 1


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
sparkno = S500
guard.sparkno = S500
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
sparkno = S505
guard.sparkno = S505
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

;-----------------------------------------------------------------------

[StateDef 7060]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 7060; tele + 2
poweradd = -500
sprpriority = 2

[State 3010, palfx]
type = BgPalfx
trigger1 = Time = 1
time = 180
color = 0
mul = 200,186,145

[State 7060]
type = AfterImage
trigger1 = time = 1
time = 5
trans = add1
TimeGap  = 2
FrameGap = 2
length = 6
PalBright   =   0,  0,  0
PalContrast = 256,256,256
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !time
flag = invisible

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,7
volume = 255

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 2
value =  7061
ctrl = 0

;--------------------------------------------------------------------------
[StateDef 7061]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 7061
poweradd = 0;0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = P2MoveType = H
time = 15
movetime = 15

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =Pos Y > 0
statetype = A
movetype = A
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = !time && numtarget
x = ifelse(  facing = -1,(target, pos X-20), (target, pos X+20)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time && !numtarget
x = ifelse(  facing = -1,(enemynear, pos X-20), (enemynear, pos X+20)  )
y = enemynear, pos Y

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 1
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animTime
value =  7062
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime
value =  0+(statetype=A)*7064
ctrl = 1
;--------------------------------------------------------------------------
[StateDef 7062]
type = U
movetype= A
physics = U
velset = 0,0
ctrl = 0
anim = 7062; golpe 3
poweradd = -500;0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 10
value = 40,3
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME = 30
value = 30,3
volume = 255

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 40
move = 40
anim = -1
;darken = -1

[State 1002, Ring]
type = Explod
trigger1 = time = 33
Anim = 12011
Pos = 22, -43
Id = 12010
sprpriority = 3
removeongethit = 1
removetime = 12
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.50, 0.50

[State 0, Turn]
type = Turn
trigger1 = !time

;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 0,0
;ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 170, 30
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S7072
guard.sparkno = S7072
sparkxy = -35, -69
hitsound = S30,2
guardsound = S30,2
ground.type = High
ground.slidetime = 30
ground.hittime  = 35
ground.velocity = -13,-3.5
Air.Fall = 1
fall = 1
air.type = High
air.hittime = 35
air.velocity = -13,-3.5
airguard.velocity = -4.5,0
getpower = 0;0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, EnvColor]
type = EnvColor
trigger1 =movehit
value = 255,255,255
time = 2
ignorehitpause = 1
persistent = 0

[State 7066, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 98
ctrl = 1
