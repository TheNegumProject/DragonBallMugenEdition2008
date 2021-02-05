;Ginew

;-----------Supers------------------
[Command]
name = "Nova Explode"
command = ~D, DF, F, D, DF, F, b
time = 20

;-----------Specials Ki----------------
[Command]
name = "fireball"
command = c ;~D, DF, F, c
time = 20
;-----------Specials----------------
[Command]
name = "Ginew elbow"
command = ~F, D, DF, y
time = 20

[Command]
name = "Dig Attack"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "Mamushka Kicks"
command = ~20$B, F, b
time = 10
;------------Comands----------------
[Command]
name = "Head Press"
command = D, a
time = 10
;------------Secuencias Comunes-------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

[Command]
name = "fly"
command = x+y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
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
name = "fwd_z"
command = /F,z
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
name = "back_c"
command = /B,c
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
name = "down_c"
command = /$D,c
time = 1


;---------Botones--------------------
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


;-----------Holds-----------------------
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

;--------------------------------------------------------------------------------

[Statedef -1]

;===================================================================================
;---------------- Superrs ----------------------------------------------------------
;===================================================================================

;Ginew elbow
[State -1]
type = ChangeState
value = 4000
triggerall = command = "Nova Explode"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================

;Ginew elbow
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Ginew elbow"
trigger1 = statetype = S
trigger1 = ctrl = 1


;Dig Attack
[State -1]
type = ChangeState
value = 2200
triggerall = command = "Dig Attack"
trigger1 = statetype = S
trigger1 = ctrl = 1


;Mamushka Kicks
[State -1]
type = ChangeState
value = 2500
triggerall = command = "Mamushka Kicks"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===================================================================================
;---------------- Specials Ki-------------------------------------------------------
;===================================================================================
;FireBall
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------------------------------------------------------------
;charge
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger2 = stateno = 1500

;-----------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 185
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-----------------------------------------------------------------------------
;Flying Start
[State -1]
type = ChangeState
value = 1510
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A
;-----------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 
trigger1 = command = "fwd_b"
trigger1 = stateno != 100    
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"
trigger2 = stateno != 100    
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"
trigger4 = p2statetype = C
trigger4 = p2movetype != H

[State -1]
type = null
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"

;===================================================================================
;---------------- Comands ----------------------------------------------------------
;===================================================================================

;-----------------------------------------------------------------------------------
;Head Press
[State -1]
type = ChangeState
value = 612
;triggerall = command = "a"
;triggerall = command != "holddown"
triggerall = command = "Head Press" ;&& (command = "holddown")
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------------------------------------------------
;zanzoken
[State -1, zanzoken]
type = ChangeState
value = 10000
triggerall = command = "z"
triggerall = (power > 400)
triggerall = alive = 1
trigger1 = ctrl = 1
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
trigger20 = stateno = 1500

;===================================================================================
;---------------- Normales ------------------------------------------------------------
;===================================================================================
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Stand Strong Punch
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;Stand light Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Stand Strong Kick
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;--------------------------------------------------------------------------------
;crouch light punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = stateno != 400
trigger1 = statetype = C
trigger1 = ctrl = 1


;crouch strong punch
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = stateno != 401
trigger1 = statetype = C
trigger1 = ctrl = 1


;crouch Light Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;crouch Strong Kick
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;-----------------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Strong Punch
[State -1]
type = ChangeState
value = 601
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Light Kick
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Strong Kick
[State -1]
type = ChangeState
value = 611
triggerall = stateno != 611
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------------------------------------------------
;Flying Light Punch
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying  Strong Punch
[State -1]
type = ChangeState
value = 501
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying Light Kick
[State -1]
type = ChangeState
value = 510
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying Strong Kick
[State -1]
type = ChangeState
value = 511
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500




