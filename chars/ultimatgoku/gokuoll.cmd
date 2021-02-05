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

;-| Super Motions |--------------------------------------------------------

;normal

;Genki Dama
[Command]
name = "Genki Dama"
command = ~D, F, z
time = 30

[Command]
name = "nkame"
command = ~D, F, b
time = 30

[Command]
name = "triple"
command = ~D, B, x

[Command]
name = "zanzouken"
command = a+x

; Turn SSj2
[Command]
name = "ssj2"
command = ~D, F, a
time = 30

; Turn gogeta
[Command]
name = "gogeta1"
command = ~B, F, a
time = 30

;----------------------------------------------------------------------------------
;ssj

; Turn ssj3
[Command]
name = "ssj3"
command = ~D, F, a
time = 30

[Command]
name = "zanzouken"
command = a+x

;SSj2 Combo
[Command]
name = "ssj2Combo"
command = ~D, F, x
time = 30

; HCOMBO
[Command]
name = "hcombo"
command = ~D, F, y
time = 30

;SSj2 mCombo
[Command]
name = "ssj2mCombo"
command = ~D, F, c
time = 30

;----------------------------------------------------------------------------------
;ssj3

[Command]
name = "ssj4"
command = ~D, F, a
time = 30

[Command]                       
name = "Teleport ssj3" 
command = a+x                   
time = 1

;SSJ3 super
[Command]
name = "SSJ3 super"
command = ~D, F, x

[Command]
name = "ssj3 ChokameHameHa"
command = ~D, F, b
time = 30


;---------------------------------------------------------------------------
;ssj4

; Turn gogeta
[Command]
name = "gogeta"
command = ~D, F, a
time = 30

[Command]
name = "air chokamehameha x10"
command = ~D, F, c
time = 30

[Command]
name = "super kameHameHa"
command = ~D, F, c
time = 30

[Command]                       
name = "Teleport ssj4" 
command = a+x                   
time = 1

;----------------------------------------------------------------------------
;gogeta

[Command]                       
name = "Teleport gogeta" 
command = a+x                   
time = 1

[Command]
name = "bigbangAttack"
command = ~D, F, x
time = 30

[Command]
name = "Final KameHameHa"
command = ~D, F, y
time = 30

[Command]
name = "SuperBigBangkameHameHa"
command = ~D, F, c
time = 30

[Command]
name = "BigBangkameHameHa"
command = ~D, F, z
time = 30

[Command]
name = "g M.T.O."
command = ~D, F, b
time = 30

[Command]
name = "f-att"
command = ~D, F, a
time = 30







;-|common motions|------------------------------------------------------
;-----------------

[Command]
name = "Bukuu Jutsu"
command = x+y

[Command]
name = "fireball"
command = ~B, F, y



[Command]
name = "dash"
command = /F, b

[Command]
name = "air attack"
command = ~D, z

[Command]
name = "combo"
command = ~D, F, y

[Command]
name = "trepalle"
command =  ~D, B, y


; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

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



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

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

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "ssjholdfwd";Required (do not remove)
command = /$F

[Command]
name = "SSj2holdfwd";Required (do not remove)
command = /$F

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
name = "UU"
command = U, U
time = 15

[Command]
name = "DD"
command = D, D
time = 15

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   triggerall = command = "command_name"
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
;Triple Fireball
[State -1]
type = changestate
value = 780
triggerall = command = "triple"
triggerall = var(1) = 0 || var(1) = 1
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;trepalle
[State -1]
type = changestate
value = 770
triggerall = command = "trepalle"
trigger1 = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;nkame
[State -1]
type = ChangeState
value = 2060
triggerall = command = "nkame"
triggerall = power >= 2000 ;Level 3 Super
triggerall = stateno != 2060 
triggerall = var(1) = 0 || var(1) = 4
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;Charge Power
[State -1]
type = ChangeState
value = 730
triggerall = anim != 1511
triggerall = anim != 5511
triggerall = anim != 13511
triggerall = anim != 4511
triggerall = anim != 2511
triggerall = command = "holda"
triggerall = command = "holdb"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = power < 9000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;SSJ Combo Sequence
[State -1]
type = changestate
value = 4050
triggerall = var(1) = 1
triggerall = command = "combo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Combo Sequence
[State -1]
type = changestate
value = 1050
triggerall = var(1) = 0
triggerall = command = "combo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Air Attack
[State -1]
type = changestate
value = 1040
triggerall = command = "air attack"
triggerall = var(1) = 0 || var(1) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Elbow Dash
[State -1]
type = changestate
value = 1030
triggerall = command = "dash"
triggerall = var(1) = 0 || var(1) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Zanzouken
[State -1]
type = changestate
value = 1020
triggerall = command = "zanzouken"
triggerall = var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Zanzouken
[State -1]
type = changestate
value = 1020
triggerall = command = "zanzouken"
triggerall = var(1) = 4
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;fireball
[State -1]
type = changestate
value = 1000
triggerall = command = "fireball"
triggerall = var(1) = 0
trigger1 = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;fireball
[State -1]
type = changestate
value = 1000
triggerall = command = "fireball"
triggerall = var(1) = 1
trigger1 = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;Turn SSJ4
[State -1]
type = changestate
value = 2999
triggerall = command = "ssj4"
trigger1 = Var(1) = 3
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = power >= 3601

;---------------------------------------------------------------------------
;Bukuu Jutsu (On Ground)
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Bukuu Jutsu (In the Air)
[State -1]
type = ChangeState
value = 1510
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;air chokamehameha x10
[State -1]
type = ChangeState
value = 10900
triggerall = var(1) = 1
triggerall = Power >= 4800
trigger1 = command = "air chokamehameha x10"
trigger1 = stateno = 1510

;---------------------------------------------------------------------------
[State -1,7]
type = ChangeState
value = 31800
triggerall = command = "super kameHameHa"
triggerall = power >= 4800
triggerall = stateno != 31800
triggerall = numprojid(1900) = 0
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 3001

;---------------------------------------------------------------------------
;Turn gogeta
[State -1]
type = changestate
value = 39999
triggerall = command = "gogeta"
trigger1 = Var(1) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 4601

;---------------------------------------------------------------------------
;Turn gogeta
[State -1]
type = changestate
value = 39988
triggerall = command = "gogeta1"
trigger1 = Var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; g M.T.O.
[State -1]
type = ChangeState
value = 5214
triggerall = command = "g M.T.O."
triggerall = var(1) = 2 
triggerall = stateno != 3001 
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = statetype != A
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;Teleport gogeta
[State -1]
type = ChangeState
value = 27001
triggerall = command = "Teleport gogeta"
triggerall = stateno != 27001 
triggerall = var(1) = 2
trigger1 = statetype != A
triggerall = stateno != [13000,13004]
triggerall = stateno != 7300
triggerall = stateno != 7777
triggerall = stateno != [5214,5221]
triggerall = stateno != [1617,1639]
triggerall = stateno != [26000,26001]
triggerall = stateno != [5420,5430]
triggerall = stateno != [6969,6970]
triggerall = stateno != 5320
triggerall = stateno != 1529
triggerall = stateno != 1719
triggerall = stateno != 1519

;---------------------------------------------------------------------------
;Teleport ssj4
[State -1]
type = ChangeState
value = 27101
triggerall = command = "Teleport ssj4"
triggerall = stateno != 27101 
trigger1 = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Teleport ssj3
[State -1]
type = ChangeState
value = 27201
triggerall = command = "Teleport ssj3"
triggerall = stateno != 27201 
trigger1 = var(1) = 3
trigger1 = statetype != A
trigger1 = ctrl = 1



;---------------------------------------------------------------------------
; Big Bang Kamehameha
[State -1]
type = ChangeState
value = 824
triggerall = command = "SuperBigBangkameHameHa"
;triggerall = power >= 7000 ;Level 7 Super
triggerall = stateno != 2000 
triggerall = numprojid(2001) = 0
triggerall = var(1) = 2
triggerall = p2BodyDist X >= 0 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;gogeta final special super mega iper strafico megagalattico mmmmm.....
[State -1]
type = ChangeState
value = 14000
triggerall = command = "f-att"
triggerall = var(1) = 2
triggerall = p2BodyDist X >= 150 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510



;---------------------------------------------------------------------------
; Big Bang Kamehameha
[State -1]
type = ChangeState
value = 13000
triggerall = command = "BigBangkameHameHa"
triggerall = power >= 7000 ;Level 7 Super
triggerall = stateno != 2000 
triggerall = numprojid(2001) = 0
triggerall = var(1) = 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
; Final KameHameHa
[State -1]
type = ChangeState
value = 7777
triggerall = command = "Final KameHameHa"
triggerall = power >= 6000 ;Level 458 Super
triggerall = stateno != 2000 
triggerall = numprojid(7778) = 0
triggerall = var(1) = 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;Super Big Bang Attack
[State -1]
type = ChangeState
value = 7300
triggerall = command = "bigbangAttack"
triggerall = numproj = 0
triggerall = var(1) = 2
triggerall = power >= 3000 ;Level 3 Super
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 1510

;---------------------------------------------------------------------------
;turn ssj3
[State -1]
type = changestate
trigger1 = var(1) = 4
value = 49999
triggerall = command = "ssj3"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 2601

;---------------------------------------------------------------------------
; ssj3 super
[State -1]
type = ChangeState
value = 6542
triggerall = command = "SSJ3 super"
triggerall = var(1) = 3 
triggerall = stateno != 3001 
triggerall = numprojid(6543) = 0
trigger1 = statetype != A
trigger2 = statetype != A

;---------------------------------------------------------------------------
;ssj3 ChokameHameHa
[State -1]
type = ChangeState
value = 4444
triggerall = command = "ssj3 ChokameHameHa"
triggerall = power >= 6000 ;Level 458 Super
triggerall = stateno != 2000 
triggerall = numprojid(7778) = 0
triggerall = var(1) = 3
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Turn ssj2
[State -1]
type = changestate
trigger1 = var(1) = 0
value = 3656
triggerall = command = "ssj2"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 1601

;---------------------------------------------------------------------------
;SSJ2Combo 
[State -1]
type = ChangeState
value = 4344
triggerall = command = "ssj2Combo"
triggerall = var(1) = 4 
triggerall = stateno != 3001 
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;SSJ2mCombo 
[State -1]
type = ChangeState
value = 14100
triggerall = command = "ssj2mCombo"
triggerall = var(1) = 4 
triggerall = stateno != 3001 
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510


;---------------------------------------------------------------------------
;Genki Dama
[State -1]
type = ChangeState
value = 80
triggerall = command = "Genki Dama"
triggerall = var(1) = 0
triggerall = stateno != 3001 
triggerall = numprojid(6543) = 0
triggerall = life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = ctrl = 1
;trigger3 = stateno = 1510

;---------------------------------------------------------------------------
;Hyper Combo
[State -1]
type = ChangeState
value = 4010
triggerall = command = "hcombo"
triggerall = power >= 8000
triggerall = var(1) = 4 
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 1510

;===========================================================================
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
;trigger2 = stateno = 200
;trigger2 = time >= 7
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 201
triggerall = command = "b";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 1510
;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 202
triggerall = command = "c";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 1510
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to "chain" the attack
 ;from a Stand_A (state 200)
trigger2 = stateno = 200
trigger2 = movecontact = 1  ;If move hits, or is guarded by opponent
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact = 1
trigger5 = stateno = 1510
;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 600
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 600
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

