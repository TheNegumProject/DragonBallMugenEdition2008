; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;


;-| Special Motions |------------------------------------------------------


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F, B, B, B, B, B, B, B, B, B
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B, F, F, F, F, F, F, F, F, F
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------


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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "Ki"
command = z
time = 20

[Command]
name = "kienzan"
command = /D, a
time = 30

[Command]
name = "tele"
command = F, F
time = 20

[Command]
name = "teletyl"
command = B, B
time = 20

[Command]
name = "kamehameha"
command = /DF, x
time = 30

[Command]
name = "finalflash"
command = /DB, x
time = 30

[Command]
name = "bombon"
command = c
time = 30

[Command]
name = "bigbang"
command = /DB, z
time = 30

[Command]
name = "malafala"
command = /DF, z
time = 30




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


;===========================================================================
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
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = var(5) = 0
triggerall = command = "x"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500


[State -1]
type = changestate
value = 201
triggerall = var(5) = 0
triggerall = command = "x"
triggerall = var(9) = 0
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(5) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
;Stand_x
[State -1]
type = ChangeState
value = 211
triggerall = var(5) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = changestate
value = 214
triggerall = var(5) = 0
triggerall = command = "a"
triggerall = stateno = 211
triggerall = movecontact = 1
trigger1 = statetype = S

[State -1]
type = changestate
value = 215
triggerall = command = "a"
triggerall = var(5) = 0
triggerall = stateno = 214
triggerall = movecontact = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(5) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(5) = 5
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(5) = 0
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
triggerall = var(5) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(5) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(5) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;ladowanie

[State -1, ladowanie]
type = changestate
value = 71830
triggerall = var(5) = 0
triggerall = (command = "holda" && command = "holdb")
triggerall = power <= 6000
triggerall = statetype = s
trigger1 = ctrl = 1

[State -1, ladowanie]
type = changestate
value = 8892
triggerall = var(5) = 2
triggerall = (command = "holda" && command = "holdb")
triggerall = power <= 6000
triggerall = statetype = s
trigger1 = ctrl = 1


;Ki
[State -1, Kishot]
type = ChangeState
value = 900
triggerall = var(5) = 0
triggerall=var(59)=0&&command="Ki"
triggerall = (power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kienzan
[State -1, Kienzan]
type = ChangeState
value = 17832
triggerall = var(5) = 0
triggerall = command = "kienzan"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [17830,17833)
trigger2 = movecontact

[State -1]
type = ChangeState
value = 7004
triggerall = var(5) = 0
triggerall=var(59)=0&&command="tele"
triggerall = (power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 7005
triggerall = var(5) = 0
triggerall=var(59)=0&&command="teletyl"
triggerall = (power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kamehameha
[State -1, Kamehameha]
type = ChangeState
value = 2500
triggerall = var(5) = 0
triggerall = command = "kamehameha"
triggerall = numproj = 0
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 2502
triggerall = var(5) = 0
triggerall = command = "finalflash"
triggerall = numproj = 0
triggerall = power > 1500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
-------------------------------------

;cukerek - przemiana
[State -1]
type = ChangeState
value = 8888
triggerall = var(5) = 0
triggerall = power > 1500
triggerall = command = "bombon"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 8891
triggerall = var(5) = 2
triggerall = power > 1500
triggerall = command = "bombon"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Ki
[State -1, Kishot]
type = ChangeState
value = 8889
triggerall = var(5) = 0
triggerall = command = "bigbang"
triggerall = numproj = 0
triggerall = power > 1500
trigger1 = statetype != A
trigger1 = ctrl = 1

;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 8895
triggerall = var(5) = 0
triggerall = command = "malafala"
triggerall = numproj = 0
triggerall = power > 1500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500


