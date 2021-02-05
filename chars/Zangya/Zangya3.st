;---------------------------------------------------------------------------
;------------------| Helper States for Super Zangya |-----------------------
;---------------------------| By SSj3 Vejita |------------------------------
;------------------------/Remake by SaKyo y SaWWeN/------------------------------

;---------------------------------------------------------------------------
;Shoot Blaster
[Statedef 1312]
type = A
movetype = I
physics	= N
velset = 0,0,0
ctrl = 0
anim = 1007
sprpriority = 2

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f"
params = Pos X, Pos Y

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = BindToParent
trigger1 = 1
time = 1
pos = 20,-90

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = PlaySnd
trigger1 = parent,movetype = H
value = 12,6
persistent = 0

[State 0, ]
type = EnvShake
trigger1 = parent,movetype = H
time = 30
freq = 60
ampl = -9
phase = 90
ignorehitpause = 1
persistent = 0

[State 0, ]
type = DestroySelf
trigger1 = parent, prevstateno = 1301
trigger2 = parent, stateno = [5000,5300]
trigger3 = parent, movetype = H
trigger4 = parent, prevstateno = [5000,5300]
;---------------------------------------------------------------------------
;True Shoot Blaster
[Statedef 1311]
type = S
movetype = A
physics	= N
velset = 0,0,0
ctrl = 0
ANIM = 1008
sprpriority = 2

[State 0, ]
type = HitOverride
trigger1 = time > 36
slot = 0
attr = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP
stateno = 1313
time = 1
ignorehitpause = 1

[State 0, xx]
type = NotHitBy
trigger1 = time <= 36
value = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,vel x = %f"
params = Pos X, Pos Y,vel x

[State 0, ]
type = BindToParent
trigger1 = time = 0
time = 1
pos = 20,-95
ignorehitpause = 1

[State 0, ]
type = BindToParent
trigger1 = time = 1
time = 1
pos = 20,-100
ignorehitpause = 1

[State 0, ]
type = BindToParent
trigger1 = time = 2
time = 1
pos = 20,-105
ignorehitpause = 1

[State 0, ]
type = BindToParent
trigger1 = time = [3,36]
time = 1
pos = 20,-110
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 0
trigger1 = time = 36
x = 20
y = 20

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 0
trigger1 = time = 37
x = 20
y = 15

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 0
trigger1 = time = 39
x = 20
y = 10

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 0
trigger1 = time = 41
x = 20
y = 5

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 0
trigger1 = time = 42
x = 20
y = 0

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 1
trigger1 = time = 36
x = 20
y = -10

[State 0, ]
type = VelSet
triggerall = parent, var(12) = 2
trigger1 = time = 36
x = 20
y = 14

[State 0, ]
type = HitDef
trigger1 = time >= 37
attr = S,HP
hitflag = MAFP
guardflag = MA
affectteam = E
animtype = Hard
fall.animtype = Back
priority = 4,Hit
damage = 260,112
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S999999,9
guardsound = S999999,9
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 60
air.hittime = 60
ground.velocity = -10,0
air.velocity = -10,0
air.juggle = 0
fall = 1
numhits = 1
getpower = 0,0
givepower = 0,0

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = screenpos x = [0,320]
trigger1 = pos y > -20
trigger2 = time >= 60
trigger3 = movecontact = 1
trigger4 = parent, time <= 36 && parent, movetype = H
value = 12,6
persistent = 0

[State 0, ]
type = EnvShake
triggerall = time < 100
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = parent, time <= 36 && parent, movetype = H
trigger3 = pos y > -20
trigger4 = time >= 60
time = 30
freq = 60
ampl = -9
phase = 90
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = pos y > -20
trigger2 = movecontact
trigger2 = pos y > -30
anim = 1010
ID = 1010
pos = 0,floor(-pos y)
postype = p1
facing = 1
bindtime = 1
vel = 0,0
removetime = -2
sprpriority = 90
shadow = 0,0,0
ownpal = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = parent,time <= 36 && parent,movetype=H
trigger2 = time >= 60
trigger3 = movecontact
anim = 1011
ID = 1011
pos = 50,0
postype = p1
facing = 1
bindtime = 1
vel = 0,0
removetime = -2
sprpriority = 90
shadow = 0,0,0
ownpal = 1
persistent = 0

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = pos y > -20
trigger3 = time > 60
trigger4 = parent, time <= 36 && parent, movetype = H
trigger5 = ScreenPos y < 0
;---------------------------------------------------------------------------
;True Shoot Blaster
[Statedef 1313]
type = S
movetype = A
physics	= N
ctrl = 0
ANIM = 1008
sprpriority = 2

[State 0, ]
type = PosFreeze
trigger1 = time = [0,1]
value = 1
ignorehitpause = 1

[State 0, ]
type = VarAdd
trigger1 = time=0
var(10)=1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP
stateno = 1313
time = 1
ignorehitpause = 1

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,vel x = %f"
params = Pos X, Pos Y,vel x

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S,HP
hitflag = MAFP
guardflag = MA
affectteam = E
animtype = Hard
fall.animtype = Back
priority = 4,Hit
damage = 260,112
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S999999,9
guardsound = S999999,9
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 60
air.hittime = 60
ground.velocity = -10,0
air.velocity = -10,0
air.juggle = 0
fall = 1
numhits = 1
getpower = 0,0
givepower = 0,0

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = screenpos x = [0,320]
trigger1 = pos y > -20
trigger2 = time >= 60
trigger3 = movecontact = 1
trigger4 = parent, time <= 36 && parent, movetype = H
trigger5 = var(10)=10
value = 12,6
persistent = 0

[State 0, ]
type = EnvShake
triggerall = time < 100
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = parent, time <= 36 && parent, movetype = H
trigger3 = pos y > -20
trigger4 = time >= 60
trigger5 = var(10)=10
time = 30
freq = 60
ampl = -9
phase = 90
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = pos y > -20
trigger2 = movecontact
trigger2 = pos y > -30
anim = 1010
ID = 1010
pos = 0,0
postype = p1
facing = 1
bindtime = 1
vel = 0,0
removetime = -2
sprpriority = 90
shadow = 0,0,0
ownpal = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = parent,time <= 36 && parent,movetype=H
trigger2 = time >= 60
trigger3 = movecontact
trigger4 = var(10)=10
anim = 1011
ID = 1011
pos = 0,0
postype = p1
facing = 1
bindtime = 1
vel = 0,0
removetime = -2
sprpriority = 90
shadow = 0,0,0
ownpal = 1
persistent = 0

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = pos y > -20
trigger3 = parent, time <= 36 && parent, movetype = H
trigger4 = ScreenPos y < 0
trigger5 = time > 60
trigger6 = var(10)=10
;---------------------------------------------------------------------------
;Ked powerball
[Statedef 1315]
type = S
movetype = A
physics	= N
velset = 0,0,0
ctrl = 0
ANIM = 1009
sprpriority = 2

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f"
params = Pos X, Pos Y

[State 0, ]
type = BindToParent
trigger1 = 1
time = 1
pos = -20,-46

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = DestroySelf
trigger1 = parent, animelem = 2
trigger2 = parent, movetype = H
trigger3 = parent, stateno != 1303
;---------------------------------------------------------------------------
;Fireball
[Statedef 1322]
type = S
movetype = I
physics	= N
velset = 10,0,0
ctrl = 0
ANIM = 2
sprpriority = 6

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,life = %d"
params = Pos X, Pos Y,life

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno != [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(223) = 0)
value = 12,1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno = [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(223) = 0)
value = 12,3

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = movetype = H
trigger3 = time > 107
trigger4 = (parent, numprojid(223) = 0)

;---------------------------------------------------------------------------
;Ked 1
[Statedef 1324]
type = S
movetype = I
physics	= N
velset = 15,0,0
ctrl = 0
ANIM = 2
sprpriority = 6

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,life = %d"
params = Pos X, Pos Y,life

[State 0, ]
type = LifeSet
trigger1 = time = 0
value = 1
ignorehitpause = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno != [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(224) = 0)
value = 12,1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno = [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(224) = 0)
value = 12,3

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = movetype = H
trigger3 = time > 100
trigger4 = (parent, numprojid(224) = 0)

;---------------------------------------------------------------------------
;Ked 2
[Statedef 1325]
type = S
movetype = I
physics	= N
velset = 14,0,0
ctrl = 0
ANIM = 2
sprpriority = 6

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,life = %d"
params = Pos X, Pos Y,life

[State 0, ]
type = LifeSet
trigger1 = time = 0
value = 1
ignorehitpause = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno != [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(225) = 0)
value = 12,1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno = [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(225) = 0)
value = 12,3

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = movetype = H
trigger3 = time > 100
trigger4 = (parent, numprojid(225) = 0)

;---------------------------------------------------------------------------
;Ked 3
[Statedef 1326]
type = S
movetype = I
physics	= N
velset = 14,0,0
ctrl = 0
ANIM = 2
sprpriority = 6

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,life = %d"
params = Pos X, Pos Y,life

[State 0, ]
type = LifeSet
trigger1 = time = 0
value = 1
ignorehitpause = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno != [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(226) = 0)
value = 12,1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno = [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(226) = 0)
value = 12,3

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = movetype = H
trigger3 = time > 100
trigger4 = (parent, numprojid(226) = 0)
;---------------------------------------------------------------------------
;Energy Zan
[Statedef 1328]
type = S
movetype = I
physics	= N
velset = 6,0,0
ctrl = 0
anim = 725
sprpriority = 6

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,life = %d"
params = Pos X, Pos Y,life

[State 0, ]
type = LifeSet
trigger1 = time = 0
value = 1
ignorehitpause = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno != [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(227) = 0)
value = 12,1

[State 0, ]
type = PlaySnd
triggerall = time < 100
triggerall = p2stateno = [120,160]
triggerall = screenpos x = [0,320]
trigger1 = movecontact = 1
trigger2 = (parent, numprojid(227) = 0)
value = 12,3

[State 0, ]
type = DestroySelf
trigger1 = movecontact = 1
trigger2 = movetype = H
trigger3 = time > 100
trigger4 = (parent, numprojid(227) = 0)
;---------------------------------------------------------------------------
;Laser
[Statedef 1329]
type = S
movetype = A
physics	= N
velset = 0,0,0
ctrl = 0
ANIM = 3
sprpriority = 6

[State -2,Display]
type = DisplayToClipboard
trigger1 = 1
text = "Pos X = %f, Pos Y = %f,life = %d"
params = Pos X, Pos Y,life

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = HitDef
trigger1 = time=0
attr = S,SP
hitflag = MAFDP
guardflag = MA
affectteam = E
animtype = Hard
priority = 7,Hit
damage = 50,20
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S2,5
guardsound = S2,5
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5,-3
air.velocity = -5,-3
persistent = 0

[State 0, ]
type = AllPalFX
trigger1 = movehit
time = 8
add = 220,0,0
mul = 256,256,256
color = 256
invertall = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = !animtime
trigger2 = movetype = H
