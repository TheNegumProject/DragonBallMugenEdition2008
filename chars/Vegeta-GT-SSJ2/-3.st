[Statedef -3]

;--(Armor Mode)-------------------------------------------------------------------------

[State -3,PalFX]
type = PalFX
trigger1 = (timemod = 4,0)&&(var(4) > 0)
trigger1 = (var(4) < 600)
time = 60
TimeGap  = 2
FrameGap = 7
trans = add
add = 32,32,-256
sinadd = 32,32,-256,3

[State -3,Powerset]
type = Powerset
trigger1 = (var(4) > 0)
value = 0

[State -3,Varadd]
type = VarAdd
trigger1 = (var(4) > 0)
v = 4
value = 1

[State -3,VarSet]
type = VarSet
trigger1 = (var(4) = 600)
v = 4
value = 0

;Armor Mode Hited State S
[State -3,HitOverRide]
type = HitOverRide
triggerall =(Alive = 1)
trigger1 = (Var(4) > 0)&&(StateType = S)
trigger1 = (stateno!= 120)
trigger1 = (stateno!= 130)
time = 1
attr = SCA, NA, SA, NP, SP
slot = 0
stateno = 3000

;Armor Mode Hited State C
[State -3,HitOverRide]
type = HitOverRide
triggerall =(Alive = 1)
trigger1 = (Var(4) > 0)&&(StateType = C)
trigger1 = (stateno!= 120)
trigger1 = (stateno!= 131)
time = 1
attr = SCA, NA, SA, NP, SP
slot = 1
stateno = 3001

;Armor Mode Hited State A
[State -3,HitOverRide]
type = HitOverRide
triggerall = (Alive = 1)
trigger1 = (Var(4) > 0)&&(StateType = A)
time = 1
attr = SCA, NA, SA, NP, SP
slot = 2
stateno = 3002

;--(Power Mode)--------------------------------------------------------------------

[State -3,PalFX]
type = PalFX
trigger1 = (timemod = 4,0)&&(var(5) > 0)
trigger1 = (var(4) < 600)
time = 30
TimeGap  = 2
FrameGap = 7
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,10
invertall = 0
color = 0

[State -3,Powerset]
type = Powerset
trigger1 = (var(5)> 0)
value = 0

[State -3,Varadd]
type = VarAdd
trigger1 = (var(5) > 0)
v = 5
value = 1

[State -3,VarSet]
type = VarSet
trigger1 = (var(5) = 600)
v = 5
value = 0
;--(counter)--------------------------------------------------------------------


[State -3, HitOverride]
type = HitOverride
triggerall = (Alive = 1)
trigger1 = (Command = "holdfwd")&&(!StateType = A)&&(power >=500)
attr = S,NA
slot = 0
stateno = 1300
time = 1

;--(Damage/Defense/Power System)------------------------------------------------------

;Damage Sistem
[State -3, VarSet]
type = VarSet
trigger1 = 1
fvar(10) = IfElse(power >=3000,.3,IfElse(power >=2000,.2,IfElse(power>=1000,.1,0)))
IgnoreHitPause=1

[State -3, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value =  IfElse(var(5)= 0,fvar(10)+1,1.5)
ignorehitpause = 1

;Defense Sistem
[State -3,DefenceMulset]
type=DefenceMulset
trigger1 = 1
value =  IfElse(var(5) > 0,0.5,1)
ignorehitpause=1

;Power Sistem
[State -3,Poweradd]
type = Poweradd
trigger1= (timemod = 2,0)
value = 1
;-(Removing Explods)------------------------------------------------------------


[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 1100
trigger1 = NumExplod(6010)
id = 6010

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 1100
trigger1 = NumExplod(6011)
id = 6011


[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 1101
trigger1 = NumExplod(6012)
id = 6012

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 1000
trigger1 = NumExplod(6013)
id = 6013


[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 3200
trigger1 =Stateno!= 3200
trigger1 = NumExplod(6900)
id = 6900

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 3501
trigger1 = NumExplod(6940)
id = 6940

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 3501
trigger1 = NumExplod(6960)
id = 6960

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Stateno!= 4101
trigger1 = NumExplod(6970)
id = 6980

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 700
trigger1 = NumExplod(8000)
id = 8000

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 =  Anim != 700
trigger1 = NumExplod(8005)
id = 8005
;--(PlaySound)----------------------------------------------------------------------

[State -3, Landing Sound]
type = PlaySnd
triggerall = (Time = 1)
trigger1 = (stateno = 52) ;Jump land
trigger2 = (stateno = 106) ;Run-back land
value = 52,0

[State -3, Jump Sound]
type = PlaySnd
triggerall = (Time = 1)
trigger1 = (stateno = 40) ;Jump
trigger2 = (stateno = 105); Jump Run-back
value = 40,0

[State -3,Run FWD Sound]
type = PlaySnd
triggerall = (Time = 1)
trigger1 = (stateno =  60); FWD Air Dash Sound
trigger2 = (stateno =  65); Back Air Dash Sound
trigger3 = (stateno = 100); Run FWD Sound
value = 100,0

[State -3,Fly Sound]
type = PlaySnd
triggerall = (Time = 1)
trigger1 = (stateno = 910); Fly Sound
value = 900,0
;--(StopSound)--------------------------------------------------

;Aura Sound
[State -3, StopSnd]
type = StopSnd
trigger1 = Anim!=4000
trigger1 = Anim!=1000
trigger1 = Anim!=190
trigger1 = Anim!=181
channel = 5

;Electric Sound
[State -3, StopSnd]
type = StopSnd
trigger1 = Anim!=1000
channel = 6

;Kienzan_x
[State -3,StopSnd]
type = StopSnd
trigger1 =Stateno!=2000
channel = 7

;kienzan_y
[State -3,StopSnd]
type = StopSnd
trigger1 = Stateno!=2100
channel = 8

;BB Charge
[State -3,StopSnd]
type = StopSnd
trigger1 =Stateno!=3200
channel = 9

;BB Charge
[State -3,StopSnd]
type = StopSnd
trigger1 = Stateno!=3200
channel = 10

;FF Charge
[State -3,StopSnd]
type = StopSnd
trigger1 =Stateno!=3501
channel = 11

;FF Charge
[State -3,StopSnd]
type = StopSnd
trigger1 = Stateno!=3501
channel = 12

;Ground
[State -3, StopSnd]
type = StopSnd
trigger1 = Anim!=4100
trigger1 = Anim!=1000
trigger1 = Anim!=190
channel = 13

;FS Charge
[State -3, StopSnd]
type = StopSnd
trigger1 = Stateno!=4100
channel = 14

;FS Charge
[State -3, StopSnd]
type = StopSnd
trigger1 = Stateno!= 4100
channel = 15
