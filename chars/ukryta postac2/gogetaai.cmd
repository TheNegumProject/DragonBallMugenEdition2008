; CMD File

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

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

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

[Command]
name = "utgk"
command = ~D, DF, F, B, y
time = 20

[Command]
name = "f"
command = ~B, F, b
time = 20

[Command]
name = "exp"
command = a+x
time = 20

[Command]
name = "wma"
command = ~D, B, y
time = 20

[Command]
name = "ultk"
command = ~D, DF, F, a
time = 10

[Command]
name = "fsk"
command = ~D, DF, F, b
time = 10

[Command]
name = "bk"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "sp"
command = ~D, DB, B, b
time = 10

[Command]
name = "nk"
command = ~D, DB, B, c
time = 10

[Command]
name = "m"
command = ~D, DF, F, x
time = 10

[Command]
name = "ax"
command= z+c
time = 1

[Command]
name = "kick2"
command = ~D,F, b
time = 10

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
name = "v"
command = ~D, B, z
time = 20

[Command]
name = "vex"
command = x+y
time = 20

[Command]
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

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Statedef -1]

[State -1,]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1,]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State -1,]
type = ChangeState
value = 2050
triggerall = Var(9)!= 1 && stateno != 2102 && stateno != 1000 && stateno != 11000 && Var(30) = 59
triggerall = power >= 3000
triggerall = p2bodydist y = [-10, 10]
trigger1 = P2BodyDist X >= 80 && ctrl = 1 && random <= 800

[State -1,]
type = changestate
value = 2060
triggerall = Var(58) = 1 && ctrl = 1
triggerall = power = 3000
trigger1 = P2BodyDist X >= 0
trigger2 = var(55) = 19

[State -1,]
type = ChangeState
value = 2200
triggerall = Var(9)!= 1 && stateno != 2102 && stateno != 1000 && stateno != 11000 && Var(30) = 59
triggerall = power >= 3000
trigger1 = P2BodyDist X >= 80 && ctrl = 1 && random <= 800

[State -1,]
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

[State -1,]
type = ChangeState
value = 1000
triggerall = Var(9)!= 1 && stateno != 2102 && stateno != 1000 && stateno != 11000 && Var(30) = 59
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 80 && ctrl = 1 && random <= 500

[State -1,]
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

[State -1,]
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

[State -1,]
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

[State -1,]
type = changestate
value = 2435
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 50
trigger1 = movetype != H && random <= 100
trigger2 = movehit = 1 && stateno = 265 && random <= 400
trigger3 = P2BodyDist X <= 50 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 400 && stateno = 2000

[State -1,]
type = changestate
value = 4806
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
trigger1 = p2movetype = A && P2BodyDist X >= 80 && random <= 800
trigger2 = movehit = 1 && stateno = 265 && random <= 400

[State -1,]
type = null;ChangeState
triggerall = Var(30)= 59
triggerall = stateno = 2000
trigger1 = p2statetype = S && p2bodydist Y >=70
value = 50

[State -1,]
type = ChangeState
value = 730
triggerall = Var(30)= 59 && Life != 0 && P2Life != 0 && power < 3000 && stateno != 730 && stateno != 735 && stateno != 740 && stateno != 741 && StateNo != 105
triggerall = p2movetype != A 
triggerall = movetype != A
triggerall = movetype != H
trigger1 = p2stateno = 5150 && random < 999
trigger2 = p2stateno = 1402 && random < 400

[State -1,]
type = ChangeState
triggerall = Var(30)= 59
triggerall = stateno = 735 || stateno = 730
trigger1 = p2movetype != H
value = 0
ctrl = 1

[State -1,]
type = changestate
value = 260
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && ctrl = 1
trigger1 = P2BodyDist X <= 60 && random <= 100
trigger2 = movehit = 1 && stateno = 2435 && random <= 400

[State -1,]
type = ChangeState
value = 1010
triggerall = Var(9)!= 1
triggerall = var(30) = 59 && power >= 1000 && movetype != H && movetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000

[State -1,]
type = changestate
value = 2436
triggerall = Var(30) = 59
triggerall = Var(9)!= 1
triggerall = statetype = S && ctrl
trigger1 = P2BodyDist X < 60 && P2BodyDist Y <= -20 && random <= 700 && p2stateno != 1402
trigger2 = p2stateno = 50
trigger3 = stateno >= 150 && Stateno <= 153

[State -1,]
type = changestate
value = 280
triggerall = Var(9)!= 1 && Var(30) = 59 && ctrl = 1
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 80 && random <= 200
trigger2 = stateno = 4000 && projcontact = 1 && p2movetype = H && random <= 700 && time < 5

[State -1,]
type = changestate
value = 4000
triggerall = Var(9)!= 1 && Var(30) = 59 & statetype = S && ctrl && power >= 50
trigger1 = P2BodyDist X >= 80 && random <= 200
trigger2 = projcontact = 1 && stateno = 4000 && random <= 700

[State -1,]
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

[State -1,]
type = ChangeState
triggerall = Var(9)!= 1
triggerall = Var(30) = 59
triggerall = P2Life > 0
triggerall = MoveType != H
triggerall = MoveType != A
triggerall = random <= 800
triggerall = StateNo != [3000, 4100]
triggerall = Pos Y >= 0
trigger1 = P2Name = "Super Gogeta"
trigger1 = P2StateNo = 1500
trigger2 = P2Name = "Gogeta by Jardel"
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

[State -1,]
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
trigger1 = P2StateType = S
trigger2 = P2StateType = C
trigger3 = P2StateType = A
trigger4 = P2BodyDist X < 0
trigger4 = StateNo != [3000, 4100]
trigger5 = MoveType = I
trigger5 = PrevStateNo != [130, 154]
trigger5 = StateNo != [3000, 4100]
value = 130

[State -1,]
type = changestate
value = 1403
triggerall = NumHelper < 2
triggerall = Var(9)!= 1 && P2life != 0 && Var(30) = 59 && movetype != H && movetype !=A 
triggerall = power >= 3000 && prevstateno !=1403 && stateno != 1403 
triggerall = life = [400, 700]
trigger1 = P2BodyDist X <= 60 && random <= 300 
trigger2 = P2BodyDist Y >= 60 && random <= 300 

[State -1,]
type = changestate
value = 1400
triggerall = Var(9)!= 1 && Var(30) = 59 && ctrl = 1 && power >= 2000
triggerall = movetype != H
trigger1 = life <= 500 && random < 300

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

[State -1]
type = ChangeState
value = 4806
triggerall = command = "tair"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value =6436
triggerall = command = "kick2"
triggerall = stateno != 6436
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 1400
triggerall = var(30) != 59
triggerall = command = "exp"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 4435
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 0
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2102
triggerall = var(30) != 59
triggerall = command = "wma"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2200
triggerall = var(30) != 59
triggerall = command = "bk"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2050
triggerall = var(30) != 59
triggerall = command = "ultk"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2060
triggerall = var(30) != 59
triggerall = command = "fsk"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 844145
triggerall = var(30) != 59
triggerall = command = "nk"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 280
triggerall = var(30) != 59
triggerall = command = "m"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

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

[State -1]
type = ChangeState
value = 1010
triggerall = var(30) != 59
triggerall = command = "sp"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

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
trigger1 = ctrl
trigger1 = Stateno <= 4999

[State -1]
type = ChangeState
value = 1000
triggerall = Var(30)!= 59
triggerall = command = "utgk"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 7178
triggerall = Var(30) != 59
triggerall = command = "f"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2018
triggerall = command = "v"
triggerall = power >= 1500
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 1403
triggerall = Var(9)!= 1
triggerall = command = "vex"
triggerall = power >= 3000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2000
triggerall = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1999
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

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

[State -1]
type = ChangeState
value =265
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "5x"
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
trigger8 = stateno = 2000

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

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(30) != 59
triggerall = Var(9)!= 1
triggerall = command = "y"
triggerall = statetype = S
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

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movehit

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movehit

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movehit

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movehit

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movehit

[State -1]
type = ChangeState
value = 730
triggerall = var(30) != 59
triggerall = Power < 3000
triggerall = command = "charge"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000

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
trigger3 = stateno = 2000

