;-| SHIN BUU by dragonballfury (aka mugenfury) |------------------------------------------------------

;-| Basics |------------------------------------------------------
[Command]                       
name = "holda"                  
command = /a                  
time = 1 

[Command]                     
name = "holdb"                  
command = /b                   
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
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
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
name = "fwd_xy"
command = /F, x+y
time = 1

[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1

[Command]
name = "back_bc"
command = /B, b+c
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
name = "s"
command = s
time = 1

[Command]
name = "charge"
command = /a
time = 1

[Command]
name= "charge 1"
command= /x
time = 1 

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
name = "hold_s"
command = /s
time = 1

;-| Specials |------------------------------------------------------
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCD_b"
command = ~F, DF, D, b

[Command]
name = "FDF_a"
command = ~F, D, F, a

[Command]
name = "FDF_b"
command = ~F, D, F, b

[Command]
name = "FDF_x"
command = ~F, D, F, x

[Command]
name = "FDF_y"
command = ~F, D, F, y

[Command]
name = "FBF"
command = ~F, B, F, z

[Command]
name = "FBF_x"
command = ~F, B, F, x
time = 25

[Command]
name = "FBF_y"
command = ~F, B, F, y
time = 25

;-| Supers |------------------------------------------------------
[Command]
name = "Majin Blast"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "Majin Ball"
command = ~D, DF, F, D, DF, F, a
time = 25

;-| Hyper |------------------------------------------------------
[Command]
name = "Majin Projection Punch"
command = ~F, B, D, F, b
time = 25

[Statedef -1]

;---------------------------------------------------------------------------
;Dash
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3755
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3765
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Ki Charge
[State -1, Ki Charge]
type = ChangeState
value = 7030
triggerall = (Command = "holda") && (Command = "holdx") && (Command != "holdfwd") && (Command != "holdback") && (stateno = 0)
trigger1 = (power < 5000) && (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Fly
[State -1, Fly]
type = ChangeState
value = 1800
triggerall = command = "fly"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1, Fly Air]
type = ChangeState
value = 1900
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1, Ground]
type = ChangeState
value = 1905
triggerall = command = "fly"
trigger1 = stateno = 1900

;---------------------------------------------------------------------------
;Combo
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) && time > 7 || (stateno = [400,499]) && time > 7 || stateno = 2000 && time > 7
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Majin Throw
[State -1, Majin Throw]
type = ChangeState
value = 2040
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;Air Combo
[State -1, Air Combo condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0

[State -1, Air Combo condition Check]
type = VarSet
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && time > 4 || stateno = 1040 && time > 4 || stateno = 1060 && time > 4 || stateno = 1061 && time > 4 || stateno = 2010 && time > 4 || stateno = 2030 && time > 4
trigger2 = movecontact
var(2) = 1

;---------------------------------------------------------------------------
;Majin Blast
[State -1, Majin Blast]
type = ChangeState
value = 3000
triggerall = command = "Majin Blast"
triggerall = command != "holddown"
triggerall = power > 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 3000)

;---------------------------------------------------------------------------
;Majin Ball
[State -1, Majin Ball]
type = ChangeState
value = 3010
triggerall = command = "Majin Ball"
triggerall = command != "holddown"
triggerall = power > 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 3010)

;---------------------------------------------------------------------------
;Majin Projection Punch
[State -1, Majin Projection Punch]
type = ChangeState
value = 3020
triggerall = command = "Majin Projection Punch"
triggerall = command != "holddown"
triggerall = power > 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 3020)

;---------------------------------------------------------------------------
;Fire Blast
[State -1, Fire Blast]
type = ChangeState
value = 2000
triggerall = command = "FDF_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 2000)

;---------------------------------------------------------------------------
;Fire Blast Ground Zone
[State -1, Fire Blast Ground Zone]
type = ChangeState
value = 2010
triggerall = (command = "QCF_x" && statetype = A)
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (var(2) && stateno != 2010)

;---------------------------------------------------------------------------
;Fire Blast Sky Zone
[State -1, Fire Blast Sky Zone]
type = ChangeState
value = 2020
triggerall = command = "FDF_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 2020)

;---------------------------------------------------------------------------
;Sky Blast
[State -1, Sky Blast]
type = ChangeState
value = 2030
triggerall = (command = "QCF_y" && statetype = A)
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (var(2) && stateno != 2030)

;---------------------------------------------------------------------------
;Light Knee Strike
[State -1, Light Knee Strike]
type = ChangeState
value = 1060
triggerall = command = "FDF_a"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (statetype = A)
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1060) || (var(2) && stateno != 1060)

;---------------------------------------------------------------------------
;Strong Knee Strike
[State -1, Strong Knee Strike]
type = ChangeState
value = 1061
triggerall = command = "FDF_b"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (statetype = A)
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1061) || (var(2) && stateno != 1061)

;---------------------------------------------------------------------------
;Fast Strike
[State -1, Fast Strike]
type = ChangeState
value = 1070
triggerall = (command = "QCF_x" && statetype = S)
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1070)

;---------------------------------------------------------------------------
;Fast Strike Combinaison
[State -1, Fast Strike Combinaison]
type = ChangeState
value = 1071
triggerall = command = "QCB_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1071)

;---------------------------------------------------------------------------
;Strike Combinaison
[State -1, Strike Combinaison]
type = ChangeState
value = 1080
triggerall = (command = "FBF_y" && statetype = S)
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1080)

;---------------------------------------------------------------------------
;Invisible Strike
[State -1, Invisible Strike]
type = ChangeState
value = 1090
triggerall = (command = "FBF_x" && statetype = S)
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1090)

;---------------------------------------------------------------------------
;Light Ground Kick
[State -1, Light Ground Kick]
type = ChangeState
value = 1010
triggerall = command = "QCB_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1010)

;---------------------------------------------------------------------------
;Medium Ground Kick
[State -1, Medium Ground Kick]
type = ChangeState
value = 1011
triggerall = command = "QCB_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1011)

;---------------------------------------------------------------------------
;Strong Ground Kick
[State -1, Strong Ground Kick]
type = ChangeState
value = 1012
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1012)

;---------------------------------------------------------------------------
;Head Strike
[State -1, Head Strike]
type = ChangeState
value = 1020
triggerall = command = "QCF_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1020)

;---------------------------------------------------------------------------
;Ball Strike
[State -1, Ball Strike]
type = ChangeState
value = 1030
triggerall = command = "QCF_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1030)

;---------------------------------------------------------------------------
;Power Punch
[State -1, Power Punch]
type = ChangeState
value = 1000
triggerall = (command = "QCF_y" && statetype = S)
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (var(1) && stateno != 1000)

;---------------------------------------------------------------------------
;Air Instant Kicking
[State -1, Air Instant Kicking]
type = ChangeState
value = 1040
triggerall = command = "QCD_b" && statetype = A
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(2) && stateno != 1040)

;---------------------------------------------------------------------------
;Stand Light Punch Back
[State -1, Stand Light Punch Back]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X < 7
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 201)

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 200)

;---------------------------------------------------------------------------
;Stand Strong Punch Back
[State -1, Stand Strong Punch Back]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 7
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 260)

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 210)

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(1) && stateno != 420)

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1, Crouch Strong Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(1) && stateno != 400)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(2) && stateno != 600)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(2) && stateno != 601)

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 230)

;---------------------------------------------------------------------------
;Stand Strong Kick Back
[State -1, Stand Strong Kick Back]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 7
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 250)

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(1) && stateno != 240)

;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(1) && stateno != 410)

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1, Crouch Strong Kick]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(1) && stateno != 411)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(2) && stateno != 610)

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(2) && stateno != 611)