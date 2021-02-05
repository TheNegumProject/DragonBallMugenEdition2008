;SSJ2 Majin Vegeta by Bardock
[Command]
name = "sequencia2"
command = D, DF, F, b
time = 30

[Command]
name = "sequencia1"
command = D, DF, F, a
time = 30

[Command]
name = "sequencia"
command = D, DF, F, x
time = 30

[Command]
name = "fire_thunder"
command = B, F, z
time = 30

;Suicide
[Command]
name = "suicide"
command = D, DF, F, D, DF, F, c+z
time = 30

[Command]
name = "Laser Blast"
Command = B, F, x
time = 30

[Command]
name = "ki-rings"
Command = B, F, y
time = 30

[Command]
name = "garlic-gun"
command = D, DB, B, y+z
time = 30

;Resplendor Final
[Command]
name = "resplendor"
command = D, DF, F, y+z
time = 30

[Command]
name = "final-flash"
command = D, DF, F, D, DB, B, z
time = 30

[Command]
name = "bigbang"
command = D, DF, F, y
time = 30

[Command]
name = "renzoku"
command = D, DF, F, z
time = 30

[Command]
name = "renzokutraz"
command = D, DB, B, z
time = 30

[Command]
name = "fire_ball"
command = z
time = 30

[Command]
name = "fly"
command = b+y
time = 30

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

[Command]
name = "chute_b"
command = /F, b
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
name = "ufire"
command = /UF
time = 1

[Command]
name = "dfire"
command = /DF
time = 1

[Command]
name = "bufire"
command = /UB
time = 1

[Command]
name = "bdfire"
command = /DB
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


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
;==========================================================================
;sequencia
[State -1]
type = ChangeState
value = 2160
triggerall = command = "sequencia2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;sequencia
[State -1]
type = ChangeState
value = 2150
triggerall = command = "sequencia1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Attack Sequence(socos)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sequencia"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire THUNDER
[State -1]
type = ChangeState
value = 1800
triggerall = power >= 500
triggerall = command = "fire_thunder"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire THUNDER 1
[State -1]
type = changestate
value = 1801
triggerall = command = "z"
triggerall = power >= 500
triggerall = Time > 30
trigger1 = stateno = 1800

;Fire THUNDER 2
[State -1]
type = changestate
value = 1800
triggerall = command = "z"
triggerall = power >= 500
triggerall = Time > 30
trigger1 = stateno = 1801

;Suicide
[State -1]
type = ChangeState
value = 8000
triggerall = (command = "suicide" && power >= 3000)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 1500)

; Laser Blast
[State -1]
type = ChangeState
value = 2600
triggerall = command = "Laser Blast"
triggerall = power >= 1500 ;Level 1 Super
triggerall = stateno != 2615
triggerall = numprojid(2615) = 0
triggerall = command != "holddown"
triggerall = numproj = 0
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger1 = ctrl = 1
trigger3 = movecontact = 1

; Ki rings
[State -1]
type = ChangeState
value = 2900
triggerall = command = "ki-rings"
triggerall = power >= 500 
triggerall = command != "holddown"
trigger2 = statetype != A
trigger1 = ctrl = 1
trigger3 = movecontact = 1

;Garlic Gun
[State -1]
type = ChangeState
value = 7000
triggerall = command = "garlic-gun"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Resplendor Final
[State -1]
type = ChangeState
value = 4000
triggerall = command = "resplendor"
triggerall = power = 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Final Flash
[State -1]
type = ChangeState
value = 2400
triggerall = power >= 2500
triggerall = command = "final-flash"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Big Bang
[State -1]
type = ChangeState
value = 2500
triggerall = power < 2900
triggerall = command = "bigbang"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Air Big Bang
[State -1]
type = ChangeState
value = 2700
triggerall = command = "bigbang"
triggerall = power > 2900
trigger1 = ctrl = 0
trigger1 = stateno = 1500

;RENZOKU
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 10
triggerall = command = "renzoku"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;-----------------------

;RENZOKU traz
[State -1]
type = ChangeState
value = 4500
triggerall = power >= 10
triggerall = command = "renzokutraz"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500


;Fire Ball
[State -1]
type = ChangeState
value = 700
triggerall = power >= 1
triggerall = command = "fire_ball"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire Ball 1
[State -1]
type = changestate
value = 702
triggerall = command = "fire_ball"
triggerall = power >= 1
triggerall = Time > 9
trigger1 = stateno = 700

;Fire Ball 2
[State -1]
type = changestate
value = 700
triggerall = command = "fire_ball"
triggerall = power >= 1
triggerall = Time > 9
trigger1 = stateno = 702


;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly
[State -1]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Velocidade
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Velocidade Hit
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
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


;Velocidade Traz
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Velocidade Hit
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
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

;Chute forte
[State -1]
type = ChangeState
value = 213
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 213
trigger2 = time >= 20
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 213
trigger8 = movecontact = 1
trigger9 = stateno = 200
trigger9 = movecontact = 1
trigger10 = stateno = 1500

;Stand_x
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 20
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

[State -1]
type = ChangeState
value = 2011
triggerall = command = "x"
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 2013
triggerall = command = "x"
triggerall = stateno = 2011
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

[State -1]
type = ChangeState
value = 2010
triggerall = command = "y"
triggerall = stateno = 201
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 1030
triggerall = command = "y"
triggerall = stateno = 2010
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand Light Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand Light Punch
[State -1]
type = changestate
value = 2101
triggerall = command = "a"
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 211
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500


;Stand Light Punch
[State -1]
type = changestate
value = 2102
triggerall = command = "a"
triggerall = stateno = 2101
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 211
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500


;Stand_b
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = time >= 20
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 212
trigger4 = movecontact =1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 202
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;2° Stand_b
[State -1]
type = changestate
value = 2111
triggerall = command = "b"
triggerall = stateno = 211
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 211
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

[State -1]
type = ChangeState
value = 3100
triggerall = command = "z"
triggerall = power >= 500 
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact =1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact =1

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
trigger1 = stateno = 1500


