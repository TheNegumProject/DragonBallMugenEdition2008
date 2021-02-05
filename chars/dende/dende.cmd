;Dende by Bardock 
;-| Special Motions
|------------------------------------------------------
[Command] ;esfera do Dragão 
name = "esfera"
command = D, DF, F, s

[Command]
name = "magia"
command = F, DF, F, x
time = 20

[Command]
name = "magia1"
command = F, DF, F, y
time = 20

[Command]
name = "magia"
command = B, DB, B, x
time = 20

[Command]
name = "magia1"
command = B, DB, B, y
time = 20

[Command]
name = "Helper_Vegeta"
command = ~D, D, s

[Command]
name = "Helper_Piccolo"
command = F, B, s
time = 20

[Command]
name = "Helper_Gohan"
command = B, F, s
time = 20

[Command]
name = "Torpedo"
command = ~D, DF, F, a

[Command]
name = "Helper_Kuririn"
command = ~D, DB, B, s

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
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

[Command]
name = "provocacao"
command = /s, U

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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
name = "fly"
command = z
time = 1

[Command]
name = "mc"
command = /c
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 30

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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;----------------------------------------------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;----------------------------------------------------------------------
;Provocacao (recupera 400 de vida e recupera 1000 de power)
[State -1]
type = ChangeState
triggerall = command = "provocacao"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 1900
;trigger3 = stateno = 184
;trigger3 = movecontact = 0
value = 188

;---------------------------------------------------------------------------
[State -1, Crouching Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Crouching Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
[State -1, Crouching Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;Magia
[state -1]
type = changestate
value = 30005
triggerall = command = "c"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

; Magia no chão
[state -1]
type = changestate
value = 6870
triggerall = command = "mc"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; fly 
[State -1]
type = ChangeState
value = 1800
triggerall = command = "fly"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; fly when jumping
[State -1]
type = ChangeState
value = 1900
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 50
triggerall = command = "fly"
trigger1 = stateno = 1900
trigger1 = statetype = S
trigger1 = ctrl = 0

; Magia de Raio
[State -1]
type = ChangeState
value = 2700
triggerall = command = "magia"
triggerall = power >= 1000 ;Level 1 Super
triggerall = stateno != 2700 
triggerall = numprojid(2700) = 0
trigger1 = statetype = S
trigger2 = ctrl = 1

; Magia de Raio (forte)
[State -1]
type = ChangeState
value = 12700
triggerall = command = "magia1"
triggerall = power >= 2000 ;Level 3 Super
triggerall = stateno != 12700 
triggerall = numprojid(12700) = 0
trigger1 = statetype = S
trigger2 = ctrl = 1


;Torpedo Attack
[State -1]
type = ChangeState
value = 9450
trigger1 = command = "Torpedo"

; Esfera
[State -1]
type = ChangeState
value = 360
trigger1 = command = "esfera"
trigger1 = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------------
;Helper Kuririn
;-------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 3002
;triggerall = (command= "Helper_Kuririn" && power>=1000) 
;triggerall = P2Name != "Helper_Kuririn"
;triggerall = P4Name != "Helper_Kuririn"
;triggerall = NumHelper(10000) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3002
triggerall = command = "Helper_Kuririn"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA
;trigger2 = movecontact

;-------------------------------------------------------------------
;Helper Gohan Namek
;-------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 13002
;triggerall = (command= "Helper_Gohan" && power>=1000) 
;triggerall = P2Name != "Helper_Gohan"
;triggerall = P4Name != "Helper_Gohan"
;triggerall = NumHelper(110000) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 13002
triggerall = command = "Helper_Gohan"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA
;trigger2 = movecontact

;-------------------------------------------------------------------
;Helper Vegeta Namek
;-------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 23002
;triggerall = (command= "Helper_Vegeta" && power>=1000) 
;triggerall = P2Name != "Helper_Vegeta"
;triggerall = P4Name != "Helper_Vegeta"
;triggerall = NumHelper(210000) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 23002
triggerall = command = "Helper_Vegeta"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA
;trigger2 = movecontact

;-------------------------------------------------------------------
;Helper Piccolo
;-------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 33002
;triggerall = (command= "Helper_Piccolo" && power>=1000) 
;triggerall = P2Name != "Helper_Piccolo"
;triggerall = P4Name != "Helper_Piccolo"
;triggerall = NumHelper(310000) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 33002
triggerall = command = "Helper_Piccolo"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA
;trigger2 = movecontact
