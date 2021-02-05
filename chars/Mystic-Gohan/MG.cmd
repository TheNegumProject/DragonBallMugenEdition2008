;-| ~~Stylish~~ Motions |--------------------------------------------------------

[Command]
name = "Kick13"
command = D, F, c
time = 30

[Command]
name = "Kick13level1"
command = D, B, b
time = 30

[Command]
name = "Kick13level2"
command = D, B, a
time = 30

[Command]
name = "air special kick"
command = ~F,D,b

[Command]
name = "kame"
command = D, B, x
time = 30

[Command]
name = "C-Beam"
command = D, B, c
time = 30

[Command]
name = "kamehamehalv2"
command = a+z
time = 30

[Command]
name = "SpecialSkill"
command = b+c
time = 15

[Command]
name = "SpecialSkill"
command = x+a 
time = 15

;-| Absolute Motions |--------------------------------------------------------

[Command]
name = "F1"
command = D, B, y
time = 30

[Command]
name = "F3"
command = B ,F, y
time = 30

[Command]
name = "kamehameha"
command = D, B, F, y
time = 30

[Command]
name = "up-er"
command = ~F, D, DF, F, z

[Command]
name = "QCF_b3"
command = ~F, D, DF, F, c

;-| Cool Motions |--------------------------------------------------------

[Command]
name = "Elbow2"
command = D, F, x
time = 30

[Command]
name = "EnergyDan"
command = D, F, b
time = 30

[Command]
name = "SS"
command = D, B, z
time = 30

[Command]
name = "PC"
command = D, F, y
time = 30

[Command]
name = "QZanZ"
command = y+b
time = 30

;-| Dull Motions |------------------------------------------------------

[Command]
name = "ZZTele"
command = y+z
time = 30

[Command]
name = "spunch"
command = z
time = 30

[Command]
name = "2 kick"
command = D, F, a
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "fly"
command = y+x
time = 1

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /b

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

;-| Single Button | ;All screwed up if you take a look ^__^
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = y
time = 1

[Command]
name = "c"
command = z
time = 1

[Command]
name = "x"
command = a
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = c
time = 1

[Command]
name = "start"
command = s
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

;-| Hold Dir ;Dir??(?) Direction (newbies take notice) |--------------------------------------------------------------
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

;Ah, the commands, look here for a bit of ref if you want to know how to do moves ^__^!
[Statedef -1]

;===========================================================================
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

;RunFwd
[State -1]
type = ChangeState
value = 1001
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 1051
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Air Special Kick
[State -1]
type = ChangeState
value = 1066
triggerall = command = "air special kick"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, Special Skills]
type = ChangeState
value = 3200
triggerall = command = "SpecialSkill"
triggerall = power >= 1500
triggerall = (var(3) = 0) && (var(4) = 0) && (var(5) = 0)
;trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Kame Hame Ha
[State -1]
type = ChangeState
value = 2500
triggerall = command = "kamehameha"
triggerall = power > 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly (2nd time :-p)
[State -1]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;PC
[State -1]
type = ChangeState
value = 1111
triggerall = command = "PC"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;SS
[State -1]
type = ChangeState
value = 1112
triggerall = command = "SS"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Fireball Single
[State -1]
type = ChangeState
value = 1000
triggerall = command = "F1"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Triple Fireball
[State -1]
type = ChangeState
value = 1259
triggerall = command = "F3"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Slash Upper
[State -1]
type = ChangeState
value = 1200
triggerall = command = "QCF_b3"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1

;Counter Beam (being crushed? use this mah dude!!~)
[State -1]
type = ChangeState
value = 1710
triggerall = command = "C-Beam"
triggerall = power >= 1250
triggerall = alive = 1           
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000       
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;---------------------------------------------------------------------------
;Charge (yeh!!~)
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Air Charge (yehh(?))
[State -1]
type = ChangeState
value = 731
trigger1 = ctrl = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = stateno = 1500

;Quick Zanzouken
[State -1]
type = ChangeState
value = 1800
triggerall = command = "QZanZ"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Dash Bow
[State -1]
type = ChangeState
value = 344
triggerall = command = "Elbow2"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;KK level 2 (cool move~~)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "kamehamehalv2"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Tele ~~ Port ~~~ (use strats!!)
[State -1]
type = ChangeState
value = 9000
triggerall = command = "ZZTele";Place name of command here
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Kick 13 Combo (time for some action!)
[State -1]
type = ChangeState
value = 50000
triggerall = command = "Kick13";Place name of command here
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;UPPER~~! (RAH!!)
[State -1]
type = ChangeState
value = 228
triggerall = command = "up-er"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Kick 13 Combo
[State -1]
type = ChangeState
value = 353
triggerall = command = "Kick13level1";Place name of command here
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Kick 13 Combo
[State -1]
type = ChangeState
value = 352
triggerall = command = "Kick13level2";Place name of command here
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Strong Punch
[State -1]
type = ChangeState
value = 225
triggerall = command = "spunch"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Hyper Kamehameha (BEAM)
[State -1]
type = ChangeState
value = 4526
triggerall = var(7)
triggerall = command = "kame"
triggerall = power > 2500
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Energy Dan (blast them bastards outta your face!!)
[State -1]
type = ChangeState
value = 1250
triggerall = command = "EnergyDan";Place name of command here
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_b (*cough* punch* cough * (i think :-p)
[State -1]
type = ChangeState
value = 201
triggerall = command = "b";Place name of command here
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_a (take a guess...)
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger3 = movecontact = 1
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_y (2nd guess welcome)
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Stand_y (looking a bit far aren't ya?)
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;Stand_y (looking a bit far aren't ya?)
[State -1]
type = ChangeState
value = 350
triggerall = command = "2 kick"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1

;--------------------------------------------------------------------------

;Stand_x (hmmm.....)
[State -1]
type = ChangeState
value = 211
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 201
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact =1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger5 = stateno = 9000
trigger5 = movecontact = 1
trigger6 = stateno = 1250
trigger7 = movecontact = 1
trigger6 = stateno = 228
trigger7 = movecontact = 1
trigger8 = stateno = 1500
trigger5 = movecontact = 1
trigger6 = stateno = 352
trigger7 = movecontact = 1
trigger6 = stateno = 353
trigger7 = movecontact = 1
trigger6 = stateno = 50000
trigger7 = movecontact = 1
trigger6 = stateno = 344
trigger3 = movecontact = 1
trigger8 = stateno = 1000
trigger5 = movecontact = 1
trigger6 = stateno = 1111
trigger7 = movecontact = 1
trigger6 = stateno = 1112
trigger7 = movecontact = 1
trigger6 = stateno = 1259
trigger7 = movecontact = 1
trigger6 = stateno = 1200
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_a (yes)
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 30
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_b (.....)
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 30
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_c (same thing...stop here?)
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 30
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_x (what you looking for...?!)
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time >= 30
trigger3 = stateno = 400
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_y *loads shotgun*
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time >= 30
trigger3 = stateno = 400
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Slide Kick
[State -1]
type = ChangeState
value = 411
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time >= 30
trigger3 = stateno = 400
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_a (dance!!)
[State -1]
type = ChangeState
value = 602
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_b (....!)
[State -1]
type = ChangeState
value = 602
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 602
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Taunt (haha, sucker.... *extends middle finger*) (an idea of a taunt :-p)
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Auto - Charge (end of line....?)
[State -1]
type = PowerAdd
trigger1 = 1
value = 1


