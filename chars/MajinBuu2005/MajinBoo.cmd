;==============================
;"majin buu", From super butoUDen 3
;==============================

;----------------------------------------
;author:	orestes
;----------------------------------------

;===========================================================================
;-| notes |-----------------------------------------------------------------
;nothing.

;-| hyper motions |--------------------------------------------------------

[command]
name = "ikei"
command = ~D, DF, F, D, DF, F, z
time = 25

[command]
name = "yoshta"
command = ~D, DB, B, F, z
time = 25

[command]
name = "energy bomb"
command = ~B,DB,D,DF,F,B,z
time = 25

[command]
name = "buu evolve"
command = ~D, DB, B, F, z+c
time = 25

;-| special motions |------------------------------------------------------

[command]
name = "triple ki"
command = ~D, DF, F, z
time = 20

[command]
name = "freeze"
command = ~F,B,F, z
time = 20

[command]
name = "flying heaDButt"
command = ~D, DF, F, x
time = 20

[command]
name = "flying heaDButt"
command = ~D, DF, F, y
time = 20

[command]
name = "rushing attack"
command = ~D, DF, F, a
time = 20

[command]
name = "rushing attack"
command = ~D, DF, F, b
time = 20

;-| misc motions |---------------------------------------------------------

[command]
name = "evadefwd"
command = /F, b+y
time = 12

[command]
name = "evadebwd"
command = /B, b+y
time = 12

;-| DoUBle tap |-----------------------------------------------------------

[command]
name = "ff"     
command = F, F
time = 12

[command]
name = "bb"     
command = B, B
time = 12

[command]
name = "long jump"
command = ~D, UF
time = 12

[command]
name = "long jump"
command = ~D, UB
time = 12

;-| 2/3 button combination |-----------------------------------------------

[command]
name = "recovery"
command = x+y
time = 5

[command]
name = "recovery"
command = y+z
time = 5

[command]
name = "recovery"
command = x+z
time = 5

[command]
name = "recovery"
command = x+y+z
time = 5

[command]
name = "xy"
command = x+y
time = 5

[command]
name = "yz"
command = y+z
time = 5

[command]
name = "xz"
command = x+z
time = 5

[command]
name = "xyz"
command = x+y+z
time = 5

[command]
name = "ab"
command = a+b
time = 5

[command]
name = "bc"
command = b+c
time = 5

[command]
name = "ac"
command = a+c
time = 5

[command]
name = "abc"
command = a+b+c
time = 5

[command]
name = "xa"
command = x+a
time = 5

[command]
name = "by"
command = b+y
time = 5

[command]
name = "cz"
command = c+z
time = 5

;-| Dir + button |---------------------------------------------------------

;-| single button |---------------------------------------------------------

[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "s"
command = s
time = 1

;-| hold Dir |--------------------------------------------------------------

[command]
name = "holdfwd"
command = /$F
time = 1

[command]
name = "holdback"
command = /$B
time = 1

[command]
name = "holdup" 
command = /$U
time = 1

[command]
name = "holddown"
command = /$D
time = 1

[command]
name = "holdx" 
command = /x
time = 1

[command]
name = "holdy" 
command = /y
time = 1

[command]
name = "holdz" 
command = /z
time = 1

[command]
name = "holda" 
command = /a
time = 1

[command]
name = "holDB" 
command = /B
time = 1

[command]
name = "holdc" 
command = /c
time = 1

[command]
name = "holds" 
command = /s
time = 1

;---------------------------------------------------------------------------

[statedef -1]

;===========================================================================
;-| misc |------------------------------------------------------------------

;---------------------------------------------------------------------------
;long jump
[state -1: 		long jump]
type 			= changestate
value 		= 40
triggerall 		= (command = "long jump")
trigger1		= (statetype = s) && (ctrl)

;---------------------------------------------------------------------------
;run Fwd
[state -1: 		run Fwd]
type 			= changestate
value 		= 100
triggerall 		= (command = "ff") && (stateno != [100,106])
trigger1		= (statetype = s) && (ctrl)

;---------------------------------------------------------------------------
;run back
[state -1: 		run back]
type 			= changestate
value 		= 105
triggerall 		= (command = "bb") && (stateno != [100,106])
trigger1		= (statetype = s) && (ctrl)

;---------------------------------------------------------------------------
;evade Forward
[state -1: 		evadefwd]
type 			= changestate
value 		= 7010
triggerall 		= (command = "evadefwd")
trigger1		= (statetype = s) && (ctrl)

;---------------------------------------------------------------------------
;evade backward
[state -1: 		evadebwd]
type 			= changestate
value 		= 7020
triggerall 		= (command = "evadebwd")
trigger1		= (statetype = s) && (ctrl)

;---------------------------------------------------------------------------
;ki charge
[state -1: 		ki charge]
type 			= changestate
value 		= 7030
triggerall 		= (command = "holda") && (command = "holdx") && (command != "holdfwd") && (command != "holdback") && (var(2) <= 0)
trigger1		= (statetype = s) && (ctrl)

;===========================================================================
;-| hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;ikei
[state -1: 		ikei]
type 			= changestate
value 		= 3000
triggerall 		= (command = "ikei") && (power >= 1000)
trigger1		= ((statetype = s) && (ctrl)) || (var(3) > 0)

;---------------------------------------------------------------------------
;yoshta!!
[state -1: 		yoshta!!]
type 			= changestate
value 		= 3100
triggerall 		= (command = "yoshta") && (power >= 2000)
trigger1		= ((statetype = s) && (ctrl)) || (var(3) > 0)

;---------------------------------------------------------------------------
;energy bomb
[state -1: 		energy bomb]
type 			= changestate
value 		= 3500
triggerall 		= (command = "energy bomb") && (power >= 3000)
trigger1		= ((statetype = s) && (ctrl)) || (var(3) > 0)

;===========================================================================
;-| special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;freeze
[state -1: 		freeze]
type 			= changestate
value 		= 1000
triggerall 		= (command = "freeze") && p2statetype = s
trigger1		= ((statetype = s) && (ctrl)) || (stateno = 40) || (var(3) = 1)

;---------------------------------------------------------------------------
;flying heaDButt
[state -1: 		flying heaDButt]
type 			= changestate
value 		= 1100
triggerall 		= (command = "flying heaDButt")
trigger1		= ((statetype = s) && (ctrl)) || (var(3) = 1)

;---------------------------------------------------------------------------
;rolling attack
[state -1: 		rolling attack]
type 			= changestate
value 		= 1200
triggerall 		= (command = "rushing attack")
trigger1		= ((statetype = s) && (ctrl)) || (var(3) = 1)

;---------------------------------------------------------------------------
;triple ki
[state -1: 		triple ki]
type 			= changestate
value 		= 1400
triggerall 		= (command = "triple ki")
trigger1		= ((statetype = s) && (ctrl)) || (var(3) = 1)

;===========================================================================
;-| basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;throw001
[state -1: 		throw]
type 			= changestate
value 		= 800
triggerall 		= (command = "xa") && ((command = "holdback") || (command = "holdfwd")) && (var(2) <= 0)
trigger1		= (statetype = s) && (ctrl) && (stateno != [100,105])

;---------------------------------------------------------------------------
;stand weak punch
[state -1: 		swp]
type 			= changestate
value 		= 200
triggerall 		= (command = "x") && (command != "holddown") && (var(2) <= 0)
trigger1		= (statetype = s) && (ctrl)
trigger2		= ((stateno = 200) || (stateno = 220) || (stateno = 400)) && (movecontact) && (hitpausetime <= 4)
trigger3		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;stand strong punch
[state -1: 		ssp]
type 			= changestate
value 		= (ifelse(enemynear, pos y > -40,210,215))
triggerall 		= (command = "y") && (command != "holddown") && (var(2) <= 0)
trigger1		= (statetype = s) && (ctrl)
trigger2		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;stand weak kick
[state -1: 		swk]
type 			= changestate
value 		= 220
triggerall 		= (command = "a") && (command != "holddown") && (var(2) <= 0)
trigger1		= (statetype = s) && (ctrl)
trigger2		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;stand strong kick
[state -1: 		ssk]
type 			= changestate
value 		= 230
triggerall 		= (command = "b") && (command != "holddown") && (var(2) <= 0)
trigger1		= (statetype = s) && (ctrl)
trigger2		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;crouch weak punch
[state -1: 		cwp]
type 			= changestate
value 		= 400
triggerall 		= (command = "x") && (command = "holddown") && (var(2) <= 0)
trigger1		= (statetype = c) && (ctrl)
trigger2		= ((stateno = 200) || (stateno = 400)) && (movecontact) && (hitpausetime <= 4)
trigger3		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;crouch strong punch
[state -1: 		csp]
type 			= changestate
value 		= 410
triggerall 		= (command = "y") && (command = "holddown") && (var(2) <= 0)
trigger1		= (statetype = c) && (ctrl)
trigger2		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;crouch weak kick
[state -1: 		cwk]
type 			= changestate
value 		= 420
triggerall 		= (command = "a") && (command = "holddown") && (var(2) <= 0)
trigger1		= (statetype = c) && (ctrl)
trigger2		= ((stateno = 200) || (stateno = 220) || (stateno = 400) || (stateno = 420)) && (movecontact) && (hitpausetime <= 4)
trigger3		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;crouch strong kick
[state -1: 		csk]
type 			= changestate
value 		= 430
triggerall 		= (command = "b") && (command = "holddown") && (var(2) <= 0)
trigger1		= (statetype = c) && (ctrl)
trigger2		= (stateno = 7040) && (statetype = c) && (time > 4)

;---------------------------------------------------------------------------
;jump weak punch
[state -1: 		jwp]
type 			= changestate
value 		= 600
triggerall 		= (command = "x") && (var(2) <= 0)
trigger1		= (statetype = a) && (ctrl)

;---------------------------------------------------------------------------
;jump strong punch
[state -1: 		jsp]
type 			= changestate
value 		= 610
triggerall 		= (command = "y") && (var(2) <= 0)
trigger1		= (statetype = a) && (ctrl)

;---------------------------------------------------------------------------
;jump weak kick
[state -1: 		jwk]
type 			= changestate
value 		= 620
triggerall 		= (command = "a") && (var(2) <= 0)
trigger1		= (statetype = a) && (ctrl)

;---------------------------------------------------------------------------
;jump strong kick
[state -1: 		jsk]
type 			= changestate
value 		= 630
triggerall 		= (command = "b") && (var(2) <= 0)
trigger1		= (statetype = a) && (ctrl)

;---------------------------------------------------------------------------
;kikou ha
[state -1: 		kikou ha]
type 			= changestate
value 		= 700
triggerall		= (command = "z") && (var(2) <= 0)
trigger1		= ((statetype != a) && (ctrl)) || (var(3) = 1)
trigger2		= (stateno = 40) || ((stateno = 700) && (animelem = 3, > 5) && (prevstateno != 700))
trigger3		= (stateno = 7040) && (statetype = c) && (time > 4)
