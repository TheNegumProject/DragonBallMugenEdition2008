; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| Super Motions |--------------------------------------------------------
;
; 3 Small Kamehamehas
[Command]
name = "finalb"
command = ~B, F, y
time = 20

; Fusion
[Command]
name = "fusion"
command = ~B, F, b
time = 20

; Desperate Explosion (Ultra Solar Flare)
[Command]
name = "exp"
command = a+x
time = 20

; Super Warp Meteor Attack
[Command]
name = "wmattack"
command = ~D, B, y
time = 20

; Super Warp Meteor Attack
[Command]
name = "wmattackk"
command = ~D, DF, F, c
time = 20

; Super Warp Meteor Attack
[Command]
name = "bbttackk"
command = ~D, DF, F, y
time = 20


; Final Mega Kamehameha
[Command]
name = "finalk"
command = ~D, DF, F, a
time = 10

; Final Mega Kamehameha
[Command]
name = "minibbk"
command = ~D, DF, F, b
time = 10




; Final Mega Kamehameha
[Command]
name = "mminibbk"
command = ~D, DB, B, b
time = 10



; Final Mega Kamehameha
[Command]
name = "nkame"
command = ~D, DB, B, c
time = 10

; tkame
[Command]
name = "tkame"
command = ~D, DB, B, a
time = 10


; Counter
[Command]
name = "count"
command = /$B,a
time = 10

; Mouth Beam
[Command]
name = "mouth"
command = ~D, DF, F, x
time = 10

[Command]
name = "ax"    ;required
command= z+c
time = 1

;-| Special Motions |------------------------------------------------------

[Command]
name = "bigbang_kamehameha"
command = D, DF, F, b
time = 30

;Wing Kicks
[Command]
name = "kick2"
command = ~D,F, b
time = 10

;Slow Energy Ball
[Command]
name = "sball"
command = ~D,U
time = 10

[Command]
name = "tair"
command = b+y
time = 10

[Command]
name = "spinball"
command = ~D, B, x

[Command]
name = "spinball2"
command = ~D, B, c

[Command]
name = "MultiKick"
command = ~D, B, a

[Command]
name = "vegeta"
command = ~D, B, z
time = 20

[Command]
name = "vegetaex"
command = x+y
time = 20

[Command] ;Tap a rapidly combo attack
name = "5x"
command = a,a,a
time = 40

[Command]
name = "ab"
command= a+b
time = 1

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "charge"
command = /z
time = 1

[Command]
name = "s"
command = s
time = 1


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;---------------------------------------------------------------------------
[State -1, Big Bang kame]
type = ChangeState
value = 2050
triggerall = Var(9)!= 1 && stateno != 2102 && stateno != 1000 && stateno != 11000 && Var(30) = 59
triggerall = power >= 3000
triggerall = p2bodydist y = [-10, 10]
trigger1 = P2BodyDist X >= 80 && ctrl = 1 && random <= 800

[State -1,warp]
type = ChangeState
value = 3005
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 3005 && stateno != 3007 && prevstateno != 3005 && prevstateno != 3007 && time < 10
triggerall = Var(9)!= 1
trigger1 = p2bodydist x > 70 && p2movetype = A && random < 999
trigger2 = life <=600 && power >= 2500 && p2bodydist x > 70 && random <= 900
trigger3 = P2BodyDist X = [100,200]
trigger3 = p2movetype = A && random <= 790
trigger4 = P2BodyDist X > 200
trigger4 = p2movetype = A && random < 999


[State -1, 3 Kamehamehas]
type = ChangeState
value = 1000
triggerall = Var(9)!= 1 && stateno != 2102 && stateno != 1000 && stateno != 11000 && Var(30) = 59
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 80 && ctrl = 1 && random <= 500

[State -1, Fusion meteor]
type = changestate
value = 7178
triggerall = Var(9)!= 1 && Var(30) = 59 && ctrl = 1 && power >= 1500
triggerall = movetype != H
trigger1 = P2BodyDist X <= 60 && random <= 200
trigger2 = P2BodyDist Y >= 60 && random <= 200
trigger3 = P2BodyDist Y <= -1 && random <= 200
trigger4 = movehit = 1 && stateno = 2435 && random <= 400
trigger5 = projcontact = 1 && stateno = 280 && random <= 400
trigger6 = projcontact && stateno = 1000 && random <= 700
trigger7 = movehit = 1 && stateno = 200 && random < 999
trigger8 = movehit = 1 && stateno = 230 && random < 999
trigger9 = prevstateno = 810 && random < 999

[State -1, meteor]
type = changestate
value = 2102
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
triggerall = movetype != H
triggerall = power >= 2000
trigger1 = P2BodyDist X <= 60 && random <= 200
trigger2 = P2BodyDist Y >= 60 && random <= 200
trigger3 = P2BodyDist Y <= -1 && random <= 200
trigger4 = projhit && stateno = 4000 && random < 999
trigger5 = projhit && stateno = 1010 && random < 999

[State -1, meteor]
type = changestate
value = 21022
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
triggerall = movetype != H
triggerall = power >= 2000
trigger1 = P2BodyDist X <= 60 && random <= 200
trigger2 = P2BodyDist Y >= 60 && random <= 200
trigger3 = P2BodyDist Y <= -1 && random <= 200
trigger4 = projhit && stateno = 4000 && random < 999
trigger5 = projhit && stateno = 1010 && random < 999

[State -1, meteor]
type = changestate
value = 210222
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
triggerall = movetype != H
triggerall = power >= 2000
trigger1 = P2BodyDist X <= 60 && random <= 200
trigger2 = P2BodyDist Y >= 60 && random <= 200
trigger3 = P2BodyDist Y <= -1 && random <= 200
trigger4 = projhit && stateno = 4000 && random < 999
trigger5 = projhit && stateno = 1010 && random < 999

[State -1, combo]
type = changestate
value = 265
triggerall = Var(9)!= 1 && Var(30) = 59
triggerall = movetype != H && movetype != A
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 40 && random <= 100
trigger2 = stateno = 230
trigger3 = P2BodyDist X <= 40 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 400 && stateno = 2000
trigger4 = movecontact && stateno = 200 && random <= 400
trigger5 = movecontact && stateno = 210 && random <= 400
trigger6 = movecontact && stateno = 230 && random <= 400
trigger7 = movecontact && stateno = 250 && random <= 400

[State -1, spinball]
type = changestate
value = 2435
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 50
trigger1 = movetype != H && random <= 100
trigger2 = movehit = 1 && stateno = 265 && random <= 400
trigger3 = P2BodyDist X <= 50 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 400 && stateno = 2000

[State -1, teledrill]
type = changestate
value = 4806
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
trigger1 = p2movetype = A && P2BodyDist X >= 80 && random <= 800
trigger2 = movehit = 1 && stateno = 265 && random <= 400

[State -1,stop flying]
type = null;ChangeState
triggerall = Var(30)= 59
triggerall = stateno = 2000
trigger1 = p2statetype = S && p2bodydist Y >=70
;trigger1 = p2bodydist Y > 40 && p2bodydist Y >=50
value = 50

[State -1,charge]
type = ChangeState
value = 730
triggerall = Var(30)= 59 && Life != 0 && P2Life != 0 && power < 3000 && stateno != 730 && stateno != 735 && stateno != 740 && stateno != 741 && StateNo != 105
triggerall = p2movetype != A 
triggerall = movetype != A
triggerall = movetype != H
trigger1 = p2stateno = 5150 && random < 999
trigger2 = p2stateno = 1402 && random < 400

[State -1,AI.Sair.do.Charge]
type = ChangeState
triggerall = Var(30)= 59
triggerall = stateno = 735 || stateno = 730
trigger1 = p2movetype != H
value = 0
ctrl = 1

[State -1, drill]
type = changestate
value = 260
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
trigger1 = P2BodyDist X <= 60 && random <= 100
trigger2 = movehit = 1 && stateno = 2435 && random <= 400

[State -1, Final Energy Spark]
type = ChangeState
value = 1010
triggerall = Var(9)!= 1
triggerall = var(30) = 59 && power >= 1000 && movetype != H && movetype != A
;trigger1 = p2bodydist x >= 80 && ctrl 
trigger1 = p2bodydist x >= 80 && stateno = 2000

[State -1, Revkame]
type = changestate
value = 2436
triggerall = Var(30) = 59
triggerall = Var(9)!= 1
triggerall = statetype = S && ctrl
trigger1 = P2BodyDist X < 60 && P2BodyDist Y <= -20 && random <= 700 && p2stateno != 1402
trigger2 = p2stateno = 50
trigger3 = stateno >= 150 && Stateno <= 153

[State -1, mouth beam]
type = changestate
value = 280
triggerall = Var(9)!= 1 && Var(30) = 59 && ctrl = 1
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 80 && random <= 200
trigger2 = stateno = 4000 && projcontact = 1 && p2movetype = H && random <= 700 && time < 5

[State -1, Fireball]
type = changestate
value = 4000
triggerall = Var(9)!= 1 && Var(30) = 59 & statetype = S && ctrl && power >= 50
trigger1 = P2BodyDist X >= 80 && random <= 200
trigger2 = projcontact = 1 && stateno = 4000 && random <= 700

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = Var(9)!= 1 && Var(30) = 59 && statetype = S && p2bodydist Y = 0 && ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = stateno = 2000
trigger3 = moveguarded && stateno = 2435

[State -1, Fly]
type = ChangeState
triggerall = Var(9)!= 1
triggerall = Var(30) = 59
triggerall = P2Life > 0
triggerall = MoveType != H
triggerall = MoveType != A
triggerall = random <= 800
triggerall = StateNo != [3000, 4100]
triggerall = Pos Y >= 0
trigger1 = P2Name = "Goku-n-hd by EmuBoarding"
trigger1 = P2StateNo = 1500
trigger2 = P2Name = "Mystic Gohan by Zero_X"
trigger2 = P2StateNo = 2000
trigger3 = P2Name = "Freeza by OverMind"
trigger3 = P2StateNo = 3001
trigger4 = P2Name = "Kurilin by EmuBoarding"
trigger4 = P2StateNo = 1500
trigger5 = P2Name = "Trunks por ssonic"
trigger5 = P2StateNo = 1900
trigger6 = P2Name = "Vegeta Super Sayjin 4 by EB and BS"
trigger6 = P2StateNo = 1500
trigger7 = P2Name = "N-Trunks by EmuBoarding"
trigger7 = P2StateNo = 1500
trigger8 = P2Name = "Mr.Boo by OverMind"
trigger8 = P2StateNo = 3001
trigger9 = P2Name = "Vegeta by OverMind"
trigger9 = P2StateNo = 3001
trigger10 = P2Name = "Broli Remix ver1.2"
trigger10 = P2StateNo = 2000
trigger11 = P2Name = "Mew Two"
trigger11 = P2StateNo = 1051
trigger12 = P2Name = "Raditz"
trigger12 = P2StateNo = 1510
trigger13 = P2Name = "C-Trunks by EmuBoarding"
trigger13 = P2StateNo = 1500
trigger14 = P2Name = "Piccolo por Ssonic"
trigger14 = P2StateNo = 1900
trigger15 = P2Name = "M. Bison"
trigger15 = P2StateNo = 89598
trigger16 = P2Name = "Cell por Ssonic"
trigger16 = P2StateNo = 1900
trigger17 = P2Name = "Recoom by Lucifer"
trigger17 = P2StateNo = 1500
trigger18 = P2Name = "Vegetto EX by Shishi-Ryu"
trigger18 = P2StateNo = 2000
trigger19 = P2Name = "Goku Super Sayajin 2 by ribeiro"
trigger19 = P2StateNo = 2000
trigger20 = P2Name = "Pan Dragonball GT por Ssonic"  
trigger20 = P2StateNo = 1900
trigger21 = P2Name = "The Necromancer"
trigger21 = P2StateNo = 2000
trigger22 = P2StateType = S
trigger22 = P2MoveType != H
trigger22 = P2BodyDist Y < -1
value = 1999

[State -1, FlyGuard]
type = ChangeState
triggerall = Var(9)!= 1
triggerall = Var(30) = 59 && movetype != A && var(1)!= 1 
triggerall = StateType = S
triggerall = P2BodyDist X <= 40
triggerall = P2BodyDist Y <= 70
triggerall = StateNo != 5700
triggerall = StateNo != 2001
triggerall = StateNo != 132
triggerall = PrevStateNo != [3005, 3007]
triggerall = movetype != H
triggerall = StateNo != [154, 155]
triggerall = P2MoveType = A
;triggerall = StateNo = 2000
trigger1 = P2StateType = S
trigger2 = P2StateType = C
trigger3 = P2StateType = A
trigger4 = P2BodyDist X < 0
trigger4 = StateNo != [3000, 4100]
trigger5 = MoveType = I
trigger5 = PrevStateNo != [130, 154]
trigger5 = StateNo != [3000, 4100]
value = 130

[State -1, vegeta ex]
type = changestate
value = 1403
triggerall = NumHelper < 2
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && movetype != H && movetype !=A 
triggerall = power >= 3000 && prevstateno !=1403 && stateno != 1403 
triggerall = life = [400, 700]
trigger1 = P2BodyDist X <= 60 && random <= 300 
trigger2 = P2BodyDist Y >= 60 && random <= 300 

[State -1, explod]
type = changestate
value = 1400
triggerall = Var(9)!= 1 && Var(30) = 59 && ctrl = 1 && power >= 2000
triggerall = movetype != H
trigger1 = life <= 500 && random < 300

;---------------------------------------------------------------------------
;Slow energy ball 
[State -1]
type = ChangeState
value = 1113
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = power >= 50
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000



;Teledrill (teleport attacks)
[State -1]
type = ChangeState
value = 4806
triggerall = command = "tair"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

; Wing Kick
[State -1]
type = ChangeState
value =6436
triggerall = command = "kick2"
triggerall = stateno != 6436
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2000

; Desperate Explosion
[State -1]
type = ChangeState
value = 1400
triggerall = var(30) != 59
triggerall = command = "exp"
triggerall = power >= 2000
triggerall = life <= 600
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
;----------------------------------------------------------------------
;Meteor Attack UB22 (unlock version)
[State -1]
type = ChangeState
value = 4435
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 0
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 2000

;Warp Meteor Attack
[State -1]
type = ChangeState
value = 2102
triggerall = var(30) != 59
triggerall = command = "wmattack"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 2000

;Warp Meteor Attack
[State -1]
type = ChangeState
value = 21022
triggerall = var(30) != 59
triggerall = command = "wmattackk"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 2000



;bbkhh (level 1)
[State -1]
type = ChangeState
value = 2050
triggerall = var(30) != 59
triggerall = command = "finalk"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000



;mbbkhh (level 1)
[State -1]
type = ChangeState
value = 85177
triggerall = var(30) != 59
triggerall = command = "minibbk"
triggerall = power >= 300
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;mmbbkhh (level 1)
[State -1]
type = ChangeState
value = 851777
triggerall = var(30) != 59
triggerall = command = "mminibbk"
triggerall = power >= 300
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000





;Final Kamehameha (level 1)
[State -1]
type = ChangeState
value = 844145
triggerall = var(30) != 59
triggerall = command = "nkame"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;tkame level 1)
[State -1]
type = ChangeState
value = 9217
triggerall = var(30) != 59
triggerall = command = "tkame"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;Mouth Beam (level 1)
[State -1]
type = ChangeState
value = 280
triggerall = var(30) != 59
triggerall = command = "mouth"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;---------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3005
triggerall = Var(9)!= 1
triggerall = power >= 2000
triggerall = command = "ab"
triggerall = alive = 1
trigger1 = ctrl
trigger1 = stateno >= 150        
trigger2 = Stateno <= 153
trigger3 = stateno = 5000       
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;Warp 
[State -1]
type = ChangeState
value = 3005
triggerall = Var(9)!= 1
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 3005
triggerall = command = "ab"
;triggerall = alive = 1
trigger1 = ctrl
trigger1 = Stateno <= 4999

;-----------------------------------------------------------------------------
;bigbang kamehameha
[State -1]
type = ChangeState
value = 2600
triggerall = command = "bigbang_kamehameha"
triggerall = power > 10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;------------------------------------------------------------------------------

;---------------------------------------------------------------------------
;3 Kamehamehas (level 1)
[State -1]
type = ChangeState
value = 1000
triggerall = Var(30)!= 59
triggerall = command = "finalb"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;Fusion Meteor
[State -1]
type = ChangeState
value = 7178
triggerall = Var(30) != 59
triggerall = command = "fusion"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;Vegita
[State -1]
type = null;ChangeState
value = 2018
triggerall = command = "vegeta"
triggerall = power >= 1500
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;Vegita Explosion
[State -1]
type = ChangeState
value = 1403
triggerall = Var(9)!= 1
triggerall = command = "vegetaex"
triggerall = power >= 3000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000
;---------------------------------------------------------------------------

;Fly Up Air Command
[State -1]
type = ChangeState
value = 2000
triggerall = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly up
[State -1]
type = ChangeState
value = 1999
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------

;Combo
[State -1]
type = ChangeState
value = 2435
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "spinball"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 275
;---------------------------------------------------------------------------

; Multi Kick
[State -1]
type = ChangeState
value =260
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "MultiKick"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = ctrl = 1
trigger3 = stateno = 260
trigger3 = ctrl = 1
trigger3 = stateno = 260
trigger4 = ctrl = 1
trigger4 = stateno = 260
trigger5 = ctrl = 1
trigger5 = stateno = 260
trigger6 = ctrl = 1
trigger6 = stateno = 260
trigger8 = ctrl = 1
trigger8 = stateno = 260
trigger9 = stateno = 260
trigger9 = ctrl = 1
trigger10 = stateno = 260
trigger10 = ctrl = 1
trigger11 = stateno = 260
trigger11 = ctrl = 1
trigger12 = stateno = 260
trigger12 = ctrl = 1
trigger13 = stateno = 260
trigger13 = ctrl = 1
trigger14 = stateno = 260
trigger14 = ctrl = 1
trigger15 = stateno = 260
trigger15 = stateno = 260
trigger16 = ctrl = 1
trigger16 = stateno = 260
trigger17 = ctrl = 1
trigger17 = stateno = 260
trigger18 = stateno = 260
trigger18 = MoveContact
;---------------------------------------------------------------------------
; Combo Attack
[State -1]
type = ChangeState
value =265
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "5x";"combo"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 265
trigger2 = ctrl = 1
trigger3 = stateno = 265
trigger3 = ctrl = 1
trigger3 = stateno = 265
trigger4 = ctrl = 1
trigger4 = stateno = 265
trigger5 = ctrl = 1
trigger5 = stateno = 265
trigger6 = ctrl = 1
trigger7 = stateno = 230
;trigger18 = stateno = 230 && time > 2
trigger8 = stateno = 2000

;----------------------------------------------------------------------
; Spinball 2
[State -1]
type = ChangeState
value =2436
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "spinball2"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2436
trigger2 = ctrl = 1
trigger3 = stateno = 2436
trigger3 = ctrl = 1
trigger3 = stateno = 2436
trigger4 = ctrl = 1
trigger4 = stateno = 2436
trigger5 = ctrl = 1
trigger5 = stateno = 2436
trigger6 = ctrl = 1
trigger6 = stateno = 2436
trigger8 = ctrl = 1
trigger8 = stateno = 2436
trigger9 = stateno = 2436
trigger9 = ctrl = 1
trigger10 = stateno = 2436
trigger10 = ctrl = 1
trigger11 = stateno = 2436
trigger11 = ctrl = 1
trigger12 = stateno = 2436
trigger12 = ctrl = 1
trigger13 = stateno = 2436
trigger13 = ctrl = 1
trigger14 = stateno = 2436
trigger14 = ctrl = 1
trigger15 = stateno = 2436
trigger15 = stateno = 2436
trigger16 = ctrl = 1
trigger16 = stateno = 2436
trigger17 = ctrl = 1
trigger17 = stateno = 2436
trigger18 = stateno = 2436
trigger18 = MoveContact
trigger19 = stateno = 230 && movecontact
trigger20 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
;Grapple Punch
[State -1, Grapp Punch]
type = ChangeState
value = 275
triggerall = Var(9)!= 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <=10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 265
;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "y"
triggerall = statetype = S
;triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 2000

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(9)!= 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000 
trigger3 = stateno = 200 || stateno = 230
trigger3 = movehit
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = Var(9)!= 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 200 || stateno = 230
trigger3 = movehit
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(9)!= 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 200 || stateno = 230
trigger3 = movehit
;---------------------------------------------------------------------------
;High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = Var(9)!= 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 200 || stateno = 230
trigger3 = movehit
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = Var(9)!= 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 200 || stateno = 230
trigger3 = movehit
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movehit
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movehit
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movehit
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movehit
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movehit

; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = var(30) != 59
triggerall = Power < 3000
triggerall = command = "charge"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000
;---------------------------------------------------------------------------
;Fireball
[State -1]
type = ChangeState
value = 4000
triggerall = var(30) != 59
triggerall = command = "c"
triggerall = numproj = 0
triggerall = power >= 100 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 4000
;trigger2 = MoveContact
trigger3 = stateno = 2000

[State -1]
type = ChangeState
value = 1650
triggerall = command = "bigbang_kamehameha"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger2 = command = "bigbang_kamehameha"


