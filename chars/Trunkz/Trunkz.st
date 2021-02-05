;---------------------------------------------------------------------------
; PREOUTRO
[Statedef 180]
type = S
ctrl = 0
velset = 0,0

[State 180, 2] ;Go straight to outro.
type = ChangeState
trigger1 = Time = 0 && matchover != 1
value = 181

[State 180, 2] ;Go straight to outro.
type = ChangeState
trigger1 = Time = 0 && matchover = 1
value = ifelse(random<500,181,182)

;---------------------------------------------------------------------------
; OUTRO 1
[Statedef 181]
type = S
ctrl = 0
anim = 181

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 181, 2]
type = AssertSpecial
trigger1 = time <= 150
flag = RoundNotOver

;---------------------------------------------------------------------------
; OUTRO 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0, 0

[State 182]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "TEH !/\/v!&!bl3"
ID = 182
pos = 0,0
postype = LEFT
stateno = 183
keyctrl = 1
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 182]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "TEH !/\/v!&!bl3"
ID = 182
pos = 0,0
postype = RIGHT
stateno = 183
keyctrl = 1
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 182, "This is nothing!"]
type = PlaySnd
trigger1 = time = 5 && random <= 500 && frontedgedist > 0
value = 1459, 0
channel = 1

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 182, 2]
type = Turn
trigger1 = time = 0;animelem = 3, = 11

[State 182, 3]
type = VelSet
trigger1 = time = 0;animelem = 4
x = 1.8

[State 182, 4]
type = AssertSpecial
trigger1 = BackEdgeDist < 340
flag = RoundNotOver

[State 182, 5]
type = ScreenBound
trigger1 = frontedgedist < 10 && time >= 1;time >= 33
movecamera = 0,0
value = 0

;---------------------------------------------------------------------------
; OUTRO 2 - TEH
[Statedef 183]
type = S
ctrl = 0
anim = 1

[State 183]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1
persistent = 1

[State 183]
type = BindToTarget
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1
persistent = 1

[State 183]
type = DestroySelf
trigger1 = (parent, stateno) != 182
ignorehitpause = 1
persistent = 1

;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = ifelse(random>=333, 191,ifelse(random>=666,192,194))

;---------------------------------------------------------------------------
; INTRO 1
[Statedef 191]
type = S
ctrl = 0
anim = 191

[State 191, 0]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; INTRO 2
[Statedef 192]
type = S
ctrl = 0
anim = 192

[State 192, 0]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; INTRO 3
[Statedef 193]
type = S
ctrl = 0
anim = 193

[State 193]
type = PosAdd
trigger1 = time = 0
x = -140
ignorehitpause = 1
persistent = 1

[State 193]
type = VelSet
trigger1 = animelem = 3
x = 5.4
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarAdd
trigger1 = animelemtime(4) = 0
v = 8
value = 1
ignorehitpause = 1
persistent = 1

[State 193]
type = VelSet
trigger1 = animelemtime(4) = 0
x = 0
ignorehitpause = 1
persistent = 1

[State 193, 0]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 1]
type = ChangeState
trigger1 = var(8) = 2
value = 0

;---------------------------------------------------------------------------
; INTRO 4
[Statedef 194]
type = S
ctrl = 0
anim = 194

[State 4000]
type = AfterImage
trigger1 = time = 0
time = 40
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[State 194]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 194]
type = PlaySnd
trigger1 = time = 0
value = 194,0
volume = 0
channel = -1
ignorehitpause = 1

[State 194]
type = PosAdd
trigger1 = time = 0
x = -100
y = -30
ignorehitpause = 1

[State 194]
type = VelSet
trigger1 = time = 0
x = 9.7
ignorehitpause = 1

[State 194]
type = null;PlaySnd
trigger1 = animelem = 3
value = 194,1
volume = 192
channel = -1
ignorehitpause = 1

[State 194]
type = VelSet
trigger1 = animelem = 2
x = .1
ignorehitpause = 1

[State 194]
type = VelSet
trigger1 = time = 40
x = 0
ignorehitpause = 1

[State 194]
type = Gravity
trigger1 = time >= 40 && pos y <= 0
ignorehitpause = 1

[State 194]
type = VelSet
trigger1 = pos y >= 0
y = 0
ignorehitpause = 1

[State 194]
type = PosSet
trigger1 = pos y >= 0
y = 0
ignorehitpause = 1

[State 194]
type = ChangeAnim
trigger1 = time = 40
value = 44
ctrl = 0
ignorehitpause = 1

[state 194]
type = ChangeState
trigger1 = pos y >= 0
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0, 0

[State 195, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
 RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100

[State 100]
type = Explod
trigger1 = time = 0 && pos y = 0
anim = 7100
ID = 7100
pos = -15,-2
postype = p1
bindtime = 1
removetime = 28
sprpriority = 0
ownpal = 1
removeongethit = 0
facing = 1

[State 100]
type = PlaySnd
trigger1 = time = 1
value = 1500, 0
channel = 2

[State 100, 1]
type = VelSet
trigger1 = 1
x = 5
y = 0

[State 100,assert]
type = AssertSpecial
trigger1 = 1
flag = nowalk

[State 100, 2]
type = ChangeState
trigger1 = time > 20
value = 101

[Statedef 101]
type    = S
physics = S
anim = 101
ctrl = 0

[state 101]
type = veladd
trigger1 = 1
x = -0.92

[State 101]
type = null;Explod
trigger1 = time = 5 && pos y = 0
anim = 7100
ID = 7100
pos = 15,-2
postype = p1
bindtime = 1
removetime = 28
sprpriority = 0
ownpal = 1
removeongethit = 0
facing = -1

[State 101]
type = ChangeState
trigger1 = time = 5
value = 0
ctrl = 1
;---------------------------------------------------------------------------
 RUN_BACK
[Statedef 105]
type    = S
physics = S
anim = 105

[State 105]
type = Explod
trigger1 = time = 0 && pos y = 0
anim = 7100
ID = 7100
pos = 15,-2
postype = p1
bindtime = 1
removetime = 28
sprpriority = 0
ownpal = 1
removeongethit = 0
facing = -1

[State 105]
type = PlaySnd
trigger1 = time = 1
value = 1500, 0
channel = 2

[State 100, 1]
type = VelSet
trigger1 = 1
x = -5
y = 0

[State 100,assert]
type = AssertSpecial
trigger1 = 1
flag = nowalk

[State 100, 2]
type = ChangeState
trigger1 = time > 20
value = 106

[Statedef 106]
type    = S
physics = S
anim = 106
ctrl = 0

[state 106]
type = veladd
trigger1 = 1
x = 0.9

[State 106]
type = null;Explod
trigger1 = time = 5 && pos y = 0
anim = 7100
ID = 7100
pos = -15,-2
postype = p1
bindtime = 1
removetime = 28
sprpriority = 0
ownpal = 1
removeongethit = 0
facing = 1

[State 106]
type = ChangeState
trigger1 = time = 5
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 5300
velset = 0,0,0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;---------------------------------------------------------------------------
; WIN
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181
;---------------------------------------------------------------------------
; WIN1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0,0

[State 181, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;---------------------------------------------------------------------
; LIGHT STANDING PUNCH
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                 
ctrl = 0                     
anim = 200
poweradd = 15                      

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1443, 0
channel = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage    = 23 
getpower  = 80     
animtype = Light                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                                           
pausetime = 7,8                  
numhits = 1                      
sparkno = S6500                   
guard.sparkno = S6600
sparkxy = -27,-32
hitsound = S3,0                  
guardsound = 6,0                
ground.type = High                 
ground.slidetime = 5             
ground.hittime  = 11
ground.velocity = -1.9                 
airguard.velocity = -1.9         
air.velocity = -1.3,-3  

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9, 0
channel = 2

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------
; MEDIUM STANDING PUNCH
[Statedef 210]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                  
ctrl = 0                    
anim = 210
poweradd = 15  
hitcountpersist = 1

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1444, 0
channel = 1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage    = 30
getpower  = 50        
animtype = Medium                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                                           
pausetime = 10,12                  
numhits = 1                      
sparkno = S6500    
guard.sparkno = S6600               
sparkxy = -29,-32             
hitsound = S1,0                  
guardsound = 6,0                
ground.type = High                 
ground.slidetime = 5             
ground.hittime  = 11             
ground.velocity = ifelse(hitcount=1,-1.5,-3)           
airguard.velocity = -2         
air.velocity = -2.3,-3           

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------
; HARD STANDING PUNCH
[Statedef 220]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                  
ctrl = 0                    
anim = 220 
poweradd = 15
        
[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1446, 0
channel = 1
          
[State 210, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage    = 36
getpower  = 30       
animtype = Hard                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                                           
pausetime = 7,8                  
numhits = 1                      
sparkno = S6500                   
guard.sparkno = S6600
sparkxy = -26,-32
hitsound = S1,0                  
guardsound = 6,0                
ground.type = High                 
ground.slidetime = 5             
ground.hittime  = 11             
ground.velocity = -1.9            
airguard.velocity = -1.9         
air.velocity = -1.3,-3           

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 220, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------
; LIGHT STANDING KICK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 230
poweradd = 15
hitcountpersist = 1

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1453, 0
channel = 1

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 23
getpower  = 80
guardflag = MA
pausetime = 11,11
sparkno = S6500
guard.sparkno = S6600
sparkxy = -24,-25
hitsound   = S4,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.9    
air.velocity = -2.2,-3.2

[State 230]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------
; MEDIUM STANDING KICK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 240
poweradd = 15
hitcountpersist = 1

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1445, 0
channel = 1

[State 240, 1]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 30
getpower  = 50
guardflag = MA
pausetime = 15,11
sparkno = S6500
guard.sparkno = S6600
sparkxy = -31,-27
hitsound   = S4,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = ifelse(hitcount=2,-1.5,-3)
air.velocity = -2.2,-3.2

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------
; HARD STANDING KICK
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 250
poweradd = 15

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1447, 0
channel = 1

[State 250, 1]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 40
getpower  = 30
guardflag = MA
pausetime = 20,11
sparkno = S6500
guard.sparkno = S6600
sparkxy = -16,-37
hitsound   = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.6;-2.2,-5.2
air.velocity = -2.2,-3.2

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------
; HARD STANDING KICK
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 255
poweradd = 20

[State 255, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=666
value = 1447, 0
channel = 1

[State 255, 1]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 255, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 45
getpower  = 35
guardflag = MA
pausetime = 20,11
sparkno = S6500
guard.sparkno = S6600
sparkxy = -15,-43
hitsound   = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2.2,-4.2
air.velocity = -2.5,-3.7

[State 255, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 255, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1









;---------------------------------------------------------------
;Jump Punches
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 600
poweradd = 15

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1443, 0
channel = 1

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 23
getpower  = 80
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-16
hitsound   = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1
air.velocity = -1.3,-3

[State 600]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = var(7)

[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 610
poweradd = 15

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1444, 0
channel = 1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30
getpower  = 50
guardflag = HA
priority = 3
pausetime = 9,10
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-16
hitsound   = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1
air.velocity = -1.3,-3

[State 610]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 610]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = var(7)

[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 620
poweradd = 15
 
[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1446, 0
channel = 1
    
[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 37
getpower  = 30
guardflag = HA
priority = 3
pausetime = 11,12
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-16
hitsound   = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1
air.velocity = -1.3,-3

[State 620]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 620]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = var(7)
;---------------------------------------------------------------------------
;Jump Kicks
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 630
poweradd = 15

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1453, 0
channel = 1

[State 630, 2]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 630, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 25
getpower  = 80
guardflag = HA
priority = 3
pausetime = 9,10
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-19
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3

[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = var(7)

[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 640
poweradd = 15

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1445, 0
channel = 1

[State 640]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 34
getpower  = 50
guardflag = HA
priority = 3
pausetime = 11,12
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-13
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3

[State 640]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
ctrl = var(7)

[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 650
poweradd = 15

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1447, 0
channel = 1

[State 650]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 42
getpower  = 30
guardflag = HA
priority = 3
pausetime = 14,15
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-13
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3

[State 650]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
ctrl = var(7)
;------------------------------------------------------
;CROUCH PUNCHES
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 400
poweradd = 15

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1443, 0
channel = 1

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 23
animtype  = Light
getpower  = 80
hitflag = MAFD
guardflag = L
pausetime = 8,10
sparkno = S6500
guard.sparkno = S6600
sparkxy = -26,-27
hitsound   = S3,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -2
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 400, 1]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 410
poweradd = 15

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1444, 0
channel = 1

[State 410]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = Light
getpower  = 50
hitflag = MAFD
guardflag = L
pausetime = 9,13
sparkno = S6500
guard.sparkno = S6600
sparkxy = -26,-27
hitsound   = S3,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = ifelse((prevstateno = 430 || prevstateno = 400), 0, -3) 
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 410]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 420
poweradd = 15
 
[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1446, 0
channel = 1
    
[State 420]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 37
animtype  = Hard
getpower  = 30
hitflag = MAFD
guardflag = L
pausetime = 12,10
sparkno = S6500
guard.sparkno = S6600
sparkxy = -12,-51
hitsound   = S1,0
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -1.5, -7
air.velocity = -1.3,-4
down.velocity = -4,0
down.hittime = 20

[State 420]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 420]
type = null;ChangeState
trigger1 = movehit && command = "holdfwd" && command = "holdup"
value = 1041

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;CROUCH KICKS
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
anim = 430
poweradd = 15

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1453, 0
channel = 1

[State 430, 2]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 430, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 25
getpower  = 80
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkxy = -23,-4
sparkno = S6500
guard.sparkno = S6600
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5   
air.velocity = -1.2,-3
guard.velocity = -5

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
anim = 440
poweradd = 15

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1445, 0
channel = 1

[State 440]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 34
getpower  = 50
hitflag = MAFD
guardflag = L
pausetime = 9,13
sparkxy = -22,-27
sparkno = S6500
guard.sparkno = S6600
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = ifelse((prevstateno = 430 || prevstateno = 400), 0, -3)   
air.velocity = -1.2,-3
guard.velocity = -5

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
anim = 450
poweradd = 15

[State 450]
type = VelSet
trigger1 = animelemtime(2) = 0
x = 5
ignorehitpause = 1
persistent = 1

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 1&&random<=500
value = 1447, 0
channel = 1

[State 450]
type = PlaySnd
trigger1 = time = 1
value = 9, 0
channel = 2

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 42
getpower  = 30
hitflag = MAFD
guardflag = L
pausetime = 14,14
sparkxy = -23,-4
sparkno = S6500
guard.sparkno = S6600
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5   
air.velocity = -1.2,-3
guard.velocity = -5

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;--------------------------------------------------------------------------
;Power up 
[Statedef 700]
type = S
movetype = I
physics = S
anim = 700
velset = 0,0
ctrl = 0

[state 700, tishok]
type = explod
trigger1 = time = 0
trigger1 = pos Y >= 0
anim = F61
pos = -3,0
postype = P1
ownpal = 1
sprpriority = -1
removetime = 12
bindtime = -1

[state 700,3]
type = playsnd
trigger1 = time = 1
value = 5,0
channel = 2

[state 700,3]
type = playsnd
trigger1 = time = 0
value = 730,0
volume = 500
channel = 5

[State 700, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 701

; Power up
[Statedef 701]
type = S
movetype = I
physics = S
anim = 701

[state 701]
type = changeanim
trigger1 = power >= 1500&&time=0
value = 750

[State 2000]
type = helper
trigger1 = Time = 10
trigger1 = numhelper(7500) = 0
helpertype = normal
name = "aura"
ID = 7500
pos = 0,0
postype = p1
size.xscale = .8
size.yscale = 1
stateno = 7500
ownpal = 1

[State 2000]
type = helper
trigger1 = Time = 10
trigger1 = numhelper(7000) = 0&& pos y >= 0
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,0
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1

[State 701]
type = VarSet
trigger1 = time=0
trigger1 = var(56)!=1
fvar(0)=0

[State 701]
type = VarAdd
trigger1 = (time = [5,20]) ;&& (fvar(0)<1)
trigger1 = var(56)!=1
fvar(0)=0.1

;[state 701]
;type = explod
;trigger1 = (time = [5,20])
;trigger1 = var(56)!=1
;anim = 1904
;pos = 5,-51
;bindtime = -1
;removetime = 1
;scale = fvar(0),fvar(0)
;ownpal = 1
;facing = 1
;ontop = 1
;removeongethit = 0
;sprpriority=999
;supermovetime = 9999

[state 701,son,]
type = playsnd
trigger1 = time = 1
value = 6,0
channel = 2

[state 701,3]
type = playsnd
trigger1 = time = 1
trigger1 = var(56)!=1
value = 3000,1
volume = 500
channel = 6

[state 701]
type = varset
trigger1 = time = 25
v = 56
value = 1

[State 701, 2]
type = PowerAdd
trigger1 = Time = [0,25]
value = 5

[state 701,Blink White]
type = PalFX
trigger1 = Time > 0
trigger1 = TimeMod = 6,0
time = 2
add = 64,64,64

[State 701, 1]
type = ChangeState
trigger1 = command != "holdc"
trigger2 = command != "holdz"
value = 702

[State 701, 3]
type = ChangeState
trigger1 = Time = 25
value = 701

[State 701, 2.5]
type = ChangeState
trigger1 = power >= 1500&&anim!=750
value = 700

[State 701, 3]
type = ChangeState
trigger1 = power >= 3000
value = 702

; Power up (end)
[Statedef 702]
type = S
movetype = I
physics = S
;anim = 700
velset = 0,0

[state 702]
type = varset
trigger1 = time = 1
v = 56
value = 0

;[State 702, 7]
;type = RemoveExplod
;trigger1 = time = 1
;ID = 731

[State 702, 1]
type = ChangeState
trigger1 = Time = 2
value = 0
ctrl = 1

[Statedef 7000]
sprpriority = 4
anim = 7000

[state 7000]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7000]
type = destroyself
trigger1= animtime = 0

[statedef 7500]
sprpriority = 4

[state 7500]
type = bindtoparent
trigger1 = parent, stateno = [700,702]
pos = 0,0

[state 7500]
type = bindtoparent
trigger1 = parent, stateno = [3000,3301]
pos = ifelse(parent, stateno=3000,5,1),0

[state 7500]
type = bindtoparent
trigger1 = parent, stateno = [4000,4020]
pos = 3,0

[state 7500]
type = bindtoparent
trigger1 = parent, stateno = [4500,4520]
pos = 3,0

[state 7500]
type = bindtoparent
trigger1 = parent, stateno = 4522
pos = 2,0

[state 7500]
type = changeanim
trigger1 = time = 0
value = ifelse(parent, anim = 700,7500,7501)

[state 7500]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7500]
type = destroyself
trigger1 = parent, stateno !=[700,702]
trigger1 = parent, stateno !=[3000,4522]
trigger2 = parent, stateno = [3000,3200]
trigger2 = time = 45
trigger3 = parent, stateno = [4000,4020]
trigger3 = time = 30
trigger4 = parent, stateno = 3301
trigger4 = time = 20
trigger5 = parent, stateno = [4500,4520]
trigger5 = time = 30
trigger6 = parent, stateno = 4522
trigger6 = time = 30


; Fly Begin
[Statedef 1510]
type = A
movetype = A
physics = A
juggle  = 7
velset = 0, -8
ctrl = 0
anim = 1510

;[State 1510, 2]
;type = AfterImage
;trigger1 = Time = 1
;time = 2
;trans = add
;TimeGap  = 4
;FrameGap = 4
;length = 10
;PalBright   =   0,  0,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =   1,  1,  1

;[State 1510, 2]
;type = AfterImageTime
;trigger1 = Time >= 4
;time = 2
;trans = add
;TimeGap  = 4
;FrameGap = 4
;length = 10
;PalBright   =   0,  0,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =   1,  1,  1

[State 1510, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 0
channel = 2

[State 1510, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1500
ctrl = 1

;Fly Go Down
[Statedef 15100]
type = A
movetype = A
physics = A
juggle  = 7
velset = 0, 8
ctrl = 0
anim = 1510

;[State 15100, 2]
;type = AfterImage
;trigger1 = Time = 1
;time = 2
;trans = add
;TimeGap  = 4
;FrameGap = 4
;length = 10
;PalBright   =   0,  0,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =   1,  1,  1

;[State 15100, 2]
;type = AfterImageTime
;trigger1 = Time >= 4
;time = 2
;trans = add
;TimeGap  = 4
;FrameGap = 4
;length = 10
;PalBright   =   0,  0,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =   1,  1,  1

[State 1510, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 0
channel = 2

[State 15100, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 3
channel = 6

[State 15100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1500
ctrl = 1

;Fly
[Statedef 1500]
type = S
ctrl = 0
anim = 1500
velset = 0,0

[State 1510,Var]
type = Varset
trigger1 = time >= 0
trigger1 = Var(15) != 1500
v = 15
value = 1500

[State 1500, NOFreezeVar]
type = varset
trigger1 = time = 0
trigger2 = Anim != 1500
v = 49
value = 0

[State 1500, NOFreezeVar]
type = varadd
trigger1 = Anim = 1500
v = 49
value = 1

[State 1500, NOFreeze]
type = ChangeState
trigger1 = Anim = 1500
;trigger1 = AnimElemTime(1) = 1000
trigger1 = Var(49) >= 1000
value = 15100

[State 1500, Guard]
type = ChangeState
triggerall = P2MoveType = A
triggerall = P2BodyDist X <= 120
trigger1 = Command = "holdback"
value = 130

[State 1500]
type = VelSet
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
x = 0

[State 1500]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 1500, papar2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = anim != 1500
value = 1500

;[State 1500, Runeffect]
;type = AfterImage
;trigger1 = Command = "FF"
;trigger1 = Vel X < 8.6
;trigger2 = Command = "BB"
;trigger2 = Vel X > -7
;trigger3 = Command = "DD"
;trigger3 = Vel Y < 8.6
;trigger4 = Command = "UU"
;trigger4 = Vel Y > -7
;length = 13
;PalBright   =  50, 50, 255 
;PalContrast =  10, 10, 155
;PalAdd      = -50,-50,-255
;PalMul      = .10,.10,.155
;TimeGap  = 1
;FrameGap = 2
;Trans = Add
;time = 15

;DOWN-----------------------------------------

[State 1500, GoDown1]
type = VelAdd
trigger1 = command = "holddown"
y = 0.4

[State 1500,GoDown2]
type = VelSet
trigger1 = command = "holddown"
trigger1 = Vel Y < 0 
y = 0

[State 1500, GoDownAnim]
type = ChangeAnim
triggerall = Anim != 1503
trigger1 = command = "holddown"
value = 1503

[State 1500, RunDown]
type = VelSet
trigger1 = Command = "DD"
trigger1 = Vel Y < 8.6
y = 8.6

;UP-------------------------------------------

[State 1500, UpBorder1]
type = PosSet
trigger1 = Pos Y < -175
trigger1 = command != "holdup"
y = -175

[State 1500, UpBorder1]
type = VelSet
trigger1 = Pos Y < -175
trigger1 = command != "holddown"
y = 0

[state 1500]
type = varset
trigger1 = command = "holdup"
trigger1 = var(2) != 1
v = 2
value = 1

[state 1500]
type = varset
trigger1 = command != "holdup"
trigger1 = var(2) != 0
v = 2
value = 0

[State 1500, GoUp1]
type = Veladd
trigger1 = var(2) = 1
trigger1 = Pos Y >= -165
y = -.3

[State 1500]
type = VelSet
trigger1 = command = "holdup"
trigger1 = Vel Y > 0 
y = 0

[State 1500, GoUpAnim]
type = ChangeAnim
trigger1 = Anim != 1504
trigger1 = command = "holdup"
value = 1504

[State 1500, RunUp]
type = VelSet
trigger1 = Command = "UU"
trigger1 = Vel Y > -7
y = -7

;BACK----------------------------------------

[State 1500, GoBack1]
type = VelAdd
trigger1 = command = "holdback"
x = -0.3

[State 1500,GoBack2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = Vel X > 0 
x = 0

[State 1500, GoBackAnim]
type = ChangeAnim
triggerall = Anim != 1502
trigger1 = command = "holdback"
value = 1502

[State 1500, RunBack]
type = VelSet
trigger1 = Command = "BB"
trigger1 = Vel X > -7
x = -7

;FORWARD------------------------------------

[State 1500, GoFwdAnim]
type = ChangeAnim
triggerall = Anim != 1501
trigger1 = command = "holdfwd"
value = 1501

[State 1500, GoFwd1]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.4

[State 1500,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = Vel X < 0 
x = 0

[State 1500, RunFwd]
type = VelSet
trigger1 = Command = "FF"
trigger1 = Vel X < 8.6
x = 8.6

;-------------------------------------------

[State 1500,Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1500,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 2000,End]
type = ChangeState
trigger1 = Time > 2
trigger1 = command = "fly"
value = 50
ctrl = 1

[State 2000,WinALose]
type = ChangeState
trigger1 = Win = 1
trigger2 = Lose = 1
value = 1220
;---------------------------------------------------------------------------
[Statedef 1220]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1552

[State 230, 3]
type = VelAdd
trigger1 = AnimElem = 1
trigger1 = AnimElem <= 2
x = -0.3

[State 230, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 230, 3]
type = ChangeState
trigger1 = time = 60
value = 1203
;---------------------------------------------------------------------------
[Statedef 1203]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0

[State 1531, 5]
type = PlaySnd
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
persistent = 0
value = 21,4
channel = 2

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = ChangeAnim
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1553

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1500

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; No Power
[Statedef 203]
type = S
physics = S
sprpriority = 0
velset = 0,0,0
ctrl = 0
anim = 5300

[State 203]
type = PlaySnd
trigger1 = time = 3
value = 16, 0
channel = 2

[State 1500, 3]
type = ChangeState
trigger1 = Time = 100
trigger1 = Pos Y < 0
value = 1500

[State 2, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 2, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, Healed]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1

; Super Jump Start
[Statedef 1040]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1


[state 1040]
type = varset
trigger1 = time = 0
v =  7
value = 1

[State 1040]
type = PLaysnd
trigger1 = time= 0
value = 8,2
channel = 2

[State 1040]
type = PLaysnd
trigger1 = Animtime= 0
value = 10,0
channel = 6

[State 1040, 4]
type = VelSet
trigger1 = AnimTime = 0
x = 0
y = -14

[State 1040, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; Super Jump Start fwd
[Statedef 1041]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 1041]
type = PLaysnd
trigger1 = time= 0
value = 8,2
channel = 2

[State 1041]
type = PLaysnd
trigger1 = Animtime= 0
value = 10,0
channel = 6

[State 1041, 4]
type = VelSet
trigger1 = AnimTime = 0
x = 6
y = -7

[State 1041, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; Super Jump Start back
[Statedef 1042]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 1042]
type = PLaysnd
trigger1 = time= 0
value = 8,2
channel = 2

[State 1042]
type = PLaysnd
trigger1 = Animtime= 0
value = 10,0
channel = 6

[State 1042, 4]
type = VelSet
trigger1 = AnimTime = 0
x = -4.55
y = -7

[State 1042, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;Zanzoken
[Statedef 110]
type    = S
physics = S
anim = 100
ctrl = 0
sprpriority = 2

[state 110]
type = screenbound
value = 0
trigger1 = prevstateno = 4513
trigger2 = parent, prevstateno = 4513 && ishelper
ignorehitpause = 1

[State 110]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 110]
type = ChangeAnim
trigger1 = time = 0
trigger1 = prevstateno = 100
trigger1 = ishelper = 0
value = 111

[State 110]
type = ChangeAnim
trigger1 = time = 0
trigger1 = ishelper
trigger1 = parent, anim = 111
value = 111

[State 110]
type = helper
trigger1 = time = 0
trigger1 = ishelper = 0
helpertype = player
name = "afterimage"
id = 111
postype = p1
pos = 0,0
stateno = 110

[State 110]
type = PlaySnd
trigger1 = time = 1
value = 1500, 0
channel = 2

[State 110, 1]
type = VelSet
trigger1 = 1
x = 8
y = 0

[State 110]
type = PlayerPush
trigger1 = time >= 10
trigger1 = ishelper
value = 0

[State 110]
type = PlaySnd
trigger1 = time = 18
value = 110, 0
channel = 2

[State 110]
type = AssertSpecial
trigger1 = time >= 18
trigger1 = ishelper
flag = invisible

[State 110]
type = AfterImage
triggerall = ishelper
trigger1 = time = 13
time = 10
trans = add 
PalContrast =  200, 200, 200
PalBright = 30,30,30

[State 110]
type = ChangeAnim
trigger1 = time = 3
trigger1 = ishelper = 0
value = 110

[State 110]
type = Posadd
triggerall = prevstateno != 4513
trigger1 = time = 3
trigger1 = ishelper = 0
trigger1 = command = "holdup"
trigger1 = command != "holddown"
y = -100

[State 110]
type = Posadd
triggerall = prevstateno != 4513
triggerall = time = 3
triggerall = ishelper = 0
trigger1 = command = "holdup"
trigger1 = command = "holdfwd"
trigger1 = command != "holdback"
x = 200

[State 110]
type = Posadd
triggerall = prevstateno != 4513
triggerall = time = 3
triggerall = ishelper = 0
triggerall = command != "holdfwd"
triggerall = command = "holdback"
trigger1 = command = "holdup"
trigger2 = command = "holddown"
x = -200

[State 110]
type = Posadd
triggerall = prevstateno != 4513
triggerall = time = 3
triggerall = ishelper = 0
trigger1 = command != "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holddown"
trigger1 = command = "holdback"
x = -250

[State 110]
type = Posadd
triggerall = time = 3
triggerall = ishelper = 0
triggerall = prevstateno != 4513
trigger1 = command != "holdup"
trigger1 = command != "holdback"
trigger1 = command != "holddown"
trigger2 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger3 = command = "holddown"
trigger4 = command = "holddown"
trigger4 = pos y = 0 
trigger4 = command != "holdup"
trigger4 = command != "holdback"
trigger5 = command != "holdup"
trigger5 = command != "holdback"
trigger5 = command = "holddown"
trigger5 = command = "holdfwd"
trigger5 = pos y < 0
x = 250

[State 110]
type = Posadd
trigger1 = prevstateno = 4513
x = -backedgedist+50

[State 110]
triggerall = prevstateno != 4513
type = Posset
trigger1 = time = 3
trigger1 = pos y < 0
trigger1 = ishelper = 0
trigger1 = command != "holdup"
trigger1 = command = "holddown"
y = 0

[State 110]
type = helper
;trigger1 = p2bodydist x <= 20
trigger1 = numhelper(110) < 5
trigger1 = ishelper
helpertype = player
name = "thing"
postype = p2
pos = 10,0
id = 110
stateno = 113

[State 110, 2]
type = ChangeState
trigger1 = time = 3
trigger1 = ishelper = 0
value = 112

[State 110, 2]
type = ChangeState
trigger1 = time > 23
value = 111

[Statedef 111]
type    = S
physics = S
anim = 110
sprpriority = 2

[State 111]
type = NotHitBy
trigger1 = ishelper
value = SCA
time = 1

[State 110]
type = helper
;trigger1 = p2bodydist x <= 40
trigger1 = numhelper(110) < 5
trigger1 = ishelper
helpertype = player
name = "thing"
postype = p2
pos = 10,0
id = 110
stateno = 113

[State 111]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 110]
type = AssertSpecial
trigger1 = time >= 0
trigger1 = ishelper
flag = invisible

[State 111]
type = PlayerPush
trigger1 = time >= 0
trigger1 = ishelper
value = 0

[State 111]
type = DestroySelf
trigger1 = time = 5
trigger1 = ishelper = 1

[State 111]
type = ChangeState
trigger1 = time = 5
value = 0
ctrl = 1

[Statedef 112]
type    = S
physics = S
anim = 112
velset = 0,0

[State 112]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 110]
type = AssertSpecial
trigger1 = time >= 0
trigger1 = time < 32
flag = invisible

[State 110]
type = AfterImage
trigger1 = time = 17
time = 15
trans = add 
PalContrast =  200, 200, 200
PalBright = 30,30,30

[State 112]
type = Screenbound
trigger1 = time >= 0
movecamera = 0, 0
value = 1

[State 112]
type = Turn
trigger1 = P2Dist X < 0

[State 112]
type = ChangeState
trigger1 = time = 45
trigger1 = Pos Y < 0
value = 1500
ctrl = 1

[State 112]
type = ChangeState
trigger1 = time = 45
value = 0
ctrl = 1

[Statedef 113]
type    = S
physics = S
anim = 110
velset = 0,0

[State 113]
type = NotHitBy
trigger1 = ishelper
value = SCA
time = 1

[State 110]
type = AssertSpecial
trigger1 = time >= 0
flag = invisible

[State 113]
type = Destroyself
trigger1 = time = 40
;------------------------------------------------------------

[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
poweradd = 85
velset = 0,0

[State 1000]
type = VarSet
trigger1 = time = 0
v =  4
value = 0

[State 1000]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0

[State 1000]
type = VarAdd
trigger1 = time <= 7
fv = 10
value = 0.2

[State 1000, Gah!]
type = PlaySnd
trigger1 = time = 8
value = 1460, 0
channel = 1

[State 1000, Zoom!]
type = PlaySnd
trigger1 = time = 8
value = 10000, 0
channel = 2

[State 1000]
type = Explod
trigger1 = animelem = 1&&numexplod(1000)=0
anim = 6010
ID = 1000
pos = 11, -26
postype = p1
bindtime = 1
removetime = -1
scale = 0.15, 0.15
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1000]
type = ModifyExplod
trigger1 = animelem = 1
anim = 6010
ID = 1000
pos = 11, -26
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1000]
type = RemoveExplod
trigger1 = animelem = 2
ID = 1000

[State 1000]
type = Explod
trigger1 = animelem = 2&&numexplod(1000)=0
anim = 6010
ID = 1000
pos = 26, -31
postype = p1
bindtime = -1
removetime = -1
scale = 0.25, 0.25
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1000]
type = RemoveExplod
trigger1 = animelem = 3
ID = 1000

[State 1000]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 6200
ID = 6200
pos = 14,-31
postype = p1
facing = 1
bindtime = 1
removetime = 10
scale = 0.4, 0.4
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 1000, ball]
type = Helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 12, -31
postype = p1
stateno = 1001
keyctrl = 0
ownpal = 1
size.xscale = 0.46
size.yscale = 0.2

[State 1000]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1001]
movetype = A
anim = 1001
velset = 8, 0
sprpriority = 4

[State 1001, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1001]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1001]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1001]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1001, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1001, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1001]
type = ScreenBound
value = 0
trigger1 = 1

[State 1001]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1001, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.8
guard.velocity = -0.8
air.velocity = -1.8,-1.5
airguard.velocity = -0.7
getpower = 40

[State 1001]
type = ParentVarSet
trigger1 = movecontact
v = 4
value = 1
ignorehitpause = 1

[State 1001]
type = ChangeState
trigger1 = movecontact
value = 1002
ignorehitpause = 1

[State 1001]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1001]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1002]
velset = 0, 0

[State 1002]
type = ChangeAnim
trigger1 = 1
value = 1002
ignorehitpause = 1
persistent = 1

[State 1002]
type = AfterImageTime
trigger1 = 1
time = 0
ignorehitpause = 1

[State 1002]
type = parentvarSet
trigger1 = time = 0
v =  5
value = 1
ignorehitpause = 1

[state 1002]
type = playsnd
trigger1 = time = 0 && var(23) != 1201
value = 21,0
channel = 2
ignorehitpause = 1
persistent = 1

[state 1002]
type = playsnd
trigger1 = time = 0 && var(23) = 1201
value = 10001,1
channel = 2
ignorehitpause = 1
persistent = 1
volume = 255
freqmul = .9

[state 1002]
type = playsnd
trigger1 = time = 0 && var(23) = 1201
value = 1201,1
channel = 3
ignorehitpause = 1
persistent = 1
volume = 255
freqmul = .8

[state 1002]
type = parentvarset
trigger1 = time = 0
v = 3
value = 1
ignorehitpause = 1

[state 1002]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1002]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 1002]
type = Explod
trigger1 = time = 0&&numexplod(1002)=0 && var(23) != 1201
anim = 7600
ID = 1002
pos = 12,0
postype = p1
bindtime = 1
removetime = 28
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1002]
type = Explod
trigger1 = time = 0&&numexplod(1002)=0 && var(23) = 1201
anim = 7660
ID = 1002
pos = 30,0
postype = p1
bindtime = 1
removetime = 28
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1002]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1

;------------------------------------------------------------

[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
poweradd = 85
velset = 0,0

[State 1100]
type = VarSet
trigger1 = time = 0
v =  10
value = 0

[State 1100]
type = VarSet
trigger1 = time = 0
v =  4
value = 0

[State 1100]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0

[State 1100]
type = VarSet
trigger1 = time = 0
v =  6
value = 0

[State 1100]
type = VarAdd
trigger1 = time <= 9
fv = 10
value = 0.3

[State 1100]
type = VarSet
trigger1 = anim = 1000 && animelemtime(1) = 0
fv =  10
value = .2
ignorehitpause = 1

[State 1100, Gah!]
type = PlaySnd
trigger1 = time = 10
value = 1462, 0
channel = 1

[State 1100, Gah!]
type = PlaySnd
trigger1 = anim=1000&&animelemtime(1) = 7
value = 1463, 0
channel = 1

[State 1100, Zoom!]
type = PlaySnd
trigger1 = time = 10
value = 10000, 0
channel = 2

[State 1100, Zoom!]
type = PlaySnd
trigger1 = anim=1000&&animelemtime(1) = 7
value = 10000, 0
channel = 2

[State 1100]
type = Explod
trigger1 = animelem = 1&&numexplod(1000)=0
anim = 6060
ID = 1000
pos = -10, ifelse(anim=1100,-33,-32)
postype = p1
bindtime = -1
removetime = -1
scale = 0.15, 0.15
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1100]
type = ModifyExplod
trigger1 = animelem = 1
anim = 6060
ID = 1000
pos = -10, ifelse(anim=1100,-33,-34)
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1100]
type = RemoveExplod
trigger1 = animelem = 2
ID = 1000

[State 1100]
type = Explod
trigger1 = animelem = 2
anim = 6060
ID = 1000
pos = ifelse(anim=1100,29,26), ifelse(anim=1100,-33,-31)
postype = p1
bindtime = -1
removetime = -1
scale = ifelse(anim=1100,0.35,.2), ifelse(anim=1100,0.35,.2)
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1100]
type = RemoveExplod
trigger1 = animelem = 3
ID = 1000

[State 1100]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 6250
ID = 6200
pos = 14,-32
postype = p1
facing = 1
bindtime = 1
removetime = 10
scale = ifelse(anim=1100,0.5,0.3), ifelse(anim=1100,0.5,0.3)
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 1100, ball]
type = Helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = ifelse(anim=1100,12,16), ifelse(anim=1100,-33,-31)
postype = p1
stateno = ifelse(anim=1100,1101,1102)
keyctrl = 0
ownpal = 1
size.xscale = ifelse(anim=1100,.54,.6)
size.yscale = ifelse(anim=1100,.25,.6)

[State 1100]
type = VarSet
trigger1 = command="KI ball lvl2"&&anim=1100&&time>5
v =  6
value = 1

[State 1100]
type = ChangeAnim;notyetactivated=)=)=)
trigger1 = anim=1100&&var(6)=1&&animelem=5
value = 1000

[State 1100]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1101]
movetype = A
anim = 1101
velset = 11, 0
sprpriority = 4

[State 1101, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
time = -1
TimeGap = 1
FrameGap = 1
Trans = Add
palbright = 20,20,10
palcontrast = 200,200,100
palpostbright = 0,0,0
paladd = 20,20,5
palmul = .6,.6,.5

[State 1101]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1101]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1101]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1101, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1101, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1101]
type = ScreenBound
value = 0
trigger1 = 1

[State 1101]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1101, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 70,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.9,0
guard.velocity = -1
air.velocity = -1.9,-1.5
airguard.velocity = -0.9
getpower = 40

[State 1101]
type = ParentVarSet
trigger1 = movecontact
v = 4
value = 1
ignorehitpause = 1

[State 1101]
type = ChangeState
trigger1 = movecontact
value = 1002
ignorehitpause = 1

[State 1101]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1101]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1102]
movetype = A
anim = 1102
sprpriority = 4

[State 1102]
type = ParentVarSet
trigger1 = movecontact
v = 4
value = 1
ignorehitpause = 1

[State 1102, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
time = -1
TimeGap = 1
FrameGap = 1
Trans = Add
palbright = 23,23,11
palcontrast = 220,220,120
palpostbright = 0,0,0
paladd = 23,23,8
palmul = .6,.6,.5

[state 1102]
type = velset
trigger1 = time = 0
x = 9

[State 1102]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1102]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1102]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1102, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1102, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1102]
type = ScreenBound
value = 0
trigger1 = 1

[State 1102]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1102, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 20,4
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
guard.slidetime = 3
ground.hittime = 8
guard.hittime = 3
air.hittime = 8
ground.velocity = -1,0
guard.velocity = -0.4
air.velocity = -1,-.5
airguard.velocity = -0.4
getpower = 10

[State 1102]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1102]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y >= 244
ignorehitpause = 1

[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
poweradd = 85
velset = 0,0

[State 1200]
type = VarSet
trigger1 = time = 0
v =  2
value = 0

[State 1200]
type = VarSet
trigger1 = time = 0
v =  4
value = 0

[State 1200]
type = VarSet
trigger1 = time = 0
v =  5
value = 0

[State 1200]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0

[State 1200]
type = VarAdd
trigger1 = time <= 8
fv = 10
value = 0.08

[State 1200, Gah!]
type = PlaySnd
trigger1 = animelem = 1
value = 1200, 0
channel = 1

[State 1200, Zoom!]
type = PlaySnd
trigger1 = time = 27
value = 1201, 0
channel = 2

[State 1200]
type = Explod
trigger1 = (animelem = 1||animelem = 2||animelem = 3||animelem = 4) &&numexplod(1000)=0
anim = 6010
ID = 1000
pos = -7, -45
postype = p1
bindtime = -1
removetime = -1
scale = 0.15, 0.15
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 1200]
type = ModifyExplod
trigger1 = animelem = 1||animelem = 2||animelem = 3||animelem = 4
anim = 6010
ID = 1000
pos = -7, -45
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 1200]
type = RemoveExplod
trigger1 = animelem = 5
ID = 1000

[State 1200]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 6200
ID = 6200
pos = 15,-32
postype = p1
facing = 1
bindtime = 1
removetime = 10
scale = 0.7, 0.7
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 1200, ball]
type = Helper
trigger1 = animelemtime(5) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 11, -32
postype = p1
stateno = 1201
keyctrl = 0
ownpal = 1
size.xscale = 1.1
size.yscale = 0.6

[State 1200]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1200]
type = ChangeState
trigger1 = numhelper(1000)=1&&command="KI ball lvl3"&&var(3)=0&&movecontact=0&&var(5)=0&&helper(1000), stateno = 1201
value = 1205
ctrl = 0

[statedef 1205]
type = S
movetype = A
physics = S
anim = 1205

[State 1205]
type = PlaySnd
trigger1 = time = 0
value = 1900,0
channel = 2

[State 1205];GAH!
type = PlaySnd
trigger1 = time = 0
value = 1449,0
channel = 1

[State 1205]
type = VarSet
trigger1 = time = 0
v =  2
value = 1

[state 1205]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1201]
movetype = A
anim = 1201
velset = 14, 0
sprpriority = 3

[State 1201, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1201]
type = parentvarset
trigger1 = time = 0
v = 3
value = 0

[state 1201]
type = varset
trigger1 = time = 0
v = 23
value = 1201

[State 1201]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1201]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[state 1201, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1201, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1201]
type = ScreenBound
value = 0
trigger1 = 1

[State 1101]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1201, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 75,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
guard.slidetime = 4
ground.hittime = 16
guard.hittime = 8
air.hittime = 16
ground.velocity = -2.5,0
guard.velocity = -1.1
air.velocity = -2.5,-1.7
airguard.velocity = -1
getpower = 40

[State 1201]
type = ParentVarSet
trigger1 = movecontact
v = 4
value = 1
ignorehitpause = 1

[State 1201]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[State 1201]
type = ChangeState
trigger1 = movecontact
value = 1002
ignorehitpause = 1

[State 1201]
type = RemoveExplod
trigger1 = frontedgedist <= -20
ID = 1001

[State 1201]
type = DestroySelf
trigger1 = frontedgedist <= -20
ignorehitpause = 1

[state 1201]
type = changestate
trigger1 = (parent, var(2) = 1)
value = 1202

[statedef 1202]
type = S
movetype = A
physics = S

[State 1202]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 2
ignorehitpause = 1

[state 1202]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1202]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball1"
pos = 20,0
stateno = 1213
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball2"
pos = 20,0
stateno = 1223
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball3"
pos = 20,0
stateno = 1233
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball4"
pos = 20,0
stateno = 1243
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball5"
pos = 20,0
stateno = 1253
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball6"
pos = 20,0
stateno = 1263
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "miniball7"
pos = 20,0
stateno = 1273
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = .666
ID = 1202

[State 1202]
type = DestroySelf
trigger1 = time = 0

[Statedef 1213]
movetype = A
anim = 1203

[State 1213, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1213]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1213]
type = velset
trigger1 = time = 0
x = 9+ceil((var(17)-500)/100)
y = 2+ceil((var(17))/500)

[State 1213]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1213]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1213]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1213, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1213, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1213]
type = ScreenBound
value = 0
trigger1 = 1

[State 1213]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1213, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1213]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1213]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y >= 244
ignorehitpause = 1

[Statedef 1223]
movetype = A
anim = 1203

[State 1223, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1223]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1223]
type = velset
trigger1 = time = 0
x = 9+ceil((var(17)-500)/100)
y = -2-ceil((var(17))/500)

[State 1223]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1223]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1223]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1223, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1223, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1223]
type = ScreenBound
value = 0
trigger1 = 1

[State 1223]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1223, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1223]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1223]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y <= -5
ignorehitpause = 1

[Statedef 1233]
movetype = A
anim = 1203

[State 1233, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1233]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1233]
type = velset
trigger1 = time = 0
x = 7+ceil((var(17)-500)/100)
y = 3.5+ceil((var(17)-200)/400)

[State 1233]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1233]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1233]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1233, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1233, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1233]
type = ScreenBound
value = 0
trigger1 = 1

[State 1233]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1233, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1233]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1233]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y <= -5
ignorehitpause = 1

[Statedef 1243]
movetype = A
anim = 1203

[State 1243, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1243]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1243]
type = velset
trigger1 = time = 0
x = 7+ceil((var(17)-500)/100)
y = -3.5-ceil((var(17)-200)/400)

[State 1243]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1243]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1243]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1243, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1243, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1243]
type = ScreenBound
value = 0
trigger1 = 1

[State 1243]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1243, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1243]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1243]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y <= -5
ignorehitpause = 1

[Statedef 1253]
movetype = A
anim = 1203

[State 1253, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1253]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1253]
type = velset
trigger1 = time = 0
x = 6+ceil((var(17)-500)/100)
y = 5.5+ceil((var(17)-333)/150)

[State 1253]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1253]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1253]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1253, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1253, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1253]
type = ScreenBound
value = 0
trigger1 = 1

[State 1253]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1253, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1253]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1253]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y <= -5
ignorehitpause = 1

[Statedef 1263]
movetype = A
anim = 1203

[State 1263, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1263]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1263]
type = velset
trigger1 = time = 0
x = 6+ceil((var(17)-500)/100)
y = -5.5-ceil((var(17)-333)/150)

[State 1263]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1263]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1263]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1263, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1263, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1263]
type = ScreenBound
value = 0
trigger1 = 1

[State 1263]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1263, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1263]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1263]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y <= -5
ignorehitpause = 1

[Statedef 1273]
movetype = A
anim = 1203

[State 1273, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1273]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,1000

[state 1273]
type = velset
trigger1 = time = 0
x = 10+ceil((var(17)-500)/100)
y = 0+ceil((var(17)-500)/333)

[State 1273]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1273]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 1273]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1273, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1273, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1273]
type = ScreenBound
value = 0
trigger1 = 1

[State 1273]
type = RemoveExplod
trigger1 = time = 0
ID = 1204

[State 1273, Hitdef]
type = HitDef
trigger1 = 1
priority = 4, hit
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 11,1
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 3
guard.slidetime = 1
ground.hittime = 5
guard.hittime = 1
air.hittime = 5
ground.velocity = -.7,0
guard.velocity = -0.2
air.velocity = -.7,-.3
airguard.velocity = -0.2
getpower = 5
numhits = 1

[State 1273]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1273]
type = DestroySelf
trigger1 = frontedgedist <= -10||screenpos y <= -5
ignorehitpause = 1

[Statedef 1204]
velset = 0, 0

[State 1002]
type = ChangeAnim
trigger1 = 1
value = 1002
ignorehitpause = 1
persistent = 1

[State 1204]
type = AfterImageTime
trigger1 = 1
time = 0
ignorehitpause = 1

[state 1204]
type = playsnd
trigger1 = time = 0
value = 21,0
channel = 2
ignorehitpause = 1

[state 1204]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1204]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1204]
type = Explod
trigger1 = time = 0&&numexplod(1002)=0
anim = 7600
ID = 1002
pos = 0,0
postype = p1
bindtime = 1
removetime = 28
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
scale = 0.5,0.5

[State 1204]
type = DestroySelf
trigger1 = time = 0
ignorehitpause = 1

[Statedef 1050]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0
poweradd = 85

[State 1050]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0

[State 1050]
type = VarAdd
trigger1 = time <= 7
fv = 10
value = 0.2

[State 1050, Gah!]
type = PlaySnd
trigger1 = time = 7
value = 1460, 0
channel = 1

[State 1050, Zoom!]
type = PlaySnd
trigger1 = time = 7
value = 10000, 0
channel = 2

[State 1050]
type = Explod
trigger1 = animelem = 1&&numexplod(1000)=0
anim = 6010
ID = 10005
pos = 7, -27
postype = p1
bindtime = -1
removetime = -1
scale = 0.15, 0.15
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1050]
type = ModifyExplod
trigger1 = animelem = 1
anim = 6010
ID = 10005
pos = 7, -27
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1050]
type = RemoveExplod
trigger1 = animelem = 2
ID = 10005

[State 1050, ball]
type = Helper
trigger1 = animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 19, -13
postype = p1
stateno = 1051
keyctrl = 0
ownpal = 1

[State 1050]
type = ChangeState
trigger1 = animtime = 0
value = 50

[state 1050]
type = changestate
trigger1 = pos y >= 0
value = 52

[Statedef 1051]
movetype = A
anim = 1051

[State 1051, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1051]
type = velset
trigger1 = time = 0
x = 6
y = 6

[state 1051]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1051]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1051]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1051, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1051, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1051]
type = ScreenBound
value = 0
trigger1 = 1

[State 1051]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1051, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 55,5
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.8,0
guard.velocity = -0.7
air.velocity = -1.7,1.2
airguard.velocity = -0.6,0.3
getpower = 40

[State 1051]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1051]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1051]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1060]
type = A
movetype = A
physics = S
anim = 1060
ctrl = 0
poweradd = 85

[State 1060]
type = VelAdd
trigger1 = 1
y = 0.2
ignorehitpause = 1

[State 1060]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0

[State 1060]
type = VarAdd
trigger1 = time <= 10
fv = 10
value = 0.045

[State 1060, Gah!]
type = PlaySnd
trigger1 = time = 10
value = 1452, 0
channel = 1

[State 1060, Zoom!]
type = PlaySnd
trigger1 = time = 10
value = 10003, 0
channel = 2

[State 1060]
type = Explod
trigger1 = animelem = 1&&numexplod(1000)=0
anim = 6060
ID = 1000
pos = 1, -23
postype = p1
bindtime = -1
removetime = -1
scale = 0, 0
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1060]
type = ModifyExplod
trigger1 = time <= 10
anim = 6060
ID = 1000
pos = 1, -23
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1060]
type = Explod
trigger1 = animelemtime(2) = 0
anim = 6060
ID = 1001
pos = 11, -21
postype = p1
bindtime = -1
removetime = 2
scale = .45, .45
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1060]
type = RemoveExplod
trigger1 = animelem = 2
ID = 1000

[State 1060, ball]
type = Helper
trigger1 = animelemtime(2) = 2
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 11, -21
postype = p1
stateno = 1061
keyctrl = 0
ownpal = 1
size.xscale = 0.75
size.yscale = 0.75

[State 1060]
type = ChangeState
trigger1 = animtime = 0
value = 1062

[state 1060]
type = velset
trigger1 = pos y >= -10
y = 0

[statedef 1062]
type = A
movetype = I
physics = A
anim = 1062

[state 1062]
type = gravity
trigger1 = 1

[State 1062]
type = VelSet
trigger1 = time = 0
x = -5
y = -6.5

[Statedef 1061]
movetype = A
anim = 1061

[State 1061, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
time = -1
TimeGap = 1
FrameGap = 1
Trans = Add
palbright = 20,20,10
palcontrast = 200,200,100
palpostbright = 0,0,0
paladd = 20,20,5
palmul = .6,.6,.5

[state 1061]
type = velset
trigger1 = time = 0
x = 8
y = 5

[state 1061]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1061]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1061]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1061, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1061, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1061]
type = ScreenBound
value = 0
trigger1 = 1

[State 1061]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1061, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 63,6
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 17
guard.hittime = 8
air.hittime = 17
ground.velocity = -2.5,0
guard.velocity = -0.9
air.velocity = -2.4,1.7
airguard.velocity = -0.9,0.4
getpower = 40

[State 1061]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1061]
type = RemoveExplod
trigger1 = frontedgedist <= -15
ID = 1001

[State 1061]
type = DestroySelf
trigger1 = frontedgedist <= -15
ignorehitpause = 1

[Statedef 1070]
type = A
movetype = A
physics = A
anim = 1070
ctrl = 0
poweradd = 85

[State 1070]
type = VelSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

;[State 1070]
;type = varset
;trigger1 = 1
;fvar(10) = ((Exp(0.5*ln((-var(0)+5)/5)))/2)
;ignorehitpause = 1

[State 1070]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0.5

[State 1070]
type = VarSet
trigger1 = var(0) = 1
fv =  10
value = 0.45

[State 1070]
type = VarSet
trigger1 = var(0) = 2
fv =  10
value = 0.39

[State 1070]
type = VarSet
trigger1 = var(0) = 3
fv =  10
value = 0.32

[State 1070]
type = VarSet
trigger1 = var(0) = 4
fv =  10
value = 0.22

[State 1070]
type = VarSet
trigger1 = var(0) = 5
fv =  10
value = 0

[State 1070, amount]
type = VarSet
trigger1 = time = 0
var(0) = 0
ignorehitpause = 1

[State 1070]
type = Explod
trigger1 = animelemtime(2)=0
anim = 6010
ID = 1000
pos = 10, -17
postype = p1
bindtime = -1
removetime = -1
scale = 0.0, 0.0
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1070]
type = ModifyExplod
trigger1 = 1
anim = 6010
ID = 1000
pos = 10, -17
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1070]
type = RemoveExplod
trigger1 = animtime=0
ID = 1000
ignorehitpause = 1

[State 1070, Zoom!]
type = PlaySnd
trigger1 = (animelemtime(2)%6) = 0&&var(0) <5
value = 10000, 1
channel = 2

[State 1070, ball]
type = Helper
trigger1 = (animelemtime(2)%6) = 0&&var(0) <5
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 10, -17
postype = p1
stateno = 1071
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 0.6
size.yscale = 0.6

[State 1070]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1071]
movetype = A
anim = 1071
sprpriority = 4

[State 1071, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[State 1071]
type = ParentVarAdd
trigger1 = time = 0
v = 0
value = 1
ignorehitpause = 1

[State 1071]
type = VarSet
trigger1 = time = 0
v = 17
value = ifelse((parent, var(0))%2=1,-1,1)
ignorehitpause = 1

[State 1071]
type = VarSet
trigger1 = time%18 = 0
v = 17
value = ifelse(var(17)=1,-1,1)
ignorehitpause = 1

[state 1071]
type = velset
trigger1 = var(17)=-1&&time=0
x = 5.4
y = 0

[State 1071]
type = VelAdd
trigger1 = var(17)=-1
x = -0.3
y = 0.3
ignorehitpause = 1

[state 1071]
type = velset
trigger1 = var(17)=1&&time=0
x = 0
y = 5.4

[State 1071]
type = VelAdd
trigger1 = var(17)=1
x = 0.3
y = -0.3
ignorehitpause = 1

[state 1071]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1071]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1071]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1204
time = 1
ignorehitpause = 1

[state 1071, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1071, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1071]
type = ScreenBound
value = 0
trigger1 = 1

[State 1071]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1071]
type = SprPriority
trigger1 = vel x = 0
value = -2
ignorehitpause = 1
persistent = 1

[State 1071]
type = SprPriority
trigger1 = vel y = 0
value = 4
ignorehitpause = 1
persistent = 1

[State 1071, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 15,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = S21,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
guard.slidetime = 10
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -1.3,0
guard.velocity = -0.6
air.velocity = -1.25,1
airguard.velocity = -0.55,0.25
getpower = 10

[State 1071]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1204
ignorehitpause = 1

[State 1071]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1071]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1400]
type = A
movetype = A
physics = A
anim = 1400
ctrl = 0
poweradd = 55

[State 1000, Gah!]
type = PlaySnd
trigger1 = anim = 1415&&animelemtime(2)=0
value = 1460, 0
channel = 1

[State 1400, Gah!]
type = PlaySnd
trigger1 = anim = 1415&&animelemtime(2)=0
value = 10000, 0
channel = 2

[state 1400]
type = velset
trigger1 = time = 0
x = -4
y = -13

[State 1400]
type = Gravity
trigger1 = 1

[state 1400]
type = changeanim
trigger1 = anim = 1400 && animtime = 0
value = 1402

[state 1400]
type = changeanim
trigger1 = anim = 1402 && animtime = 0
value = 1415

[State 1400, ball]
type = Helper
trigger1 = anim=1415 && animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 19, -13
postype = p1
stateno = 1401
keyctrl = 0
ownpal = 1

[state 1400]
type = changestate
trigger1 = anim = 1415 && animtime = 0
value = 50

[Statedef 1571]
type = A
movetype = A
physics = A
anim = 1400
ctrl = 0
poweradd = 55

[State 1000, Gah!]
type = PlaySnd
trigger1 = anim = 1515&&animelemtime(2)=0
value = 1460, 0
channel = 1

[State 1400, Gah!]
type = PlaySnd
trigger1 = anim = 1515&&animelemtime(2)=0
value = 10000, 0
channel = 2

[state 1500]
type = velset
trigger1 = time = 0
x = -4
y = -13

[State 1500]
type = Gravity
trigger1 = 1

[state 1500]
type = changeanim
trigger1 = anim = 1400 && animtime = 0
value = 1402

[state 1500]
type = changeanim
trigger1 = anim = 1402 && animtime = 0
value = 1515

[State 1500, ball]
type = Helper
trigger1 = anim=1515 && animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 19, -13
postype = p1
stateno = 1411
keyctrl = 0
ownpal = 1

[State 1500, ball]
type = Helper
trigger1 = anim=1515 && animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1001
pos = 19, -13
postype = p1
stateno = 1421
keyctrl = 0
ownpal = 1

[state 1500]
type = changestate
trigger1 = anim = 1515 && animtime = 0
value = 50

[Statedef 1600]
type = A
movetype = A
physics = A
anim = 1400
ctrl = 0
poweradd = 55

[State 1000, Gah!]
type = PlaySnd
trigger1 = anim = 1615&&animelemtime(2)=0
value = 1460, 0
channel = 1

[State 1400, Gah!]
type = PlaySnd
trigger1 = anim = 1615&&animelemtime(2)=0
value = 10000, 0
channel = 2

[state 1600]
type = velset
trigger1 = time = 0
x = -4
y = -13

[State 1600]
type = Gravity
trigger1 = 1

[state 1600]
type = changeanim
trigger1 = anim = 1400 && animtime = 0
value = 1402

[state 1600]
type = changeanim
trigger1 = anim = 1402 && animtime = 0
value = 1615

[State 1600, ball]
type = Helper
trigger1 = anim=1615 && animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1000
pos = 19, -13
postype = p1
stateno = 1401
keyctrl = 0
ownpal = 1

[State 1600, ball]
type = Helper
trigger1 = anim=1615 && animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1001
pos = 19, -13
postype = p1
stateno = 1431
keyctrl = 0
ownpal = 1

[State 1600, ball]
type = Helper
trigger1 = anim=1615 && animelemtime(2) = 0
helpertype = normal
name = "KI Ball"
ID = 1002
pos = 19, -13
postype = p1
stateno = 1441
keyctrl = 0
ownpal = 1

[state 1600]
type = changestate
trigger1 = anim = 1615 && animtime = 0
value = 50

[Statedef 1401]
movetype = A
anim = 1401
velset = 5.7, 5.7

[State 1401, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1401]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1401]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1401]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1401, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1401, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1401]
type = ScreenBound
value = 0
trigger1 = 1

[State 1401]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1401, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 45,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = 
;guardsound = 
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.7,0
guard.velocity = -0.7
air.velocity = -1.6,1.1
airguard.velocity = -0.6,0.3
getpower = 40

[State 1401]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1401]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1401]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1411]
movetype = A
anim = 1411
velset = 6.4, 4.9

[State 1411, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1411]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1411]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1411]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1411, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1411, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1411]
type = ScreenBound
value = 0
trigger1 = 1

[State 1411]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1411, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 30,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = 
;guardsound = 
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.7,0
guard.velocity = -0.7
air.velocity = -1.6,1.1
airguard.velocity = -0.6,0.3
getpower = 40

[State 1411]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1411]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1411]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1421]
movetype = A
anim = 1421
velset = 4.9, 6.4

[State 1421, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1421]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1421]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1421]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1421, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1421, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1421]
type = ScreenBound
value = 0
trigger1 = 1

[State 1421]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1421, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 30,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = 
;guardsound = 
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.7,0
guard.velocity = -0.7
air.velocity = -1.6,1.1
airguard.velocity = -0.6,0.3
getpower = 40

[State 1421]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1421]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1421]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1431]
movetype = A
anim = 1431
velset = 7.0, 4.0

[State 1431, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1431]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1431]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1431]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1431, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1431, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1431]
type = ScreenBound
value = 0
trigger1 = 1

[State 1431]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1431, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 25,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = 
;guardsound = 
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.7,0
guard.velocity = -0.7
air.velocity = -1.6,1.1
airguard.velocity = -0.6,0.3
getpower = 40

[State 1431]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1431]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1431]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[Statedef 1441]
movetype = A
anim = 1441
velset = 4.0, 7.0

[State 1441, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 1441]
type = trans
trigger1 = time >= 0
value = add
ignorehitpause = 1

[State 1441]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1441]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 1002
time = 1
ignorehitpause = 1

[state 1441, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 1441, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 1441]
type = ScreenBound
value = 0
trigger1 = 1

[State 1441]
type = RemoveExplod
trigger1 = time = 0
ID = 1002

[State 1441, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 25,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
;hitsound = 
;guardsound = 
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -1.7,0
guard.velocity = -0.7
air.velocity = -1.6,1.1
airguard.velocity = -0.6,0.3
getpower = 40

[State 1441]
type = ChangeState
trigger1 = movecontact||pos y >= 0
value = 1002
ignorehitpause = 1

[State 1441]
type = RemoveExplod
trigger1 = frontedgedist <= -10
ID = 1001

[State 1441]
type = DestroySelf
trigger1 = frontedgedist <= -10
ignorehitpause = 1

[statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
juggle = 2
poweradd = 50
ctrl = 0

[State 1300, Gah!]
type = PlaySnd
trigger1 = time = 1
value = 1458, 0
channel = 1

[State 1300, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 45,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-35
hitsound = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 9
guard.slidetime = 4
ground.hittime = 18
guard.hittime = 8
air.hittime = 18
ground.velocity = -3.3,-3
guard.velocity = -1.0
air.velocity = -3.3,-3.5
airguard.velocity = -1.0,-0.3
getpower = 25
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10

[state 1300]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1310]
type = S
movetype = A
physics = S
anim = 1310
juggle = 2
poweradd = 50
ctrl = 0

[state 1310]
type = velset
trigger1 = time = 0
x = 2

[State 1310, Gah!]
type = PlaySnd
trigger1 = time = 1
value = 1458, 0
channel = 1

[State 1310, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 48,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-35
hitsound = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 11
guard.slidetime = 5
ground.hittime = 22
guard.hittime = 11
air.hittime = 22
ground.velocity = -3.6,-3.1
guard.velocity = -1.1
air.velocity = -3.6,-3.9
airguard.velocity = -1.1,-0.3
getpower = 25
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10

[state 1310]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1320]
type = S
movetype = A
physics = S
anim = 1320
juggle = 2
poweradd = 50
ctrl = 0

[state 1320]
type = velset
trigger1 = time = 0
x = 3

[State 1320, Gah!]
type = PlaySnd
trigger1 = time = 1
value = 1458, 0
channel = 1

[State 1320, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 51,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-35
hitsound = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
guard.slidetime = 5
ground.hittime = 25
guard.hittime = 12
air.hittime = 25
ground.velocity = -3.9,-3.3
guard.velocity = -1.2
air.velocity = -3.9,-4.1
airguard.velocity = -1.2,-0.3
getpower = 25
fall = 1
fall.damage = 10
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10

[state 1320]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1350]
type = A
movetype = A
physics = A
anim = 1350
ctrl = 0
juggle = 2
poweradd = 85

[State 1350, Gah!]
type = PlaySnd
trigger1 = time = 2
value = 1451, 0
channel = 1

[State 1350]
type = VelSet
trigger1 = time = 0
x = 6
y = 4

[State 1350, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SA
hitflag = MAFD
guardflag = MA
animtype = Light
damage = 50,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = 0,0
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -2.1,0
guard.velocity = -0.8
air.velocity = -2.0,1.7
airguard.velocity = -0.8,0.4
getpower = 40

[state 1350]
type = changestate
trigger1 = pos y >= 0
value = 0
ctrl = 1

[state 1350]
type = changestate
trigger1 = movecontact
value = 1351

[statedef 1351]
type = A
movetype = I
physics = A
anim = 1351

[state 1351]
type = gravity
trigger1 = 1

[State 1351]
type = VelSet
trigger1 = time = 0
x = -5
y = -3.5

[statedef 1360]
type = A
movetype = A
physics = A
anim = 1350
ctrl = 0
juggle = 2
poweradd = 85

[State 1360, Gah!]
type = PlaySnd
trigger1 = time = 2
value = 1451, 0
channel = 1

[State 1360]
type = VelSet
trigger1 = time = 0
x = 6
y = 4

[State 1360]
type = VelSet
trigger1 = movecontact
x = 0
y = 0

[State 1360, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = 0,0
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
getpower = 20

[state 1360]
type = changestate
trigger1 = pos y >= 0
value = 0
ctrl = 1

[state 1360]
type = changestate
trigger1 = movecontact
value = 1361
ignorehitpause = 0

[statedef 1361]
type = A
movetype = A
physics = A
anim = 1360
ctrl = 0
juggle = 0

[State 1000, Gah!]
type = PlaySnd
trigger1 = time = 7
value = 1451, 0
channel = 1

[State 1361]
type = VelSet
trigger1 = time = 9 && movecontact = 0
x = 5
y = 5

[State 1361]
type = VelSet
trigger1 = time < 9
x = 1
y = 0

[State 1361, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 15,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = 0,0
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -3,0
guard.velocity = -1.5
air.velocity = -2,2
airguard.velocity = -1,1
getpower = 20

[state 1361]
type = changestate
trigger1 = movecontact
value = 1351

[state 1361]
type = changestate
trigger1 = pos y >= 0
value = 0
ctrl = 1

[statedef 1370]
type = A
movetype = A
physics = A
anim = 1350
ctrl = 0
juggle = 2
poweradd = 85

[State 1370, Gah!]
type = PlaySnd
trigger1 = time = 2
value = 1451, 0
channel = 1

[State 1370]
type = VelSet
trigger1 = time = 0
x = 6
y = 4

[State 1370]
type = VelSet
trigger1 = movecontact
x = 0
y = 0

[State 1370, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 10,0
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = 0,0
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
getpower = 20

[state 1370]
type = changestate
trigger1 = pos y >= 0
value = 0
ctrl = 1

[state 1370]
type = changestate
trigger1 = movecontact
value = 1371
ignorehitpause = 0

[statedef 1371]
type = A
movetype = A
physics = S
anim = 1370
ctrl = 0
juggle = 0
velset = 0,0

[State 1371, Gah!]
type = PlaySnd
trigger1 = time = 3
value = 1458, 0
channel = 1

[State 1371, Hitdef]
type = HitDef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 25,0
pausetime = 4,0
guard.pausetime = 4,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -5,-10
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
guard.slidetime = 3
ground.hittime = 14
guard.hittime = 7
air.hittime = 14
ground.velocity = -2.5,-5
guard.velocity = -1.2
air.velocity = -3,-5
airguard.velocity = -1,-1
getpower = 20
fall = 1

[State 1371]
type = StateTypeSet
trigger1 = animelemtime(3) = 0
statetype = A
movetype = A
physics = A
ignorehitpause = 1

[State 1371]
type = VelSet
trigger1 = animelemtime(3) = 0
x = -3
y = -7
ignorehitpause = 1
persistent = 1

[state 1361]
type = changestate
trigger1 = animtime = 0
value = 50

[state 1361]
type = changestate
trigger1 = pos y >= 0
value = 0
ctrl = 1

[statedef 1605]
type = S
movetype = A
physics = S
anim = 1600
poweradd = 15
ctrl = 0
juggle = 0
velset = 0,0

[State 1605]
type = VelSet
trigger1 = 1
x = 3.5
ignorehitpause = 1
persistent = 1

[State 1605]
type = ChangeState
trigger1 = command != "holda" && time >= 8
trigger2 = time >= 16
value = 1650
ignorehitpause = 1
persistent = 1

[statedef 1650]
type = S
movetype = A
physics = S
anim = 1650
poweradd = 50
ctrl = 0
juggle = 2
velset = 0,0

[State 1650]
type = ChangeAnim
trigger1 = time = 4
value = 1651
ignorehitpause = 1
persistent = 1

[State 1650]
type = PlaySnd
trigger1 = time = 3
value = 1466,0
channel = 1

[State 1650]
type = VelSet
trigger1 = anim = 1651 && animelemtime(1) = 0
x = 3
y = -4.5
ignorehitpause = 1
persistent = 1

[State 1650]
type = StateTypeSet
trigger1 = anim = 1651 && animelemtime(1) = 0
statetype = A
movetype = A
physics = A
ignorehitpause = 1
persistent = 1

[State 1650]
type = ChangeAnim
trigger1 = vel y >= -3 && time > 4 && anim != 1652
value = 1652
ignorehitpause = 1
persistent = 1

[State 1650, Hitdef]
type = HitDef
trigger1 = anim = 1651
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 15,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-50
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -1.5,-4.2
guard.velocity = -.8
air.velocity = -1.7,-4.2
airguard.velocity = -.8,-.8
getpower = 15
persistent = 0
fall = 1

[State 1650, Hitdef]
type = HitDef
trigger1 = anim = 1652 && animelem = 1
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 17,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -34,-18
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -2.2
guard.velocity = -.9
air.velocity = -2.4,-1.6
airguard.velocity = -.9,-.5
getpower = 15
persistent = 0

[State 1650, Hitdef]
type = HitDef
trigger1 = anim = 1652 && animelem = 2
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 19,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -22,0
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -1.7,.2
guard.velocity = -.7
air.velocity = -1.9,.2
airguard.velocity = -.7,.1
getpower = 15
persistent = 0

[statedef 1615]
type = S
movetype = A
physics = S
anim = 1600
poweradd = 15
ctrl = 0
juggle = 0
velset = 0,0

[State 1615]
type = VelSet
trigger1 = 1
x = 3.5
ignorehitpause = 1
persistent = 1

[State 1615]
type = ChangeState
trigger1 = command != "holdb" && time >= 8
trigger2 = time >= 24
value = 1660
ignorehitpause = 1
persistent = 1

[statedef 1660]
type = S
movetype = A
physics = S
anim = 1650
poweradd = 50
ctrl = 0
juggle = 2
velset = 0,0

[State 1660]
type = ChangeAnim
trigger1 = time = 4
value = 1651
ignorehitpause = 1
persistent = 1

[State 1660]
type = PlaySnd
trigger1 = time = 3
value = 1466,0
channel = 1

[State 1660]
type = VelSet
trigger1 = anim = 1651 && animelemtime(1) = 0
x = 4
y = -5.75
ignorehitpause = 1
persistent = 1

[State 1660]
type = StateTypeSet
trigger1 = anim = 1651 && animelemtime(1) = 0
statetype = A
movetype = A
physics = A
ignorehitpause = 1
persistent = 1

[State 1660]
type = ChangeAnim
trigger1 = vel y >= -3 && time > 4 && anim != 1653
value = 1653
ignorehitpause = 1
persistent = 1

[State 1660, Hitdef]
type = HitDef
trigger1 = anim = 1651
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 17,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-50
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -1.7,-4.8
guard.velocity = -1
air.velocity = -1.8,-4.8
airguard.velocity = -1,-1
getpower = 15
persistent = 0
fall = 1

[State 1660, Hitdef]
type = HitDef
trigger1 = anim = 1653 && animelem = 1
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 19,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -34,-18
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -2.4
guard.velocity = -1
air.velocity = -2.6,-1.7
airguard.velocity = -1,-.5
getpower = 15
persistent = 0

[State 1660, Hitdef]
type = HitDef
trigger1 = anim = 1653 && animelem = 2
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 21,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -22,0
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -1.9,.25
guard.velocity = -.8
air.velocity = -2,.25
airguard.velocity = -.8,.15
getpower = 15
persistent = 0

[statedef 1625]
type = S
movetype = A
physics = S
anim = 1600
poweradd = 15
ctrl = 0
juggle = 0
velset = 0,0

[State 1625]
type = VelSet
trigger1 = 1
x = 3.5
ignorehitpause = 1
persistent = 1

[State 1625]
type = ChangeState
trigger1 = command != "holdc" && time >= 8
trigger2 = time >= 32
value = 1670
ignorehitpause = 1
persistent = 1

[statedef 1670]
type = S
movetype = A
physics = S
anim = 1650
poweradd = 50
ctrl = 0
juggle = 2
velset = 0,0

[State 1670]
type = ChangeAnim
trigger1 = time = 4
value = 1651
ignorehitpause = 1
persistent = 1

[State 1670]
type = PlaySnd
trigger1 = time = 3
value = 1466,0
channel = 1

[State 1670]
type = velset
trigger1 = anim = 1651 && animelemtime(1) = 0
x = 5
y = -7
ignorehitpause = 1
persistent = 1

[State 1670]
type = StateTypeSet
trigger1 = anim = 1651 && animelemtime(1) = 0
statetype = A
movetype = A
physics = A
ignorehitpause = 1
persistent = 1

[State 1670]
type = ChangeAnim
trigger1 = vel y >= -3 && time > 4 && anim != 1654
value = 1654
ignorehitpause = 1
persistent = 1

[State 1670, Hitdef]
type = HitDef
trigger1 = anim = 1651
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 19,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-50
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -1.9,-5.8
guard.velocity = -1.2
air.velocity = -2,-5.8
airguard.velocity = -1.2,-1.2
getpower = 15
persistent = 0
fall = 1

[State 1670, Hitdef]
type = HitDef
trigger1 = anim = 1654 && animelem = 1
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 21,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -34,-18
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -2.6
guard.velocity = -1.2
air.velocity = -2.7,-1.9
airguard.velocity = -1.2,-.6
getpower = 15
persistent = 0

[State 1670, Hitdef]
type = HitDef
trigger1 = anim = 1654 && animelem = 2
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 23,0
pausetime = 4,4
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -22,0
hitsound = S1600,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 35
guard.slidetime = 17
ground.hittime = 35
guard.hittime = 17
air.hittime = 35
ground.velocity = -2.1,.3
guard.velocity = -1
air.velocity = -2.1,.3
airguard.velocity = -1,.2
getpower = 15
persistent = 0

[statedef 1700]
type = S
movetype = A
physics = S
anim = 1700
poweradd = 60
ctrl = 0
juggle = 3
velset = 0,0

[State 1700, Gah!]
type = PlaySnd
trigger1 = time = 6
value = 1465, 0
channel = 1

[State 1700, Hitdef]
type = HitDef
trigger1 = !time
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 42,0
pausetime = 16,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-31
hitsound = S1700,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
guard.slidetime = 10
ground.hittime = 40
guard.hittime = 20
air.hittime = 40
ground.velocity = -.3,-3.9
guard.velocity = -.2
air.velocity = -.3,-3.9
airguard.velocity = -.2,-1.3
getpower = 25
persistent = 0

[state 1700]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1710]
type = S
movetype = A
physics = S
anim = 1700
poweradd = 60
ctrl = 0
juggle = 3
velset = 0,0

[State 1710, Gah!]
type = PlaySnd
trigger1 = time = 6
value = 1465, 0
channel = 1

[State 1710, Hitdef]
type = HitDef
trigger1 = !time
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 45,0
pausetime = 16,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-31
hitsound = S1700,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
guard.slidetime = 10
ground.hittime = 40
guard.hittime = 20
air.hittime = 40
ground.velocity = -.3,-4.4
guard.velocity = -.2
air.velocity = -.3,-4.4
airguard.velocity = -.2,-1.3
getpower = 25
fall = 1
persistent = 0

[state 1710]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1720]
type = S
movetype = A
physics = S
anim = 1700
poweradd = 60
ctrl = 0
juggle = 3
velset = 0,0

[State 1720, Gah!]
type = PlaySnd
trigger1 = time = 6
value = 1465, 0
channel = 1

[State 1720, Hitdef]
type = HitDef
trigger1 = !time
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 48,0
pausetime = 16,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-31
hitsound = S1700,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
guard.slidetime = 10
ground.hittime = 40
guard.hittime = 20
air.hittime = 40
ground.velocity = -1.3,-4.9
guard.velocity = -.3
air.velocity = -1.3,-4.9
airguard.velocity = -.5,-2.2
getpower = 25
fall = 1
persistent = 0

[state 1720]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1800]
type = A
movetype = A
physics = S
anim = 1800
juggle = 2
poweradd = 50
ctrl = 0
velset = 0,0

[State 1800, Gah!]
type = PlaySnd
trigger1 = time = 1
value = 1458, 0
channel = 1

[State 1800, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 45,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-35
hitsound = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 9
guard.slidetime = 4
ground.hittime = 18
guard.hittime = 8
air.hittime = 18
ground.velocity = -3,-4
guard.velocity = -1.0
air.velocity = -3,-4.5
airguard.velocity = -1.0,-1.0
getpower = 25
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10

[state 1800]
type = changestate
triggerall = animtime = 0
trigger1 = prevstateno = [600,650]
trigger2 = prevstateno = [40,59]
value = 50
ctrl = 0

[state 1800]
type = changestate
trigger1 = animtime = 0
trigger1 = prevstateno != [600,650]
trigger1 = prevstateno != [40,59]
value = 1500
ctrl = 1

[Statedef 1810]
type = A
movetype = A
physics = S
anim = 1800
juggle = 2
poweradd = 50
ctrl = 0
velset = 0,0

[State 1810, Gah!]
type = PlaySnd
trigger1 = time = 1
value = 1458, 0
channel = 1

[State 1810, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 48,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-35
hitsound = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 11
guard.slidetime = 5
ground.hittime = 22
guard.hittime = 11
air.hittime = 22
ground.velocity = -3.3,-4.1
guard.velocity = -1.1
air.velocity = -3.3,-4.7
airguard.velocity = -1.1,-1.1
getpower = 25
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10

[state 1810]
type = changestate
triggerall = animtime = 0
trigger1 = prevstateno = [600,650]
trigger2 = prevstateno = [40,59]
value = 50
ctrl = 0

[state 1810]
type = changestate
trigger1 = animtime = 0
trigger1 = prevstateno != [600,650]
trigger1 = prevstateno != [40,59]
value = 1500
ctrl = 1

[statedef 1820]
type = A
movetype = A
physics = S
anim = 1800
juggle = 2
poweradd = 50
ctrl = 0
velset = 0,0

[State 1820, Gah!]
type = PlaySnd
trigger1 = time = 1
value = 1458, 0
channel = 1

[State 1820, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 51,0
pausetime = 8,8
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -27,-35
hitsound = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
guard.slidetime = 5
ground.hittime = 25
guard.hittime = 12
air.hittime = 25
ground.velocity = -3.5,-4.3
guard.velocity = -1.2
air.velocity = -3.5,-4.9
airguard.velocity = -1.2,-1.2
getpower = 25
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
fall = 1

[state 1820]
type = changestate
triggerall = animtime = 0
trigger1 = prevstateno = [600,650]
trigger2 = prevstateno = [40,59]
value = 50
ctrl = 0

[state 1820]
type = changestate
trigger1 = animtime = 0
trigger1 = prevstateno != [600,650]
trigger1 = prevstateno != [40,59]
value = 1500
ctrl = 1

[statedef 1900]
type = S
movetype = A
physics = S
anim = 1900
juggle = 3
poweradd = 60
ctrl = 0
velset = 0,0

[State 1900]
type = SprPriority
trigger1 = 1
value = ifelse(anim=1900,1,-1)
ignorehitpause = 1
persistent = 1

[State 1900]
type = VarSet
trigger1 = time = 0
v = 13
value = ifelse(command = "holda",1,ifelse(command = "holdb",2,3))
ignorehitpause = 1
persistent = 0

[State 1900]
type = VelSet
trigger1 = animelemtime(2) = 0 && anim = 1900
trigger2 = anim = 1901 && animelem = 1
x = ifelse(var(13)=1,3,ifelse(var(13)=2,3.5,4))
y = ifelse(var(13)=1,-6,ifelse(var(13)=2,-7.5,-8.5))
ignorehitpause = 1

[State 1900, 1]
type = PlaySnd
trigger1 = AnimElem = 2 && (anim = 1900 || anim = 1901)
value = 1460, 0
channel = 1

[State 1900]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = A
physics = A
ignorehitpause = 1

[State 1900]
type = HitDef
trigger1 = animelem = 2 && anim = 1900
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 21,3
pausetime = 8,4
sparkno = S6500
guard.sparkno = S6600
sparkxy = -15,-35
hitsound = S4,0
guardsound = 6,0
ground.type = High
ground.slidetime = 10
guard.slidetime = 4
ground.hittime = 25
guard.hittime = 8
ground.velocity = -2,-6.5-(.7*var(13))
guard.velocity = -1
air.velocity = -2,-4.5-(.7*var(13))
airguard.velocity = -1,-1
getpower = 20,0
ignorehitpause = 1

[State 1900]
type = HitDef
trigger1 = animelem = 2 && anim = 1901
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 21,3
pausetime = 8,4
sparkno = S6500
guard.sparkno = S6600
sparkxy = -15,-35
hitsound = S4,0
guardsound = 6,0
ground.type = High
ground.slidetime = 10
guard.slidetime = 4
ground.hittime = 25
guard.hittime = 8
ground.velocity = -2.5,-3-(.6*var(13))
guard.velocity = -1
air.velocity = -2.5,-3-(.6*var(13))
airguard.velocity = -1,-1
fall = 1
fall.damage = 5
getpower = 20,0
ignorehitpause = 1

[State 1900]
type = changeanim
trigger1 = movehit && (command = "a" || command = "b" || command = "c") && anim = 1900
value = 1901
ignorehitpause = 0

[State 1900]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0
ignorehitpause = 0

[statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
ctrl = 0
juggle = 3
velset = 0,0

[State 3000]
type = PowerAdd
trigger1 = time = 0
value = -1000

[state 3000]
type = pause
trigger1 = time = 4
time = 3
movetime = 0

[State 3000]
type = PlaySnd
trigger1 = time = 4
value = 1464,0
channel = 1

[State 3000]
type = SuperPause
trigger1 = time = 4
time = 45
anim = S1
pos = -10,-36
movetime = 45
sound = 3000,0

[State 3000]
type = helper
trigger1 = Time = 4
helpertype = normal
name = "aura"
ID = 7500
pos = 5,0
postype = p1
size.xscale = .85
size.yscale = .8
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000]
type = helper
trigger1 = Time = 4 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000]
type = PlaySnd
trigger1 = time = 18
value = 1449,0
channel = 1

[State 3000]
type = PlaySnd
trigger1 = time = 19
value = 25,0
channel = 2

[State 3000]
type = VarSet
trigger1 = time = 0
fv =  10
value = 0

[State 3000]
type = VarAdd
trigger1 = time <= 10
fv = 10
value = 1.6

[State 3000, Woom]
type = PlaySnd
trigger1 = time = 10
value = 3000, 0
volume = 200
channel = 6

[State 3000]
type = Explod
trigger1 = animelemtime(2) = 1 && pos y >= 0 && numexplod(7201) = 0
anim = 7201
ID = 7201
pos = -5, 0
postype = p1
bindtime = 1
removetime = 22
sprpriority = 4
pausemovetime = 9999
suoermove = 9999
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3000]
type = Explod
trigger1 = animelem = 1&&numexplod(1000)=0
anim = 6060
ID = 1000
pos = -10, -36
postype = p1
bindtime = -1
removetime = -1
scale = 0.2, 0.2
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State 3000, shock wave]
type = Helper
trigger1 = animelemtime(2) = 0
helpertype = normal
name = "shock wave"
ID = 3000
pos = 10, -22
postype = p1
stateno = 3001
keyctrl = 0
ownpal = 1
size.yscale = 1.2
size.xscale = .75
ignorehitpause = 1

[State 3000]
type = ModifyExplod
trigger1 = animelem = 1&&numexplod(1000)=0
anim = 6060
ID = 1000
pos = -10, -36
postype = p1
bindtime = -1
removetime = -1
scale = fvar(10), fvar(10)
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999

[State 3000]
type = Explod
trigger1 = animelemtime(2) = 0 && numexplod(3000) = 0
anim = 6250
ID = 3000
pos = 26, -33
postype = p1
bindtime = -1
removetime = 10
scale = 0.8, 0.2
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 3000, Hitdef]
type = HitDef
trigger1 = animelem = 2
trigger1 = animelemtime(2) <= 4
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 50,5
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S7600
guard.sparkno = S1
sparkxy = -29,-32
hitsound = S8,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = -5.1,0
guard.velocity = -1.8
air.velocity = -5.0,2.4
airguard.velocity = -1.8,0.6
fall = 1
getpower = 0

[State 3000]
type = RemoveExplod
trigger1 = animelem = 2
ID = 1000
ignorehitpause = 1

[state 3000]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3001]
movetype = A
anim = 3001
velset = 12,0
sprpriority = 4

[State 3001]
type = PlaySnd
trigger1 = time = 0
value = 3000,1
channel = 2
ignorehitpause = 1
volume = 192

[State 3001]
type = AfterImageTime
trigger1 = movecontact
time = 0
ignorehitpause = 1

[State 3001]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 3001, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 12
time = -1
TimeGap = 1
FrameGap = 1
Trans = Add
palbright = 20,20,10
palcontrast = 200,200,100
palpostbright = 0,0,0
paladd = 20,20,5
palmul = .6,.6,.5

[State 3001, Hitdef]
type = HitDef
trigger1 = animelem = 1
attr = S, HP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 105,15
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S7650
guard.sparkno = S7650
sparkxy = -5,-10
hitsound = S10001,0
guardsound = S10001,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = -5.1,0
guard.velocity = -1.8
air.velocity = -5.0,2.4
airguard.velocity = -1.8,0.6
fall = 1
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -2.1
getpower = 0

[State 3001, shock wave]
type = Helper
trigger1 = time = 2
helpertype = normal
name = "shock wave blarghrer"
ID = 3000
pos = -10, 0
postype = p1
stateno = 3003
keyctrl = 0
ownpal = 1
size.yscale = .6
size.xscale = .6

[State 3001, shock wave]
type = Helper
trigger1 = time = 2
helpertype = normal
name = "shock wave blarghrer"
ID = 3000
pos = -20, 0
postype = p1
stateno = 3003
keyctrl = 0
ownpal = 1
size.yscale = .35
size.xscale = .35

[State 3001, shock wave]
type = Helper
trigger1 = time = 2
helpertype = normal
name = "shock wave blarghrer"
ID = 3000
pos = -30, 15
postype = p1
stateno = 3003
keyctrl = 0
ownpal = 1
size.yscale = .2
size.xscale = .2

[State 3001, shock wave]
type = Helper
trigger1 = time = 2
helpertype = normal
name = "shock wave blarghrer"
ID = 3000
pos = -30, -15
postype = p1
stateno = 3003
keyctrl = 0
ownpal = 1
size.yscale = .2
size.xscale = .2

[State 3001, shock wave]
type = Helper
trigger1 = time = 8
helpertype = normal
name = "shock wave blarghrer"
ID = 3000
pos = 0, 0
postype = p1
stateno = 3002
keyctrl = 0
ownpal = 1
size.yscale = 1
size.xscale = .6

[State 3001]
type = destroyself
trigger1 = time = 12||movecontact
ignorehitpause = 1

[Statedef 3002]
movetype = A
anim = 3001
velset = 12,0
sprpriority = 4

[State 3002]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 3002, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 20
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1
paladd = 100, 100, 60
palmul = .45,.45,.3
palbright = 20,20,15
palcontrast = 80,75,75

[State 3002]
type = destroyself
trigger1 = time = 3
ignorehitpause = 1

[Statedef 3003]
movetype = A
anim = 3001
velset = 12,0
sprpriority = 4

[State 3003]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 3003, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 20
TimeGap = 2
FrameGap = 1
Trans = Add
time = -1
paladd = 100, 100, 60
palmul = .225,.225,.15
palbright = 20,20,15
palcontrast = 80,75,75

[State 3003]
type = destroyself
trigger1 = time = 6
ignorehitpause = 1

[statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
ctrl = 0
velset = 0,0

[State 3100]
type = PowerAdd
trigger1 = time = 0
value = -2000

[State 3100]
type = SuperPause
trigger1 = time = 7
time = 45
anim = S1
sound = 3000,0
pos = 2,-33
movetime = 45

[State 3100]
type = helper
trigger1 = Time = 7
helpertype = normal
name = "aura"
ID = 7500
pos = 0,0
postype = p1
size.xscale = .85
size.yscale = 1.1
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3100]
type = helper
trigger1 = Time = 7 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3100, Woom]
type = PlaySnd
trigger1 = time = 10
value = 3000, 0
volume = 200
channel = 6

[State 3100]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1465,0
channel = 1

;[State 1100, Gah!]
;type = PlaySnd
;trigger1 = animelem = 0 && animelemtime = 0
;value = 10000, 0
;volume = 0
;channel = -1

[State 3100, Whatever]
type = PlaySnd
trigger1 = animelemtime(8) = 0
value = 21, 0
channel = 2

[State 3100, ball]
type = Helper
trigger1 = animelemtime(8) = 0
helpertype = normal
name = "Blue Ball"
ID = 3100
pos = 15,-35
postype = p1
stateno = 6100
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 3100]
type = VelSet
trigger1 = animelemtime(8) = 0
x = -8
ignorehitpause = 1
persistent = 1

[State 3100]
type = VelAdd
trigger1 = vel x < 0
x = .25
ignorehitpause = 1
persistent = 1

[State 3100]
type = VelSet
trigger1 = vel x > 0
x = 0
ignorehitpause = 1
persistent = 1

[state 3100]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 6100]
movetype = A
anim = 6100
velset = 14, 0
sprpriority = 4

[State 6100]
type = AfterImageTime
trigger1 = movecontact
time = 0
ignorehitpause = 1

[State 6100, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
TimeGap = 1
FrameGap = 1
Trans = Add
time = -1

[state 6100]
type = screenbound
trigger1 = 1
value = 0

[State 6100]
type = Explod
trigger1 = time = 0 && prevstateno != 6102 && prevstateno != 6103
anim = 6200
ID = 6100
pos = 0,0
bindtime = 1
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 6100]
type = Explod
trigger1 = time % 3 = 0 && time % 6 = 0 && pos y >= -50
anim = 7200
ID = 6101
pos = 0,(0-floor(pos y))
bindtime = 1
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 6100]
type = Explod
trigger1 = time % 3 = 0 && time % 6 != 0 && pos y >= -50
anim = 7200
ID = 6101
pos = 0,(0-floor(pos y))
bindtime = 1
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 6100]
type = RemoveExplod
trigger1 = time = 0
ID = 6101

[State 6100]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6100]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 6100]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,AP
stateno = 6101
time = 1
ignorehitpause = 1

[state 6100, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 6100, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 6100]
type = ScreenBound
value = 0
trigger1 = 1

[State 6100, Hitdef]
type = HitDef
trigger1 = 1
attr = S, HP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 300,30
pausetime = 12,12
guard.pausetime = 0,0
priority = 5, hit
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
hitsound = S10001,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
guard.slidetime = 11
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = -7.0,0
guard.velocity = -2
air.velocity = -7.0,-2
airguard.velocity = -2
getpower = 0
fall = 1

[State 6100]
type = DestroySelf
trigger1 = frontedgedist <= -35
ignorehitpause = 1

[state 6100]
type = changestate
trigger1 = movecontact
value = 6101
ignorehitpause = 1

[statedef 6101]
velset = 0, 0

[State 6101]
type = ChangeAnim
trigger1 = time = 0
value = 6101
ignorehitpause = 1

[State 6101]
type = PlaySnd
trigger1 = time = 0
value = 8   ,0
channel = 6
ignorehitpause = 1

[state 6101]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 6101]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6101]
type = Explod
trigger1 = time = 0&&numexplod(6102)=0
anim = 7700
ID = 6102
pos = 20,0
postype = p1
bindtime = 1
removetime = 39
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 6101]
type = DestroySelf
trigger1 = time = 0
ignorehitpause = 1

[statedef 3200]
type = S
movetype = A
physics = S
anim = 3200
ctrl = 0
velset = 0,0

[State 3200]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1466,0
channel = 1

[State 3200]
type = PowerAdd
trigger1 = time = 0
value = -3000

[State 3200]
type = SuperPause
trigger1 = time = 7
time = 45
anim = S1
pos = 2,-33
movetime = 45

[State 3200]
type = helper
trigger1 = Time = 7
helpertype = normal
name = "aura"
ID = 7500
pos = 0,0
postype = p1
size.xscale = 1
size.yscale = 1.2
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3200]
type = helper
trigger1 = Time = 7 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3200, Woom]
type = PlaySnd
trigger1 = time = 10
value = 3000, 0
volume = 200
channel = 6

[State 3200, Whatever]
type = null;PlaySnd
trigger1 = animelemtime(5) = 0
value = 21, 0
channel = 2

[State 3200]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "quzzl1"
ID = 6361
pos = -17,-37
postype = p1
stateno = 6361
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3200]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "quzzl2"
ID = 6361
pos = 18,-35
postype = p1
stateno = 6362
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3200]
type = RemoveExplod
trigger1 = animelem != 4
ID = 6360
ignorehitpause = 1

[State 3200, beam]
type = Helper
trigger1 = animelemtime(5) = 0
helpertype = normal
name = "Final Flash"
ID = 3200
pos = 12,-35
postype = p1
stateno = 6350
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 3200]
type = HitAdd
trigger1 = movehit = 1 && time > 0
value = 1
ignorehitpause = 1

[state 3200]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 6350]
movetype = A
anim = 6350
velset = 0, 0
sprpriority = 4

[State 6350]
type = Explod
trigger1 = time = 0
anim = 6250
ID = 6350
pos = 30,0
bindtime = 1
sprpriority = 4
ownpal = 1
removeongethit = 0
scale = 1,1.2

[State 6350]
type = PlaySnd
trigger1 = time = 0
value = 6350,0
volume = 128
channel = 2
ignorehitpause = 1

[State 6350]
type = BindToParent
trigger1 = 1
pos = 23,-35
ignorehitpause = 1

[State 6350]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6350]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[state 6350, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 6350, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[State 6350]
type = PlaySnd
trigger1 = movecontact = 1
value = 10002,0
channel = 6
lowpriority = 0
ignorehitpause = 1
volume = 256
persistent = 0

[State 6350]
type = Helper
trigger1 = movecontact && numhelper(6351) = 0
helpertype = normal
name = "1"
ID = 6351
pos = ceil(((target(9), pos x)-pos x)*facing),0
postype = p1
stateno = 6351
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 6350]
type = Helper
trigger1 = movecontact && numhelper(6352) = 0
trigger1 = numtarget(9) = 2
helpertype = normal
name = "2"
ID = 6352
pos = ceil(((target(9), pos x)-pos x)*facing),0
postype = p1
stateno = 6352
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 6350, Hitdef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
attr = S, HP
hitflag = MAF
guardflag = MA
numhits = 0
animtype = Hard
damage = 105,10
pausetime = 0,16
guard.pausetime = 0,0
priority = 7, hit
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
guard.slidetime = 13
ground.hittime = 35
guard.hittime = 13
air.hittime = 35
ground.velocity = -10.0,0
guard.velocity = -3.4
air.velocity = -10.0,-1.4
airguard.velocity = -3.4,0.15
getpower = 0
fall = 1
ignorehitpause = 1
ID = 9

[state 6350]
type = changeanim
trigger1 = anim = 6350 && animtime = 0
value = 6351

[State 6350]
type = HitAdd
trigger1 = numhelper(6351) = 1
value = 1
ignorehitpause = 1
persistent = 0

[State 6350]
type = HitAdd
trigger1 = numhelper(6352) = 1
value = 1
ignorehitpause = 1
persistent = 0

[State 6350]
type = DestroySelf
trigger1 = frontedgedist <= -35||(parent, movetype = H)||(anim=6351&&animtime=0)
ignorehitpause = 1

[Statedef 6351]
movetype = A
anim = 7700
velset = 0, 0
sprpriority = 10

[State 6351]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 6351]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1

[Statedef 6352]
movetype = A
anim = 7700
velset = 0, 0
sprpriority = 10

[State 6352]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 6352]
type = PosSet
trigger1 = time = 0
x = (enemynear(1), pos x)
ignorehitpause = 1

[State 6352]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1

[statedef 6361]
anim = 6360
sprpriority = 5

[State 6361]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 6361]
type = BindToParent
trigger1 = 1
time = 1
pos = -17,-37
ignorehitpause = 1

[state 6361]
type = destroyself
trigger1 = (parent, stateno!=3200)||(Parent, stateno =3200&&parent, animelemtime(4)=35)

[statedef 6362]
anim = 6360
sprpriority = -2

[State 6362]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 6362]
type = BindToParent
trigger1 = 1
time = 1
pos = 18,-35
ignorehitpause = 1

[state 6362]
type = destroyself
trigger1 = (parent, stateno!=3200)||(Parent, stateno =3200&&parent, animelemtime(4)=35)

[Statedef 4000]
type = S
movetype = A
physics = S
anim = 4000
ctrl = 0
poweradd = -1000
velset = 0,0

[State 4000, Woom]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
volume = 200
channel = 6

[State 4000]
type = SuperPause
trigger1 = time = 3
time = 30
anim = S1
pos = -1,-22
movetime = 0

[State 4000]
type = helper
trigger1 = Time = 3
helpertype = normal
name = "aura"
ID = 7500
pos = 3,0
postype = p1
size.xscale = .8
size.yscale = .75
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4000]
type = helper
trigger1 = Time = 3 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4000]
type = PlaySnd
trigger1 = time = 3
value = 1464,0
channel = 1

[State 4000]
type = PlaySnd
trigger1 = time = 12
value = 1463,0
channel = 2

[State 4000]
type = AfterImage
trigger1 = time = 5
time = 50
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[state 4000]
type = changeanim
trigger1 = anim = 4000 && animtime = 0
value = 4001

[State 4000]
type = VelSet
trigger1 = anim = 4001
x = 12

[State 4000]
type = HitDef
trigger1 = 1
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 143,28
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-19
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = -4.1,0
guard.velocity = -1.5
air.velocity = -4.0,1.4
airguard.velocity = -1.5,0.4
fall = 1
getpower = 0

[state 4000]
type = changestate
trigger1 = movecontact
value = 4001
ctrl = 0

[state 4000]
type = changestate
trigger1 = time = 32&&movecontact=0
value = 0
ctrl = 1

[statedef 4001]
movetype = I

[State 4001]
type = VelSet
trigger1 = time = 0
x = -7
y = -9

[State 4001]
type = Gravity
trigger1 = 1

[State 4001]
type = VelAdd
trigger1 = vel x < 0
x = 0.5

[State 4001]
type = Changeanim
trigger1 = vel y >= 1
value = 44
ctrl = 1

[State 4001]
type = AfterImageTime
trigger1 = vel y >= 1
time = 0

[state 4001]
type = changestate
trigger1 = pos y >= 0&&time>0
value = 0
ctrl = 1

[Statedef 4010]
type = S
movetype = A
physics = S
anim = 4000
ctrl = 0
poweradd = -1250
velset = 0,0

[State 4010, Woom]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
volume = 200
channel = 6

[State 4010]
type = SuperPause
trigger1 = time = 3
time = 30
anim = S1
pos = -1,-22
movetime = 0

[State 4010]
type = helper
trigger1 = Time = 3
helpertype = normal
name = "aura"
ID = 7500
pos = 3,0
postype = p1
size.xscale = .9
size.yscale = .85
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4010]
type = helper
trigger1 = Time = 3 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4010]
type = PlaySnd
trigger1 = time = 3
value = 1464,0
channel = 1

[State 4010]
type = PlaySnd
trigger1 = time = 12
value = 1463,0
channel = 2

[State 4010]
type = AfterImage
trigger1 = time = 5
time = 35
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[state 4010]
type = changeanim
trigger1 = anim = 4000 && animtime = 0
value = 4001

[State 4010]
type = VelSet
trigger1 = anim = 4001
x = 12

[State 4010]
type = HitDef
trigger1 = 1
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 100,20
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-19
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = -1.1,0
guard.velocity = -1.0
air.velocity = -1.0,1.4
airguard.velocity = -1.0,0.4
getpower = 0

[state 4010]
type = changestate
trigger1 = movecontact
value = 4011
ctrl = 0

[state 4010]
type = changestate
trigger1 = time = 32&&movecontact=0
value = 0
ctrl = 1

[statedef 4011]
movetype = A
anim = 40

[State 4011]
type = Pause
trigger1 = time = 0
time = 10

[State 4011]
type = PlaySnd
trigger1 = time = 2
value = 1447,0
channel = 1

[State 4011]
type = PlaySnd
trigger1 = time = 1
value = 8,2
channel = 2

[State 4011]
type = ChangeAnim
trigger1 = anim=40&&animtime=0
value = 4100

[State 4011]
type = Helper
trigger1 = time = 2
helpertype = normal
name = "Energy!"
ID = 4010
pos = 0,-20
stateno = 4012
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 4011]
type = VelSet
trigger1 = time = 1
x = 0
y = -12

[State 4011]
type = Gravity
trigger1 = 1

[State 4011]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4011]
type = HitDef
trigger1 = !movecontact
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 50,10
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-19
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = -1.1,-7
guard.velocity = -0.5
air.velocity = -1.0,-7.2
airguard.velocity = -0.5,-0.6
fall = 1
getpower = 0

[State 4011]
type = Changeanim
trigger1 = vel y >= 0&&time>1
value = 44
ctrl = 1

[State 4011]
type = AfterImageTime
trigger1 = vel y >= 0
time = 0

[state 4011]
type = changestate
trigger1 = pos y >= 0&&time>1
value = 0
ctrl = 1

[statedef 4012]
anim = 6060

[State 4012]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4012]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-20
ignorehitpause = 1

[state 4012]
type = destroyself
trigger1 = ((parent, stateno!=4011)&&(parent, stateno!=4021))||(parent, anim!=4100)

[Statedef 4020]
type = S
movetype = A
physics = S
anim = 4000
ctrl = 0
poweradd = -1500
velset = 0,0

[State 4020, Woom]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
volume = 200
channel = 6

[State 4020]
type = SuperPause
trigger1 = time = 3
time = 30
anim = S1
pos = -1,-22
movetime = 0

[State 4020]
type = helper
trigger1 = Time = 3
helpertype = normal
name = "aura"
ID = 7500
pos = 3,0
postype = p1
size.xscale = 1
size.yscale = .95
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4020]
type = helper
trigger1 = Time = 3 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4020]
type = PlaySnd
trigger1 = time = 3
value = 1464,0
channel = 1

[State 4020]
type = PlaySnd
trigger1 = time = 12
value = 1463,0
channel = 2

[State 4020]
type = AfterImage
trigger1 = time = 5
time = 55
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[state 4020]
type = changeanim
trigger1 = anim = 4000 && animtime = 0
value = 4001

[State 4020]
type = VelSet
trigger1 = anim = 4001
x = 12

[State 4020]
type = HitDef
trigger1 = 1
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 100,20
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-19
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,1.4
airguard.velocity = 0,0.4
getpower = 0

[state 4020]
type = changestate
trigger1 = movecontact
value = 4021
ctrl = 0

[state 4020]
type = changestate
trigger1 = time = 32&&movecontact=0
value = 0
ctrl = 1

[statedef 4021]
movetype = A
anim = 40

[State 4021]
type = Pause
trigger1 = time = 0
time = 10

[State 4021]
type = PlaySnd
trigger1 = time = 2
value = 1447,0
channel = 1

[State 4021]
type = PlaySnd
trigger1 = time = 1
value = 8,2
channel = 2

[State 4021]
type = ChangeAnim
trigger1 = anim=40&&animtime=0
value = 4100

[State 4021]
type = Helper
trigger1 = numhelper(4010)=0
helpertype = normal
name = "Energy!"
ID = 4010
pos = 0,-20
stateno = 4012
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 4021]
type = VelSet
trigger1 = time = 1
x = 0
y = -12

[State 4021]
type = Gravity
trigger1 = 1

[State 4021]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4021]
type = HitDef
trigger1 = !movecontact
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 40,8
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -10,-19
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 35
ground.velocity = 0,-9.333
guard.velocity = 0
air.velocity = 0,-9.333
airguard.velocity =0,-0.6
fall = 1
getpower = 0

[state 4021]
type = changestate
trigger1 = movecontact
value = 4022
ctrl = 0

[State 4021]
type = Changeanim
trigger1 = vel y >= 0&&time>1
value = 44
ctrl = 1

[state 4021]
type = changestate
trigger1 = pos y >= 0&&time>1
value = 0
ctrl = 1

[statedef 4022]
movetype = A
velset = 0,0
anim = 1
sprpriority = -1

[State 4022 ]
type = PosAdd
trigger1 = time = 0
x = (p2dist x)
ignorehitpause = 1

[State 4022]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "image1"
ID = 4022
pos = 0,0
facing = 1
stateno = 4023
ownpal = 1
ignorehitpause = 1

[State 4022]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "image2"
ID = 4022
pos = 0,0
facing = -1
stateno = 4023
ownpal = 1
ignorehitpause = 1

[State 4022 ]
type = PosAdd
trigger1 = time = 0
y = (p2dist y)-130
ignorehitpause = 1

[State 4022]
type = AssertSpecial
trigger1 = time <= 15
flag = invisible
ignorehitpause = 1

[State 4022]
type = ScreenBound
trigger1 = time <= 15
value = 0

[State 4022]
type = PlaySnd
trigger1 = time = 0
value = 110, 0
channel = 6
volume = 200

[State 4022]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4022]
type = ChangeAnim
trigger1 = numhelper(4022)=0&&anim!=4200
value = 4200
ignorehitpause = 1

[State 4022]
type = PlaySnd
trigger1 = AnimElemtime(2) = 0 && anim = 4200
value = 1447, 0
channel = 1

[State 4022]
type = PlaySnd
trigger1 = AnimElemtime(2) = 0 && anim = 4200
value = 9, 0
channel = 2

[State 4022]
type = HitDef
trigger1 = !movecontact
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 40,8
pausetime = 12,12
guard.pausetime = 0,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -30,0
hitsound = S2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
guard.slidetime = 6
ground.hittime = 30
guard.hittime = 10
air.hittime = 30
ground.velocity = 0,9
guard.velocity = 0
air.velocity = 0,9
airguard.velocity =0
fall = 1
fall.damage = 10
getpower = 0

[State 4011]
type = AfterImageTime
trigger1 = anim = 4200 && animtime = 0
time = 0

[state 4022]
type = changestate
trigger1 = anim=4200&&animtime=0
value = 50

[statedef 4023]
anim = 4101

[State 4023]
type = null;AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 4023]
type = ScreenBound
trigger1 = 1
value = 0

[State 4023]
type = AfterImage
trigger1 = time = 0
time = 22
length = 20
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 165,165,165
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .6,.6,.6
timegap = 1
framegap = 3
trans = add
ignorehitpause = 1

[State 4023]
type = VelSet
trigger1 = time = 0
x = -5.6
y = -6.5*50/(p2dist y+50)
ignorehitpause = 1

[State 4023]
type = VelAdd
trigger1 = 1
x = 0.4
ignorehitpause = 1

[State 4023]
type = DestroySelf
trigger1 = time = 22

[Statedef 4500]
type = S
physics = S
movetype = A
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 4500

[State 4500]
type = Turn
trigger1 = P2Dist X < 0

[State 4500]
type = VarSet
trigger1 = time = 0
v = 10
value = ifelse(pos y >= 0, 0, 1)
ignorehitpause = 1

[State 4500]
type = VelSet
trigger1 = animelemtime(3)=0
y = -4

[State 4500]
type = VelAdd
trigger1 = pos y < 0
y = .4

[State 4500]
type = VelSet
trigger1 = pos y > 0
y = 0

[State 4500]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 4500]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 10,0
channel = 7

[State 4500]
type = PlaySnd
trigger1 = time = 25
value = 1451,0
channel = 2

[State 4500]
type = PlaySnd
trigger1 = time = 70
value = 1458,0
channel = 2

[State 4500]
type = VarSet
trigger1 = time = 0
v = 9
value = 0
ignorehitpause = 1
persistent = 1

[State 4500]
type = VarAdd
trigger1 = command = "a"
v = 9
value = 1
ignorehitpause = 1
persistent = 1

[State 4500]
type = NotHitBy
trigger1 = time >= 2
value = SCA
time = 1
ignorehitpause = 1

[State 4500, Woom]
type = PlaySnd
trigger1 = time = 2
value = 3000, 0
volume = 200
channel = 6

[State 4500]
type = helper
trigger1 = Time = 2
helpertype = normal
name = "aura"
ID = 7500
pos = 3,0
postype = p1
size.xscale = .8
size.yscale = .75
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4500]
type = helper
trigger1 = Time = 2 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4500]
type = SuperPause
trigger1 = time = 2
time = 30
anim = S1
pos = -1,-22
movetime = 0

[State 4500]
type = ChangeState
trigger1 = time >= 100
value = 4501
ctrl = 0

[Statedef 4501]
type = S
movetype = A
physics = S
anim = 4501
ctrl = 0
juggle = 3

[state 4501]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4501]
type = Explod
trigger1 = time = 0 && pos y >= 0
anim = 7100
ID = 4500
pos = -5, 0
postype = p1
bindtime = 1
removetime = 28
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 4501]
type = VelSet
trigger1 = 1
x = 1.5
y = -5

[State 4501]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = A
physics = A

[State 4501]
type = PlaySnd
trigger1 = time = 0
value = 1466,0
channel = 2

[State 4501]
type = AfterImage
trigger1 = time = 0
time = 30
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[State 4501, Hitdef]
type = HitDef
trigger1 = !time
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
damage = (23*var(9)),var(9)
pausetime = 0,0
guard.pausetime = 2,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -5,-10
hitsound = S4500,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 20
guard.slidetime = 10
ground.hittime = 20
guard.hittime = 10
air.hittime = 20
ground.velocity = -3.5,-2
guard.velocity = -1.4
air.velocity = -3.5,-2
airguard.velocity = -1.4,-1
fall = 1
getpower = 0,0
ignorehitpause = 0

[State 4501]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 1
ignorehitpause = 1

[State 4501]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

[Statedef 4510]
type = S
physics = S
movetype = A
velset = 0,0
ctrl = 0
poweradd = -2250
anim = 4500

[State 4510]
type = Turn
trigger1 = P2Dist X < 0

[State 4510]
type = ChangeAnim
trigger1 = time = 0
value = 4500

[State 4510]
type = VelSet
trigger1 = animelemtime(3)=0
y = -4

[State 4510]
type = VelAdd
trigger1 = pos y < 0
y = .4

[State 4510]
type = VelSet
trigger1 = pos y > 0
y = 0

[State 4510]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 4510]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 10,0
channel = 7

[State 4510]
type = PlaySnd
trigger1 = time = 25
value = 1451,0
channel = 2

[State 4510]
type = PlaySnd
trigger1 = time = 70
value = 1458,0
channel = 2

[State 4510]
type = VarSet
trigger1 = time = 0
v = 9
value = 0
ignorehitpause = 1
persistent = 1

[State 4510]
type = VarAdd
trigger1 = command = "b"
v = 9
value = 1
ignorehitpause = 1
persistent = 1

[State 4510]
type = NotHitBy
trigger1 = time >= 2
value = SCA
time = 1
ignorehitpause = 1

[State 4510, Woom]
type = PlaySnd
trigger1 = time = 2
value = 3000, 0
volume = 200
channel = 6

[State 4510]
type = helper
trigger1 = Time = 2
helpertype = normal
name = "aura"
ID = 7500
pos = 3,0
postype = p1
size.xscale = .8
size.yscale = .75
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4510]
type = helper
trigger1 = Time = 2 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4510]
type = SuperPause
trigger1 = time = 2
time = 30
anim = S1
pos = -1,-22
movetime = 0

[State 4510]
type = ChangeState
trigger1 = time >= 100
value = 4511
ctrl = 0

[Statedef 4511]
type = S
movetype = A
physics = S
anim = 4501
ctrl = 0
juggle = 3

[state 4511]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4511]
type = Explod
trigger1 = time = 0 && pos y >= 0
anim = 7100
ID = 4500
pos = -5, 0
postype = p1
bindtime = 1
removetime = 28
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 4511]
type = VelSet
trigger1 = 1
x = 1.5
y = -5

[State 4511]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = A
physics = A

[State 4511]
type = PlaySnd
trigger1 = time = 0
value = 1466,0
channel = 2

[State 4511]
type = AfterImage
trigger1 = time = 0
time = 30
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[State 4511, Hitdef]
type = HitDef
trigger1 = !time
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
damage = (23*var(9)),var(9)
pausetime = 8,2
guard.pausetime = 2,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -5,-10
hitsound = S4500,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 15
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
ground.velocity = -1.4,-8
guard.velocity = -1
air.velocity = -1.4,-8
airguard.velocity = -1,-.8
fall = 1
getpower = 0,0
ignorehitpause = 0

[State 4511]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 1
ignorehitpause = 1

[State 4511]
type = TargetBind
trigger1 = movehit = 1
time = 10
pos = 30,-20
ignorehitpause = 1

[State 4511]
type = ChangeState
trigger1 = animtime = 0 && movehit = 0
value = 50
ctrl = 0

[State 4511]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 4512
ctrl = 0

[Statedef 4512]
type = S
movetype = A
physics = S
anim = 4510
ctrl = 0
velset = 0,0

[state 4512]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4512]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 1433,0
channel = 1

[State 4512, Hitdef]
type = HitDef
trigger1 = !time
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
damage = 30,2
pausetime = 12,2
guard.pausetime = 2,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -5,-20
hitsound = S4500,1
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 15
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
ground.velocity = -14.5
guard.velocity = -2
air.velocity = -14,-3
airguard.velocity = -2,-.1
fall = 1
getpower = 0,0
ignorehitpause = 0

[State 4512]
type = ScreenBound
trigger1 = movehit
value = 0
ignorehitpause = 1

[State 4512]
type = ChangeState
trigger1 = animtime = 0 && movehit = 0
value = 1500
ctrl = 1

[State 4512]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 4513
ctrl = 0

[Statedef 4513]
type = S
movetype = I
physics = S
anim = 1500
velset = 0,0
ctrl = 0

[State 4513]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4513]
type = ChangeState
trigger1 = time = 30 && p2dist x >= 300
value = 110
ctrl = 0

[State 4513]
type = ChangeState
trigger1 = time = 30 && p2dist x < 300
value = 1500
ctrl = 1

[Statedef 4520]
type = S
physics = S
movetype = A
velset = 0,0
ctrl = 0
poweradd = -2500
anim = 4500

[State 4520]
type = Turn
trigger1 = P2Dist X < 0

[State 4520]
type = ChangeAnim
trigger1 = time = 0
value = 4500

[State 4520]
type = VelSet
trigger1 = animelemtime(3)=0
y = -4

[State 4520]
type = VelAdd
trigger1 = pos y < 0
y = .4

[State 4520]
type = VelSet
trigger1 = pos y > 0
y = 0

[State 4520]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 4520]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 10,0
channel = 7

[State 4520]
type = PlaySnd
trigger1 = time = 25
value = 1451,0
channel = 2

[State 4520]
type = PlaySnd
trigger1 = time = 70
value = 1458,0
channel = 2

[State 4520]
type = VarSet
trigger1 = time = 0
v = 9
value = 0
ignorehitpause = 1
persistent = 1

[State 4520]
type = VarAdd
trigger1 = command = "c"
v = 9
value = 1
ignorehitpause = 1
persistent = 1

[State 4520]
type = NotHitBy
trigger1 = time >= 2
value = SCA
time = 1
ignorehitpause = 1

[State 4520, Woom]
type = PlaySnd
trigger1 = time = 2
value = 3000, 0
volume = 200
channel = 6

[State 4520]
type = helper
trigger1 = Time = 2
helpertype = normal
name = "aura"
ID = 7500
pos = 3,0
postype = p1
size.xscale = .8
size.yscale = .75
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4520]
type = helper
trigger1 = Time = 2 && pos y >= -10
helpertype = normal
name = "whirl"
ID = 7000
pos = 0,ceil(-pos y)
postype = p1
size.xscale = 1
size.yscale = 1
stateno = 7000
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4520]
type = SuperPause
trigger1 = time = 2
time = 30
anim = S1
pos = -1,-22
movetime = 0

[State 4520]
type = ChangeState
trigger1 = time >= 100
value = 4521
ctrl = 0

[Statedef 4521]
type = S
movetype = A
physics = S
anim = 4501
ctrl = 0
juggle = 3

[state 4521]
type = varset
trigger1 = time = 0
v = 11
value = 0
ignorehitpause = 1

[state 4521]
type = varset
trigger1 = time = 0
v = 12
value = 0
ignorehitpause = 1

[state 4521]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4521]
type = Explod
trigger1 = time = 0 && pos y >= 0
anim = 7100
ID = 4500
pos = -5, 0
postype = p1
bindtime = 1
removetime = 28
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 4521]
type = VelSet
trigger1 = 1
x = 1.5
y = -5

[State 4521]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = A
physics = A

[State 4521]
type = PlaySnd
trigger1 = time = 0
value = 1466,0
channel = 2

[State 4521]
type = AfterImage
trigger1 = time = 0
time = 30
trans = add 
length = 15
PalContrast =  200, 200, 200
PalBright = 30,30,30

[State 4521, Hitdef]
type = HitDef
trigger1 = !time
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
damage = (23*var(9)),var(9)
pausetime = 8,2
guard.pausetime = 2,0
sparkno = S6500
guard.sparkno = S6600
sparkxy = -5,-10
hitsound = S4500,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 15
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
ground.velocity = -1.4,-8
guard.velocity = -1.3
air.velocity = -1.4,-8
airguard.velocity = -1.3,-.7
fall = 1
getpower = 0,0
ignorehitpause = 0

[State 4521]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 1
ignorehitpause = 1

[state 4521]
type = varset
trigger1 = movehit = 1
v = 11
value = time
ignorehitpause = 1

[state 4521]
type = varset
trigger1 = movehit = 1
v = 12
value = ceil(p2dist y)
ignorehitpause = 1

[State 4521]
type = null;TargetBind
trigger1 = movehit = 3
time = 10
pos = ifelse(var(11)< 20,ceil(50-2*var(11)), 10),ceil((40-2.2*var(11))+var(12)/3)
ignorehitpause = 1

[State 4521]
type = ChangeState
trigger1 = animtime = 0 && movehit = 0
value = 50
ctrl = 0

[State 4521]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 4522
ctrl = 0

[Statedef 4522]
type = S
movetype = A
physics = A
ctrl = 0
velset = 0,0

[State 4522]
type = VarSet
trigger1 = time = 0
v = 15
value = ifelse((p2dist y <= -5&&p2dist y >= -30),0,ifelse(p2dist y > -5,1,2))
ignorehitpause = 1
persistent = 0

[State 4522]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(15)=0,4530,ifelse(var(15)=1,4520,4540))
ignorehitpause = 1

[State 4522]
type = TargetVelSet
trigger1 = time = 0
y = 2
ignorehitpause = !
persistent = 1

[state 4522]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4522, Woom]
type = PlaySnd
trigger1 = time = 2
value = 3000, 0
volume = 200
channel = 6

[State 4522]
type = helper
trigger1 = Time = 2
helpertype = normal
name = "aura"
ID = 7500
pos = 2,0
postype = p1
size.xscale = .75
size.yscale = 1
stateno = 7500
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 4522]
type = SuperPause
trigger1 = time = 2
time = 30
anim = S1
pos = 14,-22
movetime = 0

[State 4522]
type = Explod
trigger1 = time = 0
anim = 4522
ID = 4522
pos = ifelse(var(15)=0,17,ifelse(var(14)=1,14,13)),ifelse(var(15)=0,-33,ifelse(var(15)=1,-22,-44));14,-22
bindtime = -1
removetime = -1
supermove = 9999
pausemovetime = 9999
scale = .7, .7
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4522]
type = ChangeState
trigger1 = time = 3
value = 4523
ctrl = 0
ignorehitpause = 1

[Statedef 4523]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0

[State 4522]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(15)=0,4531,ifelse(var(15)=1,4521,4541))
ignorehitpause = 1

[state 4523]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4523]
type = RemoveExplod
trigger1 = time = 0
ID = 4522
ignorehitpause = 1

[State 4523]
type = PlaySnd
trigger1 = time = 0
value = 1465,0
channel = 1

[State 4523, ball]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Big Bang"
ID = 4523
pos = ifelse(var(15)=0,17,ifelse(var(15)=1,14,13)),ifelse(var(15)=0,-33,ifelse(var(15)=1,-22,-44));14,-22
postype = p1
stateno = 4525
keyctrl = 0
ownpal = 1
size.xscale = .7
size.yscale = .7

[State 4523]
type = ChangeState
trigger1 = time = 48
value = 1500
ctrl = 1

[Statedef 4525]
movetype = A
anim = 4525
sprpriority = 4

[State 4525]
type = VelSet
trigger1 = time = 0 && parent, var(15) = 0
x = 12.7
y = 0
ignorehitpause = 1

[State 4525]
type = VelSet
trigger1 = time = 0 && parent, var(15) = 1
x = 9
y = 9
ignorehitpause = 1

[State 4525]
type = VelSet
trigger1 = time = 0 && parent, var(15) = 2
x = 9
y = -9
ignorehitpause = 1

[State 4525]
type = PlaySnd
trigger1 = time = 0
value = 4525,0
channel = 8
ignorehitpause = 1

[State 4525]
type = AfterImageTime
trigger1 = movecontact
time = 0
ignorehitpause = 1

[State 4525, AfterImage]
type = AfterImage
trigger1 = time = 0
length = 15
time = -1
TimeGap = 1
FrameGap = 1
Trans = Add
palbright = 20,20,10
palcontrast = 200,200,100
palpostbright = 0,0,0
paladd = 20,20,5
palmul = .6,.6,.5

[state 4525]
type = screenbound
trigger1 = 1
value = 0

[State 4525]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 4525]
type = trans
trigger1 = 1
value = add
ignorehitpause = 1

[State 4525]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA,NP,SP,HP
stateno = 4526
time = 1
ignorehitpause = 1

[state 4525, hitby]
type = hitby
trigger1 = 1
value = ,AP
ignorehitpause = 1

[state 4525, nothitby]
type = nothitby
trigger1 = 1
value = ,AA, AT
ignorehitpause = 1

[state 4525]
type = ScreenBound
value = 0
trigger1 = 1

[State 4525, Hitdef]
type = HitDef
trigger1 = 1
attr = A, HP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 60,5
pausetime = 8,8
guard.pausetime = 0,0
priority = 4, hit
sparkno = S1
guard.sparkno = S1
sparkxy = 0,0
hitsound = S10000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
guard.slidetime = 10
ground.hittime = 20
guard.hittime = 10
air.hittime = 20
ground.velocity = -5.0
guard.velocity = -2
air.velocity = -5,ifelse(parent, var(15) = 2,-5,5)
airguard.velocity = -2,ifelse(parent, var(15) = 2,-1.5,1.5)
getpower = 0
fall = 1
down.velocity = -2,0
down.hittime = 15
down.bounce = 1

[state 4525]
type = changestate
trigger1 = movecontact || pos y >= 0 || frontedgedist <= -65
value = 4526
ignorehitpause = 1

[statedef 4526]
velset = 0, 0

[State 4526]
type = ChangeAnim
trigger1 = time = 0
value = 1
ignorehitpause = 1

[State 4526]
type = PlaySnd
trigger1 = time = 0
value = 4525,1
channel = 6
ignorehitpause = 1

[state 4526]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4526]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4526]
type = Explod
trigger1 = time = 0&&numexplod(4526)=0
anim = 7700
ID = 4526
pos = 20,0
postype = p1
bindtime = 1
removetime = 39
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4526]
type = DestroySelf
trigger1 = time = 0
ignorehitpause = 1
