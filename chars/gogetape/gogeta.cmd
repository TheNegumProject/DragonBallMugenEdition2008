[Command]
name = "kamehameha"

command = ~D, DF, F, a

[Command]
name = "bigbang_kamehameha"
command = D, DF, F, b
time = 30

[Command]
name = "kamehame"
command = ~D, DF, F, a


[Command]
name = "genki dami"
command = ~D, a


[Command]
name = "fflash"
command = ~D, DF, F, y


[Command]
name = "kameair"
command = ~D, DB, B, a



[Command]
name = "zanzoken"
command = z


[Command]
name = "fly"
command = y+x
time = 1


[Command]
name = "fireball"
command = c


[Command]
name = "kaioken"
command = ~D, DB, B, a


[Command]
name = "elbow dash"
command = F, x


[Command]
name = "knee"
command = ~F, D, DF, b


[Command]
name = "QCF_a"
command = ~D, DF, F, a


[Command]
name = "QCF_b"
command = ~


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




[Command]
name = "FF"
command = F, F
time = 10


[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "recovery"
command = a+b
time = 1


[Command]
name = "ab"
command = a+b
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






[Statedef -1]
[State -1,-1]
type = ChangeState
value = 1070
triggerall = command = "knee"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = command = "knee";-------
trigger2 = stateno = 610        ;jump_b
trigger3 = command = "knee";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = statetime <= 2
trigger4 = command = "knee";-------
trigger4 = stateno = 210         ;stand_b
trigger4 = movecontact = 1
trigger5 = command = "knee";-------
trigger5 = stateno = 610         ;jump_b
trigger6 = command = "knee";-------
trigger6 = stateno = 610          ;jump_b
trigger6 = movecontact = 1

[State -1,0]
type = null;ChangeState
value = 1901
trigger1 = command = "genki dami";-------
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "genki dami";-------
trigger2 = stateno = 600        ;jump_a
trigger3 = command = "genki dami";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = movecontact = 1
trigger4 = command = "genki dami";-------
trigger4 = stateno = 800        ;jump_fwd_a
trigger4 = movecontact = 1

[State -1,1]
type = ChangeState
value = 1900
triggerall = command = "genki dami";-------
triggerall = numproj = 0
triggerall = power >= 3000 ;Level 3 Super
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1

[State -1,2]
type = ChangeState
value = 1080
triggerall = command = "elbow dash"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,3]
type = ChangeState
value = 1090
triggerall = command = "kaioken"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = ctrl = 1
trigger3 = stateno = 210
trigger3 = ctrl = 1
trigger3 = stateno = 210
trigger4 = ctrl = 1
trigger4 = stateno = 210
trigger5 = ctrl = 1
trigger5 = stateno = 210
trigger6 = ctrl = 1
trigger6 = stateno = 210
trigger8 = ctrl = 1
trigger8 = stateno = 210
trigger9 = stateno = 210
trigger9 = ctrl = 1
trigger10 = stateno = 210
trigger10 = ctrl = 1
trigger11 = stateno = 210
trigger11 = ctrl = 1
trigger12 = stateno = 210
trigger12 = ctrl = 1
trigger13 = stateno = 210
trigger13 = ctrl = 1
trigger14 = stateno = 210
trigger14 = ctrl = 1
trigger15 = stateno = 210
trigger15 = stateno = 210
trigger16 = ctrl = 1
trigger16 = stateno = 210
trigger17 = stateno = 210
trigger17 = movecontact = 1

[State -1,4]
type = ChangeState
value = 730
trigger1 = statetype = S
triggerall = Power < 3000
trigger1 = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"


[State -1,5]
type = null;ChangeState
value = 1005
trigger1 = command = "fireball";-------
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "fireball";-------
trigger2 = stateno = 600        ;jump_a
trigger3 = command = "fireball";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = movecontact = 1
trigger4 = command = "fireball";-------
trigger4 = stateno = 800        ;jump_fwd_a
trigger4 = movecontact = 1

[State -1,6]
type = ChangeState
value = 1000
triggerall = command = "fireball";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1

;-----------------------------------------------------------------------------
;bigbang kamehameha
[State -1]
type = ChangeState
value = 2600
triggerall = command = "bigbang_kamehameha"
triggerall = power > 10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;------------------------------------------------------------------------------

[State -1,7]
type = ChangeState
value = 1001
triggerall = command = "fireball"
triggerall = numproj = 0
trigger1 = stateno = 3001
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1
trigger6 = StateNo = 3001

[State -1,8]
type = ChangeState
value = 1700
triggerall = command = "kamehameha"
triggerall = power >= 1000 ;Level 1 Super
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1,9]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,10]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,11]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H


[State -1,12]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"



[State -1,13]
type = ChangeState
value = 200
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,14]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,15]
type = ChangeState
value = 250
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = StateNo = 3001
trigger1 = ctrl = 0
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1

[State -1,16]
type = ChangeState
value = 260
triggerall = command = "b";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = StateNo = 3001
trigger1 = ctrl = 0
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1

[State -1,17]
type = ChangeState
value = 270
triggerall = command = "x";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = StateNo = 3001
trigger1 = ctrl = 0
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1

[State -1,18]
type = ChangeState
value = 3001
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A

[State -1,19]
type = ChangeState
value = 3115
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype != A


[State -1,20]
type = ChangeState
value = 280
triggerall = command = "y";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = StateNo = 3001
trigger1 = ctrl = 0
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1


[State -1,21]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


[State -1,22]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


[State -1,23]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1,24]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1,25]
type = ChangeState
value = 4000
triggerall = command = "zanzoken"
triggerall = command != "holddown"
triggerall = numprojid(4050) < 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1

[State -1,26]
type = ChangeState
value = 4100
triggerall = command = "zanzoken"
triggerall = command != "holddown"
triggerall = numprojid(4100) < 2
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1,27]
type = ChangeState
value = 4200
triggerall = command = "zanzoken"
triggerall = command != "holddown"
triggerall = numprojid(4200) < 2
trigger1 = StateNo = 3001
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1

[State -1,28]
type = ChangeState
value = 6000
triggerall = command = "QCB_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1

[State -1,29]
type = ChangeState
value = 6001
triggerall = command = "QCB_x"
trigger1 = stateno = 3001
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = movecontact = 1
trigger4 = stateno = 270
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1



[State -1,30]
type = ChangeState
value = 5500
triggerall = command = "kamehame"
triggerall = power >= 1000 ;Level 1 Super
triggerall = stateno != 3001
triggerall = numprojid(5500) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA


[State -1,31]
type = ChangeState
value = 2000
triggerall = command = "fflash"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger2 = command = "fflash"


[State -1,32]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1


[State -1,33]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1



[State -1,34]
type = ChangeState
value = 1650
triggerall = command = "kameair"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger2 = command = "kameair"



[State -1,35]
type = ChangeState
value = 1650
triggerall = command = "bigbang_kamehameha"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger2 = command = "bigbang_kamehameha"
