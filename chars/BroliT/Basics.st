;_-Broli's ST-________________
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
;states 60-640
;-------------------------------------------------------------
;Super Jump
[Statedef 70]
type = A
movetype = I
physics = N
anim = 41
velset = 0,-12
ctrl = 1
poweradd = -20
sprpriority = 2

[State 70, ]
type = Explod
trigger1 = time = 0
anim = 6120
ID = 6120
pos = 0,5
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
value = 60
ctrl = 1

[state 70, VelFwd]
type = VelSet
trigger1 = command = "holdfwd"
x = 4 

[state 70, VelBack]
type = VelSet
trigger1 = command = "holdback"
x = -4

[state 70, VelAdd]
type = VelAdd
trigger1 = Time > 10
x = 0
y = 1

[state 70, changestate]
type = ChangeState
trigger1 = Pos Y >= 1 
value = 52
ctrl = 1
;--------------------------------------------------------------------------
;Intro Decider
[Statedef 190]
type = S

[State 190, 3]
type = ChangeState
trigger1 = (Random > 333)
value = 192

[state 190, 3]
type = changestate
trigger1 = (random >333)&&(random<=666)
value = 191

(state 190, 4]
type = changestate
trigger1 = (Random >666)
value =193
;---------------------------------------------------------------------------
;INTRO ROCK CRUSH
[Statedef 191]
type = S
ctrl = 0
anim = 1000

[State 191, rock crush]
type = PlaySnd
trigger1 = time = 270
value = S5,14
volume = 3
channel = 1

[State 191, rock]
type = explod
trigger1 = time = 190
anim = 6190
pos = 27,-64
id = 6190
scale = .9, .9
sprpriority = 100
ontop = 1

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,350]
flag = Intro

[State 191]
type = ChangeState
trigger1 = Time = 350
value = 0
;---------------------------------------------------------------------------
; INTRO 2
[Statedef 192]
type = S
ctrl = 0
anim = 1100

;[State 192,Pause]
;type = Pause
;trigger1 = (Time = [270,295])&&((GameTime%1) = 0)
;time = 1
;movetime = 0

[State 300, scream]
type = PlaySnd
trigger1 = Time = 10
value = S0,2
volume = 15
channel = 11

[State 300, charge]
type = PlaySnd
trigger1 = Time = 190
value = S1,4
loop = 1
volume = 1
channel = 10

[state 300, end charge]
type = stopsnd
channel = 10
trigger1 = time =  430

[State 300, charge]
type = PlaySnd
trigger1 = Time = 190
value = S7,1
loop = 1
volume = 2
channel = 12

[state 300, end charge]
type = stopsnd
channel = 12
trigger1 = time =  430

[State 300, charge]
type = PlaySnd
trigger1 = time =  430
value = S5,23
volume = 1
channel = 5

[State 300, charge]
type = PlaySnd
trigger1 = time =  180
value = S0,3
volume = 1
channel = 13

[State 300, Aura]
type = explod
trigger1 = time = 190
anim = 6040
ID = 6040
pos = 0,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove aura]
type = RemoveExplod
trigger1 = time =  430
ID = 6040
ignorehitpause = 0
persistent = 1

[State 300, Aura]
type = explod
trigger1 = time =  430
anim = 6046
ID = 6046
pos = 0,0
sprpriority = 5
removetime = 6
removeongethit = 1
bindtime = -1

[state 300, dust1]
type = explod
trigger1 = time = 190
anim = 6020
ID = 6020
pos = -30,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove dust1]
type = RemoveExplod
trigger1 = time =  430
ID = 6020
ignorehitpause = 0
persistent = 1

[state 300, dust2]
type = explod
trigger1 = time = 190
anim = 6025
ID = 6025
pos = 30,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove dust2]
type = RemoveExplod
trigger1 = time =  430
ID = 6025
ignorehitpause = 0
persistent = 1

[state 300, dust3]
type = explod
trigger1 = time = 190
anim = 6120
ID = 6120
pos = 0,0
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1

[State 300, remove dust3]
type = RemoveExplod
trigger1 = time =  430
ID = 6120
ignorehitpause = 0
persistent = 1

[State 300,shake]
type = EnvShake
trigger1 = (timemod = 4,0)&&(time >70)&&(time<430)
time = 4
freq = 300
ampl = -4

[State 300, ]
type = BGPalFX
trigger1 = (time >180)&&(time<280) && ((GameTime%6) = 0)
time = 1
add = 200,200,200
mul = 256,256,256
sinadd = 0,0,0,0
invertall = 1
color = 256

[State 0, ]
type = AllPalFX
trigger1 =time = 180
time =100 
add	= 10,10,10
mul	= 256,256,256
sinadd = -10,-10,-10,10
invertall = 0
color = 30

[state 300, White circle]
type = explod
trigger1 = time = 180
anim = 6160
ID = 6160
pos = 4,-67
sprpriority = 5
removetime = 14
removeongethit = 1
bindtime = -1

[state 300, white circle]
type = explod
trigger1 = time = 280
anim = 6160
ID = 6160
pos = 4,-67
sprpriority = 5
removetime = 14
removeongethit = 1
bindtime = -1

[state 300, lightning1]
type = helper
trigger1 = (Time > 100) && (Time < 430) && ((GameTime%70) = 0)
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

[state 300, lightning2]
type = helper
trigger1 = (Time > 120) && (Time < 430) && ((GameTime%30) = 0)
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

[State 192, 1]
type = AssertSpecial
trigger1 = Time = [0,522]
flag = Intro

[State 192]
type = ChangeState
trigger1 = Time = 522
value = 0
;---------------------------------------------------------------------------
; INTRO 2
[Statedef 193]
type = S
ctrl = 0
anim = 1200

[State 0, ]
type = PlaySnd
trigger1 = time = 10 
value = S5,32
channel = 1
ignorehitpause = 0
persistent = 1

[State 192, 1]
type = AssertSpecial
trigger1 = Time = [0,270]
flag = Intro

[State 192]
type = ChangeState
trigger1 = Time = 270
value = 0
;----------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 305
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = Time = 100
value = 1

[State 330, laugh]
type = PlaySnd
trigger1 = animelem = 5
value = S0,1
channel = 1

[state 33-, endslaugh]
type = stopsnd
trigger1 = time = 100
channel = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Stand Light Punch
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                         
anim = 200                       
poweradd = 20                    
sprpriority = 1 

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1             

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                    
damage = 20, 5                   
animtype = Light                 
guardflag = MAF                   
hitflag = MA                    
priority = 4, Hit                
pausetime = 7,8                
hitsound = s3, 1                 
guardsound = s5, 30                
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -4             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12 
sparkno= S6000
guard.sparkno = s6000 
sparkxy = 0, -77
envshake.time   = 5
envshake.freq   = 120
envshake.ampl   = -4
envshake.phase  = 1   

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium punch
[Statedef 210]
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

[State 210, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MAF
priority = 4, Hit
animtype  = Medium
damage    = 30,15
guardflag = MA
pausetime = 7,8
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
envshake.time   = 5
envshake.freq   = 160
envshake.ampl   = -5
envshake.phase  = 1 

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong punch
[Statedef 215]
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
value = S5,26
channel = 1 

[State 215, PlayerPush]
type = PlayerPush
trigger1 = Anim = 201
value = 1

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 3
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
sparkxy = 0,-82
envshake.time   = 5
envshake.freq   = 120
envshake.ampl   = -4
envshake.phase  = 1  

[State 215, 3]
type = HitDef
trigger1 = AnimElem = 4
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
sparkxy = 0,-91
envshake.time   = 5
envshake.freq   = 200
envshake.ampl   = -5
envshake.phase  = 1  

[State 215, 4]
type = velAdd
trigger1 = AnimElem = 3
x = 10

[State 215, 4]
type = velset
trigger1 = AnimElem = 4
x = 0

[State 215, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing weak kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
velset = 0,0
anim = 212
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 230, 2]
type = HitDef
trigger1 = animelem=2
attr = S, NA
hitflag = MAFD
priority = 4, Hit
animtype  = Medium
damage    = 26,10
guardflag = MA
pausetime = 7,8
sparkxy = 0,-8
hitsound   = s3,2
guardsound = s5, 30 
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2.5,-3.5
sparkno= S6000
guard.sparkno = S6000
envshake.time   = 5
envshake.freq   = 120
envshake.ampl   = -4
envshake.phase  = 1 
[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Medium kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 230, 2]
type = HitDef
trigger1 = animelem=2
attr = S, NA
animtype  = Medium
damage    = 36,15
hitflag = MAF
priority = 4, Hit
guardflag = MA
pausetime = 7,8
sparkxy = 0,-55
hitsound   = s3,3
guardsound = s5, 30 
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -2.5,-3.5
sparkno= S6000
guard.sparkno = S6000
envshake.time   = 5
envshake.freq   = 160
envshake.ampl   = -5
envshake.phase  = 1   

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong kick
[Statedef 250]
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

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
Hitflag = MAF
priority = 4, Hit
animtype = back
air.animtype = back
damage    = 46, 20
guardflag = MA
pausetime = 14,16
sparkxy = 0,-95
hitsound   = s3,4
guardsound = s5, 30 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity =-12
air.velocity    = -2, -8
air.juggle      = 4
fall = 0
sparkno= S6000
guard.sparkno =S6000
envshake.time   = 5
envshake.freq   = 200
envshake.ampl   = -5
envshake.phase  = 1   

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 213
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 400, 2]
type = HitDef
trigger1 = animelem =2
attr = C, NA
damage    = 25, 10
priority  = 3
animtype  = Light
hitflag = M
priority = 4, Hit
guardflag = L
pausetime = 7,8
sparkxy = 0,-48
hitsound   = s3,1
guardsound = s5, 30 
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3
sparkno= S6000
guard.sparkno =S6000
envshake.time   = 5
envshake.freq   = 120
envshake.ampl   = -4
envshake.phase  = 1 

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching medium punch
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 213
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 405, 2]
type = HitDef
trigger1 = animelem =2
attr = C, NA
damage    = 25, 10
priority  = 3
animtype  = Light
hitflag = M
priority = 4, Hit
guardflag = L
pausetime = 7,8
sparkxy = 0,-48
hitsound   = s3,1
guardsound = s5, 30 
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3
sparkno= S6000
guard.sparkno = S6000
envshake.time   = 5
envshake.freq   = 140
envshake.ampl   = -5
envshake.phase  = 1   

[State 405, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-----------------------------------------------------------
;Crouching strong punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 213
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 35, 15
animtype  = Medium
hitflag = M
priority = 4, Hit
guardflag = M
pausetime = 11,12
hitsound   = s3,2
guardsound = s5, 30 
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
sparkno= S6000
guard.sparkno = S6000
sparkxy = 0,-48
envshake.time   = 5
envshake.freq   = 160
envshake.ampl   = -5
envshake.phase  = 1   

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching light kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 215
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 430, 2]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage    = 28, 10
animtype  = Light
priority = 4, Hit
hitflag = MD
guardflag = L
pausetime = 7,8
sparkno = S6000
guard.sparkno = S6000
sparkxy = 0, -5
hitsound   = s3,1
guardsound = s5, 30 
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
envshake.time   = 5
envshake.freq   = 120
envshake.ampl   = -4
envshake.phase  = 1 

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;----------------------------------------------------------
;Crouching medium kick
[Statedef 435]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 219
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 430, 2]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage    = 28, 10
animtype  = light
priority = 4, Hit
hitflag = MD
guardflag = L
pausetime =7,8
sparkno = S6000
guard.sparkno = S6000
sparkxy = 0,-26
hitsound   = s3,2
guardsound = s5, 30 
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
envshake.time   = 5
envshake.freq   = 140
envshake.ampl   = -5
envshake.phase  = 1 

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouch Strong Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 215
sprpriority = 2

[State 0, ]
type = VelSet
trigger1 = time = 1 
x =4
y =0 
ignorehitpause = 0
persistent = 1

[State 0, ]
type = VelSet
trigger1 = time = animelem =2 
x =0 
y =0 
ignorehitpause = 0
persistent = 1

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 440, 3]
type = HitDef
trigger1 = animelem =2
attr = C, NA
damage    = 35, 15
priority = 4, Hit
hitflag = MD
guardflag = L
pausetime = 13,15
sparkno = S6000
guard.sparkno = S6000
sparkxy = 0,-5
hitsound   = s3,2
guardsound = s5, 30 
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
envshake.time   = 5
envshake.freq   = 180
envshake.ampl   = -5
envshake.phase  = 1 

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Jump fireball
[Statedef 220]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 220
sprpriority = 2

[State 220, Velset]
type = velset
trigger1 = time = 6
x = 0
y = -1

[State 220, ball shoot]
type = PlaySnd
trigger1 = time = 6
value = S1,2
channel = 1

[state 220, blast]
type = helper
trigger1 = time = 6
helpertype = normal
name = "blast"
ID = 221
pos = 38,-33
postype = p1
stateno = 221
keyctrl = 0
ownpal = 1
;---------------------------------------------------------------------------
;blast
[statedef 221]
anim = 6085
type = S
movetype = A
physics = S
ctrl = 0

[State 221, AfterImage]
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

[State 221, assertspecial]
type=assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 221, hitdef]
type = hitdef
trigger1 = var(2) = 0
numhits = 1
attr = S, HP
hitflag = MAFD
priority = 5, Hit
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
damage = 40,20
pausetime = 5
guard.pausetime = 2
sparkno = S6140
sparkxy = 0, 26
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
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
hitsound   = s7,2
guardsound = s7,2

[State 221,velset]
type = VelSet
trigger1 = 1
x = 12
y = 10

[State 221, nohitby]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 221,hitby]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[state 221, destroy]
type = destroyself
trigger1 = ScreenPos x >= 500
trigger2 = movecontact = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 214
sprpriority = 2

[State 0, swing]
type = PlaySnd
trigger1 = animelem = 2
value = S5,25
channel = 1 

[State 630, 2]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 26,10
priority = 4, Hit
Hitflag =HA
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = S6000
guard.sparkno = S6000
sparkxy = 0,2
hitsound   = s3,1
guardsound = s5, 30
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 640]
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
damage    = 50, 24
priority = 4, Hit
Hitflag = HA
guardflag = HA
priority = 4
pausetime = 11,12
sparkno = S6000
guard.sparkno = S6000
sparkxy = 0,-27
hitsound   = s3,3
guardsound = s5, 30
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;[Statedef -2]
