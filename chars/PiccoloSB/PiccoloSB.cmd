; The CMD file for Piccolo SB by supermystery.
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

;  Note that if you modify the button remapping scheme here, this character will
; still be able to correctly detect the basic commands of other characters
; complying with the basic command order specified below, as long as their
; buttons haven't been remapped.  But no character (not even one with the same
; remapping scheme, not even another instance of this character) will be able to
; correctly detect this character's commands.  This shouldn't ever result in any
; false positives, but it could delay correct positives, and could erroneously
; make the helper AI activation method trigger a false negative in team simul
; modes, in which case the XOR-ed commands method would be needed to provide
; backup.  But of course, this isn't an issue in any version of Mugen prior to
; version 2002.04.14.

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
;   (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
;   It may slightly increase the chances of faulty AI activation if the user
; is using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Please don't add any extra definitions for any of these 11 basic command
; names, nor for any of the 7 "hold[button]" command names that follow.
; For example, things like this should be avoided:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; There are several workarounds possible to achieve the same effect.  Please
; feel free to ask me about it if you have any uncertainty.
; Violating this rule would cause the KeyCtrl Helper method and/or the XORed
; Commands method to malfunction, and could also interfere with other future
; applications of this command order standard.
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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
name = "holdstart"
command = /s
time = 1

;--- None of your own command definitions should be above this line. ---

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

;-| Super Motions |--------------------------------------------------------

;[Command]
;name = "scs"
;command = x,x,F,a,z
;time = 50

[Command]
name = "scs"
command = ~D, DF, F, a+b+c
time = 50

[Command]
name = "hypersbc"
command = ~D, DF, F, x+y+z
time = 50
;
[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b


;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

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
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

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
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_c"
command = F, F, c

[Command]
name = "DU"  
command = D, U
time = 10


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
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
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

;-| AI Activation in DOS |----------------------------------------------------
[Command]
name = "cpu01"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,x,x,x,x,x
time = 0

[Command]
name = "cpu02"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,y,y,y,x,x
time = 0

[Command]
name = "cpu03"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,z,z,z,x,x
time = 0

[Command]
name = "cpu04"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,a,a,a,x,x
time = 0

[Command]
name = "cpu05"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,b,b,b,x,x
time = 0

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

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;--------------------------
;Misc
;--------------------------
[State -1, Go]
type = DestroySelf
trigger1 = IsHelper
trigger1 = movereversed = 1

[State -1, Hide]
type = AssertSpecial
trigger1 = IsHelper(44304)
flag = invisible
flag2 = NoShadow
IgnoreHitPause = 1

[State -1, Reset]
type = SelfState
trigger1 = IsHelper(44304)
trigger1 = StateNo != [44304,44305]
value = 44304
IgnoreHitPause = 1

[State -1,AI Alt]
type = VarSet
trigger1=Command="cpu01"|| Command="cpu02"|| Command="cpu03"|| Command="cpu04"|| Command="cpu05"
v = 58
value = 1

;--------------------------

;===========================================================================
; human-only command-based ChangeStates 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, SCS]
type = ChangeState
value = 3300
triggerall = var(0) != 1  
triggerall = power >= 3000
triggerall = command = "scs"
trigger1 = var(1) ;Use combo condition 
trigger2 = statetype = S
trigger2 = ctrl

;---------------------------------------------------------------------------
;Hyper SBC
[State -1, Hyper SBC]
type = ChangeState
value = 3000
triggerall = var(0) != 1  
triggerall = pos y = 0
triggerall = command = "hypersbc"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3000,3999]
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Super Diagonal FB
[State -1, Super Diagonal FB]
type = ChangeState
value = 1350
triggerall = var(0) != 1  
triggerall = command = "QCF_xy"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = movecontact
trigger4 = stateno = [1090,1100]
trigger4 = movecontact
trigger4 = pos y < 0

;---------------------------------------------------------------------------
;ELA
[State -1, ELA]
type = ChangeState
value = 1450
triggerall = var(0) != 1  
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [1450,1451]
trigger2 = movecontact

;----------------------------------------------------------------------------
;NPTH
[State -1, NPTH]
type = ChangeState
value = 2100
triggerall = var(0) != 1  
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3000,3999]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Super FB
[State -1, Super Fireball]
type = ChangeState
value = 1250
triggerall = var(0) != 1  
triggerall = command = "QCB_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3000,3999]
trigger2 = movecontact

;---------------------------------------------------------------------------
;SBC
[State -1, SBC]
type = ChangeState
value = 1210
triggerall = var(0) != 1  
triggerall = pos y = 0
triggerall = command = "QCF_xy"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3000,3999]
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 985
triggerall = var(0) != 1  
triggerall = command = "a"
trigger1 = statetype = A 
trigger1 = stateno = [150,155] ;The guard state numbers

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 980
triggerall = var(0) != 1  
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = stateno = [150,153] ;The guard state numbers

;[State -1, Counter]
;type =null; ChangeState
;value = 3435
;triggerall = var(0) != 1 
;triggerall = stateno != 3435
;triggerall = power >= 1000
;trigger1 = statetype = S || statetype = C
;trigger1 = stateno = [150,153]
;trigger1 = command = "QCB_x"

;Recovery - Roll
[State -1, Recovery - Roll]
type = VarSet
triggerall = var(0) != 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = command = "QCB_x"
v = 12
value = 1

[State -1,Recovery - Roll Deactivate]
type = VarSet
trigger1 = ((var(12) = 1) && (MoveType != H)) || (Lose)
v = 12
value = 0

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

;------------------------------------------------------
[State -1, Warp FWD 1]
type = ChangeState
value = 3005
triggerall = var(0) != 1 
triggerall = command = "QCF_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)

;------------------------------------------------------
[State -1, Warp FWD 2]
type = ChangeState
value = 3015
triggerall = var(0) != 1 
triggerall = command = "QCF_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)

;------------------------------------------------------
[State -1, Warp BWD 1]
type = ChangeState
value = 3016
triggerall = var(0) != 1 
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
;trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Warp BWD 2]
type = ChangeState
value = 3017
triggerall = var(0) != 1 
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
;trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Laser X]
type = ChangeState
value = 1070
triggerall = var(0) != 1 
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Laser Y]
type = ChangeState
value = 1071
triggerall = var(0) != 1 
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Laser Z]
type = ChangeState
value = 1072
triggerall = var(0) != 1 
triggerall = command = "QCB_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Rising Kicks A]
type = ChangeState
value = 1090
triggerall = var(0) != 1 
triggerall = command = "upper_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000
trigger4 = statetype = A
trigger4 = ctrl
trigger5 = stateno = [600,640]
trigger5 = movecontact

;------------------------------------------------------
[State -1, Rising Kicks B]
type = ChangeState
value = 1095
triggerall = var(0) != 1 
triggerall = command = "upper_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000
trigger4 = statetype = A
trigger4 = ctrl
trigger5 = stateno = [600,640]
trigger5 = movecontact

;------------------------------------------------------
[State -1, Rising Kicks C]
type = ChangeState
value = 1100
triggerall = var(0) != 1 
triggerall = command = "upper_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000
trigger4 = statetype = A
trigger4 = ctrl
trigger5 = stateno = [600,640]
trigger5 = movecontact

;------------------------------------------------------
[State -1, Descending Kick A]
type = ChangeState
value = 641
triggerall = var(0) != 1 
triggerall = command = "QCF_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;------------------------------------------------------
[State -1, Descending Kick B]
type = ChangeState
value = 642
triggerall = var(0) != 1 
triggerall = command = "QCF_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;------------------------------------------------------
[State -1, Descending Kick C]
type = ChangeState
value = 643
triggerall = var(0) != 1 
triggerall = command = "QCF_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;------------------------------------------------------
[State -1, Dash Kick A]
type = ChangeState
value = 1080
triggerall = var(0) != 1 
triggerall = command = "FF_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Dash Kick B]
type = ChangeState
value = 1081
triggerall = var(0) != 1 
triggerall = command = "FF_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Dash Kick C]
type = ChangeState
value = 1082
triggerall = var(0) != 1 
triggerall = command = "FF_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Fireball X]
type = ChangeState
value = 1000
triggerall = var(0) != 1 
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Fireball Y]
type = ChangeState
value = 1005
triggerall = var(0) != 1 
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;------------------------------------------------------
[State -1, Fireball Z]
type = ChangeState
value = 1010
triggerall = var(0) != 1 
triggerall = command = "QCF_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = stateno = 2000

;===========================================================================
;Super Jump
[State -1, Super Jump]
type =  ChangeState
value = 70
triggerall = var(0) != 1  
triggerall = command = "DU"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;===========================================================================
;Fly up
[State -1]
type = ChangeState
value = 1999
triggerall = var(0) != 1 
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(0) != 1  
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(0) != 1  
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(0) != 1  
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

; Power Up
[State -1, Charge]
type = ChangeState
value = 730
triggerall = var(0) != 1  
triggerall = Power < 3000
triggerall = command = "holdz"
triggerall = command = "holdc" 
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000 

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(0) != 1  
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Medium Punch
;立ち弱パンチ
[State -1, Stand Medium Punch]
type = ChangeState
value = 205
triggerall = var(0) != 1  
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick
trigger6 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(0) != 1 
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick
trigger6 = (stateno = 205) && movecontact ;Medium Punch
trigger7 = (stateno = 206) && movecontact ;Medium Punch
trigger8 = (stateno = 435) && movecontact ;Crouch Medium Kick
trigger9 = (stateno = 405) && movecontact ;Crouch Medium Punch
trigger10 = (stateno = 235) && movecontact ;Medium Kick
trigger11 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(0) != 1 
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 6
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Medium Kick
;立ち弱キック
[State -1, Stand Medium  Kick]
type = ChangeState
value = 235
triggerall = var(0) != 1 
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick
trigger6 = stateno = 2000

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(0) != 1 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick
trigger6 = (stateno = 205) && movecontact ;Medium Punch
trigger7 = (stateno = 206) && movecontact ;Medium Punch
trigger8 = (stateno = 435) && movecontact ;Crouch Medium Kick
trigger9 = (stateno = 405) && movecontact ;Crouch Medium Punch
trigger10 = (stateno = 235) && movecontact ;Medium Kick
trigger11 = stateno = 2000

;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(0) != 1 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 6

;---------------------------------------------------------------------------
;Crouching Medium Punch
;しゃがみ弱パンチ
[State -1, Crouching Medium Punch]
type = ChangeState
value = 405
triggerall = var(0) != 1 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(0) != 1 
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick
trigger6 = (stateno = 205) && movecontact ;Medium Punch
trigger7 = (stateno = 206) && movecontact ;Medium Punch
trigger8 = (stateno = 435) && movecontact ;Crouch Medium Kick
trigger9 = (stateno = 405) && movecontact ;Crouch Medium Punch
trigger10 = (stateno = 235) && movecontact ;Medium Kick

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(0) != 1 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time > 6

;---------------------------------------------------------------------------
;Crouching Medium Kick
;しゃがみ弱キック
[State -1, Crouching Medium Kick]
type = ChangeState
value = 435
triggerall = var(0) != 1 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(0) != 1 
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick
trigger6 = (stateno = 205) && movecontact ;Medium Punch
trigger7 = (stateno = 206) && movecontact ;Medium Punch
trigger8 = (stateno = 435) && movecontact ;Crouch Medium Kick
trigger9 = (stateno = 405) && movecontact ;Crouch Medium Punch
trigger10 = (stateno = 235) && movecontact ;Medium Kick

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(0) != 1 
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 6

;---------------------------------------------------------------------------
;Jump Medium Punch
;空中弱パンチ
[State -1, Jump Medium Punch]
type = ChangeState
value = 605
triggerall = var(0) != 1 
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(0) != 1 
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 635 || stateno = 605
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(0) != 1 
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 6

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 635
triggerall = var(0) != 1 
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(0) != 1 
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 635 || stateno = 605
trigger2 = movecontact



;===========================================================================
;AI directives
;---------------------------------------------------------------------------

[State -1: The ground parry state]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (var(16) > 0)
trigger1 = var(0) = 1
attr = SCA,AA,AP
slot = 0
stateno = 921
ignorehitpause = 1
.
[State -1: The aerial parry state]
type = HitOverride
triggerall = (movetype!=H && movetype != A && statetype =A) && (var(16) > 0)
trigger1 = var(0) = 1
attr = SCA, AA, AP
slot = 0
stateno = 922
ignorehitpause = 1

[State -1, Stay Still]
type = ChangeState
value = 0
triggerall = var(0) = 1
trigger1 = statetype != A && stateno = 40

[State -1,AI Dont Fly]
type = ChangeState
triggerall = var(0) = 1
triggerall = P2MoveType != A
triggerall = stateno = 2000
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 50
value = 50

[State -1, AI Run Fwd Stop]
type = ChangeState
triggerall = var(0) = 1
triggerall = stateno = 100 || stateno = 20
trigger1 = P2movetype = A && (enemy,facing != facing)
trigger2 = enemy,vel x > 0 && (enemy,facing != facing)
value = 0
ctrl = 1

[State -1,AI Guard Push]
type = ChangeState
value = 985
triggerall = var(0) = 1  
trigger1 = statetype = A 
trigger1 = stateno = [150,155] ;The guard state numbers

[State -1, AI Guard Push]
type = ChangeState
value = 980
triggerall = var(0) = 1  
trigger1 = statetype = S
trigger1 = stateno = [150,153] ;The guard state numbers

[State -1, AI SCS]
type = ChangeState
value = 3300
triggerall = var(0) = 1  
triggerall = power >= 3000
triggerall = P2BodyDist Y = 0
trigger1 = p2movetype != A && (enemy,facing != facing)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x = [-1, 30]
trigger1 = random <= ifelse(life >=500,700,750)
trigger1 = p2statetype = S || p2statetype = C
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact && stateno != 410
trigger2 = P2BodyDist X <= 30
trigger2 = random <= ifelse(life >=500,700,999)
trigger2 = p2statetype = S || p2statetype = C
trigger3 = statetype = S
trigger3 = ctrl
trigger3 = p2movetype != H
trigger3 = p2bodydist X < 5
trigger3 = (p2statetype = S) || (p2statetype = C)
trigger3 = random <= ifelse(life >=500,700,999)
trigger4 = p2movetype = A && (enemy,facing = facing)
trigger4 = statetype = S
trigger4 = ctrl
trigger4 = p2bodydist x = [-1, 40]
trigger4 = random <= ifelse(life >=500,700,750)

[State -1, AI Super FB]
type = changestate
value = 1250
triggerall = var(0) = 1 && stateno != 1250 
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 100 && random <= 80 && stateno = 2000
trigger1 = P2BodyDist Y = [-10, 10]
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movehit && stateno != 410
trigger2 = random < 200
trigger2 = P2BodyDist X >= 10
trigger3 = movecontact && stateno = [1080,1082]
trigger3 = P2BodyDist X = [14,50]
trigger3 = random <= ifelse(life >=700,500,700)

[State -1, AI Super Diagonal FB]
type = ChangeState
value = 1350
triggerall = var(0) = 1  
triggerall = power >= 1000
triggerall = p2bodydist x = [0,55]
triggerall = p2bodydist y = [-20,2]
triggerall = frontedgedist > 0
trigger1 = stateno = 635 || stateno = 605 
trigger1 = movecontact
trigger1 = random < 400 
trigger2 = stateno = [1090,1100]
trigger2 = movecontact
trigger2 = pos y < -5
trigger2 = random < 300
trigger3 = stateno = 600
trigger3 = movecontact
trigger3 = random < 300 
trigger4 = stateno = 645 
trigger4 = movecontact
trigger4 = random < 100 

[State -1,upward energy]
type = ChangeState
value = 1450
triggerall = var(0) = 1
triggerall = p2stateno != [150,155] 
triggerall = power >= 1000 && !(enemy,ctrl)
trigger1 = statetype != A && ctrl = 1
trigger1 = p2bodydist y = [-120, -80] 
trigger1 = p2bodydist x = [50, 100]
trigger1 = random <= 400
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = p2bodydist x = [5,8]
trigger2 = p2bodydist y <= -8

[State -1, AI SBC]
type = changestate
value = 1210
triggerall = var(0) = 1 && stateno != 1210 
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 150 && random <= ifelse(life >=500,100,700) && statetype = S && ctrl
trigger1 = p2stateno = 5100 || p2stateno = 5050
trigger1 = P2BodyDist Y = [-50, -4]
trigger2 = P2BodyDist X >= 150 && random <= ifelse(life >=500,30,100) && stateno = 2000
trigger2 = P2BodyDist Y = [-10, 10]
trigger3 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240
trigger3 = movehit  && p2bodydist x = [40,50]
trigger3 = random <= ifelse(life >=500,50,200)

[State -1, AI Ulimate]
type = changestate
value = 2100
triggerall = Var(0) = 1 && stateno != 2100
triggerall = power >= 1000
triggerall = pos y = 0
trigger1 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240
trigger1 = movecontact
trigger1 = random < 70 
trigger2 = stateno = 400 || stateno = 430 || stateno = 440
trigger2 = movehit
trigger2 = random < 300 
trigger3 = ctrl = 1 && p2bodydist x = [10,40]
trigger3 = p2bodydist y = [-10,10] 
trigger3 = p2statetype = S
trigger3 = random < 70 

[State -1,AI Hyper SBC]
type = ChangeState
value = 3000
triggerall = var(0) = 1  
triggerall = pos y = 0
triggerall = power >= 2000
triggerall = p2statetype = S || p2statetype = A
triggerall = P2BodyDist Y = 0
triggerall = p2bodydist x = [-1, 50]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist y = 0
trigger1 = random < 100 
trigger2 = p2movetype = A && (enemy,facing = facing)
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = P2BodyDist X <= 40
trigger2 = random <= ifelse(life >=500,700,750)

[State -1, AI R Knee A]
type = ChangeState
value = 1090
triggerall = var(0) = 1 && stateno != 1090
triggerall = p2statetype != C && p2statetype != L
triggerall = P2BodyDist Y = [-70, -10]
triggerall = p2bodydist x = [11,30]
triggerall = enemy,vel y <= 0
trigger1 = ctrl ;&& p2movetype != A
trigger1 = random < 400
trigger2 = stateno = 635 || stateno = 605
trigger2 = movecontact
trigger2 = random < 300
trigger3 = statetype != A
trigger3 = ctrl = 1
trigger3 = p2bodydist y = [-100,-75]
trigger3 = random < 300
trigger4 = stateno = 435 ;|| stateno = 605
trigger4 = movecontact
trigger4 = random < 300

[State -1, AI Rising Kicks B]
type = ChangeState
value = 1095
triggerall = var(0) = 1 
triggerall = p2statetype != C && p2statetype != L
triggerall = P2BodyDist Y = [-70, -10]
triggerall = p2bodydist x = [11,30]
triggerall = enemy,vel y <= 0
trigger1 = ctrl ;&& p2movetype != H
trigger1 = random < 400
trigger2 = stateno = 635 || stateno = 605
trigger2 = movecontact
trigger2 = random < 300
trigger3 = statetype != A
trigger3 = ctrl = 1
trigger3 = p2bodydist y = [-100,-75]
trigger3 = random < 330

[State -1, AI Rising Kicks C]
type = ChangeState
value = 1100
triggerall = var(0) = 1 
triggerall = p2statetype != C && p2statetype != L
triggerall = P2BodyDist Y = [-70, -30]
triggerall = enemy,vel y < 0
trigger1 = ctrl
trigger1 = p2bodydist x = [10,20]
trigger1 = random < 400
trigger2 = stateno = 635 || stateno = 605
trigger2 = movecontact
trigger2 = random < 300
trigger3 = ctrl
trigger3 = p2movetype = A
trigger3 = random >= 50
trigger3 = P2BodyDist X = [20,50]
trigger3 = statetype != A
trigger3 = ctrl = 1
trigger3 = p2bodydist y = [-100,-75]
trigger3 = random < 300

[State -1, AI Dash Kick A]
type = ChangeState
value = 1080
triggerall = var(0) = 1 
triggerall = p2statetype != C && p2statetype != L
triggerall = statetype != A && (enemy,facing != facing)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = frontedgedist > 100
trigger1 = p2movetype != A 
trigger1 = random <= 70
trigger1 = P2BodyDist X = [15, 30]
trigger1 = P2BodyDist Y = [-10, 10]
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movehit && stateno != 410
trigger2 = random < 300
trigger3 = statetype != A
trigger3 = ctrl
trigger3 = random < 400
trigger3 = enemy,numproj >=1
trigger3 = P2BodyDist X <= 70
trigger3 = P2BodyDist Y = [-10, 10]
trigger4 = p2movetype = A && statetype = S && ctrl && (enemy,ctrl = 0)
trigger4 = p2bodydist x = [60,75]
trigger4 = p2bodydist y = [-5,5]
trigger4 = random < 500 
trigger5 = p2movetype != A && (enemy,ctrl = 0)
trigger5 = random < 400 
trigger5 = p2bodydist x = [70,82]
trigger5 = p2bodydist y = [-5,5]
trigger5 = statetype = S
trigger5 = ctrl

[State -1, AI Dash Kick B]
type = ChangeState
value = 1081
triggerall = var(0) = 1 
triggerall = p2statetype != C && p2statetype != L
triggerall = statetype != A && (enemy,facing != facing)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = frontedgedist > 150
trigger1 = p2movetype != A 
trigger1 = random <= 70
trigger1 = P2BodyDist X = [15, 55]
trigger1 = P2BodyDist Y = [-10, 10]
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movehit && stateno != 410
trigger2 = random < 300
trigger3 = statetype != A
trigger3 = ctrl
trigger3 = random < 400
trigger3 = enemy,numproj >=1
trigger3 = P2BodyDist X <= 70
trigger3 = P2BodyDist Y = [-10, 10]
trigger4 = p2movetype = A && statetype = S && ctrl && (enemy,ctrl = 0)
trigger4 = p2bodydist x = [60,69]
trigger4 = p2bodydist y = [-5,5]
trigger4 = random < 100 
trigger5 = p2movetype = A && (enemy,ctrl = 0)
trigger5 = random < 100 
trigger5 = p2bodydist x = [70,82]
trigger5 = p2bodydist y = [-5,5]
trigger5 = statetype != A
trigger5 = ctrl

[State -1, AI Dash Kick 2]
type = ChangeState
value = 1082
triggerall = var(0) = 1 
triggerall = p2statetype != C && p2statetype != L
triggerall = statetype != A && (enemy,facing != facing)
triggerall = frontedgedist > 140
trigger1 = ctrl
trigger1 = random <= ifelse(life >=500,300,700)
trigger1 = enemy,vel x != 0 && (enemy,ctrl = 0) 
trigger1 = frontedgedist > 170
trigger1 = P2BodyDist X = [20,70]
trigger1 = P2BodyDist Y = [-40, 10]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random <= ifelse(life >=500,900,999)
trigger2 = backedgedist < 30
trigger2 = P2BodyDist X = [10,70]
trigger2 = P2BodyDist Y = [-40, 10]
trigger3 = statetype != A
trigger3 = ctrl
trigger3 = random <= ifelse(life >=500,900,999)
trigger3 = P2BodyDist X = [10,102]
trigger3 = P2BodyDist Y = [-70, -20]

[State -1, Rec] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = var(0) = 1 && (stateno = [5050,5060])
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
trigger1 = CanRecover
value = 5200 ;HITFALL_RECOVER

[State -1, Rec] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = var(0) = 1 && (stateno = [5050,5060])
triggerall = Vel Y > 0
triggerall = alive
trigger1 = CanRecover
value = 5210 ;HITFALL_AIRRECOVER

[State -1,AI Fireball X]
type = ChangeState
value = 1000
triggerall = var(0) = 1 
triggerall = P2Movetype != A
trigger1 = statetype = S && ctrl || stateno = 2000
trigger1 = P2BodyDist X > 150 && !(enemy,ctrl)
trigger1 = P2BodyDist Y = [-70, -30]
trigger1 = random < 2

[State -1,AI Fireball Y]
type = ChangeState
value = 1005
triggerall = var(0) = 1 
triggerall = P2Movetype != A
trigger1 = statetype = S && ctrl || stateno = 2000
trigger1 = P2BodyDist X > 150 && !(enemy,ctrl)
trigger1 = P2BodyDist Y = [-50, -30]
trigger1 = random < 2

[State -1,AI Fireball Z]
type = ChangeState
value = 1010
triggerall = var(0) = 1 
triggerall = P2Movetype != A
trigger1 = statetype = S && ctrl || stateno = 2000
trigger1 = P2BodyDist X > 150 && !(enemynear,ctrl)
trigger1 = P2BodyDist Y = [-50, -30]
trigger1 = random < 10
trigger2 = stateno = 210 || stateno = 240
trigger2 = movehit
trigger2 = random < 10

[State -1, AI Laser]
type = ChangeState
value = 1070+random%2
triggerall = var(0) = 1 && !(enemy,ctrl)
trigger1 = P2BodyDist Y = [-40, -10]
trigger1 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger1 = movehit && stateno != 410
trigger1 = p2statetype = A
trigger1 = random < 100
trigger2 = stateno = 2000
trigger2 = P2BodyDist X >= 130
trigger2 = P2BodyDist Y = [-30, -10]
trigger2 = random < 40

[State -1, AI Jump strong kick]
type = ChangeState
value = 641+random%2
triggerall = var(0) = 1 
triggerall = pos y < -20
trigger1 = stateno = 635 || stateno = 605
trigger1 = movecontact
trigger1 = random < 400
trigger2 = statetype = A
trigger2 = ctrl = 1  
trigger2 = p2bodydist x = [ 20, 50]
trigger2 = p2bodydist y = [ 1, 80]
trigger3 = statetype = A
trigger3 = ctrl = 1  
trigger3 = p2bodydist x = [0, 80]
trigger3 = p2bodydist y = [1, 200]
trigger3 = pos y <= -50
trigger3 = pos y > -120
trigger3 = p2movetype != A

;---------------------------------------------------------------------
;Basics
;---------------------------------------------------------------------

[State -1,AI warp FWD B 2]
type = ChangeState
value = 3015
triggerall = var(0) = 1
triggerall = statetype != A  && (enemy,facing != facing)
triggerall = frontedgedist > 200
trigger1 = backedgedist <= 70
trigger1 = random < 300 && ctrl = 1
trigger1 = (p2bodydist x <= 40)

[State -1,AI charge]
type = ChangeState
value = 730
triggerall = var(0) = 1 && Life != 0 && P2Life != 0 && power < 3000 && StateNo != 105 
triggerall = stateno != 730 && stateno != 735 && stateno != 3005 && stateno != 3007
triggerall = p2movetype != A && statetype = S && ctrl && movetype != A && movetype != H
trigger1 = p2stateno = 5150 && random < 300 && p2bodydist x > 60
trigger2 = movetype != A && p2bodydist x > 60 && p2movetype = H && random < 300 

[State -1,AI Stop Charge]
type = ChangeState
triggerall = var(0) = 1 
triggerall = stateno = 735 || stateno = 730 
trigger1 = p2movetype != H 
trigger2 = p2movetype = A
trigger3 = power >= 3000 
value = 0
ctrl = 1

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(0) = 1 ;&& p2movetype != A
triggerall = p2statetype = A
trigger1 = p2bodydist x = [-5,70]
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 400
trigger2 = p2bodydist x = [-5,70]
trigger2 = p2bodydist y = [-20,5]
trigger2 = stateno = 2000

[State -1,AI Stand Medium Punch]
type = ChangeState
value = 205
triggerall = var(0) = 1 && p2statetype != C && p2statetype != L
trigger1 = stateno = 200 || stateno = 400
trigger1 = movehit
;trigger1 = random < 200

[State -1,AI Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(0) = 1 && p2statetype != C && p2statetype != L
trigger1 = stateno = 205 || stateno = 235
trigger1 = movehit
trigger1 = random < 500
trigger2 = p2statetype = A
trigger2 = (p2bodydist x = [50,110]) ;|| (p2bodydist x = [196,210]) 
trigger2 = p2bodydist y = [-20,5]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random < 500
trigger2 = enemy,inguarddist != 1 && enemy,vel x < 1 && enemy,ctrl = 0

[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(0) = 1
triggerall = p2statetype != C && p2statetype != L
trigger1 = p2bodydist x = [0,20]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = random < 400
trigger2 = p2bodydist x = [0,70]
trigger2 = p2bodydist y = [-20,5]
trigger2 = stateno = 2000

[State -1,AI Stand Medium Kick]
type = ChangeState
value = 235
triggerall = var(0) = 1 && p2statetype != C && p2statetype != L
trigger1 = stateno = 230 || stateno = 200
trigger1 = movehit
trigger1 = random < 500
trigger2 = stateno = 400 || stateno = 430
trigger2 = movehit
trigger2 = random < 500

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(0) = 1 && p2statetype != C && p2statetype != L
trigger1 = stateno = 205 || stateno = 235
trigger1 = movecontact
trigger1 = random < 550

[State -1,AI Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = var(0) = 1
triggerall = p2statetype != A
triggerall = P2statetype = S
trigger1 = p2bodydist x <= 5
trigger1 = p2bodydist y = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 800

[State -1,AI Crouch Medium Kick]
type = ChangeState
value = 435
triggerall = var(0) = 1 ;&& p2movetype != A
trigger1 = stateno = 430 || stateno = 400
trigger1 = movecontact
trigger1 = random < 700
trigger2 = P2statetype = S
trigger2 = p2bodydist x <= 35
trigger2 = p2bodydist y = [-5,5]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random < 800
trigger3 = stateno = 200
trigger3 = movehit && random <=400

[State -1,AI Crouch Strong Kick]
type = ChangeState
value = 440
triggerall = var(0) = 1 
triggerall = p2bodydist x = [-2,40]
triggerall = P2MoveType != A
trigger1 = stateno = 435 || stateno = 405
trigger1 = movehit
trigger1 = random < 70
trigger2 = stateno = 405
trigger2 = movehit
trigger2 = random < 300

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(0) = 1;
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 35
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 400 
trigger1 = pos y = 0

[State -1,AI Crouch Medium Punch]
type = ChangeState
value = 405
triggerall = var(0) = 1
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = random < 500
trigger2 = p2bodydist x = [10,83]
trigger2 = p2bodydist y = [-5,5]
trigger2 = statetype != A 
trigger2 = ctrl
trigger2 = random < 400
trigger2 = p2movetype != A && p2statetype != S
trigger2 = enemy,inguarddist != 1 && enemy,vel x < 1 && enemy,ctrl = 0

[State -1,AI Crouch Strong Punch]
type = ChangeState
value = 410
triggerall = var(0) = 1
triggerall = p2bodydist x = [-5,30]
trigger1 = stateno = 435 || stateno = 405
trigger1 = movehit
trigger1 = random < 700 

[State -1, AI Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(0) = 1  
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist y = 0
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = random < 300
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = random < 300
trigger3 = (stateno = [200,299]) || (stateno = [400,499]) || stateno = 1080
trigger3 = stateno != 440 ;Except for sweep kick
trigger3 = moveguarded
trigger3 = p2bodydist X < 20 
trigger3 = (p2statetype = S) || (p2statetype = C)
trigger3 = random <= 800

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(0) = 1
trigger1 = p2bodydist x = [0,50]
trigger1 = P2BodyDist Y = [-70, 30]
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 500

[State -1, AI Jump light kick]
type = ChangeState
value = 630
triggerall = var(0) = 1 
trigger1 = p2bodydist x = [0,50]
trigger1 = P2BodyDist Y = [-5, 30]
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 500

[State -1, AI Jump Medium Punch]
type = ChangeState
value = 605
triggerall = var(0) = 1 
triggerall = p2bodydist x = [0,40]
trigger1 = stateno = 600 || stateno = 630
trigger1 = movecontact
;trigger1 = random < 500

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(0) = 1 
trigger1 = stateno = 605
trigger1 = movecontact
;trigger1 = random < 500

[State -1, AI Jump Medium kick]
type = ChangeState
value = 635
triggerall = var(0) = 1 
trigger1 = stateno = 600 || stateno = 630
trigger1 = movecontact
trigger1 = random < 500 

[State -1, AI Jump strong kick]
type = ChangeState
value = 640
triggerall = var(0) = 1 
trigger1 = stateno = 635
trigger1 = movecontact
;trigger1 = random < 500 

;---------------------------------------------------------------

;--------------------------------------------------------------------
;Move
;--------------------------------------------------------------------
[State -1, Fly]
type = ChangeState
triggerall = var(0) = 1
triggerall = MoveType != H
triggerall = MoveType != A 
triggerall = P2MoveType != A
triggerall = P2BodyDist Y < -70
triggerall = random < 700
triggerall = StateNo != [3000, 4100]
triggerall = Pos Y >= 0
trigger1 = P2Name = "Goku-n-hd by EmuBoarding"
trigger1 = P2StateNo = 1500
trigger2 = P2Name = "Mystic Gohan by Zero_X"
trigger2 = P2StateNo = 2000
trigger3 = P2Name = "Freeza by OverMind"
trigger3 = P2StateNo = 3001
trigger4 = P2Name = "Kurilin by EmuBoarding"
trigger4 = P2StateNo = 1500
trigger5 = P2Name = "Trunks por ssonic"
trigger5 = P2StateNo = 1900
trigger6 = P2Name = "Vegeta Super Sayjin 4 by EB and BS"
trigger6 = P2StateNo = 1500
trigger7 = P2Name = "N-Trunks by EmuBoarding"
trigger7 = P2StateNo = 1500
trigger8 = P2Name = "Mr.Boo by OverMind"
trigger8 = P2StateNo = 3001
trigger9 = P2Name = "Vegeta by OverMind"
trigger9 = P2StateNo = 3001
trigger10 = P2Name = "Broli Remix ver1.2"
trigger10 = P2StateNo = 2000
trigger11 = P2Name = "Mew Two"
trigger11 = P2StateNo = 1051
trigger12 = P2Name = "Raditz"
trigger12 = P2StateNo = 1510
trigger13 = P2Name = "C-Trunks by EmuBoarding"
trigger13 = P2StateNo = 1500
trigger14 = P2Name = "Vegeta por Ssonic"
trigger14 = P2StateNo = 1900
trigger15 = P2Name = "M. Bison"
trigger15 = P2StateNo = 89598
trigger16 = P2Name = "Cell por Ssonic"
trigger16 = P2StateNo = 1900
trigger17 = P2Name = "Recoom by Lucifer"
trigger17 = P2StateNo = 1500
trigger18 = P2Name = "Vegetto EX by Shishi-Ryu"
trigger18 = P2StateNo = 2000
trigger19 = P2Name = "Goku Super Sayajin 2 by ribeiro"
trigger19 = P2StateNo = 2000
trigger20 = P2Name = "Pan Dragonball GT por Ssonic"  
trigger20 = P2StateNo = 1900
trigger21 = P2Name = "The Necromancer"
trigger21 = P2StateNo = 2000
trigger22 = P2StateType = S
trigger22 = P2MoveType != H
value = 1999

[State -1, AI Walk Fwd]
type = ChangeState
value = 20
triggerall = var(0) = 1
triggerall = stateno != 20 && stateno != 100
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x > 10 && random < 800
trigger1 = p2bodydist y = [-20,5]
trigger1 = p2movetype != A
trigger2 = (p2bodydist x = [10,110]) 
trigger2 = p2bodydist y = [-20,5]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random < 500
trigger2 = (enemy,facing = facing)

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(0) = 1
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype = A && enemy,facing = facing) || (p2movetype != A && enemy,facing != facing)
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x > 10
trigger1 = p2bodydist y = [-20,0]
trigger1 = random < 700

[State -1,AI Warp BWD 1]
type = ChangeState
value = 3016
triggerall = var(0) = 1 
triggerall = statetype != A
triggerall = backedgedist > 150
trigger1 = statetype = S
trigger1 = ctrl && p2movetype = A
trigger1 = p2bodydist x = [70,118]
trigger1 = random < 300
trigger2 = frontedgedist < 40
trigger2 = statetype = S
trigger2 = ctrl && random < 300 ;&& enemy,ctrl = 0

[State -1,AI Warp BWD 2]
type = ChangeState
value = 3017
triggerall = var(0) = 1 
triggerall = statetype != A
triggerall = backedgedist > 200
trigger1 = statetype = S
trigger1 = ctrl && p2movetype = A
trigger1 = p2bodydist x = [70,118]
trigger1 = random < 700

[State -1, AI warp FWD A]
type = ChangeState
value = 3005
triggerall = var(0) = 1
triggerall = statetype != A  && (enemy,facing != facing)
triggerall = frontedgedist > 150
triggerall = stateno != 3005 
trigger1 = p2bodydist x = [30,55]
trigger1 = movetype !=A 
trigger1 = random < 400 && ctrl = 1 ;&& (enemy,facing != facing) 
trigger2 = p2bodydist x = [50,70]
trigger2 = movetype !=A 
trigger2 = random < 500 && p2movetype = A && stateno = 2000
trigger3 = stateno = 405 && (p2bodydist x = [80,90])
trigger3 = movehit
trigger3 = random < 700
trigger4 = stateno = [400,440]
trigger4 = moveguarded
trigger4 = random < 800
trigger5 = p2bodydist x = [30,80]
trigger5 = movetype !=A 
trigger5 = random < 400 && ctrl = 1 && (enemy,facing != facing)
trigger6 = p2bodydist y = 0 && ctrl = 1
trigger6 = P2Movetype != A 
trigger6 = p2bodydist x > 23 && p2bodydist x < 100


[State -1,AI warp FWD B]
type = ChangeState
value = 3015
triggerall = var(0) = 1
triggerall = statetype != A  && (enemy,facing != facing)
triggerall = frontedgedist > 200
triggerall = stateno != 3005 
trigger1 = p2bodydist x >= 90
trigger1 = movetype !=A 
trigger1 = random < 400 && ctrl = 1 ;&& p2movetype = A
trigger2 = p2bodydist x = [91,118]
trigger2 = movetype !=A 
trigger2 = random < 500 && p2movetype = A && stateno = 2000
trigger3 = backedgedist <= 100
trigger3 = random < 900 && ctrl = 1
trigger3 = (p2bodydist x <= 40)

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(0) = 1
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H 
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = (p2bodydist y = [-40,-1]) 
trigger2 = p2bodydist x <= 50

[State -1,Jump]
type = ChangeState
value = 70
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(0) = 1
triggerall = statetype != A
triggerall = enemy,vel y < -1
triggerall = (p2bodydist y = [-300,-70]) 
trigger1 = p2bodydist x = [ 20, 50]
trigger1 = random <= 100 && p2movetype != A  
trigger1 = p2statetype = S
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = p2bodydist x <= 30

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(0) = 1
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A  
trigger1 = (p2bodydist x = [150,170]) && random <= 400 
trigger1 = enemy,backedgedist < 70

[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(0) = 1
triggerall = stateno != 105
triggerall = backedgedist > 50
triggerall = p2movetype != A && enemy,vel x <= 0
trigger1 = statetype = S
trigger1 = ctrl && random < 400
trigger1 = p2bodydist x = [0,55]
trigger1 = p2stateno = [822,823]
trigger2 = frontedgedist < 70
trigger2 = statetype = S
trigger2 = ctrl && random < 400 ;&& enemy,ctrl = 0
trigger3 = p2statetype = L
trigger3 = statetype = S
trigger3 = ctrl && random < 300
trigger3 = p2bodydist x = [0,40]

;-------------------------------------------------------------

;Recovery - Roll
[State -1, AI Recovery - Roll]
type = VarSet
triggerall = var(0) = 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = random <= 7
v = 12
value = 1

[State -1, AI Standing Guard]
type = ChangeState
triggerall = var(0) = 1 
triggerall = Statetype != A 
triggerall = enemy,numproj = 0
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 130 

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(0) = 1
triggerall = inguarddist
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouching Guard]
type = ChangeState
triggerall = var(0) = 1
triggerall = enemy,numproj = 0
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 131

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(0) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1,AI Aerial Guard]
type = ChangeState
triggerall = var(0) = 1
triggerall = inguarddist
triggerall = enemy,numproj = 0
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132





