;==============================
;"Goku", from Super Boutuden 2
;==============================

;----------------------------------------
;Author:	The Necromancer
;		flowergirl@cutey.com
;----------------------------------------

;===========================================================================
;-| Notes |-----------------------------------------------------------------
;Nothing.

;-| Overdrive Motions |--------------------------------------------------------

; Unamed Overdrive [1]
[Command]
name = "UO"
command = D,F,D,F, b
time = 30

; Unamed Overdrive [2]
[Command]
name = "UO2"
command = D,F,D,F, y
time = 30

; Final Flash (Mega/Bit/Uoober!~)
[Command]
name = "FFM"
command = a+y
time = 30

; Big Flame (Mega/Bit/Uoober!~)
[Command]
name = "BF"
command = D,B,D,B, y
time = 30

;-| Special Motions |------------------------------------------------------

; Aerial Fist
[Command]
name = "AF"
command = D,F, a
time = 15

; Generic Beam
[Command]
name = "GB"
command = D,B, x
time = 15

; Pillar Flame
[Command]
name = "PF"
command = D,F, x
time = 15

; Jab
[Command]
name = "jab"
command = D, F, b
time = 30

; Knee Upper
[Command]
name = "KU"
command = D, F, y
time = 30

; Knee Upper
[Command]
name = "KUF"
command = D,B, b
time = 30

; Teleport Behind
[Command]
name = "TP"
command = x+a
time = 30

[Command]
name = "charge1"
command = /z

[Command]
name = "charge2"
command = /z


;-| Misc Motions |---------------------------------------------------------

[Command]
name = "EvadeFWD"
command = /F, b+y
time = 12

[Command]
name = "EvadeBWD"
command = /B, b+y
time = 12

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
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

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------

;---------------------------------------------------------------------------
;Long Jump
[State -1: 		Long Jump]
type 			= null
value 			= 40
triggerall 		= (Command = "Long Jump")
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 			= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 			= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;Airdash Forward
[State -1: 		Dash FWD]
type 			= ChangeState
value 			= 4000
triggerall 		= (Command = "FF") && (Var(0)= 0); Var stops it dashing twice in air ...
trigger1		= (StateType = A) && (Ctrl)

;Airdash Back
[State -1: 		Run BCK]
type 			= ChangeState
value 			= 4001
triggerall 		= (Command = "BB") && (Var(0)= 0); Var stops it dashing twice in air ...
trigger1		= (StateType = A) && (Ctrl)

;===========================================================================
;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Unamed Overdrive [1]
[State -1: 		JSK]
type 			= ChangeState
value 			= 2000
triggerall 		= Command = "UO" && power > 1000
trigger1		= (StateType = S) && (Ctrl)
trigger2		=((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)

;Unamed Overdrive [2]
[State -1: 		JSK]
type 			= ChangeState
value 			= 2010
triggerall 		= Command = "UO2" && power > 1000
trigger1		= (StateType = S) && (Ctrl)
trigger2		=((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)

;Final Flash
[State -1: 		JSK]
type 			= ChangeState
value 			= 3500
triggerall 		= Command = "FFM" && power >= 3000
trigger1		= (StateType = S) && (Ctrl)
trigger2		=((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)

;Big Flame
[State -1: 		JSK]
type 			= ChangeState
value 			= 4731
triggerall 		= Command = "BF" && power > 1000
trigger1		= (StateType = S) && (Ctrl)
trigger2		=((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;===========================================================================
;-| Special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;Aerial Fist
[State -1: 		JSK]
type 			= ChangeState
value 			= 300
triggerall 		= (Command = "AF")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)
trigger4		= (Stateno = 1890) && (movecontact)
trigger5		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
;---------------------------------------------------------------------------
;Generic Beam
[State -1: 		JSK]
type 			= ChangeState
value 			= 1150
triggerall 		= (Command = "GB")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)
trigger4		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger5		= (Stateno = 1890) && (movecontact)
;---------------------------------------------------------------------------
;Pillar Flame
[State -1: 		JSK]
type 			= ChangeState
value 			= 2024
triggerall 		= (Command = "PF")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)
trigger4		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger5		= (Stateno = 1890) && (movecontact)
;---------------------------------------------------------------------------
;Fireball
[State -1: 		JSK]
type 			= ChangeState
value 			= 2300
triggerall 		= (Command = "c") && (power > 200)
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)

;Jab Attack
[State -1: 		JSK]
type 			= ChangeState
value 			= 1890
triggerall 		= (Command = "jab")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)
trigger4		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230)) && (MoveContact)

;Knee Upper
[State -1: 		JSK]
type 			= ChangeState
value 			= 1895
triggerall 		= (Command = "KU")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)
trigger4		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger5		= (Stateno = 1890) && (Movecontact)
trigger6		= (StateType = A) && (Movecontact) && (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630)

[State -1: 		JSK]
type 			= ChangeState
value 			= 3800
triggerall 		= (Command = "TP")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= (Statetype = S) && (StateNo = 100)
trigger3		= (Statetype = S) && (StateNo = 101)
trigger4		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230)) && (MoveContact)
trigger5		= (Stateno = 1890) && (Movecontact)

;Charge
[State -1]
type 			= ChangeState
value 			= 730
triggerall 		= command = "charge1"
triggerall 		= command = "charge2"
trigger1		= (StateType = S) && (Ctrl)
;---------------------------------------------------------------------------

;===========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Throw001
[State -1: 		Throw]
type 			= ChangeState
value 			= 800
triggerall 		= (Command = "xa") && ((Command = "holdback") || (Command = "holdfwd")) && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl) && (StateNo != [100,105])
;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1: 		SWP]
type 			= ChangeState
value 			= 200
triggerall 		= (Command = "x") && (Command != "holddown")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger3		= (Statetype = S) && (StateNo = 100)
trigger4		= (Statetype = S) && (StateNo = 101)
trigger5		= prevStateno = 3800

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1: 		SSP]
type 			= ChangeState
value 			= (IfElse(EnemyNear, Pos Y > -40,210,215))
triggerall 		= (Command = "y") && (Command != "holddown")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger3		= (Statetype = S) && (StateNo = 100)
trigger4		= (Statetype = S) && (StateNo = 101)
trigger5		= prevStateno = 3800

;---------------------------------------------------------------------------
;Stand Weak Kick
[State -1: 		SWK]
type 			= ChangeState
value 			= 220
triggerall 		= (Command = "a") && (Command != "holddown")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger3		= (Statetype = S) && (StateNo = 100)
trigger4		= (Statetype = S) && (StateNo = 101)
trigger5		= prevStateno = 3800

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1: 		SSK]
type 			= ChangeState
value 			= (IfElse(EnemyNear, Pos Y > -40,230,235))
triggerall 		= (Command = "b") && (Command != "holddown")
trigger1		= (StateType = S) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 210) || (StateNo = 220) || (StateNo = 230) || (StateNo = 235) || (StateNo = 215)) && (MoveContact)
trigger3		= (Statetype = S) && (StateNo = 100)
trigger4		= (Statetype = S) && (StateNo = 101)
trigger5		= prevStateno = 3800

;---------------------------------------------------------------------------
;Crouch Weak Punch
[State -1: 		CWP]
type 			= ChangeState
value 			= 400
triggerall 		= (Command = "x") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 400)) && (MoveContact) && (HitPauseTime <= 4)
trigger3		= (StateNo = 7040) && (StateType = C) && (Time > 4)

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1: 		CSP]
type 			= ChangeState
value 			= 410
triggerall 		= (Command = "y") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= (StateNo = 7040) && (StateType = C) && (Time > 4)

;---------------------------------------------------------------------------
;Crouch Weak Kick
[State -1: 		CWK]
type 			= ChangeState
value 			= 420
triggerall 		= (Command = "a") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= ((StateNo = 200) || (StateNo = 220) || (StateNo = 400) || (StateNo = 420)) && (MoveContact) && (HitPauseTime <= 4)
trigger3		= (StateNo = 7040) && (StateType = C) && (Time > 4)

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1: 		CSK]
type 			= ChangeState
value 			= 430
triggerall 		= (Command = "b") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= (StateNo = 7040) && (StateType = C) && (Time > 4)

;---------------------------------------------------------------------------
;Jump Weak Punch
[State -1: 		JWP]
type 			= ChangeState
value 			= 600
triggerall 		= (Command = "x")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= (StateType = A) && (movecontact = 1) && (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1: 		JSP]
type 			= ChangeState
value 			= 610
triggerall 		= (Command = "y")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= (StateType = A) && (movecontact = 1) && (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630)

;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 			= 620
triggerall 		= (Command = "a")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= (StateType = A) && (movecontact = 1) && (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630)

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 			= 630
triggerall 		= (Command = "b")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= (StateType = A) && (movecontact = 1) && (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630)
;---------------------------------------------------------------------------
