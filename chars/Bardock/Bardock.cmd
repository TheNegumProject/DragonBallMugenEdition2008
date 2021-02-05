; The CMD file.

;-| Super Motions |--------------------------------------------------------
[Command]
name = "up-joelhada"
command = B, F, b
time = 20

[Command]
name = "chute-girado"
command = B, F, c
time = 20

[Command]
name = "cotovelada3"
command = B, F, z
time = 20

[Command]
name = "cotovelada2"
command = B, F, y
time = 20

[Command]
name = "cotovelada"
command = B, F, x
time = 20

[Command]
name = "velocidade"
command = c+z
time = 1

[Command]
name = "voar"
command = b+y
time = 1

[Command]
name = "super-fireball-fraco"
command = ~D, DF, F, x
time = 20

[Command]
name = "super-fireball-medio"
command = ~D, DF, F, y
time = 20

[Command]
name = "super-fireball"
command = ~D, DF, F, z
time = 20

[Command]
name = "fogo"
command = ~D, DB, B, x
time = 20

[Command]
name = "fogo2"
command = ~D, DB, B, y
time = 20

[Command]
name = "raio"
command = z
time = 30

;-| Special Motions |------------------------------------------------------

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

[Command]
name = "charge"
command = /x

[Command]
name = "charge 1"
command = /a

[Command]
name = "hold_z"
command = /$z
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Jolhada para cima
[State -1]
type = ChangeState
value = 445
triggerall = command = "up-joelhada"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 3001

;Chute Girado
[State -1]
type = ChangeState
value = 440
triggerall = command = "chute-girado"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 3001

;Cotovelada 3 Porra
[State -1]
type = ChangeState
value = 1020
triggerall = command = "cotovelada3"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 320

;Cotovelada 2 Porra
[State -1]
type = ChangeState
value = 1010
triggerall = command = "cotovelada2"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 320

;Cotovelada Porra
[State -1]
type = ChangeState
value = 1000
triggerall = command = "cotovelada"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 320

;Velocidade
[State -1]
type = ChangeState
value = 1600
triggerall = command = "velocidade"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 3001

;velocidade - Counter
[State -1]
type = ChangeState
value = 1600
triggerall = command = "velocidade"
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

;Voa
[State -1]
type = ChangeState
value = 3115
trigger1 = command = "voar"
trigger1 = ctrl = 1
trigger1 = statetype != A

;Voa
[State -1]
type = ChangeState
value = 3001
trigger1 = command = "voar"
trigger1 = ctrl = 1
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Super Fire ball ( fraco)
[State -1]
type = ChangeState
value = 2300
triggerall = command = "super-fireball-fraco"
triggerall = power > 1000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 320

;Super Fire ball ( medio )
[State -1]
type = ChangeState
value = 2400
triggerall = power >= 2000
triggerall = command = "super-fireball-medio"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 320

;Super Fire ball ( forte )
[State -1]
type = ChangeState
value = 2500
triggerall = power >= 3000
triggerall = command = "super-fireball"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 320

;Fogo
[State -1]
type = ChangeState
value = 1200
triggerall = power >= 500
triggerall = command = "fogo"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 310

;Fogo 2
[State -1]
type = ChangeState
value = 1250
triggerall = power >= 1000
triggerall = command = "fogo2"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno = 310

;Fire THUNDER
[State -1]
type = ChangeState
value = 700
triggerall = power >= 250
triggerall = command = "raio"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

;Fire THUNDER 1
[State -1]
type = changestate
value = 702
triggerall = command = "z"
triggerall = power >= 250
triggerall = Time > 25
trigger1 = stateno = 700

;Fire THUNDER 2
[State -1]
type = changestate
value = 700
triggerall = command = "z"
triggerall = power >= 250
triggerall = Time > 25
trigger1 = stateno = 702

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;;ダッシュ
;[State -1, Run Fwd]
;type = ChangeState
;value = 100
;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
;[State -1, Run Back]
;type = ChangeState
;value = 105
;trigger1 = command = "BB"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = stateno = 3001

;Stand_x 2ｺ
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = stateno = 200
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand_x 3ｺ
[State -1]
type = ChangeState
value = 350
triggerall = command = "x"
triggerall = stateno = 201
triggerall = movecontact 
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand_x 4ｺ
[State -1]
type = ChangeState
value = 351
triggerall = command = "x"
triggerall = stateno = 350
triggerall = movecontact 
trigger1 = statetype = S
trigger2 = stateno = 3001


;Stand Medium Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = stateno = 3001

;Stand_y 2ｺ
[State -1]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = stateno = 201
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand_y 3ｺ
[State -1]
type = ChangeState
value = 356
triggerall = command = "y"
triggerall = stateno = 200
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand_y 4ｺ
[State -1]
type = ChangeState
value = 360
triggerall = command = "y"
triggerall = stateno = 356
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand Light Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = stateno = 3001

;Stand_a 2ｺ
[State -1]
type = ChangeState
value = 359
triggerall = command = "a"
triggerall = stateno = 210
triggerall = time > 10
;triggerall = movecontact 
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand Medium Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 3001

;Stand_b 2ｺ
[State -1]
type = ChangeState
value = 358
triggerall = command = "b"
triggerall = stateno = 211
triggerall = movecontact 
trigger1 = statetype = S
trigger2 = stateno = 3001

;Stand Heavy Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = stateno = 3001

;Stand_c 2ｺ
[State -1]
type = ChangeState
value = 354
triggerall = command = "c"
triggerall = stateno = 212
triggerall = movecontact 
trigger1 = statetype = S
trigger2 = stateno = 3001

;---------------------------------------------------------------------------
;Taunt ( rastreador ) 
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 415
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;fire ball
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 446
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 1400
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;Charge
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Air Charge
[State -1]
type = ChangeState
value = 731
trigger1 = ctrl = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = stateno = 3001



