;Garlic Jr's CMD
;-| Super Motions |--------------------------------------------------------

[Command]
name = "BashnBlast1"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "BashnBlast2"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "BashnBlast3"
command = ~D, DF, F, x+z
time = 30

[Command]
name = "RushnCrush1"
command = ~F, D, B, x+y
time = 30

[Command]
name = "RushnCrush2"
command = ~F, D, B, y+z
time = 30

[Command]
name = "RushnCrush3"
command = ~F, D, B, x+z
time = 30

[Command]
name = "BellyBeam1"
command = ~D, DB, B, F, a+b
time = 30

[Command]
name = "BellyBeam2"
command = ~D, DB, B, F, b+c
time = 30

[Command]
name = "BellyBeam3"
command = ~D, DB, B, F, a+c

[Command]
name = "DeadZone1"
command = ~D, DF, F, D, DB, B, a+b
time = 30

[Command]
name = "DeadZone2"
command = ~D, DF, F, D, DB, B, b+c
time = 30

[Command]
name = "DeadZone3"
command = ~D, DF, F, D, DB, B, a+c
time = 30

;-| Special Motions |------------------------------------------------------

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

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

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

[Command]
name = "QCFD_x"
command = ~F, DF, D, x

[Command]
name = "QCFD_y"
command = ~F, DF, D, y

[Command]
name = "QCFD_z"
command = ~F, DF, D, z

[Command]
name = "FBF_x"
command = ~F, B, F, x

[Command]
name = "FBF_y"
command = ~F, B, F, y

[Command]
name = "FBF_z"
command = ~F, B, F, z

[Command]
name = "FBF_a"
command = ~F, B, F, a

[Command]
name = "FBF_b"
command = ~F, B, F, b

[Command]
name = "FBF_c"
command = ~F, B, F, c

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
name = "DD_a"
command = D,D, a

[Command]
name = "DD_b"
command = D,D, b

[Command]
name = "DD_c"
command = D,D, c

[Command]
name = "DD_x"
command = D,D, x

[Command]
name = "DD_y"
command = D,D, y

[Command]
name = "DD_z"
command = D,D, z

[Command]
name = "BBF_a"
command = B, B, F, a

[Command]
name = "BBF_b"
command = B, B, F, b

[Command]
name = "BBF_c"
command = B, B, F, c

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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
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
name = "s"
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
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1
;-| AI Activate |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, z
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, c
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F, z
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
;AI Activation
;---------------------------------------------------------------------------
[State -1, ArtificialIntelligence]
type = VarSet	
triggerall = Var(39) != 1
trigger1 = command = "AI_01" 
trigger2 = command = "AI_02"
trigger3 = command = "AI_03"
trigger4 = command = "AI_04"
trigger5 = command = "AI_05"
trigger6 = command = "AI_06"
trigger7 = command = "AI_07"
trigger8 = command = "AI_08"
trigger9 = command = "AI_09"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
v = 39
value = 1
;===========================================================================
;Hyper Attacks
;---------------------------------------------------------------------------
;Bash'N'Blast
[State -1, Bash'n'Blast]
type = ChangeState
value = 1900
triggerall = (command = "BashnBlast1" || command = "BashnBlast2" || command = "BashnBlast3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [1300, 1320]) && movecontact
trigger5 = stateno = 1502 && movecontact
trigger6 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
;Belly Beam
[State -1, Belly Beam]
type = ChangeState
value = 1800
triggerall = (command = "BellyBeam1" || command = "BellyBeam2" || command = "BellyBeam3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [1300, 1320]) && movecontact
trigger5 = stateno = 1502 && movecontact
trigger6 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
;Dead Zone
[State -1, Dead Zone]
type = ChangeState
value = 2000
triggerall = (command = "DeadZone1" || command = "DeadZone2" || command = "DeadZone3") && command != "holddown" && power >= 2000 && p2life <= 250
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Rush'N'Crush
[State -1, Rush'n'Crush]
type = ChangeState
value = 2100
triggerall = (command = "RushnCrush1" || command = "RushnCrush2" || command = "RushnCrush3") && command != "holddown" && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [1300, 1320]) && movecontact
trigger5 = stateno = 1502 && movecontact
trigger6 = (stateno = [400, 440]) && movecontact
;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
trigger2 = (stateno = 250 && movecontact)
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "a"  && command = "x") && (prevstateno != 2900 || prevstateno != 2901) && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2901
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105 || stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Fireball Forward
[State -1, Fireball_F]
type = ChangeState
value = 1000
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [1300,1320])
trigger5 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
; Shoulder Tackle Weak
[State -1, Shoulder_Tackle.W]
type = ChangeState
value = 1300
triggerall = (command = "QCF_x")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact

; Shoulder Tackle Medium
[State -1, Shoulder_Tackle.M]
type = ChangeState
value = 1310
triggerall = (command = "QCF_y")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact

; Shoulder Tackle Strong
[State -1, Shoulder_Tackle.S]
type = ChangeState
value = 1320
triggerall = (command = "QCF_z")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
; Garlic Meteor Weak
[State -1, Garlic_Meteor.W]
type = ChangeState
value = 1350
triggerall = (command = "QCFD_x")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact

; Garlic Meteor Medium
[State -1, Garlic_Meteor.M]
type = ChangeState
value = 1360
triggerall = (command = "QCFD_y")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact

; Garlic Meteor Strong
[State -1, Garlic_Meteor.S]
type = ChangeState
value = 1370
triggerall = (command = "QCFD_z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
; Shoulder Tackle Weak
;---------------------------------------------------------------------------
[State -1, Knee.W]
type = ChangeState
value = 1500
triggerall = (command = "QCF_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact

[State -1, Knee.M]
type = ChangeState
value = 1510
triggerall = (command = "QCF_b")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact

[State -1, Knee.S]
type = ChangeState
value = 1520
triggerall = (command = "QCF_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
; Ground Pound Weak
[State -1, Ground_Pound.W]
type = ChangeState
value = 1400
triggerall = (command = "QCB_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact

; Ground Pound Medium
[State -1, Ground_Pound.M]
type = ChangeState
value = 1410
triggerall = (command = "QCB_b" )&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact

; Ground Pound Strong
[State -1, Ground_Pound.S]
type = ChangeState
value = 1420
triggerall = (command = "QCB_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240 ||  stateno = 260) && movecontact
trigger4 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
; Grab and Toss
[State -1, Toss]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H

; Face Breaker
[State -1, Face Breaker]
type = ChangeState
value = 900
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;---------------------------------------------------------------------------
;Charge Up/Power Up Human
[State -1, ChargePowerH]
type = ChangeState
value = 1700
triggerall =power < 3000 && var(39) = 0
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "hold_a" && command = "hold_x" && stateno = 3100 && command != "holdfwd"
;---------------------------------------------------------------------------
;Charge Up/Power Up AI
[State -1, ChargePowerAI]
type = ChangeState
value = 1700
triggerall = power < 3000 && var(39) = 1 && p2bodydist x > 200
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "hold_a" && command = "hold_x" && stateno = 3100 && command != "holdfwd"
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 250
triggerall = ((command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z"))
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 260) && movecontact
trigger3 = (stateno = [400, 440]) && movecontact
;---------------------------------------------------------------------------
; Elbow
[State -1, Elbow]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown" && p2bodydist x < 10
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && movecontact

; Jab(Weak Punch)
[State -1, Jab]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,205]) && movecontact

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235) && movecontact
trigger3 = (stateno = 400 || stateno = 430) && movecontact

; UberPunch
[State -1, Uber Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 250 || stateno = 260) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------

; Standing Light Kick
[State -1, LKick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 235) && movecontact
trigger3 = (stateno = 400) && movecontact

; Standing Medium Kick
[State -1, Stand Med Kick]
type = ChangeState
value = 260
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230|| stateno = 235) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact

; Standing Strong Kick
[State -1, Standing Str Kick]
type = ChangeState
value = 240
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230|| stateno = 235 || stateno = 260)
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------

; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200||stateno = 205) && movecontact

; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400 || stateno = 430) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=230||stateno=235) && movecontact

; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=220||stateno=230||stateno=235||stateno=260) && movecontact
;---------------------------------------------------------------------------

; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = (stateno=200||stateno=205||stateno=230||stateno=235) && movecontact

; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=230||stateno=235||stateno=260) && movecontact

; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=220||stateno=230||stateno=235||stateno=240||stateno=260) && movecontact

;---------------------------------------------------------------------------

; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = statetype = A && ctrl

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = (command = "z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,619]) && movecontact
trigger3 = (stateno = [630,649]) && movecontact

;---------------------------------------------------------------------------

; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; Jump Medium Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = (command = "b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 630) && movecontact

; Jump Strong Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 650
triggerall = (command = "c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,619]) && movecontact
trigger3 = (stateno = [630,649]) && movecontact

