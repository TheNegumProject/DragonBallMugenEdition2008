; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;     Mugen Fighters Guild
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
;   name = "some_name"
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
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
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
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

;-| stop the computer doing an annoying thing command |--------------------
;i'll change this if i give him custom ai


;-| Hyper Motions |--------------------------------------------------------
[command]
name = "crusher"
command = D, DB, B, F, z
time = 30


;-| Super Motions |--------------------------------------------------------

[command]
name = "beam"
command = ~D, DB, B, F, x
time = 30

[command]
name = "fuegomortal"
command = ~D, DB, B, F, y
time = 30

[command]
name = "ginyu"
command = ~D, DF, D, DF, a+b
time = 35


;-| Special Motions |------------------------------------------------------
;-----------------

[command]
name = "blast"
command = ~D ,DB, B, a
time = 30

[command]
name = "blast2"
command = ~D ,DB, B, b
time = 30

[command]
name = "blast3"
command = ~D ,DB, B, c
time = 30

;[command]
;name = "Rayo"
;command = ~B, F, x
;time = 15

[command]
name = "Burter1"
command = ~F, B, c
time = 7

[command]
name = "Burter2"
command = ~F, B, a
time = 7

[command]
name = "Burter3"
command = ~F, B, x
time = 7

[command]
name = "Burter6"
command = ~F, B, y
time = 7

[command]
name = "Burter4"
command = ~F, B, b
time = 7

[command]
name = "Burter5"
command = ~F, B, z
time = 7

[command]
name = "combo"
command = ~D ,DB, z
time = 7

[Command]
name = "sonickick"
command = ~D, DB, z
time = 7

[command]
name = "knee"
command = ~D, b
time = 7

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "Arrow Kick2"
command = ~D, DF, F, z
time = 7

[Command]
name = "Arrow Kick1"
command = ~D, DF, F, y
time = 7

[Command]
name = "Arrow Kick"
command = ~D, DF, F, x
time = 7

[Command]
name = "corte3"
command = DF, c
time = 7

[Command]
name = "corte2"
command = DF, b
time = 7

[Command]
name = "corte"
command = DF, a
time = 7

[command]
name = "Taunt"
command = s
time = 5


;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z


;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10


;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 30

[Command]
name = "hold_xa"
command = /x+a
time = 30

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 30

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 30

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "DU"
command = $D, $U
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "FD"     ;Required (do not remove)
command = F, D
time = 14

[Command]
name = "FU"     ;Required (do not remove)
command = F, U
time = 14

[Command]
name = "BD"     ;Required (do not remove)
command = B, D
time = 14

[Command]
name = "BU"     ;Required (do not remove)
command = B, U
time = 14

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ultra headbutt"
command = y+x
time = 1

[Command]
name = "ultra headbutt2"
command = a+b
time = 1

[Command]
name = "zanzoken2"
command = c+z

;-| Dir + Button |---------------------------------------------------------
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
command = /B,b
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

[Command]
name = "fwd_yb"
command = /F, y+b
time = 1

[Command]
name = "back_yb"
command = /B, y+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "upback"
command = /UB
time = 1

[Command]
name = "upfwd"
command = /UF
time = 1

[Command]
name = "downback"
command = /DB
time = 1

[Command]
name = "downfwd"
command = /DF
time = 1

[Command]
name = "fwd"
command = /F
time = 1

[Command]
name = "back"
command = /B
time = 1

[Command]
name = "down"
command = /D
time = 1

[Command]
name = "up"
command = /U
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
name = "charge"
command = /a
time = 1

[Command]
name = "charge1"
command = /b
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
name = "fly"
command = b+y
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "charge" ;nombre del comando que se comunica con el ChangeState del [State -1] decargarki
command = /a ; comando con que se realiza

[Command]
name = "charge 1"
command = /x

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 30

[Command]
name = "hold_xa"
command = /x+a
time = 30

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 30

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 30

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "DU"
command = $D, $U
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

;-| Inteligencia artificial |--------------------------------------------------------------

[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1

[Command]
name = "CPU_2"
command = b, b, b, y, y, z
time = 1

[Command]
name = "CPU_3"
command = D, U, D, U, D, U
time = 1

[Command]
name = "CPU_4"
command = a, a, a, a, a, a
time = 1

[Command]
name = "CPU_5"
command = y, y, y, y, y, y
time = 1

[Command]
name = "CPU_6"
command = x, x, x, x, x, x
time = 1

[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1


[Command]
name = "CPU_8"
command = z, z, z, z , z
time = 1

[Command]
name = "CPU_9"
command = c, c, c, c, c, c
time = 1


[Command]
name = "CPU_10"
command = ~D, B, F, a
time = 1

[Command]
name = "CPU_11"
command = ~D, DB, B, a, D, F, a
time = 1

[Command]
name = "CPU_12"
command = ~D, B, F, b, DF, F a
time = 1

[Command]
name = "CPU_13"
command = ~D, DB, B, y, D, DF, F, y
time = 1

[Command]
name = "CPU_14"
command = ~F, B, a, F, B, DF, x
time = 1


[Command]
name = "CPU_15"
command = ~F, DF, F, y, DB, B, c
time = 1

[Command]
name = "CPU_16"
command = ~D, F, y, D, F, z
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
[State -1]
type = ChangeState
value = 7069
triggerall = command = "Burter3"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
;trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 8888
triggerall = command = "Burter6"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
;trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 7050
triggerall = command = "Burter1"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
;trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 8089
triggerall = command = "Burter5"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
;trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 8065
triggerall = command = "Burter4"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
;trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 7059
triggerall = command = "Burter2"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
;trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 7059)  && (movecontact)
trigger3 = stateno = 1900

[State -1]
type = ChangeState
value = 7059
triggerall = (command = "a")&& (command != "holddown")
triggerall = stateno = 7059
triggerall = movecontact
trigger1= statetype != A
trigger2 = stateno = 1900

;---------------------------------------------------------------------------

;Super Jump
[State -1]
type = ChangeState
value = 707
triggerall = command = "DU"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 8050
triggerall = command = "Taunt"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = helper,stateno = 7000 || helper,stateno = 7021
trigger1= statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

;[State -1]
;type = ChangeState
;value = 1777
;triggerall = command = "jeicetel"
;trigger1 = statetype != C
;trigger1 = ctrl = 1
;trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 700
;triggerall = power > 400
;triggerall = command = "Rayo"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 1900

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 10020
triggerall = command = "corte3"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger3 = stateno = 320

[State -1]
type = ChangeState
value = 10010
triggerall = command = "corte2"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger3 = stateno = 320

[State -1]
type = ChangeState
value = 10000
triggerall = command = "corte"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger3 = stateno = 320

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 8000
triggerall = command = "crusher"
triggerall = var(5) = 0
triggerall = NumHelper(7000) = 1
triggerall = power > 2900
triggerall =   Pos Y < -100
triggerall =   Pos Y > -150
triggerall = helper,stateno = 7000 || helper,stateno = 7021
trigger1= statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;---------------------------------------------------------------------------

;Arrow Kick
[State -1: 		Arrow Kick]
type 			= ChangeState
value 		= 1500
triggerall 		= (Command = "Arrow Kick")
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) = 1)
trigger2		= ((StateType = A) && (Ctrl)) || (Var(3) = 1)
trigger3		= StateNo = 4100
trigger4 = stateno = 1900

;Arrow Kick
[State -1: 		Arrow Kick]
type 			= ChangeState
value 		= 1510
triggerall 		= (Command = "Arrow Kick1")
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) = 1)
trigger2		= ((StateType = A) && (Ctrl)) || (Var(3) = 1)
trigger3		= StateNo = 4100
trigger4 = stateno = 1900

;Arrow Kick
[State -1: 		Arrow Kick]
type 			= ChangeState
value 		= 1520
triggerall 		= (Command = "Arrow Kick2")
trigger1		= ((StateType = S) && (Ctrl)) || (Var(3) = 1)
trigger2		= ((StateType = A) && (Ctrl)) || (Var(3) = 1)
trigger3		= StateNo = 4100
trigger4 = stateno = 1900

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 1050
triggerall = (command = "combo") && (command != "holddown")
trigger1 = (statetype = S && ctrl)

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 1200
triggerall = (command = "sonickick") && (command != "holddown")
trigger1 = (statetype = A && ctrl)
trigger2 = stateno = 1900


;---------------------------------------------------------------------------

[state - 1]
type = changestate
value = 3010
triggerall = command = "fuegomortal"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1
trigger3 = stateno = 1900


;---------------------------------------------------------------------------

; Fireball
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = (command = "QCB_x" || command = "QCB_y")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = stateno = 1900


;---------------------------------------------------------------------------
[state - 1]
type = changestate
value = 3020
triggerall = command = "beam"
triggerall = power >= 1500
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1
trigger3 = stateno = 1900

;---------------------------------------------------------------------------
[state - 1]
type = changestate
value = 3045
triggerall = (command = "ginyu")  && (P2BodyDist X >= 150)
triggerall = power >= 1500
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1
trigger3 = stateno = 1900


;---------------------------------------------------------------------------
[state - 1]
type = changestate
value = 10101
triggerall = command = "blast3"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1
trigger3 = stateno = 1900


;---------------------------------------------------------------------------
[state - 1]
type = changestate
value = 1010
triggerall = command = "blast"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1
trigger3 = stateno = 1900

;---------------------------------------------------------------------------
   [state - 1]
type = changestate
value = 10100
triggerall = command = "blast2"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1
trigger3 = stateno = 1900
;---------------------------------------------------------------------------
;Huracan
;[State -1]
;type = Changestate
;value = 9999
;triggerall = command = "huracan"
;triggerall = power >= 1000
;trigger1 = Statetype = S
;trigger1 = ctrl = 1
;trigger2 = movecontact = 1

;---------------------------------------------------------------------------
[state - 1]
type = changestate
value = 1040
triggerall = command = "knee"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno >= 200
trigger2 = stateno <= 405
trigger2 = movecontact = 1

;---------------------------------------------------------------------------

;zanzoken2
[state -1]
type = changestate
value = 1030
triggerall = command = "zanzoken2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[state -1]
type = changestate
value = 1030
triggerall = command = "zanzoken2"
trigger1 = statetype = A
trigger1 = ctrl = 1

;zanzoken2
[state -1]
type = changestate
value = 1030
triggerall = command = "zanzoken2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno >= 150
trigger2 = Stateno <= 153

[state -1]
type = changestate
value = 1030
triggerall = command = "zanzoken2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 150
trigger2 = Stateno <= 153

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
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


;===========================================================================

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25

;---------------------------------------------------------------------------
;Cargar ki
[State -1]
type = ChangeState
value = 5043 ; valor del statedef de el charge en el cns
triggerall = Power < 3000
trigger1 = command = "charge" && command = "charge 1" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "charge" && command = "charge 1" && stateno = 1900 && command != "holdfwd"
;trigger1 = command = "charge"
;trigger1 = command = "charge 1"
;trigger1 = statetype = S; que se realice en pose de stand
;trigger2 = Stateno = 1900 ; que se realice en pose de stand

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

;---------------------------------------------------------------------------
;stand
; light punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "y";Place name of command here
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 201)  && (movecontact)
trigger3 = (stateno = 9997) && (movecontact)
trigger4 = stateno = 202
trigger4 = animtime = 0
trigger5 = stateno = 203
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 202
trigger8 = movecontact = 1
trigger9 = stateno = 1900

[State -1]
type = ChangeState
value = 201
triggerall = (command = "y")&& (command != "holddown")
triggerall = stateno = 200
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 9997
triggerall = (command = "z")&& (command != "holddown")
triggerall = stateno = 201
triggerall = movecontact
triggerall = Pos Y = 0
trigger1 = (statetype = S)
trigger2 = stateno = 1900

; strong punch
;[State -1]
;type = ChangeState
;value = 201
;triggerall = (command = "x")
;trigger1 = (ctrl) && (statetype = S)
;trigger2 = (stateno = 200)  && (movecontact)
;trigger3 = stateno = 1900

;[State -1]
;type = ChangeState
;value = 200
;triggerall = (command = "x")&& (command != "holddown")
;triggerall = stateno = 201
;triggerall = movecontact
;trigger1 = (statetype = S)
;trigger2 = stateno = 1900

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact =1
trigger5 = stateno = 700
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1900

;Stand_x 2º
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = stateno = 201
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1900

;Stand_x 3º
[State -1]
type = ChangeState
value = 222
triggerall = command = "x"
triggerall = stateno = 200
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1900

;Stand_x 3º
[State -1]
type = ChangeState
value = 700
triggerall = command = "y"
triggerall = stateno = 222
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1900

; fierce punch
[State -1]
type = ChangeState
value = 202
triggerall = (command = "z")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 8089)  && (movecontact)
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1900

[State -1]
type = ChangeState
value = 8888
triggerall = (command = "y")&& (command != "holddown")
triggerall = stateno = 202
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1900



;----------------------------------------------------------------------------
; fierce punch
[State -1]
type = ChangeState
value = 203
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 9992)  && (movecontact)
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = animtime = 0
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 203
trigger8 = movecontact = 1
trigger9 = stateno = 1900

[State -1]
type = ChangeState
value = 9992
triggerall = (command = "c")&& (command != "holddown")
triggerall = stateno = 203
triggerall = movecontact
triggerall = Pos Y = 0
trigger1 = (statetype = S)
trigger2 = stateno = 1900


; strong kgick
[State -1]
type = ChangeState
value = 204
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 1777)  && (movecontact)
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = animtime = 0
trigger5 = stateno = 203
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1900

[State -1]
type = ChangeState
value = 1777
triggerall = (command = "b")&& (command != "holddown")
triggerall = stateno = 204
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1900


; fierce kick
[State -1]
type = ChangeState
value = 205
triggerall = (command = "c")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 244
trigger2 = movecontact = 1
trigger3 = stateno = 700
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = animtime = 0
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 400
trigger9 = movecontact = 1
trigger10 = stateno = 401
trigger10 = movecontact = 1
trigger11 = stateno = 402
trigger11 = movecontact = 1
trigger12 = stateno = 200
trigger12 = movecontact = 1
trigger13 = stateno = 403
trigger13 = movecontact = 1
trigger14 = stateno = 1900

[State -1]
type = ChangeState
value = 200
triggerall = (command = "c")&& (command != "holddown")
triggerall = stateno = 205
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1900

;Stand_x 3º
[State -1]
type = ChangeState
value = 7555
triggerall = command = "c"
triggerall = stateno = 200
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
:crouch
; punch light
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 204
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 200
trigger10 = movecontact = 1
trigger11 = stateno = 403
trigger11 = movecontact = 1

; punch strong
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 204
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 200
trigger10 = movecontact = 1
trigger11 = stateno = 403
trigger11 = movecontact = 1

; punch fierce
[State -1]
type = ChangeState
value = 402
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 204
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 200
trigger10 = movecontact = 1
trigger11 = stateno = 403
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
:crouch
; kick light
[State -1]
type = ChangeState
value = 403
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 204
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 200
trigger10 = movecontact = 1
trigger11 = stateno = 403
trigger11 = movecontact = 1

; kick strong
[State -1]
type = ChangeState
value = 404
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 204
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 200
trigger10 = movecontact = 1
trigger11 = stateno = 403
trigger11 = movecontact = 1

; kick fierce
[State -1]
type = ChangeState
value = 405
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 204
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 200
trigger10 = movecontact = 1
trigger11 = stateno = 403
trigger11 = movecontact = 1
trigger12 = stateno = 404
trigger12 = movecontact = 1

;---------------------------------------------------------------------------
:jump
; punch light
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 602
trigger3 = movecontact = 1
trigger4 = stateno = 603
trigger4 = movecontact = 1
trigger5 = stateno = 604
trigger5 = movecontact = 1
trigger6 = stateno = 605
trigger6 = movecontact = 1
trigger7 = stateno = 1040
trigger7 = hitcount = 4

; punch strong
[State -1]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 602
trigger3 = movecontact = 1
trigger4 = stateno = 603
trigger4 = movecontact = 1
trigger5 = stateno = 604
trigger5 = movecontact = 1
trigger6 = stateno = 605
trigger6 = movecontact = 1
trigger7 = stateno = 1040
trigger7 = hitcount = 4

; punch fierce
[State -1]
type = ChangeState
value = 602
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 603
trigger4 = movecontact = 1
trigger5 = stateno = 604
trigger5 = movecontact = 1
trigger6 = stateno = 605
trigger6 = movecontact = 1
trigger7 = stateno = 1040
trigger7 = hitcount = 4

;---------------------------------------------------------------------------
:jumps
; kick light
[State -1]
type = ChangeState
value = 603
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 602
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger5 = stateno = 604
trigger5 = movecontact = 1
trigger6 = stateno = 605
trigger6 = movecontact = 1
trigger7 = stateno = 1040
trigger7 = hitcount = 4

; kick strong
[State -1]
type = ChangeState
value = 604
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 602
trigger3 = movecontact = 1
trigger4 = stateno = 603
trigger4 = movecontact = 1
trigger5 = stateno = 600
trigger5 = movecontact = 1
trigger6 = stateno = 605
trigger6 = movecontact = 1
trigger7 = stateno = 1040
trigger7 = hitcount = 4

; kick fierce
[State -1]
type = ChangeState
value = 605
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 602
trigger3 = movecontact = 1
trigger4 = stateno = 603
trigger4 = movecontact = 1
trigger5 = stateno = 604
trigger5 = movecontact = 1
trigger6 = stateno = 600
trigger6 = movecontact = 1
trigger7 = stateno = 1040
trigger7 = hitcount = 4

;---------------------------------------------------------------------------


;===========================================================================
;Inteligencia artificial
;===========================================================================

[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
v = 59
value = 1

;===========================================================================
; A.I.Super Ataques de Ki
;===========================================================================
; A.I. "ATAQUE DE LOS COMETAS"
[State -1]
type = ChangeState
triggerall = power >= 3000
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = p2bodydist Y >= 100
trigger1 = Random <= 400
trigger1 = statetype = A
value    = 8000

; A.I."SUPER RAYO"
[State -1]
type = ChangeState
triggerall = power >= 1500
trigger1 = Ctrl
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 400
value    = 3020

; A.I."FUEGO MORTAL"
[State -1]
type = ChangeState
triggerall = power >= 2500
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 400
trigger1 = statetype = S
value    = 3010


; A.I."GINYU HELP"
[State -1]
type = ChangeState
triggerall = power >= 2500
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 100
trigger1 = Random <= 400
trigger1 = statetype = S
value    = 3045


;===========================================================================
; A.I.Ataques de Ki
;===========================================================================

; A.I.RAFAGA DE RAYOS
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 60
trigger1 = p2bodydist Y <= 5
trigger1 = power > 400
trigger1 = Random <= 800
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 1000


; A.I.RAFAGA DE RAYOS
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 60
trigger1 = p2bodydist Y <= 5
trigger1 = Random <= 800
trigger1 = Power > 500
trigger1 = p2statetype != C
value    = 10101

; A.I.RAFAGA DE RAYOS
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 60
trigger1 = p2bodydist Y <= 5
trigger1 = Random <= 800
trigger1 = power > 500
trigger1 = p2statetype != C
value    = 10100

;===========================================================================
; A.I. Especiales Puños/Patadas
;===========================================================================

;A.I. PATADA
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 20
trigger1 = p2bodydist Y >= 50
trigger1 = Random <= 400
trigger1 = statetype = A
trigger1 = p2statetype != C
value    = 1200
;----------------------------------------

; A.I. COMBO
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 20
trigger1 = p2bodydist X <= 40
trigger1 = Random <= 600
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 1050
;---------------------------------------------

; A.I. LIU
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 30
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 1500

; A.I. LIU
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 80
trigger1 = p2bodydist X >= 35
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 1510

; A.I. LIU
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 150
trigger1 = p2bodydist X >= 90
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 1520

; A.I. CORTE
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 30
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 10000

; A.I. CORTE
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 80
trigger1 = p2bodydist X >= 35
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 10010

; A.I. CORTE
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X <= 150
trigger1 = p2bodydist X >= 90
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 10020

; A.I. Burter
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = p2bodydist Y >= 40
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
VALUE = 8065

; A.I. Burter
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 90
trigger1 = p2bodydist Y >= 50
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
VALUE = 8089

; A.I. Burter
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 60
trigger1 = Random <= 700
trigger1 = Power >= 500
trigger1 = statetype = S
trigger1 = p2statetype != C
VALUE = 7069

; A.I. Burter
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 60
trigger1 = Random <= 700
trigger1 = Power >= 500
trigger1 = statetype = S
trigger1 = p2statetype != C
VALUE = 7059

;------------------------------------------
; A.I. Parar de Volar
[State -1]
type = ChangeState
triggerall = var(59) != 0
triggerall = stateno = 1900
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 152
value = 50; PARAR DE VOLAR


[State -1]
type = ChangeState
triggerall = Ctrl
triggerall = var(59) != 0
triggerall = StateType = S
triggerall = P2BodyDist X > 300
triggerall = random < 830
trigger1 = P2StateType = S
trigger2 = P2MoveType = A
value = 5043; CARGA DE KI

[State -1]
type = ChangeState
triggerall = Ctrl
triggerall = var(59) != 0
triggerall = StateType = A
triggerall = P2BodyDist Y >= 50
triggerall = random < 730
trigger1 = P2StateType = S
trigger2 = P2MoveType = A
value = 5043; CARGA DE KI
