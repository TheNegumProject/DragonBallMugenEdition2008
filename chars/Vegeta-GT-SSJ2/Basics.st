
; Variable List
;-------------------------

; Var(2)   - Buukujutsu
; Var(3)   - Buukujutsu
; Var(4)   - Armor Mode
; Var(5)   - Power Mode
; Var(6)   - Win Pose
; Var(20)  - Mode
; Var(59)  - A.I.
; FVar(10) - Damage System


;Statedef Data:
;-------------------
;170       -  Lost time
;180-182   -  Win pose
;190-192   -  Pre-Intro/Intro
;200       -  W.Punch
;205       -  Elbow
;210       -  S. punch
;220       -  Uppercut
;230       -  W. Kick
;240       -  S. kick
;400       -  Low W. Punch
;410       -  Low S. Punch
;430       -  Low W. Kick
;440       -  Low S. Kick
;600       -  Air W. Punch
;610       -  Air S. Punch
;630       -  Air W. Kick
;640       -  Air S. Kick
;800-820   -  Throw
;900-913   -  Buukujutsu
;5000-5999 - Sistem

;==============================================================================
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
[Statedef 180]
type = S

[State 180,VarRandom]
type = VarRandom
trigger1 = (!Time)
v = 6
range = 0,2

[State 180,ChangeState]
type = ChangeState
trigger1 = (time=1)
value = 180+var(6)

;---------------------------------------------------------------------------
;Win Pose
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 181,assertspecial]
type = assertspecial
trigger1 = (time = [0,200])
flag = roundnotover

[State 181,Helper]
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

;Aura sound
[State 181, PlaySnd]
type = PlaySnd
trigger1 =(Animelem =2)
value = 1000,0
channel = 5
volume = 0
freqmul = 1.1
loop = 1
pan = 0


[State 181,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;Win Pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,Envcolor]
type=Envcolor
trigger1= (Animelem = 4)
time=3

[State 182,Explod]
type = Explod
trigger1 = (time = 70)
anim = F60
ID =  5150
pos = 0,0
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

;Aura End
[State 182, PlaySnd]
type = PlaySnd
trigger1 = (Animelem = 4)
value = 190,2
volume = 0
freqmul = 1.1
loop = 0
pan = 0


[state 182,assertspecial]
type = assertspecial
trigger1 = (time = [0,200])
flag = roundnotover

[State 182,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;-----------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190,1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190,2] ;Go straight to intro.
type = ChangeState
trigger1 = (!Time)
value = 191

;-----------------------------------------------------------------------
 ;Intro
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191,Envcolor]
type = Envcolor
trigger1 =(AnimElem=3)
time = 3

[State 191,Envcolor]
type = Envcolor
trigger1 =(Time = 197)
time = 5


[State 191,EnvShake]
type	= EnvShake
trigger1= (Time>30)&&(GameTime%5=0)
time	= 5
freq	= 60
ampl	= -4
phase	= 90


[State 191, Explod]
type = Explod
trigger1 = (Time>70)&&(GameTime%30=0)
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


[State 191,Helper]
type = Helper
trigger1 = (AnimElem=3)
helpertype = normal
name = "Aura_Dinamic"
id = 1002
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
stateno = 1002
keyctrl = 0
ownpal = 1


[State 191, PlaySnd]
type = PlaySnd
trigger1 = (time=20)
value = S190,1
volume = 0
channel = 13
freqmul = 1.0
loop = 1
pan = 0


;Aura sound
[State 191, PlaySnd]
type = PlaySnd
trigger1 = (Animelem =3)
value = 1000,0
channel = 5
volume = 0
freqmul = 1.1
loop = 1
pan = 0

;Aura End
[State 191, PlaySnd]
type = PlaySnd
trigger1 = (Time=197)
value = 190,2
volume = 0
freqmul = 1.1
loop = 0
pan = 0

[State 191,AssertSpecial]
type 	= AssertSpecial
trigger1= 1
flag 	= Intro

[state 191,ChangeState]
type = ChangeState
trigger1 =(!Animtime)
value = 0


;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = (Time = 10)
value = 1

[State 195, 2]
type = ChangeState
trigger1 = (!AnimTime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Weak Punch
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 10                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)


[State 200,HitDef]
type = HitDef
trigger1 = (AnimElem = 2)
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 20,10
getpower = 20,10
animtype = Light               ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12                 ;Time attacker pauses, time opponent shakes
sparkno = s6016                     ;Spark anim no (Def: set above)
sparkxy = -10, -40               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s0,7                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -2             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
persistent = 1



[State 200,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,1

[State 200,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,5

[State 200,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900

[State 200,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1
;---------------------------------------------------
; Elbow
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 10
sprpriority = 2


[State 205,HitDef]
type = HitDef
trigger1 =(AnimElem = 3)
attr = S, NA
damage = 15
getpower = 15,10
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
ground.velocity = -1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1,-2
air.hittime = 12


[State 205,PlaySnd]
type = PlaySnd
trigger1 = (Time=1)
value = 0, 0

[State 205,PlaySnd]
type = PlaySnd
trigger1 = (Time=1)
value = 0, 5

[State 205,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900


[State 205,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2


[State 210,PlaySnd]
type = PlaySnd
trigger1 = (Time=2)
value = 0, 4

[State 210,PlaySnd]
type = PlaySnd
trigger1 = (Time=2)
value = 0, 5

[State 210,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 25
getpower = 25,10
guardflag = MA
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-40
hitsound   = s0,8
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2.5
air.velocity = -2.5,-3.5

[State 210,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900

[State 210,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Uppercut
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 6,0
anim = 220
sprpriority = 2


[State 220,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0,4

[State 220,PlaySnd]
type = PlaySnd
trigger1 = (Time=2)
value = 0,5

[State 220,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Heavy
damage    = 25
getpower = 25,10
guardflag = MA
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-60
hitsound   = s0,8
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2.5,-4.5
air.velocity = -2.5,-4.5

[State 220,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900

[State 220,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Weak kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 2,0
anim = 230
sprpriority = 2

[State 230,HitDef]
type = HitDef
trigger1 = (AnimElem = 3)
attr = S, NA
animtype  = Light
damage    = 20
getpower = 20,10
guardflag = MA
pausetime = 9,9
sparkno = s6016
sparkxy = -10,-40
hitsound   = s0,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -2
air.velocity = -2,-3

[State 230, ReversalDef]
type = ReversalDef
trigger1 =(p2bodydist X < 2)
trigger1 = (AnimElem = 1) || (AnimElem = 2)
reversal.attr = S,NA
sparkno = -1
p1stateno = 8000
p2stateno = 8005

[State 230,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 1

[State 230,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0,6

[State 230,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900

[State 230,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 10
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240,HitDef]
type = HitDef
trigger1 =(!Time)
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 30,15
guardflag = MA
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-60
hitsound   = s0,10
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.5
air.velocity = -2.5,-3.5

[State 240,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 1

[State 240,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 6

[State 240,ChangeState]
type=ChangeState
trigger1=(!AnimTime)&&(Pos Y<0)
value=900

[State 240,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Weak punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 400
sprpriority = 2

[State 400,HitDef]
type = HitDef
trigger1 =(!Time)
attr = C, NA
damage    = 20
getpower = 20,10
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 9,9
sparkno = s6016
sparkxy = -10,-30
hitsound   = s0,7
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -2
air.velocity = -2,-3

[State 400,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0, 0

[State 400,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching Strong punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 10
ctrl = 0
anim = 410
sprpriority = 2

[State 410,HitDef]
type = HitDef
trigger1 =(!Time)
attr = C, NA
damage    = 25
getpower = 25,10
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-30
hitsound   = s0,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 410,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0, 0

[State 410,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Weak kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 430
sprpriority = 2

[State 430,HitDef]
type = HitDef
trigger1 =(!Time)
attr = C, NA
damage   = 20
getpower = 20,10
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 9,9
sparkno = s6016
sparkxy = -10,-8
hitsound   = s0,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -2
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 430,PlaySnd]
type = PlaySnd
trigger1 = (Time=1)
value = 0, 0

[State 430,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 10
ctrl = 0
anim = 440
sprpriority = 2

[State 440,HitDef]
type = HitDef
trigger1 =(!Time)
attr = C, NA
damage   = 30
getpower = 30,20
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s6016
sparkxy = -5,-30
hitsound   = s0,10
guardsound = 6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2.5,-3
air.velocity = -2.5,-3
guard.velocity = -5
fall = 1

[State 440,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0, 2

[State 440,ChangeState]
type = ChangeState
trigger1 =(!AnimTime)
value = 11
ctrl = 1
;------------------------------------------------------------------------
;Jump Weak Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 10
ctrl = 0
anim = 600
sprpriority = 2

[State 600,PlaySnd]
type = PlaySnd
trigger1 = (Time=1)
value = 0, 0

[State 600,HitDef]
type = HitDef
trigger1 =(!Time)
attr = A, NA
damage   = 20
getpower = 20,10
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = s6016
sparkxy = -10,-10
hitsound   = s0,7
guardsound = 6,0
animtype = Light
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2
air.velocity = -2,-3

;---------------------------------------------------------------------------
;Jump Strong Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 10
ctrl = 0
anim = 610
sprpriority = 2

[State 610,HitDef]
type = HitDef
trigger1 =(!Time)
attr = A, NA
damage = 25
getpower = 25,10
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-10
hitsound   = s0,8
guardsound = 6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -3
air.velocity = -3,-3

[State 610,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0,1

;---------------------------------------------------------------------------
;Jump Weak Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 10
ctrl = 0
anim = 630
sprpriority = 2

[State 630,HitDef]
type = HitDef
trigger1 =(!Time)
attr = A, NA
damage = 20
getpower = 20,10
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = s6016
sparkxy = -10,-10
hitsound   = s0,9
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
air.velocity = -2,-3

[State 630,PlaySnd]
type = PlaySnd
trigger1 =(Time=1)
value = 0,0
;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 10
ctrl = 0
anim = 640
sprpriority = 2

[State 640,HitDef]
type = HitDef
trigger1 =(!Time)
attr = A, NA
damage    = 30
getpower = 30,20
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s6016
sparkxy = -10,-40
hitsound   = s0,10
guardsound = 6,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-4
fall = 1

[State 640,PlaySnd]
type = PlaySnd
trigger1 =(Time=2)
value = 0,1
;---------------------------------------------------------------------------
;Throw - Attempt
[Statedef 800]
type=S
movetype=A
physics=S
anim=800
velset=0,0
ctrl=0

[State 800,HitDef]
type = HitDef
Trigger1 =(!Time)
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
snap=32,0,0,1         ;Force p2 to close distance with p1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
hitsound   = s800,0   ;Kung Fu Throw - Attempt sound
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800,ChangeState]
type = ChangeState
Trigger1 =(!AnimTime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw - Throwing the opponent
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810,NotHitBy]
type=NotHitBy
trigger1=(Time>=0)
value=SCA
time=1

[State 810,PlayerPush]
type=PlayerPush
trigger1=(Time>=0)
value=0

[State 810,TargetLifeAdd]
type=TargetLifeAdd
trigger1=(!animtime)
value=-20

[State 810, 3]
type=TargetBind
trigger1=(AnimElem=1,>= 0)&&(AnimElem=2, < 0)
pos=10,0

[State 810, 4]
type=TargetBind
trigger1=(AnimElem=2, >= 0)&&(AnimElem=3, < 0)
pos=10,0

[State 810, 10]
type=TargetBind
trigger1=(AnimElem=3, >= 0)&&(AnimElem=4, < 0)
pos=10,0

[State 810,TargetState]
type=TargetState
trigger1=(AnimElem=4)
value=821

[State 810,Turn]
type=Turn
trigger1=(AnimElem=5)

[State 810,PlaySnd]
type = PlaySnd
trigger1 =(AnimElem=4)
value = 810,0

[State 810,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
[Statedef 820]
type   =A
movetype= H
physics=N
velset=0,0
ctrl=0

[State 820,ChangeAnim2]
type=ChangeAnim2
Trigger1=(!Time)
value=820

[State 820,HitBy]
type=HitBy
Trigger1=(Time>=0)
value=SCA
time=1
;-------------------------------------------
[Statedef 821]
type   =A
movetype= H
physics=N
velset=4.5,-6
anim=5050
ctrl=0

[State 821,PosAdd]
type=PosAdd
Trigger1=(!Time)
x= 10
y=-30

[State 821,VelAdd]
type=VelAdd
Trigger1=(Time > 0)
y=.4

[State 821,LifeAdd]
type=LifeAdd
Trigger1=(!Time)
value=-20

[State 821,SelfState]
type=SelfState
trigger1=(Vel Y > 0)&&(Pos Y >= 10)
value=5100
;--------------------------------------------------------------------------
;Buukujutsu Begin
[Statedef 910]
type = A
movetype = A
physics = A
velset = 0,-5.5
anim = 910
ctrl = 0

[State 910,Explod]
type = Explod
trigger1 =(!Time)
anim = F60
ID =  5150
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 910,changestate]
type = changestate
trigger1 =(!animtime)
value = 900
ctrl = 1
;--------------------------------------
;Buukujutsu
[Statedef 900]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State 900, VarSet]
type = VarSet
Trigger1 = (!Time)
var(3) = 1

[State 900, Block1]
type = ReversalDef
Trigger1 = (command = "holdback")
reversal.attr = SCA, NA, SA, HA
pausetime = 0,15
hitsound = S20, 3
p1stateno = 150

[State 900, Stop1]
type = VelSet
Trigger1 = command != "holdfwd"
Trigger1 = command != "holdback"
Trigger1 = command != "holdup"
Trigger1 = command != "holddown"
Trigger1 = var(2) = 0
Trigger2 = Pos Y < -405
x = 0
y = 0

[State 910, Stop2]
type = ChangeAnim
Trigger1 = (command != "holdup")
Trigger1 = (command != "holddown")
Trigger1 = Anim != 900
value = 900

[State 900,fuwavar(1)]
type = VarSet
Trigger1 = command != "holdfwd"
Trigger1 = command != "holdback"
Trigger1 = command != "holdup"
Trigger1 = command != "holddown"
Trigger1 = var(2) != 2
Trigger2 = var(2) = 2
Trigger2 = Vel Y >= 1.3
v = 2
value = 1

[State 900,fuwavar(2)]
type = VarSet
Triggerall = var(2) = 1
Trigger1 = Vel Y <= -1.3
Trigger2 = P2BodyDist Y > 250
Trigger2 = Vel Y < 0
v = 2
value = 2

[State 900,fuwaUp]
type = VelAdd
Trigger1 = (var(2) = 1)
y = -0.1

[State 900,fuwaDown]
type = VelAdd
Trigger1 = var(2) = 2
y = 0.1

[State 900,fuwaEnd]
type = VelSet
Triggerall = var(2) != 0
Trigger1 = command = "holdfwd"
Trigger2 = command = "holdback"
Trigger3 = command = "holdup"
Trigger4 = command = "holddown"
y = 0

[State 900,fuwaEndVar]
type = VarSet
Trigger1 = command = "holdfwd"
Trigger2 = command = "holdback"
Trigger3 = command = "holdup"
Trigger4 = command = "holddown"
v = 2
value = 0

[State 900, UpBorder1]
type = PosSet
Trigger1 = Pos Y < -400
y = -400

[State 900, UpBorder2a]
type = PosAdd
Trigger1 = P2BodyDist Y > 250
Trigger1 = Vel Y < 0
y = 1

[State 900, UpBorder2b]
type = VelSet
Trigger1 = P2BodyDist Y > 250
Trigger1 = Vel Y < 0
y = 0

[State 900, GoDown1]
type = VelAdd
Trigger1 = command = "holddown"
y = 0.4

[State 900,GoDown2]
type = VelSet
Trigger1 = command = "holddown"
Trigger1 = Vel Y < 0
y = 0

[State 900, GoUp1]
type = VelAdd
Trigger1 = command = "holdup"
y = -0.3

[State 900,GoUp2]
type = VelSet
Trigger1 = command = "holdup"
Trigger1 = Vel Y > 0
y = 0

[State 900, GoUpAnim]
type = ChangeAnim
Trigger1 = Anim != 904
Trigger1 = command = "holdup"
value = 904

[State 900, GoBack1]
type = VelAdd
Trigger1 = command = "holdback"
x = -0.3

[State 900,GoBack2]
type = VelSet
Trigger1 = command = "holdback"
Trigger1 = Vel X > 0
x = 0

[State 900, GoBackAnim]
type = ChangeAnim
Triggerall = (Anim != 902)
Trigger1 = (command = "holdback")
Trigger2 = (command = "holddown")
value = 902

[State 900, GoFwd1]
type = VelAdd
Trigger1 = (command = "holdfwd")
x = 0.4

[State 900,GoFwd2]
type = VelSet
Trigger1 = (command = "holdfwd")
Trigger1 = (Vel X < 0)
x = 0

[State 900, GoFwdAnim]
type = ChangeAnim
Trigger1 = (Anim != 901)
Trigger1 = (command = "holdfwd")
value = 901

[State 900, GoDownAnim]
type = ChangeAnim
triggerall = (Anim != 903)
trigger1 = (command = "holddown")
value = 903

[State 900, Turn]
type = Turn
Trigger1 = (P2Dist X < 0)


[State 900,AI]
type=VelSet
trigger1=(var(59)!=0)
x=p2bodydist X/20
y=p2bodydist Y/40


[State 900, Land1]
type = ChangeState
Trigger1 = (Pos Y >= 0)
value = 52
ctrl = 1

[State 900, Land2]
type = ChangeState
Trigger1 = (command="Buukujutsu")&&(command="holddown")
Trigger2 =(power <= 0)
value = 50
ctrl = 1

[State 900,WinALose]
type = ChangeState
trigger1 = (Win=1)||(Lose = 1)
value = 912

;---------------------------------------------------------------------------

[Statedef 912]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 912


[State 912,VelAdd]
type = VelAdd
trigger1 = (AnimElem = 1)&&(AnimElem <= 2)
x = -0.3

[State 912,VelSet]
type = VelSet
trigger1 = (AnimElem = 3)
x = 0

[State 912,ChangeState]
type = ChangeState
trigger1 = (!AnimTime)&&(Pos Y < 0)
value = 900

[State 210,ChangeState]
type = ChangeState
trigger1 = (time=60)
value = 913

;---------------------------------------------------------------------------
[Statedef 913]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0

[State 913,PlaySnd]
type = PlaySnd
trigger1 = (Pos Y >= 0)&&(Vel Y > 0)
persistent = 0
value = 21,4

[State 913,PosSet]
type = PosSet
trigger1 = (Vel Y = 0)
y = 0

[State 913,ChangeAnim]
type = ChangeAnim
trigger1 =(Pos Y >= 0)&&(Vel Y > 0)
value = 913

[State 913,Velset]
type = Velset
trigger1 = (Pos Y >= 0)&&(Vel Y > 0)
y = 0

[State 913,ChangeState]
type = ChangeState
trigger1 = (!AnimTime)&&(Pos Y < 0)
value = 900

[State 913,ChangeState]
type = ChangeState
trigger1 =(!animtime)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------


