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

;--------|Ai Activation|------------------------------------------
[Command] 
name = "cpu01" 
command = F, D,DF, F,x,x,x,x,x 
time = 1 

[Command] 
name = "cpu02" 
command = F, D,DF, F,x,x,x,x,y 
time = 1 

[Command] 
name = "cpu03" 
command = F,x,x,x,y,x 
time = 1 

[Command] 
name = "cpu04" 
command = F, D,DF, F,x,x,y,x,x 
time = 1 

[Command] 
name = "cpu05" 
command = F, D,DF, F,x,y,x,x,x 
time = 1 

[Command] 
name = "cpu06" 
command = F, D,DF, F,y,x,x,x,x 
time = 1 

[Command] 
name = "cpu07" 
command = F, D,DF, F,y,x,x,x,y 
time = 1 

[Command] 
name = "cpu08" 
command = F, D,DF, F,y,x,x,y,x 
time = 1 

[Command] 
name = "cpu09" 
command = F, D,DF, F,y,x,y,x,x 
time = 1 

[Command] 
name = "cpu10" 
command = F, D,DF, F,y,y,x,x,x 
time = 1

[Command] 
name = "cpu11" 
command = F, D,DF, F,a,x,x,x,x 
time = 1 

[Command] 
name = "cpu12" 
command = F, D,DF, F,a,x,x,x,y 
time = 1 

[Command] 
name = "cpu13" 
command = F, D,DF, F,a,x,x,y,x 
time = 1 

[Command] 
name = "cpu14" 
command = F, D,DF, F,a,x,y,x,x 
time = 1 

[Command] 
name = "cpu15" 
command = F, D,DF, F,a,y,x,x,x 
time = 1 

[Command] 
name = "cpu16" 
command = F, D,DF, F,y,x,x,x,a 
time = 1 

[Command]
name = "cpu17" 
command = F, D,DF, F,y,x,x,a,x 
time = 1 

[Command] 
name = "cpu18" 
command = F, D,DF, F,y,x,a,x,x 
time = 1 

[Command] 
name = "cpu19" 
command = F, D,DF, F,y,a,x,x,x 
time = 1 

[Command] 
name = "cpu20" 
command = F, D,DF, F,a,a,x,x,x 
time = 1

[Command] 
name = "cpu21" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu22" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu23" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu24" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu25" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu26" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu27" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu28" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu29" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu30" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu31" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu32" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu33" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu34" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu35" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu36" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu37" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu38" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu39" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu40" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu41" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu42" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu43" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu44" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu45" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu46" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu47" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu48" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu49" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu50" 
command = F, D,DF, F,b,b,x,x,x 
time = 1

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------



[Command]
name = "Planet Smasher"
command = ~F, D, B, c




;-| Special Motions |------------------------------------------------------



;Gatling Rod
[Command]
name = "QCF_x"
command = ~D, DF, F, x

;Break Shaft
[Command]
name = "QCF_y"
command = ~D, DF, F, y


;Full Metal Charge
[Command]
name = "QCB_x"
command = ~D, DB, B, x



; Drill Slide, 300
[Command]
name = "FFx"
command = F, F, x

;Shoulder Charge, 310
[Command]
name = "FFy"
command = F, F, y


[Command]
name = "Oiuchi"
command = $U,a


[Command]
name = "Giga Crush"
command = x+y


;[Command]
;name = "Recharge Power"
;command = y+z


[Command]
name = "Special Reversal"
command = /B,c


;[Command]
;name = "Super Jump"
;command = D,$U



;----|Combo Motions|---------------------------------------
;P,P,P,P =   Stand Punch, Punch 1, Punch 2, Grab to Punch
[Command]
name = "Flash Combo 1"
command = x,x,x,x  

;P,P,P,K =   Stand Punch, Punch 1, Punch 2, Gatling Gun

[Command]
name = "Flash Combo 2"
command = x,x,x,y  

;P,P,K,K =   Stand Punch, Punch 1, Shoulder Charge, Gatling Gun
[Command]
name = "Flash Combo 3"
command = x,x,y,y  

;P,K,K,K =   Stand Punch, Punch 3, Punch 4, Grab to Break Shaft
[Command]
name = "Flash Combo 4"
command = x,y,y,y 

;P,P,K,P =   Stand Punch, Punch 1, Shoulder Charge , Grab to Punch
[Command]
name = "Flash Combo 5"
command = x,x,y,x

;P,K,P,P =   Stand Punch, Punch 3, Drill Slide, Direct Press
[Command]
name = "Flash Combo 6"
command = x,y,x,x

;P,K,K,P =   Stand Punch, Punch 3, Punch 4,  Direct Press

[Command]
name = "Flash Combo 7"
command = x,y,y,x

;P,K,P,K =   Stand Punch, Punch 3, Punch 5, Grab to Break Shaft
[Command]
name = "Flash Combo 8"
command = x,y,x,y

;----|Throw Motions|---------------------------------------


;Grab to Punch
[Command]
name = "Stand Throw"  ;while standing
command = ~B,F,x

;Toss
[Command]
name = "Toss"
command = ~B,F,y


[Command]
name = "Arm Twist"
command = ~B,F,z

;Direct Press
[Command]
name = "Direct Press"
command = ~B,F,c



;----|Basic Motions|---------------------------------------


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

;---|Hold Buttons|------------------------

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

[Command]
name = "holds"
command = /s
time = 1

;---|Relase Buttons|------------------------


;---|Press then Release no other key in between|------------------


;--------------

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
;This is not a move, but it sets up var(3) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = null;VarSet
trigger1 = 1
var(3) = 0

[State -1, Combo condition Check]
type = null;VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(3) = 1

;===========================================================================
;===========================================================================
;------|AI Moves|-----------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu01"
trigger2 = command = "cpu02"
trigger3 = command = "cpu03"
trigger4 = command = "cpu04"
trigger5 = command = "cpu05"
trigger6 = command = "cpu06"
trigger7 = command = "cpu07"
trigger8 = command = "cpu08"
trigger9 = command = "cpu09"
trigger10 = command = "cpu10"
var(59) = 1
;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu11"
trigger2 = command = "cpu12"
trigger3 = command = "cpu13"
trigger4 = command = "cpu14"
trigger5 = command = "cpu15"
trigger6 = command = "cpu16"
trigger7 = command = "cpu17"
trigger8 = command = "cpu18"
trigger9 = command = "cpu19"
trigger10 = command = "cpu20"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu21"
trigger2 = command = "cpu22"
trigger3 = command = "cpu23"
trigger4 = command = "cpu24"
trigger5 = command = "cpu25"
trigger6 = command = "cpu26"
trigger7 = command = "cpu27"
trigger8 = command = "cpu28"
trigger9 = command = "cpu29"
trigger10 = command = "cpu30"
var(59) = 1


;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu31"
trigger2 = command = "cpu32"
trigger3 = command = "cpu33"
trigger4 = command = "cpu34"
trigger5 = command = "cpu35"
trigger6 = command = "cpu36"
trigger7 = command = "cpu37"
trigger8 = command = "cpu38"
trigger9 = command = "cpu39"
trigger10 = command = "cpu40"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu41"
trigger2 = command = "cpu42"
trigger3 = command = "cpu43"
trigger4 = command = "cpu44"
trigger5 = command = "cpu45"
trigger6 = command = "cpu46"
trigger7 = command = "cpu47"
trigger8 = command = "cpu48"
trigger9 = command = "cpu49"
trigger10 = command = "cpu50"
var(59) = 1
;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
triggerall = var(59)
triggerall = time = 1
trigger1 = p2life <= 0
trigger2 = life <= 0
var(59) = 0

;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
triggerall = var(59)
trigger1 = !Var(56)
var(56) = 4

[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "x" && command = "y"
var(56) = 0


[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "a" && command = "b"
var(56) = 1


[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "z" && command = "c"
var(56) = 4

;---------------------------------------------------------------------------
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = Var(59)
triggerall = ctrl
triggerall = StateType = S
triggerall = random <= 100
trigger1 = p2statetype = L


;---------------------------------------------------------------------------
[State -1, Oiuchi]
type = ChangeState
value = 430
triggerall = Var(59)
triggerall = p2bodydist x < 70
triggerall = random <= 300
triggerall = ctrl 
triggerall = StateType = S
trigger1 = p2statetype = L

;---------------------------------------------------------------------------
[State -1, Special Reversal]
type = ChangeState
value = 2270
triggerall = Var(59)
triggerall = var(56) < 1
triggerall = p2movetype = A
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, hitdefattr = SCA, NA, SA, HA, AA,AP, NT, ST,HT, NP, SP, HP
trigger1 = p2bodydist X <= 80
trigger1 = random < 300

;---------------------------------------------------------------------------
;Escape

[State -1]
type = ChangeState
triggerall = var(59)
triggerall = p2bodydist x < 80
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType != A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
trigger7 = p2stateno = var(49)
value = ifelse(power >= 1000,1230,1240+10*(random%3))

;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = stateno != 100 
triggerall = statetype = S && ctrl
triggerall = p2movetype != A
triggerall = p2bodydist X > 55
trigger1 = random <= 100
trigger2 = enemy, numproj = 0
trigger3 = enemy, numhelper = 0


;---------------------------------------------------------------------------
[State -1,AI Recharge]
type = null;ChangeState
value = 1220
triggerall = var(59)
triggerall = stateno != 100 
triggerall = statetype = S && ctrl
triggerall = p2movetype != A
triggerall = p2bodydist X > 55
triggerall = random <= 300
trigger1 = enemy, numproj = 0
trigger2 = enemy, numhelper = 0
;---------------------------------------------------------------------------
[State -1,AI run fwd stop]
type = ChangeState
value = 0
triggerall = var(59)
triggerall = stateno = 100
trigger1 = p2movetype = A
trigger1 = p2bodydist X <= 25



;-------------------------------------------------------------------------------
;Guarding states

;---------------------------------------------------------------------------
[State -1,AI stand guard]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = p2statetype != C 
triggerall = ctrl
trigger1 = p2bodydist X < 100
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0
trigger4 = inguarddist
value = 130

;-------------------------------------
[State -1, Stand Parry]
type = hitoverride
triggerall = var(56) > 0
triggerall = var(59) && roundstate = 2 && statetype = S
trigger1 = 1
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = ifelse(random < 500,130, 2270)
slot = 0
time = ifelse((stateno=[150,153]),6,8)
;---------------------------------------------------------------------------

[State -1, AI S to C Guard] 
type = ChangeState 
triggerall = var(59)
triggerall = var(56) > 0
triggerall = p2bodydist X < 100
triggerall = StateType != A 
triggerall = P2statetype = C 
triggerall = P2Movetype = A 
trigger1 = stateno = 150 
value = 152 

;---------------------------------------------------------------------------

[State -1, AI Crouch Guard] 
type = ChangeState 
triggerall = var(59)
triggerall = var(56) > 0
triggerall = StateType != A 
triggerall = P2statetype = C 
triggerall = P2Movetype = A 
triggerall = ctrl
trigger1 = p2bodydist X < 100
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0
trigger4 = inguarddist
value = 131 

;-------------------------------------
[State -1, Crouch Parry]
type = hitoverride
triggerall = var(56) > 0
triggerall = var(59) && roundstate = 2 && statetype = C
trigger1 = 1
attr = C,NA, SA, HA, NP, HP, SP, AA, AT, AP,NT,ST,HT
stateno = ifelse(random < 500,131, 2270)
slot = 0
time = ifelse((stateno=[150,153]),6,8)
;---------------------------------------------------------------------------

[State -1, AI C to S Guard] 
type = ChangeState 
triggerall = var(59)
triggerall = p2bodydist X < 100
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = P2Movetype = A 
trigger1 = ctrl
trigger1 = stateno = 152 
value = 150 

;---------------------------------------------------------------------------

[State -1,AI Aerial Guard] 
type = ChangeState 
triggerall = var(59)
triggerall = statetype = A || Pos Y < 0
triggerall = P2Movetype = A  
triggerall = ctrl
trigger1 = p2bodydist X < 100
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0
trigger4 = inguarddist
value = 132 

;-------------------------------------
[State -1, Air Parry]
type = hitoverride
triggerall = var(56) > 0
triggerall = var(59) && roundstate = 2 && (statetype = A || Pos Y < 0)
trigger1 = 1
attr = SA,NA, SA, HA, NP, HP, SP, AA, AT, AP
stateno = 132
;forceair = 1
slot = 0
time = ifelse((stateno=[154,155]),6,8)



;-----------------------------------------------------------------------------
;Basic Attacks
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,AI standing light punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = stateno != 100
trigger1 = p2bodydist X <= 50
trigger1 = p2bodydist y = [-15,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 400
;trigger2 = stateno =     ;combo loop
;trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Hard Punch]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = stateno != 100
trigger1 = p2bodydist X <= 30
trigger1 = p2bodydist y = [-15,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 400

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X <= 40
triggerall = p2bodydist y = [-5,5]
triggerall = ctrl
trigger1 = statetype = C
trigger1 = random < 400


;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 430
triggerall = var(59)
triggerall = p2bodydist X <= 70
triggerall = p2bodydist y = [-5,5]
triggerall = ctrl
trigger1 = statetype = C
trigger1 = random < 400


;---------------------------------------------------------------------------
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = var(59)
triggerall = p2bodydist X <= 70
triggerall = p2bodydist y = [-25,25]
triggerall = ctrl
trigger1 = statetype = A
trigger1 = random < 400


;---------------------------------------------------------------------------
[State -1, Knee Blade]
type = ChangeState
value = 640
triggerall = var(59)
triggerall = p2bodydist X <= 70
triggerall = p2bodydist y = [-25,75]
triggerall = ctrl
trigger1 = statetype = A
trigger1 = random < 400


;---------------------------------------------------------------------------
[State -1, Needle Press]
type = ChangeState
value = 650
triggerall = var(59)
triggerall = p2bodydist X <= 30
triggerall = p2bodydist y = [5,25]
triggerall = ctrl
trigger1 = statetype = A
trigger1 = random < 400


;---------------------------------------------------------------------------

[State -1, Grab to Punch]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = p2bodydist X <= 50
triggerall = p2bodydist y = [-5,5]
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = random < 400


;---------------------------------------------------------------------------

[State -1, Toss]
type = ChangeState
value = 830
triggerall = var(59)
triggerall = p2bodydist X <= 50
triggerall = p2bodydist y = [-5,5]
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = random < 400
;---------------------------------------------------------------------------
[State -1, Arm Twist]
type = ChangeState
value = 860
triggerall = var(59)
triggerall = p2bodydist X <= 50
triggerall = p2bodydist y = [-5,5]
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = random < 400


;---------------------------------------------------------------------------

[State -1, Direct Press]
type = ChangeState
value = 890
triggerall = var(59)
triggerall = p2bodydist X <= 50
triggerall = p2bodydist y = [-5,5]
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = random < 400


;-----------------------------------------------------------------------------
;AI Combo
;---------------------------------------------------------------------------
[State -1, Punch 1 or Punch 3]
type = ChangeState
value = ifelse(random < 500,1000,1015)
triggerall = Var(59)
trigger1 = Stateno = [200,700]
trigger1 = MoveContact
trigger1 = Statetype = S
trigger1 = Time >= 10

;------------------------------------------------------------------------------
[State -1, Punch 2 or Shoulder Charge]
type = ChangeState
value = ifelse(random < 500,1001,1010)
triggerall = Var(59)
trigger1 = Stateno = 1000 ;Punch 1
trigger1 = MoveContact
trigger1 = Statetype = S
trigger1 = Time >= 10

;------------------------------------------------------------------------------
[State -1, Grab to Punch or Gatling Gun]
type = ChangeState
value = ifelse(random < 500,1002,1025)
triggerall = Var(59)
triggerall = Time >= 10
trigger1 = MoveContact
trigger1 = stateno = 1001
trigger2 = MoveContact
trigger2 = stateno = 1010



;---------------------------------------------------------------------------
[State -1, Punch 4 or Punch 5]
type = ChangeState
value = ifelse(random < 500,1020,1030)
triggerall = Var(59)
triggerall = time >= 10
trigger1 = stateno = 1015 ;Punch 3
trigger1 = MoveContact
trigger1 = Statetype = S


;---------------------------------------------------------------------------
[State -1, Grab to Break Shaft or Direct Press]
type = ChangeState
value = ifelse(random < 500,1022,1035)
triggerall = Var(59)
triggerall = time >= 10
trigger1 = stateno = 1020
trigger1 = movecontact
trigger2 = stateno = 1030
trigger2 = movecontact




;----|AI Specials |---------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Gatling Rod]
type = ChangeState
value = 1240
triggerall = Var(59)
triggerall = ctrl
triggerall = statetype = S || statetype = C
triggerall = p2bodydist X <= 90
triggerall = p2bodydist y = [-15,5]
trigger1 = random < 300


;---------------------------------------------------------------------------
[State -1, Break Shaft]
type = ChangeState
value = 1260
triggerall = Var(59)
triggerall = ctrl
triggerall = p2bodydist X <= 90
triggerall = p2bodydist y = [-15,5]
triggerall = statetype = S || statetype = C
trigger1 = random < 300

;---------------------------------------------------------------------------
[State -1, Full Metal Charge]
type = ChangeState
value = 1250
triggerall = Var(59)
triggerall = ctrl
triggerall = p2bodydist y = [-75,-25]
triggerall = p2bodydist x >= 10
triggerall = statetype = S || statetype = C
trigger1 = random < 300

;---------------------------------------------------------------------------
[State -1, Bit Weapon]
type = ChangeState
value = 2300
triggerall = Var(59)
triggerall = ctrl
triggerall = p2bodydist y = [-5,5]
triggerall = p2bodydist x >= 30
trigger1 = random < 300

[State -1, Bit Weapon]
type = ChangeState
value = 2301
triggerall = Var(59)
triggerall = ctrl
triggerall = p2bodydist y = [-75,-35]
triggerall = p2bodydist x >= 30
trigger1 = random < 300


[State -1, Bit Weapon]
type = ChangeState
value = 2302
triggerall = Var(59)
triggerall = ctrl
triggerall = p2bodydist y = [235,75]
triggerall = p2bodydist x >= 30
trigger1 = random < 300

;----|AI Hypers |---------------------------------------------------

;------------------------------------------------------------------------------


;-------------------------------------------------------------------------

[State -1,Planet Smasher]
type = ChangeState
value = 3000
triggerall = Var(59)
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
triggerall = p2bodydist y = [-15,5]
trigger1 = ctrl
trigger1 = random < 400

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, Drill Slide]
type = ChangeState
value = 300
triggerall = Var(59)
triggerall = ctrl
triggerall = random < 100
triggerall = p2bodydist X <= 50
triggerall = p2bodydist Y = [-5,5]
trigger1 = statetype = S
trigger2 = stateno = 100

;---------------------------------------------------------------------------
[State -1, Shoulder Charge]
type = ChangeState
value = 310
triggerall = Var(59)
triggerall = ctrl
triggerall = random < 100
triggerall = p2bodydist X <= 50
triggerall = p2bodydist Y = [-15,5]
trigger1 = statetype = S
trigger2 = stateno = 100



;---------------------------------------------------------------------------





;---------------------------------------------------------------------------

[State -1,Planet Smasher]
type = ChangeState
value = 3000
triggerall = command = "Planet Smasher"
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = ctrl



;---------------------------------------------------------------------------
[State -1, Punch 1]
type = ChangeState
value = 1000
trigger1 = command = "x"
trigger1 = Stateno = 200
trigger1 = MoveContact
;trigger1 = Time = 10

;------------------------------------------------------------------------------
[State -1, Punch 2]
type = ChangeState
value = 1001
trigger1 = command = "x"
trigger1 = Stateno = 1000
trigger1 = MoveContact
trigger1 = Time >= 10

;------------------------------------------------------------------------------
[State -1, Grab To Punch]
type = ChangeState
value = 1002
triggerall= command = "x"
triggerall = Time >= 10
trigger1 = MoveContact
trigger1 = stateno = 1001
trigger2 = MoveContact
trigger2 = stateno = 1010

;---------------------------------------------------------------------------
[State -1, Shoulder Charge]
type = ChangeState
value = 1010
trigger1 = stateno = 1000
trigger1 = MoveContact
trigger1 = command = "y"
trigger1 = time >= 10

;---------------------------------------------------------------------------
[State -1, Punch 3]
type = ChangeState
value = 1015
trigger1 = stateno = 200
trigger1 = MoveContact
trigger1 = command = "y"
;trigger1 = time >= 10

;---------------------------------------------------------------------------
[State -1, Punch 4]
type = ChangeState
value = 1020
trigger1 = stateno = 1015
trigger1 = MoveContact
trigger1 = command = "y"
trigger1 = time >= 10


;---------------------------------------------------------------------------
[State -1, Grab to Break Shaft]
type = ChangeState
value = 1022
triggerall = command = "y"
triggerall = time >= 10
trigger1 = stateno = 1020
trigger1 = movecontact
trigger2 = stateno = 1030
trigger2 = movecontact

;---------------------------------------------------------------------------


[State -1, Direct Press]
type = ChangeState
value = 1035
triggerall = command = "x"
triggerall = time >= 5
trigger1 = stateno = 1020
trigger1 = movecontact
trigger2 = stateno = 1030
trigger2 = movecontact



;---------------------------------------------------------------------------
[State -1, Gatling Gun]
type = ChangeState
value = 1025
triggerall = command = "y"
triggerall = Time >= 5
trigger1 = MoveContact
trigger1 = stateno = 1001
trigger2 = MoveContact
trigger2 = Stateno = 1010


;---------------------------------------------------------------------------
[State -1, Punch 5]
type = ChangeState
value = 1030
trigger1 = stateno = 1015
trigger1 = MoveContact
trigger1 = command = "x"
trigger1 = time >= 10


;---------------------------------------------------------------------------
[State -1, Giga Crush]
type = ChangeState
value = 1230
triggerall = command = "Giga Crush"
triggerall = power >= 1000
trigger1 = ctrl 
trigger1 = StateType = S

;---------------------------------------------------------------------------
[State -1, Gatling Rod]
type = ChangeState
value = 1240
trigger1 = command = "QCF_x"
trigger1 = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1, Full Metal Charge]
type = ChangeState
value = 1250
triggerall = command = "QCB_x"
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1, Break Shaft]
type = ChangeState
value = 1260
triggerall = command = "QCF_y"
triggerall = ctrl
trigger1 = statetype = S


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


[State -1, Bit Weapon]
type = ChangeState
value = 2301
trigger1 = command = "a"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Bit Weapon]
type = ChangeState
value = 2301
trigger1 = command = "a"
trigger1 = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Bit Weapon]
type = ChangeState
value = 2302
trigger1 = command = "a"
trigger1 = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Bit Weapon]
type = ChangeState
value = 2300
trigger1 = command = "a"
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------


[State -1,Release b]
type = VarSet
trigger1 = command = "holdb"
triggerall = Stateno = 100 ||  Stateno = 105 || Stateno = 50 || Stateno = 54
var(55) = 0

[State -1,Release b]
type = VarSet
trigger1 = command != "holdb"
triggerall = Stateno != 100 ||  Stateno != 105 || Stateno != 50 || Stateno != 54
var(55) = 55

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(55) = 55
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command != "holdback"
trigger2 = command = "holdb"

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(55) = 55
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "holdb"


;---------------------------------------------------------------------------

[State -1, Air Boost]
type = ChangeState
value = 54
triggerall = var(54) < 2
triggerall = Stateno = 54
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "b"

[State -1]
type = varadd
trigger1 = stateno = 54
trigger1 = Time = 1
var(54) = 1



;---------------------------------------------------------------------------

[State -1,Grab to Punch]
type = ChangeState
value = 800
triggerall = command = "Stand Throw"
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S
;---------------------------------------------------------------------------

[State -1, Toss]
type = ChangeState
value = 830
triggerall = command = "Toss"
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1, Arm Twist]
type = ChangeState
value = 860
triggerall = command = "Arm Twist"
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S


;---------------------------------------------------------------------------

[State -1, Direct Press]
type = ChangeState
value = 890
trigger1 = command = "Direct Press"
trigger1 = ctrl
triggerall = stateno != 100
trigger1 = statetype = S


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = stateno != 100
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1, Shield Attack]
type = null;ChangeState
value = 207
triggerall = command = "x"
triggerall = stateno != 100
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1, Hard Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = stateno != 100
triggerall = ctrl
trigger1 = statetype = S



;---------------------------------------------------------------------------
[State -1,  Drill Slide]
type = ChangeState
value = 300
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "FFx"
trigger2 = command = "x"
trigger2 = stateno = 100

;---------------------------------------------------------------------------
[State -1, Shoulder Charge]
type = ChangeState
value = 310
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "FFy"
trigger2 = command = "y"
trigger2 = stateno = 100
;---------------------------------------------------------------------------
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = ctrl
trigger1 = statetype = C

;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = ctrl
trigger1 = statetype = C


;---------------------------------------------------------------------------
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = ctrl
trigger1 = statetype = A


;---------------------------------------------------------------------------
[State -1, Knee Blade]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = ctrl
trigger1 = statetype = A


;---------------------------------------------------------------------------
[State -1, Needle Press]
type = ChangeState
value = 650
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = ctrl
trigger1 = statetype = A

;---------------------------------------------------------------------------
[State -1, Slide foward]
type = ChangeState
value = 700
triggerall = stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Slide Backward]
type = ChangeState
value = 701
triggerall = stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1


;---------------------------------------------------------------------------
[State -1, Oiuchi]
type = ChangeState
value = 704
triggerall = p2stateno = 5110
triggerall = command = "Oiuchi"
trigger1 = ctrl 
trigger1 = StateType = S





;---------------------------------------------------------------------------
[State -1, Recharge Power]
type = ChangeState
value = 1220
triggerall = !var(59)
triggerall = command = "holdz"
triggerall = command = "holdy"
trigger1 = ctrl 
trigger1 = stateno != 1220
trigger1 = StateType = S


;---------------------------------------------------------------------------
[State -1, Special Reversal]
type = ChangeState
value = 2270
triggerall = command = "Special Reversal"
trigger1 = ctrl
trigger1 = statetype = S || statetype = C


