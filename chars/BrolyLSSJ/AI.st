;[------Y------][-----][------]
;[------N------][-----][--B--]
;[------V------][-----][--R--]
;[------A------][-'S-][---O--]
;[------S------][-----][--L--]
;[------E------][-----][--Y--]
;[------R------][-----][------]
;[---Don't forget to check out the Shugen-Do--]
;[------game engine at www.sakirsoft.com------]
;[----------------Artifical Intelligence & Misc----------------]
;
;If you want brutal AI like this (:D), send me an e-mail,
;my adress is ynvaser@hotmail.com
;
;Thanks to Winane for his AI activation tutorials!
;
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
;-------------------------------------------------------------------------------
; AI Activation Helper State - Primary Version
;
; var(11) - First tick button activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(11)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(59)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(59) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(59) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(11):=1
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

;-------------------------------------------------------------------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(11) - First tick activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; var(10)- Buffered dir detection disabler.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9742, UglyHack]
type = VarSet
trigger1 = !var(11)
var(2) = var(3):=2

[State 9742, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(59)
trigger5 = var(11)
trigger5 = var(3):=0
var(2) = var(3):=1

[State 9742, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = var(6):=0
var(6) = 1

[State 9742, BufferCheck]
type = VarSet
trigger1 = var(3) || var(4) || var(10)
var(10) = var(6)

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(7):=0
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = Parent,command = "a"
trigger1 = Partner,command = "a"
trigger2 = Parent,command = "b"
trigger2 = Partner,command = "b"
trigger3 = Parent,command = "c"
trigger3 = Partner,command = "c"
trigger4 = Parent,command = "x"
trigger4 = Partner,command = "x"
trigger5 = Parent,command = "y"
trigger5 = Partner,command = "y"
trigger6 = Parent,command = "z"
trigger6 = Partner,command = "z"
trigger7 = Parent,command = "start"
trigger7 = Partner,command = "start"
trigger8 = var(8):=0
var(8) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(6)
trigger1 = !(var(9) || var(10))
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5) && var(7)
trigger1 = !(var(2) || var(8))
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !(var(2) || var(8))
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(59) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = var(2) = 2
trigger2 = var(2):=0
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6) || var(7)
trigger2 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = var(11):=1
var(5) = !var(7)

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[StateDef -2]

[State -2, HandsOff]
type = NotHitBy
triggerall = (numhelper(330)>0)
trigger1 = 1
value = SCA
time = 1
IgnoreHitPause = 1

;[----------AI Activation----------]
[State -2, StopAI]
type = VarSet
triggerall = var(59) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(59) = -2
IgnoreHitPause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, SetAI]
type = VarSet
triggerall = Alive && RoundState = 2
triggerall = IsHomeTeam && !IsHelper
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(59) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(59) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(59) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(59) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(59) = 1

[State -3, XOR]
type = VarSet
triggerall = var(59)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
var(59) = 1

[State -3, fiXOR]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

[State -3, CPU]
type = VarSet
triggerall = var(59)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
var(59) = 1

[State -3, Reset]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, Delay]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

;[--------AI Code--------]
[State -3, VarRandom] ;Standing Var
type = VarRandom
triggerall = (var(59) > 0)
trigger1 = (Timemod = 2,0)
v = 17
range = 900,-400

[State -3, VarRandom] ;Jump Var
type = VarRandom
triggerall = (var(59) > 0)
trigger1 = (Timemod = 3,0)
v = 18
range = 400,0

[State -3, VarRandom] ;Counter Var
type = VarRandom
triggerall = (var(59) > 0)
trigger1 = (Timemod = 2,0)
v = 19
range = 500,0

[State -3, DirtyHax]
type = PowerAdd
triggerall = ctrl
trigger1 = (var(59) > 0)
trigger1 = (var(25)< 1)
value = 2

;--[Hypers,Supers,Misc]--
;Guard
[State -3, Guard]
type     = ChangeState
value    = 120
triggerall = (var(25)< 1)
triggerall = (var(59) > 0)
triggerall = (random < 150 && random >=0)
trigger1 = inguarddist
trigger1 = ctrl

[State -3, Jump]
type = ChangeState
triggerall = (Var(59) > 0)
triggerall = ctrl
triggerall = statetype = S
trigger1 = var(18) >= 300
trigger1 = var(18) < 400
trigger2 = (P2BodyDist Y) < (-65)
value = 40

;Sayan's Fury
[State -3, Sayan's Fury]
type = ChangeState
value = 1040
triggerall = (power >= 2500)
triggerall = (var(59)> 0)
triggerall = (var(25)< 1)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(17) >= -400
trigger1 = var(17) < -100

;EEB
[State -3, Expanding Energy Blast]
type = ChangeState
value = 1050
triggerall = (var(59) > 0)
triggerall = (var(25)< 1)
triggerall = (Power >= 2000 && Power < 2200)
triggerall = ctrl
triggerall = (p2bodydist X < (90))
trigger1 = statetype != A
trigger1 = var(17) >= -100
trigger1 = var(17) < 0
trigger2 = (prevstateno = 202 || prevstateno = 212 || prevstateno = 232)
trigger2 = (random > 300)

;KI Bomb Lvl 1
[State -3, KI Bomb Lvl 1]
type = ChangeState
value = 1000
triggerall = (var(59) > 0)
triggerall = (var(25)< 1)
triggerall = (Power >= 1000 && Power < 2000)
triggerall = ctrl
triggerall = (p2bodydist Y > (-85))
trigger1 = statetype != A
trigger1 = var(17) >= 0
trigger1 = var(17) < 100
trigger2 = (prevstateno = 202 || prevstateno = 212 || prevstateno = 232)
trigger2 = (random < 250)

;KI Bomb Lvl 2
[state -3, KI Bomb Lvl 2]
type = ChangeState
value = 1010
triggerall = (var(59) > 0)
triggerall = (var(25)< 1)
triggerall = (Power >= 2000 && Power < 3000)
triggerall = ctrl
triggerall = (p2bodydist Y > (-85))
trigger1 = statetype != A
trigger1 = var(17) >= 100
trigger1 = var(17) < 200
trigger2 = (prevstateno = 202 || prevstateno = 212 || prevstateno = 232)
trigger2 = (random < 300)

;KI Bomb Lvl 3
[state -3, KI Bomb Lvl 3]
type = ChangeState
value = 1020
triggerall = (var(25)< 1)
triggerall = (p2bodydist Y > (-85))
triggerall = (var(59) > 0)
triggerall = Power >= 3000
triggerall = ctrl
trigger1 = statetype != A
trigger1 = var(17) >= 200
trigger1 = var(17) < 300
trigger2 = (prevstateno = 202 || prevstateno = 212 || prevstateno = 232)

;Eraser Cannon
[state -3, Eraser Cannon]
type = ChangeState
value = 1030
triggerall = (var(25)< 1)
triggerall = (var(59) > 0)
triggerall = (Power >= 700 && Power < 2000)
triggerall = ctrl
triggerall = (p2bodydist Y > (-80))
trigger1 = statetype != A
trigger1 = var(17) >= 300
trigger1 = var(17) < 400
trigger2 = (prevstateno = 202 || prevstateno = 212 || prevstateno = 232)
trigger2 = (random >= 250 && random <= 500)

;Rapid KI shots
[state -3, Rapid KI Shots]
type = ChangeState
value = 260
triggerall = (var(59) > 0)
triggerall = (power >= 500 && Random >= 200)
triggerall = (p2bodydist Y > (-85))
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 400
trigger1 = var(17) < 450

;Stand KI Shot
[state -3, Stand KI Shot]
type = ChangeState
value = 216
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-40))
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 450
trigger1 = var(17) < 500

;Trap Shooter
[state -3, Trap Shooter]
type = ChangeState
value = 217
triggerall = (var(59) > 0)
triggerall = (power >= 100 && Random >= 300)
triggerall = (p2bodydist Y > (-50))
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 500
trigger1 = var(17) < 550

;Crouching KI Shot
[state -3, Crouching KI Shot]
type = ChangeState
value = 410
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-30))
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 550
trigger1 = var(17) < 600

;--[Basics]--
;Counter A
[State -1, Counter A]
type = ChangeState
value = 232
triggerall = (var(59) > 0)
triggerall = (var(25) < 1)
triggerall = Time >= 10
triggerall = Power >= 500
triggerall = var(19) >= 0
triggerall = var(19) < 100
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5002
trigger4 = stateno = 5010
trigger5 = stateno = 5011
trigger6 = stateno = 5012
trigger7 = stateno = 5020
trigger8 = stateno = 5030
trigger9 = stateno = 5035
trigger10 = stateno = 5040
trigger11 = stateno = 5050
trigger12 = stateno = 5071

;Counter X
[State -1, Counter X]
type = ChangeState
value = 202
triggerall = (var(59) > 0)
triggerall = (var(25) < 1)
triggerall = Time >= 10
triggerall = Power >= 250
triggerall = var(19) >= 100
triggerall = var(19) < 250
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5002
trigger4 = stateno = 5010
trigger5 = stateno = 5011
trigger6 = stateno = 5012

;Counter Y
[State -1, Counter Y]
type = ChangeState
value = 212
triggerall = (var(25) < 1)
triggerall = (var(59) > 0)
triggerall = Time >= 10
triggerall = Power >= 500
triggerall = var(19) >= 250
triggerall = var(19) < 350
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5002
trigger4 = stateno = 5010
trigger5 = stateno = 5011
trigger6 = stateno = 5012
trigger7 = stateno = 5020
trigger8 = stateno = 5030
trigger9 = stateno = 5035
trigger10 = stateno = 5040
trigger11 = stateno = 5050
trigger12 = stateno = 5071

;Stand Light Punch
[state -3, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-70))
triggerall = (p2bodydist X < 112)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = (var(17) >= 650 && var(17) < 675)||(var(17) >= 600 && var(17) < 650)
trigger2 = stateno = 52
trigger2 = (random >= 0)
trigger2 = (random < 150)

;Stand Light Punch 2
[state -3, Stand Light Punch 2]
type = ChangeState
value = 201
triggerall = (var(59) > 0)
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S

;Stand Light Punch 3
[state -3, Stand Light Punch 3]
type = ChangeState
value = 202
triggerall = (var(59) > 0)
triggerall = statetype = S
trigger1 = (stateno = 201 || stateno = 211 || stateno = 231 || stateno = 251)
trigger1 = movecontact = 1

;Stand Strong Punch
[state -3, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-75))
triggerall = (p2bodydist X < 90)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 675
trigger1 = var(17) < 700
trigger2 = stateno = 200
trigger2 = movecontact =1
trigger3 = stateno = 201
trigger3 = movecontact =1
trigger4 = stateno = 230
trigger4 = movecontact =1
trigger5 = stateno = 231
trigger5 = movecontact =1
trigger6 = stateno = 240
trigger6 = movecontact =1
trigger7 = stateno = 52
trigger7 = (random >= 150)
trigger7 = (random < 250)

;Stand Strong Punch 2
[state -3, Stand Strong Punch 2]
type = ChangeState
value = 211
triggerall = (var(59) > 0)
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S

;Stand Strong Punch 3
[state -3, Stand Strong Punch 3]
type = ChangeState
value = 212
triggerall = (var(59) > 0)
trigger1 = (stateno = 211 || stateno = 251)
trigger1 = movecontact = 1
trigger1 = statetype = S

;Stand Strong Kick
[state -3, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-80))
triggerall = (p2bodydist X < 70)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 700
trigger1 = var(17) < 725
trigger2 = stateno = 200
trigger2 = movecontact =1
trigger3 = stateno = 201
trigger3 = movecontact =1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 211
trigger5 = movecontact =1
trigger6 = stateno = 230
trigger6 = movecontact =1
trigger7 = stateno = 231
trigger7 = movecontact =1
trigger8 = stateno = 240
trigger8 = movecontact =1
trigger9 = stateno = 52
trigger9 = (random >= 250)
trigger9 = (random < 300)

;Stand Strong Kick 2
[State -1, Stand Strong Punch 2]
type = ChangeState
value = 251
triggerall = (var(59) > 0)
triggerall = stateno = 250
triggerall = movecontact = 1
trigger1 = statetype = S

;Stand Light Kick
[state -3, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-5))
triggerall = (p2bodydist X < 80)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(17) >= 725
trigger1 = var(17) < 750
trigger2 = stateno = 200
trigger2 = movecontact =1
trigger3 = stateno = 201
trigger3 = movecontact =1
trigger4 = stateno = 52
trigger4 = (random >= 300)
trigger4 = (random < 400)

;Stand Light Kick 2
[state -3, Stand Light Kick 2]
type = ChangeState
value = 231
triggerall = (var(59) > 0)
triggerall = stateno = 230
triggerall = movecontact = 1
trigger1 = statetype = S

;Stand Light Kick 3
[state -3, Stand Light Kick 3]
type = ChangeState
value = 232
triggerall = (var(59) > 0)
trigger1 = (stateno = 211 || stateno = 251)
trigger1 = movecontact = 1
trigger1 = statetype = S

;Stand Medium Kick
[state -3, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-55))
triggerall = (p2bodydist X < 80)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 750
trigger1 = var(17) < 775
trigger2 = stateno = 200
trigger2 = movecontact =1
trigger3 = stateno = 201
trigger3 = movecontact =1
trigger4 = stateno = 230
trigger4 = movecontact =1
trigger5 = stateno = 231
trigger5 = movecontact =1
trigger6 = stateno = 52
trigger6 = (random >= 400)
trigger6 = (random < 450)

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-45))
triggerall = (p2bodydist X < 75)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 775
trigger1 = var(17) < 800

;Crouching Hard Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 405
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-50))
triggerall = (p2bodydist X < 75)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 800
trigger1 = var(17) < 825
trigger2 = stateno = 400
trigger2 = movecontact =1
trigger3 = stateno = 430
trigger3 = movecontact =1
trigger4 = stateno = 435
trigger4 = movecontact =1

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-15))
triggerall = (p2bodydist X < 90)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 825
trigger1 = var(17) < 850
trigger2 = stateno = 400
trigger2 = movecontact =1

;Crouching Medium Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 435
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-35))
triggerall = (p2bodydist X < 95)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 850
trigger1 = var(17) < 875
trigger2 = stateno = 400
trigger2 = movecontact =1
trigger3 = stateno = 430
trigger3 = movecontact =1

;Crouching Dash/Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-15))
triggerall = (p2bodydist X < 150)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(17) >= 875
trigger1 = var(17) < 900
trigger2 = stateno = 400
trigger2 = movecontact =1
trigger3 = stateno = 405
trigger3 = movecontact =1
trigger4 = stateno = 430
trigger4 = movecontact =1
trigger5 = stateno = 435
trigger5 = movecontact =1

;[--Air Movements--]
;Jump KI Shot
[state -3, Jump KI Shot]
type = ChangeState
value = 680
triggerall = (life > 400)
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y < (10))
triggerall = (p2bodydist X < 80)
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(18) >= 0
trigger1 = var(18) < 50

;Jump Low/Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (5))
triggerall = (p2bodydist X < 95)
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(18) >= 50
trigger1 = var(18) < 100

;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-25))
triggerall = (p2bodydist X < 100)
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(18) >= 100
trigger1 = var(18) < 150
trigger2 = stateno = 630
trigger2 = movecontact =1

;Jump Low Airborne Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (5))
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(18) >= 150
trigger1 = var(18) < 200
trigger2 = stateno = 640
trigger2 = movecontact =1

;Jump High Airborne Kick
[State -1, Jump Light Punch]
type = ChangeState
value = 660
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (-25))
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(18) >= 200
trigger1 = var(18) < 250
trigger2 = stateno = 650
trigger2 = movecontact =1

;Jump Quickswitch Airborne Kick
[State -1, Jump Strong Punch]
type = ChangeState
value = 670
triggerall = (var(59) > 0)
triggerall = (p2bodydist Y > (5))
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(18) >= 250
trigger1 = var(18) < 300
trigger2 = stateno = 660
trigger2 = movecontact =1

;[---------End of AI---------]
;[--------Misc Things--------]
[State -3, ArmorHelper]
type = Helper
triggerall = (var(25) = 1)
trigger1 = !NumHelper(330)
trigger1 = Alive
name = "Armor"
ID = 330
StateNo = 330
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AuraHelper]
type = Helper
triggerall = (stateno != 300)
triggerall = (var(25) = 1)
trigger1 = !NumHelper(301)
trigger1 = Alive
name = "Aura"
ID = 301
StateNo = 301
KeyCtrl = 0
Ownpal = 1

[State -3, Ow]
type = LifeAdd
trigger1 = var(20) && StateNo != [120,155]
value = -var(20)*0.8

[State -3, Yea]
type = PowerAdd
trigger1 = var(20) && StateNo != [120,155]
value = var(20)*0.5

[State -3, Reset]
type = VarSet
trigger1 = 1
var(20) = 0

[State -3, StopSnd]
type = StopSnd
TriggerAll = var(25) = 1
trigger1 = Power < 1
channel = 10

[State -3, PlaySnd]
type = PlaySnd
TriggerAll = var(25) = 1
trigger1 = Power < 1
value = S12,6
volume = 160
channel = 10

[State -3, EnvColor]
type = EnvColor
TriggerAll = var(25) = 1
trigger1 = Power < 1
value = 255,255,255
time = 1

[State -3, Reset]
type = VarSet
triggerall = var(25) = 1
trigger1 = Power < 1
var(25) = 0

[State -3, PowerAdd]
type = PowerAdd
TriggerAll = var(25) = 1
trigger1 = 1
value = -5

[State -3, Green PalFX]
type = PalFX
TriggerAll = var(25) = 1
trigger1 = 1
time = 1
mul = 210,256,128
color = 64
ignorehitpause = 1

[State -3, AssertSpecial]
type = AssertSpecial
Trigger1 = var(25) = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

;-------------------------------------------------------------------------------
[State -3, Jump Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40 ;Jump Start
value = 12, 1

[State -3, LandingShake]
type = EnvShake
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
time = 4
freq = 120
ampl = -4
phase = 120

[State -3, AfterImage]
type = AfterImage
triggerall = var(25) = 0
trigger1 = Time = 0
time = -1
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 96,96,97
PalAdd      =   5,  5,  5
PalBright = 30,30,31
palpostbright = 3,3,3
palmul = .50,.50,.51

[State -3, AfterImage]
type = AfterImage
triggerall = var(25) = 1
trigger1 = Time = 0
time = -1
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 88,96,80
PalAdd      =   4,  5,  3
PalBright = 25,30,20
palpostbright = 3,3,2
palmul = .48,.50,.45
