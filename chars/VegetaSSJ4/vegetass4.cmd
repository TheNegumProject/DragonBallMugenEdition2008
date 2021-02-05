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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;-| Special Motions |------------------------------------------------------

[Command]
name = "Force Field"
command = ~D, B, x

[Command]
name = "Ki Laser"
command = ~D, B, c

[Command]
name = "Super Ki Ball"
command = ~D, B, z

[Command]
name = "Final Flash"
command = ~D, DF, F, D, DF, F, x+z

[Command]
name = "Big Bang"
command = ~D, DF, F, D, DF, F, a+b

;[Command]
;name = "QCF_x"
;command = ~D, DF, F, x

;[Command]
;name = "QCF_y"
;command = ~D, DF, F, y

;[Command]
;name = "QCF_xy"
;command = ~D, DF, F, x+y

;[Command]
;name = "QCB_y"
;command = ~D, DB, B, y

;[Command]
;name = "QCB_xy"
;command = ~D, DB, B, x+y

;[Command]
;name = "FF_ab"
;command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU";Required (do not remove)
command = U, U
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "fly"
command = a+z
time = 1

[Command]
name = "throw"
command = a+b
time = 5


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
name = "down_x"
command = /$D,x
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
time = 10

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 10

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 5

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 5

[Command]
name = "hold_s"
command = /s
time = 1

;-| Other |--------------------------------------------------------------
[Command]
name = "Long Jump"
command = ~$D,U
time = 8

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 1

[Command]
name = "hold_xa"
command = /x+a
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

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
time = 10

[Command]
name = "hold_z"
command = /z
time = 10

[Command]
name = "hold_s"
command = /s
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

;---------------------------------------------------------------------------
;Fly
[State -1]
type = ChangeState
value = 1510
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = command = "fly"

; Fly After Jumping
[State -1]
type = ChangeState
value = 1500
triggerall = Var(2) != 1
trigger1 = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 1500

;Land
[State -1]
type = ChangeState
value = 15100
triggerall = Var(2) != 1
trigger1 = command = "fly"
trigger1 = stateno = 1500

;---------------------------------------------------------------------------
;Fly
[State -1]
type = ChangeState
value = 9000
triggerall = statetype != A
triggerall = command = "fly"
triggerall = ctrl = 1
trigger1 = var(1) != 1
trigger2 = random < 100 && var(1) = 1

;Land
[State -1]
type = ChangeState
value = 9002
triggerall = Var(2) != 1
trigger1 = command = "fly"
trigger1 = stateno = 9003

;---------------------------------------------------------------------------
; Fall from Flight
[State -1, Fall]
type = ChangeState
value = 9105
trigger1 = statetype = A && ctrl = 1 && stateno = 9100 && stateno != 0
triggerall = command = "fly"
;---------------------------------------------------------------------------

;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 7000
triggerall = command = "Final Flash"
trigger1 = statetype = S && Ctrl && power >= 3000

;Big Bang
[State -1, Big Bang]
type = ChangeState
value = 7003
triggerall = command = "Big Bang"
trigger1 = statetype = S && Ctrl && power >= 2000

;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 1700
trigger1 = command = "hold_x" && command = "hold_z" && statetype = S && ctrl = 1 && command != "holdfwd" && stateno != 150

[State -1, Air Dash Fwd]
type = ChangeState
value = 60
triggerall = var(59) = 0  && var(4) < 2
trigger1 = (command = "FF") && (statetype = A) && (ctrl)


;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 65
triggerall = var(59) = 0 && var(4) < 2
trigger1 = (command = "BB") && (statetype = A) && (ctrl)


; Running Kick
[State -1, Running Kick]
type = ChangeState
value = 1050
triggerall = (command = "a" || command = "b") && command != "holddown" && stateno = 100
trigger1 = statetype = S && ctrl = 1

; Running punch
[State -1, Running Punch]
type = ChangeState
value = 4000
triggerall = (command = "x" || command = "z") && command != "holddown" && stateno = 100 && p2bodydist x >= 7
trigger1 = statetype = S && ctrl = 1

; Running punch Close
[State -1, Running Punch]
type = ChangeState
value = 4001
triggerall = (command = "x" || command = "z") && command != "holddown" && stateno = 100 && p2bodydist x <= 7
trigger1 = statetype = S && ctrl = 1

;Force Field
[State -1, Force Field]
type = ChangeState
value = 4020
triggerall = command = "Force Field"
trigger1 = statetype = S && Ctrl && power >= 230

;Ki Laser
[State -1, Ki Laser]
type = ChangeState
value = 4030
triggerall = command = "Ki Laser"
trigger1 = statetype = S && Ctrl && power >= 230

;Super Ki Ball
[State -1, Super Ki Ball]
type = ChangeState
value = 4040
triggerall = command = "Super Ki Ball"
trigger1 = statetype = S && Ctrl && power >= 230

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Fireball Weak
[State -1, Fireball.W]
type = ChangeState
value = 1000
triggerall = command = "y"
trigger1 = statetype = S && ctrl

; Fireball UP
[State -1, Fireball.W]
type = ChangeState
value = 1003
triggerall = command = "y" && p2bodydist y <=-70 && p2bodydist x <=-10
trigger1 = statetype = S && ctrl


; Fireball Weak
[State -1, Ki Blast Charge]
type = ChangeState
value = 999
triggerall = command = "y"
trigger1 = statetype = S && ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
;[State -1, Triple Kung Fu Palm]
;type = ChangeState
;value = 3000
;triggerall = command = "TripleKFPalm"
;triggerall = power >= 1000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;速いカンフー蹴り（ゲージレベル１／３）
;[State -1, Fast Kung Fu Knee]
;type = ChangeState
;value = 1070
;triggerall = command = "FF_ab"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = command = "FF_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Knee
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = command = "FF_b"
trigger1 = var(1) ;Use combo condition (above)

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
; Toss Up
[State -1, TossUp]
type = ChangeState
value = 850
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H



;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱パンチ
[State -1, Stand Light Kick]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250 && time > 30
Triggerall = p2bodydist x > 3
trigger3 = stateno = 251 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 1000 && movecontact
trigger6 = stateno = 1001 && movecontact
trigger7 = stateno = 1002 && movecontact
;---------------------------------------------------------------------------
;Stand Light Kick Close
;立ち弱パンチ
[State -1, Stand Light Kick Close]
type = ChangeState
value = 251
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 251 && time > 3
Triggerall = p2bodydist x <= 3
trigger3 = stateno = 1000 && movecontact
trigger4 = stateno = 1001 && movecontact
trigger5 = stateno = 1002 && movecontact
;---------------------------------------------------------------------------

;Stand Medium Kick
;立ち強パンチ
[State -1, Stand Medium Kick]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 260 && time = 20
trigger3 = stateno = 250 && movecontact
trigger4 = Stateno = 4000 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 1000 && movecontact
trigger7 = stateno = 1001 && movecontact
trigger8 = stateno = 1002 && movecontact
;---------------------------------------------------------------------------
;Stand Hard Kick
;立ち強パンチ
[State -1, Stand Hard Kick]
type = ChangeState
value = 270
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 270 && time = 23
trigger3 = stateno = 260 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 1000 && movecontact
trigger6 = stateno = 1001 && movecontact
trigger7 = stateno = 1002 && movecontact
;---------------------------------------------------------------------------
 ;Stand normal punch
;立ち強パンチ
[State -1, Stand Normal Punch]
type = ChangeState
value = 280
triggerall = command = "x" || stateno = 280 && movecontact
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 280 && time = 24
trigger3 = stateno = 250 && movecontact
trigger4 = stateno = 260 && movecontact
trigger5 = stateno = 251 && movecontact

;Stand normal punch FLY
;立ち強パンチ
[State -1, Stand Normal Punch FLY]
type = ChangeState
value = 281
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 280 && time = 24
trigger3 = stateno = 250 && movecontact
trigger4 = stateno = 260 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 1500 && command = "x"
trigger7 = stateno = 636 && movecontact|| stateno = 631 && movecontact


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
 ;down punch
 [State -1, Stand Normal Punch]
type = ChangeState
value = 6004
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 650 && movecontact

;---------------------------------------------------------------------------

;Knock Up, Ground
[State -1: 		Knock Up Ground]
type 			= ChangeState
value 		= 6000
triggerall 		= ((Command = "z") || (Command = "z") || (Command = "z")) && (Command != "holddown") && (Var(2) <= 0)
trigger1		= StateType = S && Ctrl
trigger2		= (Var(3) = 1)
trigger3 = stateno = 280 && movecontact
trigger4 = stateno = 4001 && movecontact
ignorehitpause	= 1




;---------------------------------------------------------------------------
;Taunt
;挑発
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
value = 290
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 290 && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 650
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = stateno = 630 && movecontact || stateno = 635 && movecontact
trigger5 = stateno = 640 && movecontact

;Jump Light Punch Down FLY
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 651
triggerall = command = "down_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = stateno = 630 && movecontact || stateno = 635 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 1500 && command = "down_x" || stateno = 281 && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 1055 && movecontact
trigger4 = stateno = 6053 && command = "a"

;Jump Light Kick FLY
[State -1, Jump Light Kick FLY]
type = ChangeState
value = 631
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 1055 && movecontact
trigger4 = stateno = 6053 && command = "a"
trigger5 = stateno = 1500 && command = "a"
trigger6 = stateno = 281 && movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 635
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 1055 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 6053 && command = "b"

;Jump Medium Kick FLY
[State -1, Jump Medium Kick FLY]
type = ChangeState
value = 636
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 1055 && movecontact
trigger4 = stateno = 630 && movecontact || stateno = 631 && movecontact
trigger5 = stateno = 6053 && command = "b"
trigger6 = stateno = 1500 && command = "b"
trigger7 = stateno = 281 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = stateno = 1055 && movecontact
trigger5 = stateno = 635 && movecontact
trigger6 = stateno = 1051 && movecontact
trigger7 = stateno = 6053 && command = "c"

;Jump Strong Kick FLY
;空中強キック
[State -1, Jump Strong Kick FLY]
type = ChangeState
value = 641
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = stateno = 1055 && movecontact
trigger5 = stateno = 635 && movecontact
trigger6 = stateno = 1051 && movecontact
trigger7 = stateno = 6053 && command = "c"
trigger8 = stateno = 1500 && command = "c"
trigger9 = stateno = 636 && movecontact || stateno = 281 && movecontact



