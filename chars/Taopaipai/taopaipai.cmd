; The CMD file.

;-| Super Motions |--------------------------------------------------------
[Command]
name = "lingua"
command = ~D, DB, B, z
time = 20

[Command]
name = "2corte"
command = ~B, F, z
time = 20

[Command]
name = "molotov"
command = ~D, DB, B, x
time = 20

[Command]
name = "molotov-l"
command = ~D, DB, B, y
time = 20

[Command]
name = "granada"
command = ~D, DF, F, x
time = 20

[Command]
name = "granada-l"
command = ~D, DF, F, y
time = 20

[Command]
name = "dondopa"
command = ~D, DF, F, z
time = 20

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
name = "DU"
command = $D, $U
time = 10

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
;Linguada!!!
[State -1]
type = ChangeState
value = 320
triggerall = command = "lingua"
triggerall = power > 500
trigger1 = statetype = S
trigger1 = ctrl = 1

;2 cortes
[State -1]
type = ChangeState
value = 220
triggerall = command = "2corte"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Molotov
[State -1]
type = ChangeState
value = 720
triggerall = command = "molotov"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Molotov longe
[State -1]
type = ChangeState
value = 740
triggerall = command = "molotov-l"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Granada
[State -1]
type = ChangeState
value = 700
triggerall = command = "granada"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Granada longe
[State -1]
type = ChangeState
value = 730
triggerall = command = "granada-l"
trigger1 = statetype = S
trigger1 = ctrl = 1

;DONDOPA
[State -1]
type = ChangeState
value = 2000
triggerall = command = "dondopa"
triggerall = power > 500
trigger1 = statetype = S
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

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact =1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 211
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact =1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 211
trigger5 = movecontact = 1


;Stand faca
[State -1,]
type = ChangeState
value = 202
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact =1
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 211
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact =1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1

;Standing voadora
[State -1, Standing Strong Kick]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Taunt (Autografo)
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Metralha
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Bazuka
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;Soco
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Metralha
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Bazuka
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1,]
type = ChangeState
value = 610
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger3 = stateno = 640
trigger3 = movecontact = 1


[State -1,]
type = ChangeState
value = 600
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger3 = stateno = 640
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1

;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1


;Super Jump
[State -1]
type = ChangeState
value = 1234
triggerall = command = "DU"
trigger1 = statetype = C
trigger1 = ctrl = 1