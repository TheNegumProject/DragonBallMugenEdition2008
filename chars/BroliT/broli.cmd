1;-Supers---------------------------------------------------------------------
[Command]
name = "BIG Ball hit"
command = ~D, F, $D, F, b
time = 20

[Command]
name = "Ball hit"
command = ~D, F, $D, F, a
time = 20

[Command]
name = "BIG Ball throw"
command = ~D, F, $D, F, y
time = 20

[Command]
name = "Ball throw"
command = ~D, F, $D, F, x
time = 20

;-Specials-------------------------------------------------------------------
;[Command]
;name = "fwdx"
;command = ~F, x

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 10

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 10

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y
time = 10

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 10

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 10

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 10

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 10

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 10

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 10

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 10

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 10

[Command]
name = "BF_x"
command = ~B, F, x
time = 10

[Command]
name = "BF_y"
command = ~B, F, y
time = 10

[Command]
name = "BF_z"
command = ~B, F, z
time = 10

[Command]
name = "BF_a"
command = ~B, F, a
time = 10

[Command]
name = "BF_b"
command = ~B, F, b
time = 10

[Command]
name = "BF_c"
command = ~B, F, c
time = 10

[Command]
name = "BDF_z"
command = ~B, DB, D, DF, F, z
time = 10

[Command]
name = "BDF_y"
command = ~B, DB, D, DF, F, y
time = 10

[Command]
name = "BDF_x"
command = ~B, DB, D, DF, F, x
time = 10

[Command]
name = "FF_ab"
command = F, F, a+b
time = 20

[Command]
name = "FF_a"
command = F, F, a
time = 10

[Command]
name = "FF_b"
command = F, F, b
time = 10
;-Double-Tap-----------------------------------------------------------------
[Command]
name = "FF"    
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-2/3 Button Combo's--------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "holda"
command = /a
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
name = "holdc"
command = /c
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "Sjump"
command = ~$D, $U
time = 8

;-Direction plus button-----------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-Single Button---------------------------------------------------------
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

;-Hold Direction--------------------------------------------------------------
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

[command]
name = "holdb"
command = /$b
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;Supers---------------------------------------------------------------------
;---------------------------------------------------------------------------
;Ball Hit
[State -1, ball hit]
type = Changestate
value = 1300
triggerall = power>= 2000
triggerall = command = "BIG Ball hit"
trigger1 = (statetype = S)
;---------------------------------------------------------------------------
;Ball Hit
[State -1, ball hit]
type = Changestate
value = 1100
triggerall = power>= 1000
triggerall = command = "Ball hit"
trigger1 = (statetype = S)
;---------------------------------------------------------------------------
;Big Ball Throw
[State -1, ball Throw]
type = Changestate
value = 1000
triggerall = power>= 1000
triggerall = command = "Ball throw"
trigger1 = (statetype = S)
;---------------------------------------------------------------------------
;Ball Throw
[State -1, ball Throw]
type = Changestate
value = 1200
triggerall = power>= 2000
triggerall = command = "BIG Ball throw"
trigger1 = (statetype = S)
;===========================================================================
;Specials-------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 70
triggerall = command = "Sjump"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ball
[state -1, ball]
type = changestate
value = 310
triggerall = command = "QCB_z"
triggerall = power>=300
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;ball
[state -1, ball]
type = changestate
value = 310
triggerall = command = "QCB_y"
triggerall = power>=300
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;ball
[state -1, ball]
type = changestate
value = 310
triggerall = command = "QCB_x"
triggerall = power>=300
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;elbow lv3
[State -1,elbow3]
type = ChangeState
value = 380
triggerall = command = "BF_z"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;elbow lv2
[State -1,elbow2]
type = ChangeState
value = 370
triggerall = command = "BF_y"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;elbow lv1
[State -1,elbow]
type = ChangeState
value = 360
triggerall = command = "BF_x"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;lunge
[State -1,lunge]
type = ChangeState
value = 7040
triggerall = command = "BF_a"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;lunge
[State -1,lunge]
type = ChangeState
value = 7040
triggerall = command = "BF_b"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;lunge
[State -1,lunge]
type = ChangeState
value = 7040
triggerall = command = "BF_c"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;combo starter2
[State -1,kickcombo 2]
type = ChangeState
value = 7010
triggerall = command = "QCF_b"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;combo starter1
[State -1,kickcombo 1]
type = ChangeState
value = 7000
triggerall = command = "QCF_a"
trigger1 = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;sheild
[state -1, sheild]
type = changestate
value = 330
triggerall = command = "holda"
triggerall = command = "holdx"
triggerall = power>=600
trigger2 = stateno = 330 && movecontact && time>50
trigger2 = stateno = 330 && time>50
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;trishot
[state -1, ball]
type = changestate
value = 350
triggerall = command = "QCF_z"
triggerall = power>=400
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;ball
[state -1, blast]
type = changestate
value = 320
triggerall = command = "QCF_x"
triggerall = power>= 100
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;ball2
[state -1, blast2]
type = changestate
value = 325
triggerall = command = "QCF_y"
triggerall = power>= 300
trigger1 = ctrl
trigger1 = statetype = S
;===========================================================================
;Basics---------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && time>10
trigger3 = stateno = 215 && movecontact && time>7
trigger4 = stateno = 250 && movecontact && time>7
trigger5 = stateno = 230 && movecontact && time>8
trigger6 = stateno = 240 && movecontact && time>8
;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time>5
trigger3 = stateno = 215 && movecontact && time>10
trigger4 = stateno = 250 && movecontact && time>7
trigger5 = stateno = 230 && movecontact && time>7
trigger6 = stateno = 240 && movecontact && time>7
;------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && time>7
trigger3 = stateno = 200 && movecontact && time>7
trigger4 = stateno = 250 && movecontact && time>5
trigger5 = stateno = 230 && movecontact && time>7
trigger6 = stateno = 240 && movecontact && time>7
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && time>5
trigger3 = stateno = 215 && movecontact && time>7
trigger4 = stateno = 200 && movecontact && time>7
trigger5 = stateno = 230 && movecontact && time>7
trigger6 = stateno = 240 && movecontact && time>5
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && time>7
trigger3 = stateno = 215 && movecontact && time>7
trigger4 = stateno = 250 && movecontact && time>7
trigger5 = stateno = 200 && movecontact && time>7
trigger6 = stateno = 240 && movecontact && time>7
;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && time>7
trigger3 = stateno = 215 && movecontact && time>7
trigger4 = stateno = 250 && movecontact && time>7
trigger5 = stateno = 230 && movecontact && time>4
trigger6 = stateno = 200 && movecontact && time>7
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = 230)||(stateno = 250)||(stateno = 240) && (movecontact = 1))
trigger3 = ((stateno = 400)||(stateno = 405) && (movecontact = 1))
trigger4 = ((stateno = 430)||(stateno = 435)||(stateno = 440) && (movecontact = 1))
;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = 230)||(stateno = 250)||(stateno = 240) && (movecontact = 1))
trigger3 = ((stateno = 400)||(stateno = 405) && (movecontact = 1))
trigger4 = ((stateno = 430)||(stateno = 435)||(stateno = 440) && (movecontact = 1))
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = 230)||(stateno = 250)||(stateno = 240) && (movecontact = 1))
trigger3 = ((stateno = 400)||(stateno = 405) && (movecontact = 1))
trigger4 = ((stateno = 430)||(stateno = 435)||(stateno = 440) && (movecontact = 1))
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = 230)||(stateno = 250)||(stateno = 240) && (movecontact = 1))
trigger3 = ((stateno = 400)||(stateno = 405) && (movecontact = 1))
trigger4 = ((stateno = 430)||(stateno = 435)||(stateno = 440) && (movecontact = 1))
;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = 230)||(stateno = 250)||(stateno = 240) && (movecontact = 1))
trigger3 = ((stateno = 400)||(stateno = 405) && (movecontact = 1))
trigger4 = ((stateno = 430)||(stateno = 435)||(stateno = 440) && (movecontact = 1))
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = 230)||(stateno = 250)||(stateno = 240) && (movecontact = 1))
trigger3 = ((stateno = 400)||(stateno = 405) && (movecontact = 1))
trigger4 = ((stateno = 430)||(stateno = 435)||(stateno = 440) && (movecontact = 1))
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump medium punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump fireball
[State -1, Jump Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[state -1: charge]
type=changestate
trigger1=((command ="holdc")&&(command ="holdz"))&&(statetype=S)&&(ctrl)
value=300
;---------------------------------------------------------------------------
