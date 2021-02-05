;---------------------------------------------------------------------------
;----------------------| Commands for Super Zangya |------------------------
;---------------------------| By SSj3 Vejita |------------------------------
;---------------------------------------------------------------------------
; Variables list:
; 1..5 - ?
; 6 - Hit sound Limit
; 7 - Winning Controller
; 8 - FLYING CONTROL
; 9 - Blocking Control
;10 - ss
;11 - land
;12 - Shoot blaster control (0=straight,1=up,2=down)
;13 - fireball shooted
;14 - fireball shooted - timer
;15 - fireball shooted - number of fireballs
;16 - Floating counter
;17 - Floating controller
;18...58 - nothing yet
;59 - AI (placed as last var to be carried from 1 match to another.
;     Also, when turned on, it can't be turned off anymore(you have to
;     restart the game)).
; Channels:
;2 - aura
;3 - aura waves

[Command]
name = "counter"
command = /$F,x
time = 20

[Command]
name = "IT"
command = D,DB,B,x
time = 20

[Command]
name = "Super Combo"
command = D,DB,B,y
time = 40

[Command]
name = "K. Energy Dan"
command = D,DB,B,a
time = 40

[Command]
name = "Zanzoken"
command = D,DB,B,b
time = 40

[Command]
name = "Lift Strike"
command = D,DF,F,x
time = 40

[Command]
name = "Sommersault Splash"
command = D,DB,B,F,b
time = 40

[Command]
name = "Slash Liner"
command = D,DF,F,b
time = 40

[Command]
name = "Sliding Uppercut"
command = D,DF,F,a
time = 40

[Command]
name = "Diving Kick"
command = b+c
time = 40

[Command]
name = "Sharp Shooter"
command = B,F,b
time = 40

[Command]
name = "Sky Zapper"
command = D,DF,F,y
time = 40

[Command]
name = "Shoot Blaster"
command = D,DB,B,F,a
time = 40

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "DD"
command = D,D
time = 10

[Command]
name = "UU"
command = U,U
time = 10

[Command]
name = "recovery"
command = a+b
time = 1

[Command];For AI
name = "recovery"
command = a,a,b
command = a,b,x
command = a,b,y
command = a,x,y
command = b,x,y
command = x,y
command = x,a
command = b,y
time = 0

[Command]
name = "laser"
command = ~D,DF,F,c
time = 10

[Command]
name = "Energy Zan"
command = D,DB,B,c
time = 40

[Command]
name = "renzoku"
command= ~D,DB,B,F,c
time = 60

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "fly"
command = z
time = 1

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
name = "super jump"
command = ~D, U

[Command]
name = "charge"
command = /s
time = 1

[Command]
name = "hold_a"
command = /a
time = 30

[Command]
name = "hold_b"
command = /b
time = 30

[Command]
name = "hold_x"
command = /x
time = 30

[Command]
name = "hold_y"
command = /y
time = 30

[Command]
name = "hold_z"
command = /z
time = 30

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1

[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1

[Command]
name = "back_bc"
command = /B, b+c
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
name = "holddownback"
command = /$D+B
time = 1

;-------------------| A.I.|------------------------------------
[command]
name = "ai1"
command = D,D,D,D,D,D,D,D,D
time = 0

[command]
name = "ai2"
command = D,D,U,F,D,F,D,F,D
time = 0

[command]
name = "ai3"
command = D,D,F,D,D,F,D,F,D
time = 0

[command]
name = "ai4"
command = D,D,B,D,D,F,D,F,D
time = 0

[command]
name = "ai5"
command = D,U,D,D,D,F,D,F,D
time = 0

[command]
name = "ai6"
command = D,U,F,D,D,F,D,F,D
time = 0

[command]
name = "ai7"
command = D,U,B,D,D,F,D,F,D
time = 0

[command]
name = "ai8"
command = D,U,U,D,D,F,D,F,D
time = 0

[command]
name = "ai9"
command = D,F,D,D,D,F,D,F,D
time = 0

[command]
name = "ai10"
command = D,F,U,D,D,F,D,F,D
time = 0

[command]
name = "ai11"
command = D,F,F,D,D,F,D,F,D
time = 0

[command]
name = "ai12"
command = D,F,B,D,D,F,D,F,D
time = 0

[command]
name = "ai13"
command = D,B,D,D,D,F,D,F,D
time = 0

[command]
name = "ai14"
command = D,B,U,D,D,F,D,F,D
time = 0
;----------------------------------------------------------------------------------
;----------------------------------- Moves ----------------------------------------
;----------------------------------------------------------------------------------
[Statedef -1]
[State -1]
type = ChangeState
value = 110
triggerall = command = "IT"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = ifelse(statetype = S,100,101)
triggerall = stateno != [1300,1302]
trigger1 = command = "FF"
;trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = ifelse(statetype = S,105,106)
triggerall = stateno != [1300,1302]
trigger1 = command = "BB"
;trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = null;ChangeState
value = 101
triggerall = stateno != [1300,1302]
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = null;ChangeState
value = 106
triggerall = stateno != [1300,1302]
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 109
triggerall = command = "UU"
triggerall = stateno != [1300,1302]
trigger1 = stateno = 98
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 108
triggerall = command = "DD"
triggerall = stateno != [1300,1302]
trigger1 = stateno != 98
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 98
trigger2 = statetype = A
trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 99
triggerall = stateno != [1300,1302]
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1]
type = ChangeState
value = 98
triggerall = var(59) = 0
triggerall = command = "fly"
triggerall = stateno != [1300,1302]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 1770
triggerall = statetype != A 
triggerall = stateno != [1300,1302]
trigger1 = command = "super jump"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1200
triggerall = command = "renzoku"
triggerall = numproj = 0
triggerall = stateno != [1300,1302]
trigger1 = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = var(59) = 0
trigger2 = stateno = 98
trigger3 = var(59) = 1
trigger3 = statetype = S
trigger3 = ctrl = 1
trigger3 = power > 1000
trigger4 = var(59) = 1
trigger4 = stateno = 98
trigger4 = power > 1000

[State -1]
type = ChangeState
value = 63
triggerall = var(59) = 0
triggerall = command != "renzoku"
triggerall = command = "Energy Zan"
triggerall = stateno != [1300,1302]
triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command != "renzoku"
triggerall = command = "laser"
triggerall = numproj = 0
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 550
triggerall = var(59) = 0
triggerall = Var(8) = 0
triggerall = command = "charge"
triggerall = stateno != [1300,1302]
triggerall = stateno != 1770
triggerall = stateno != 50
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = stateno != 98

[State -1]
type = ChangeState
value = 553
triggerall = var(59) = 0
triggerall = Var(8) = 1
triggerall = command = "charge"
triggerall = stateno != [1300,1302]
triggerall = stateno != 1770
triggerall = stateno != 50
triggerall = ctrl = 1
trigger1 = stateno = 98

[State -1]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "Shoot Blaster"
triggerall = power > 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 69
triggerall = command != "Sommersault Splash"
triggerall = command = "Sharp Shooter"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1

;Zanzoken
[State -1]
type = ChangeState
value = 59
triggerall = var(59) = 0
triggerall = command != "Sommersault Splash"
triggerall = command != "Sharp Shooter"
triggerall = command = "Zanzoken"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 98
trigger2 = ctrl = 1
trigger3 = stateno = [150,155]

[State -1]
type = ChangeState
value = 68
triggerall = command != "Sommersault Splash"
triggerall = command != "Shoot Blaster"
triggerall = command = "Slash Liner"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 62
triggerall = command = "Sommersault Splash"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 67
triggerall = command = "Sky Zapper"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 1303
triggerall = command = "K. Energy Dan"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 1305
triggerall = command = "Super Combo"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = SelfState
value = 1308
triggerall = var(59) = 0
triggerall = command = "Diving Kick"
triggerall = stateno != [1300,1302]
trigger1 = statetype = A

[State -1]
type = ChangeState
value = 1310
triggerall = command = "Sliding Uppercut"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 61
triggerall = command = "Lift Strike"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = SelfState
value = 70
triggerall = command = "counter"
triggerall = alive
triggerall = power > 100
triggerall = p2bodydist x < 30
triggerall = p2dist y < 100
triggerall = p2dist y > -100
triggerall = gethitvar(fall)=0
trigger1 = stateno = [150,155]
trigger2 = stateno = 5000
trigger3 = stateno = 5001
trigger4 = stateno = 5010
trigger5 = stateno = 5011
trigger6 = stateno = 5020
trigger7 = stateno = 5030
trigger8 = stateno = 5035
trigger9 = stateno = 5040

[State -1]
type = ChangeState
value = 900
triggerall = stateno != [1300,1302]
triggerall = command = "fwd_b"
triggerall = statetype = S
triggerall = movetype != H
triggerall = ctrl = 1
trigger1 = p2statetype != A
trigger1 = p2bodydist X <= 12
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "Sliding Uppercut"
triggerall = command != "K. Energy Dan"
triggerall = command != "holddown"
triggerall = command != "Shoot Blaster"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = ctrl = 1
trigger2 = stateno = 98
trigger3 = stateno = [120,140]

[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "Sliding Uppercut"
triggerall = command != "K. Energy Dan"
triggerall = command != "holddown"
triggerall = command != "Shoot Blaster"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 210
triggerall = command != "Sharp Shooter"
triggerall = command = "b"
triggerall = command != "Diving Kick"
triggerall = command != "Slash Liner"
triggerall = command != "holddown"
triggerall = command != "fwd_ab"
triggerall = command != "back_ab"
triggerall = command != "fwd_b"   
triggerall = command != "fwd_bc"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = ctrl = 1
trigger2 = stateno = 98
trigger3 = stateno = 200 && movecontact = 1

[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "Diving Kick"
triggerall = command != "laser"
triggerall = command != "Energy Zan"
triggerall = command != "renzoku"
triggerall = numproj = 0
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = ctrl = 1
trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "IT"
triggerall = command != "holddown"
triggerall = command != "Lift Strike"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = ctrl = 1
trigger2 = stateno = 98
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1

[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "Sky Zapper"
triggerall = command != "holddown"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = p2bodydist y > -32
trigger1 = statetype = S
trigger2 = ctrl = 1
trigger2 = stateno = 98
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1

[State -1]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command != "Super Combo"
triggerall = command != "holddown"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = p2bodydist y < -32
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1

[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = C

[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = C
trigger2 = stateno = 300 && movecontact = 1

[State -1]
type = ChangeState
value = 330
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = stateno != [1300,1302]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300 && movecontact = 1

[State -1]
type = ChangeState
value = 340
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = stateno != [1300,1302]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300 && movecontact = 1

[State -1]
type = ChangeState
value = 630
triggerall = var(8) = 0
triggerall = command = "a"
triggerall = stateno != [1300,1302]
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 640
triggerall = var(8) = 0
triggerall = command = "b"
triggerall = stateno != [1300,1302]
trigger1 = statetype = A
trigger1 = stateno != 98
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 430
triggerall = var(8) = 0
triggerall = command = "x"
triggerall = statetype = A
triggerall = stateno != [1300,1302]
trigger1 = stateno != 98
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 440
triggerall = var(8) = 0
triggerall = stateno != [1300,1302]
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 98
trigger1 = ctrl = 1

;-------------------------- This turns the A.I. Controller on ---------------------
[State -1]
type = varset
triggerall = (Var(59) != 1) && (RoundState = 1 || RoundState = 2 || RoundState = 3 || RoundState = 4)
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
v = 59
value = 1

[State -1]
type = NULL;varset
triggerall = (Var(59) != 2) && (RoundState = 1 || RoundState = 2 || RoundState = 3 || RoundState = 4)
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
v = 59
value = 2
;-----------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------
;---------------------------------------- AI ---------------------------------------
;-----------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------
[state Shoot Blaster]
type = selfstate
value = 1300
triggerall = facing = 1
triggerall = (prevstateno != 1302 && alive && p2life > 0 && var(59) = 1 && power >= 1500 && p2dist x > 130 && random >= 995)
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Fireball]
type = selfstate
value = 1000
triggerall = facing = 1
triggerall = (prevstateno != 1000 && alive && p2life > 0 && var(59) = 1 && power >= 200 && p2dist y > -30 && p2dist y < 30 && p2bodydist x > 20 && random >= 990)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Laser]
type = selfstate
value = 1100
triggerall = facing = 1
triggerall = (prevstateno != 1100 && alive && p2life > 0 && var(59) = 1 && power >= 100 && p2dist y > -30 && p2dist y < 10 && p2bodydist x > 20 && random >= 990)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Energy Zan]
type = selfstate
value = 63
triggerall = facing = 1
triggerall = (prevstateno != 63 && alive && p2life > 0 && power > 300 && pos y = 0 && p2dist y > -3 && p2bodydist y < 50 && var(59) = 1 && random >= 990)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state K.E.D.]
type = selfstate
value = 1303
triggerall = facing = 1
triggerall = (prevstateno != 1303 && alive && p2life > 0 && power > 600 && var(59) = 1 && p2dist y > -30 && p2dist y < 30 && p2bodydist x > 80 && random >= 990)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Charge]
type = selfstate
value = 550
triggerall = facing = 1
triggerall = (alive && p2life > 0 && power > 500 && power <= 3000 && var(59) = 1 && random >= 995)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Charge]
type = selfstate
value = 550
triggerall = facing = 1
triggerall = (alive && p2life > 0 && power <= 500 && var(59) = 1 && random >= 980)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Buukujutsu]
type = selfstate
value = 99
triggerall = (alive && p2life > 0 && var(59) = 1 && pos y = 0 && p2dist y < -20 && random >= 580)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Sharp Shooter]
type = selfstate
value = 69
triggerall = facing = 1
triggerall = (prevstateno != 69 && alive && p2life > 0 && var(59) = 1 && p2dist x < 20 && random >= 500)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Sommersault Splash]
type = selfstate
value = 62
triggerall = facing = 1
triggerall = (prevstateno != 62 && alive && p2life > 0 && var(59) = 1 && p2dist x < 120 && random >= 900) || (life > 0 && p2life > 0 && var(59) = 1 && p2bodydist x >= 120 && random >= 999)
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Zanzoken]
type = selfstate
value = 59
triggerall = (prevstateno != 59 && alive && p2life > 0 && var(59) = 1 && p2bodydist x >= 30 && random >= 993)
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 98
trigger2 = ctrl = 1
trigger3 = stateno = [150,155]

[state Zanzoken too far]
type = selfstate
value = 59
triggerall = (prevstateno != 59 && alive && p2life > 0 && var(59) = 1 && p2bodydist x > 160 && random >= 986)
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 98
trigger2 = ctrl = 1
trigger3 = stateno = [150,155]

[state Counter Attack]
type = selfstate
value = 70
triggerall = (prevstateno != 70 && alive && p2life > 0 && var(59) = 1 && random >= 990)
triggerall = stateno != [1300,1302]
triggerall = alive
triggerall = power > 100
triggerall = p2bodydist x < 30
triggerall = p2dist y < 100
triggerall = p2dist y > -100
triggerall = gethitvar(fall)=0
trigger1 = stateno = [150,155]
trigger2 = stateno = 5000
trigger3 = stateno = 5001
trigger4 = stateno = 5010
trigger5 = stateno = 5011
trigger6 = stateno = 5020
trigger7 = stateno = 5030
trigger8 = stateno = 5035
trigger9 = stateno = 5040

[state Slash Liner]
type = selfstate
value = 68
triggerall = facing = 1
triggerall = (prevstateno != 68 && alive && p2life > 0 && var(59) = 1 && p2bodydist x < 40 && random >= 200)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Sky Zapper]
type = selfstate
value = 67
triggerall = facing = 1
triggerall = (prevstateno != 67 && alive && p2life > 0 && var(59) = 1 && p2dist x < 40 && random >= 300)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Lift Strike]
type = selfstate
value = 61
triggerall = facing = 1
triggerall = (alive && p2life > 0 && var(59) = 1 && p2bodydist x < 20 && random >= 300)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Super Combo]
type = selfstate
value = 1305
triggerall = facing = 1
triggerall = (prevstateno != 1307 && alive && p2life > 0 && var(59) = 1 && p2bodydist x < 50 && random >= 850)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Diving Kick]
type = selfstate
value = 1308
triggerall = facing = 1
triggerall = (alive && p2life > 0 && var(59) = 1 && p2dist y < -90 && p2dist y > -90 && p2bodydist x > 50 && p2bodydist x < 60 && random >= 300)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Sliding Uppercut]
type = selfstate
value = 1310
triggerall = facing = 1
triggerall = (prevstateno != 1310 && alive && p2life > 0 && var(59) = 1 && p2bodydist x < 50 && random >= 400)
trigger1 = stateno != [1300,1302]
trigger1 = ctrl = 1

[state Defence]
type = selfstate
value = 120
triggerall = p2bodydist x < 60
triggerall = p2dist y < 100
triggerall = p2dist y > -100
triggerall = facing = 1
triggerall = ctrl = 1
triggerall = stateno != [1300,1302]
trigger1 = (alive && p2life > 0 && var(59) = 1 && p2movetype = A && random > 900)

[state Run]
type = selfstate
value = ifelse(statetype = S,100,101)
triggerall = p2bodydist x > 160
triggerall = facing = 1
triggerall = ctrl = 1
triggerall = stateno != [1300,1302]
trigger1 = (alive && p2life > 0 && var(59) = 1 && random > 300)

[State 0, Turn Over]
type = Turn
triggerall = var(59) = 1
triggerall = ctrl = 1
trigger1 = P2dist X < 0

;-----------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------
;------------------------------- Special settings ----------------------------------
;-----------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------
[State -1]
type = VarSet
trigger1 = pos y >= 0
trigger1 = var(8)>0
v = 8
value = 0

[State -2, Stop Sound]
type = StopSnd
trigger1 = movetype = H
channel = 6

[State -2, Stop Sound]
type = StopSnd
trigger1 = movetype = H
channel = 7

[State -1]
type = PosSet
trigger1 = pos y > 0
y = 0

[State -1]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A

[State -1, Overpowered chars protection]
type = DefenceMulSet
trigger1 = p2name = "Goku NEX"
trigger2 = p2name = "Son Goku By Metal-Mind"
trigger3 = p2name = "Vegeta DBZ 3 by Metal-Mind"
trigger4 = p2name = "Vegeta by OverMind"
trigger5 = p2name = "Majin Vegeta SSJ3 by Super Gotenks"
value = 0.6
ignorehitpause = 1
persistent = 1

[State -1, Overpowered chars protection]
type = AttackMulSet
trigger1 = p2name = "Goku NEX"
trigger2 = p2name = "Son Goku By Metal-Mind"
trigger3 = p2name = "Vegeta DBZ 3 by Metal-Mind"
trigger4 = p2name = "Vegeta by OverMind"
trigger5 = p2name = "Majin Vegeta SSJ3 by Super Gotenks"
value = 2.1
ignorehitpause = 1
persistent = 1

[State -1, Overpowered chars protection 3]
type = DefenceMulSet
trigger1 = p2name = "Final Saiyajin Vejita"
trigger2 = p2name = "[Necromancer's] Broli"
value = 0.7
ignorehitpause = 1
persistent = 1

[State -1, Overpowered chars protection 3]
type = AttackMulSet
trigger1 = p2name = "Final Saiyajin Vejita"
trigger2 = p2name = "[Necromancer's] Broli"
value = 1.7
ignorehitpause = 1
persistent = 1

[State super defence - anti brolly]
type = DefenceMulSet
trigger1 = p2life <= 50
trigger1 = p2name = "Broli Remix ver1.2"
trigger2 = p2life <= 50
trigger2 = p2name = "Broli SSJ4"
trigger3 = p2life <= 50
trigger3 = p2name = "SSJ Three Broli"
value = -0

[State super attack - anti brolly]
type = AttackMulSet
trigger1 = p2life <= 50
trigger1 = p2name = "Broli Remix ver1.2"
trigger2 = p2life <= 50
trigger2 = p2name = "Broli SSJ4"
trigger3 = p2life <= 50
trigger3 = p2name = "SSJ Three Broli"
value = 9999

[State -1, Kill The Lamer!!]
type = DefenceMulSet
trigger1 = p2name = "Zarbom"
trigger2 = p2name = "Zarbon"
trigger3 = p2name = "Zarbom by EmuBoarding"
trigger4 = p2name = "Zarbon2"
value = 0.3
ignorehitpause = 1
persistent = 1

[State -1, Kill The Lamer]
type = AttackMulSet
trigger1 = p2name = "Zarbom"
trigger2 = p2name = "Zarbon"
trigger3 = p2name = "Zarbom by EmuBoarding"
trigger4 = p2name = "Zarbon2"
value = 3
ignorehitpause = 1
persistent = 1

[State -1, Lamers]
type = VarSet
trigger1 = p2name = "Zarbom"
trigger2 = p2name = "Zarbon"
trigger3 = p2name = "Zarbom by EmuBoarding"
trigger4 = p2name = "Zarbon2"
trigger5 = p2name = "Vegeta DBZ 3 by Metal-Mind"
trigger6 = p2name = "Son Goku By Metal-Mind"
v = 7
value = 1
;--------------- Floating code (thx burori) ------------------
[State 0, ]
type = VarAdd
trigger1 = var(17)>1
var(17)=1

[State 0, ]
type = VarAdd
trigger1 = var(17)<-1
var(17)=-1

[State 0, ]
type = VarAdd
trigger1 = var(16)>30
var(16)=30

[State 0, ]
type = VarAdd
trigger1 = var(16)<-30
var(16)=-30

[State 0, ]
type = VarAdd
trigger1 = var(17) = 0
var(16)=1

[State 0, ]
type = VarAdd
trigger1 = var(17) = 1
var(16)=-1

[State 0, ]
type = VarSet
trigger1 = var(16) >= 30
var(17)=1

[State 0, ]
type = VarSet
trigger1 = var(16) <= -30
var(17)=0
;---------------- End of Floating code ---------------------

