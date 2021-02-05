[statedef -2]
;---------------------------------------------------------------------------
;Enemy Position
[State -2, Enemy Position]
v = 1
type = varset
value = ifelse(enemy,pos x < 0,1,-1)*facing
trigger1 = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Field XY
[State -1, Psycho Field XY]
type = ChangeState
value = 4020
triggerall = var(0) = 1 && power >= 1000 && RoundState = 2 && p2dist x <= 135 && p2dist x >= 135 && p2dist y >= -125
trigger1 = (statetype = S||statetype = C) && ctrl && random >= 950
trigger2 = stateno = [200,240]
trigger2 = movecontact && random >= 800
trigger3 = stateno = [1000,1120]
trigger3 =  time >= 10 && random <= 350
trigger4 = stateno = [1400,1420]
trigger4 =  time >= 18 && random <= 350
trigger5 = stateno = [1600,1620]
trigger5 =  time >= 12 && random <= 350
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Field Y
[State -1, Psycho Field Y]
type = ChangeState
value = 4010
triggerall = var(0) = 1 && power >= 2000 && power < 3000 && RoundState = 2 && p2dist x <= 75 && p2dist x >= -95 && p2dist y >= -75
trigger1 = (statetype = S||statetype = C) && ctrl && random >= 950
trigger2 = stateno = [200,240]
trigger2 = movecontact && random >= 850
trigger3 = stateno = [1000,1120]
trigger3 =  time >= 10 && random <= 350
trigger4 = stateno = [1400,1420]
trigger4 =  time >= 18 && random <= 350
trigger5 = stateno = [1600,1620]
trigger5 =  time >= 12 && random <= 350
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Field X
[State -1, Psycho Field X]
type = ChangeState
value = 4000
triggerall = var(0) = 1 && power >= 1000 && power < 2000 && RoundState = 2 && p2dist x <= 55 && p2dist x >= -75 && p2dist y >= -45
trigger1 = (statetype = S||statetype = C) && ctrl && random >= 975
trigger2 = stateno = [200,240]
trigger2 = movecontact && random >= 900
trigger3 = stateno = [1000,1120]
trigger3 =  time >= 10 && random <= 75
trigger4 = stateno = [1400,1420]
trigger4 =  time >= 18 && random <= 75
trigger5 = stateno = [1600,1620]
trigger5 =  time >= 12 && random <= 75
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rocks XY
[State -1, Rocks XY]
type = ChangeState
value = 3520
triggerall = var(0) = 1 && power >= 3000 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && random > (800-450*(life<100)) && random < 950
trigger2 = stateno = [200,240]
trigger2 = movecontact && random >= 450 && random < 500
trigger3 = stateno = [1000,1120]
trigger3 =  time >= 10 && random >= 450
trigger4 = stateno = [1400,1420]
trigger4 =  time >= 18 && random >= 450
trigger5 = stateno = [1600,1620]
trigger5 =  time >= 12 && random >= 450
ignorehitpause = 0

;---------------------------------------------------------------------------
;Rocks Y
[State -1, Rocks Y]
type = ChangeState
value = 3510
triggerall = var(0) = 1 && power >= 2000 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && random > (850-300*(life<100)+60*(var(1)=1)) && random < 950 && p2dist x > 45
trigger2 = stateno = [200,240]
trigger2 = movecontact && random >= 500 && random < 550 && var(1) = -1
trigger3 = stateno = [1000,1120]
trigger3 =  time >= 10 && random >= 550 && var(1) = -1
trigger4 = stateno = [1400,1420]
trigger4 =  time >= 18 && random >= 550 && var(1) = -1
trigger5 = stateno = [1600,1620]
trigger5 =  time >= 12 && random >= 550 && var(1) = -1
ignorehitpause = 0

;---------------------------------------------------------------------------
;Rocks X
[State -1, Rocks X]
type = ChangeState
value = 3500
triggerall = var(0) = 1 && power >= 1000 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && random > (900-25*(life<100)+20*(var(1)=-1)) && random < 925 && p2dist x > 45
trigger2 = stateno = [200,240]
trigger2 = movecontact && random >= 575 && random < 600 && var(1) = 1
trigger3 = stateno = [1000,1120]
trigger3 =  time >= 10 && random >= 725 && random < 750 && var(1) = 1
trigger4 = stateno = [1400,1420]
trigger4 =  time >= 18 && random >= 725 && random < 750 && var(1) = 1
trigger5 = stateno = [1600,1620]
trigger5 =  time >= 12 && random >= 725 && random < 750 && var(1) = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;Psythrow XY
[State -2, Psythrow XY]
type = ChangeState
value = 1220
triggerall = var(0) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && random < 20
trigger2 = stateno = [200,240]
trigger2 = movecontact && random < 40
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psythrow Y
[State -2, Psythrow Y]
type = ChangeState
value = 1210
triggerall = var(0) = 1 && p2dist x < 170 && p2dist x >= 110 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && random < 55
trigger2 = stateno = [200,240]
trigger2 = movecontact && random < 85
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psythrow X
[State -2, Psythrow X]
type = ChangeState
value = 1200
triggerall = var(0) = 1 && p2dist x < 70 && p2dist x > 35 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && random < 55
trigger2 = stateno = [200,240]
trigger2 = movecontact && random < 85
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho X
[State -1, Psycho X]
type = ChangeState
value = 1400
triggerall = var(0) = 1 && p2dist x <= 60 && random >= 200 && random < 210 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Y
[State -1, Psycho Y]
type = ChangeState
value = 1410
triggerall = var(0) = 1 && p2dist x <= 70 && random >= 210 && random < 220  && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho XY
[State -1, Psycho XY]
type = ChangeState
value = 1420
triggerall = var(0) = 1 && p2dist x <= 80 && random >= 220 && random < 230  && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Clone AB
[State -1, Psycho Clone AB]
type = ChangeState
value = 1620
triggerall = var(0) = 1 && p2dist x <= 50 && p2dist y >= -70 && random >= 230 && random < 233 && RoundState = 2 && numhelper(1600) = 0
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Clone B
[State -1, Psycho Clone B]
type = ChangeState
value = 1610
triggerall = var(0) = 1 && p2dist x <= 85 && p2dist y >= -35 && random >= 233 && random < 236 && RoundState = 2 && numhelper(1600) = 0
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Clone A
[State -1, Psycho Clone A]
type = ChangeState
value = 1600
triggerall = var(0) = 1 && p2dist x <= 100 && p2dist y >= -15 && random >= 236 && random < 239 && RoundState = 2 && numhelper(1600) = 0
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock XY
[State -2, Rock XY]
type = ChangeState
value = 1020
triggerall = var(0) = 1 && random < 15+15*(life<100) && var(1) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock Y
[State -2, Rock Y]
type = ChangeState
value = 1010
triggerall = var(0) = 1 && random < 25+20*(life<100) && var(1) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock X
[State -2, Rock X]
type = ChangeState
value = 1000
triggerall = var(0) = 1 && random < 35+25*(life<100) && var(1) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock XY
[State -2, Rock XY]
type = ChangeState
value = 1120
triggerall = var(0) = 1 && random < 15+15*(life<100) && var(1) = -1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock Y
[State -2, Rock Y]
type = ChangeState
value = 1110
triggerall = var(0) = 1 && random < 25+20*(life<100) && var(1) = -1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock X
[State -2, Rock X]
type = ChangeState
value = 1100
triggerall = var(0) = 1 && random < 35+25*(life<100) && var(1) = -1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Knee A
[State -2, RoKneeck A]
type = ChangeState
value = 1300
triggerall = var(0) = 1 && random > 950 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 90
trigger2 = stateno = [200,240]
trigger2 = movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Knee B
[State -2, Knee B]
type = ChangeState
value = 1310
triggerall = var(0) = 1 && random > 950 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 140
trigger2 = stateno = [200,240]
trigger2 = movecontact
trigger2 = random > 965
ignorehitpause = 1

;---------------------------------------------------------------------------
;Knee AB
[State -2, Knee AB]
type = ChangeState
value = 1320
triggerall = var(0) = 1 && random > 950 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 165
trigger2 = stateno = [200,240]
trigger2 = movecontact
trigger2 = random > 980
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Gun XY
[State -1, Psycho Gun XY]
type = ChangeState
value = 1520
triggerall = var(0) = 1
trigger1 = statetype = A && ctrl && random < 33
trigger2 = stateno = [300,340]
trigger2 = movecontact && random < 66
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Gun Y
[State -1, Psycho Gun Y]
type = ChangeState
value = 1510
triggerall = var(0) = 1
trigger1 = statetype = A && ctrl && random < 67
trigger2 = stateno = [300,340]
trigger2 = movecontact && random < 133
ignorehitpause = 1

;---------------------------------------------------------------------------
;Psycho Gun X
[State -1, Psycho Gun X]
type = ChangeState
value = 1500
triggerall = var(0) = 1
trigger1 = statetype = A && ctrl && random < 100
trigger2 = stateno = [300,340]
trigger2 = movecontact && random < 200
ignorehitpause = 1

;---------------------------------------------------------------------------
;Light Punch
[State -2, Light Punch]
type = ChangeState
value = 200
triggerall = var(0) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 30 && random < 700
ignorehitpause = 1

;---------------------------------------------------------------------------
;Hard Punch
[State -2, Hard Punch]
type = ChangeState
value = 210
triggerall = var(0) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 45 && random < 750
trigger2 = stateno = 200&&movecontact && random < 800
trigger3 = stateno = 230&&movecontact && random < 800
ignorehitpause = 1

;---------------------------------------------------------------------------
;Light Kick
[State -2, Light Kick]
type = ChangeState
value = 230
triggerall = var(0) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 35 && random < 775
trigger2 = stateno = 200&&movecontact && random < 825
ignorehitpause = 1

;---------------------------------------------------------------------------
;Hard Kick
[State -2, Hard Kick]
type = ChangeState
value = 240
triggerall = var(0) = 1 && RoundState = 2
trigger1 = (statetype = S||statetype = C) && ctrl && p2dist x < 50 && random < 800
trigger2 = stateno = 200&&movecontact && random < 850
trigger3 = stateno = 230&&movecontact && random < 850
ignorehitpause = 1

;---------------------------------------------------------------------------
;Light Punch
[State -2, Light Punch]
type = ChangeState
value = 300
triggerall = var(0) = 1 && random < 175 && RoundState = 2
trigger1 = statetype = A && ctrl
ignorehitpause = 1

;---------------------------------------------------------------------------
;Hard Punch
[State -2, Hard Punch]
type = ChangeState
value = 310
triggerall = var(0) = 1 && RoundState = 2
trigger1 = statetype = A && ctrl && random < (350 + 75*enemynear, statetype = A)
trigger2 = stateno = 300&&movecontact && random < (500 + 75*enemynear, statetype = A)
trigger3 = stateno = 330&&movecontact && random < (300 + 75*enemynear, statetype = A)
ignorehitpause = 1

;---------------------------------------------------------------------------
;Light Kick
[State -2, Light Kick]
type = ChangeState
value = 330
triggerall = var(0) = 1 && RoundState = 2
trigger1 = statetype = A && ctrl && random < 525
trigger2 = stateno = 300&&movecontact && random < 600
ignorehitpause = 1

;---------------------------------------------------------------------------
;Hard Kick
[State -2, Hard Kick]
type = ChangeState
value = 340
triggerall = var(0) = 1 && RoundState = 2
trigger1 = statetype = A && ctrl && random < 700
trigger2 = stateno = 300&&movecontact && random < 700
trigger3 = stateno = 330&&movecontact && random < 450
ignorehitpause = 1

;---------------------------------------------------------------------------
;Rock boom
[state -2, Rock boom]
type = Destroyself
trigger1 = ishelper(1000) && (stateno != 1001 && stateno != 1002 || anim != 8000 || anim != 8001 || anim != 8002)
trigger2 = prevstateno = 1001 && stateno != 1002
ignorehitpause = 1

;---------------------------------------------------------------------------
;1320...
[state -2, 1320...]
type = RemoveExplod
trigger1 = stateno != 1320
ID = 1300
ignorehitpause = 1

;1420...
[state -2, 1420...]
type = RemoveExplod
trigger1 = (stateno != 1400 && stateno != 1410 && stateno != 1420)
ID = 1400
ignorehitpause = 1

;15...
[state -2, 1520...]
type = RemoveExplod
trigger1 = (stateno != 1500 && stateno != 1510 && stateno != 1520)
ID = 1500
ignorehitpause = 1

;15...
[state -2, 1520...]
type = RemoveExplod
trigger1 = (stateno != 1500 && stateno != 1510 && stateno != 1520)
ID = 1501
ignorehitpause = 1

;15...
[state -2, 1520...]
type = RemoveExplod
trigger1 = (stateno != 1500 && stateno != 1510 && stateno != 1520)
ID = 1502
ignorehitpause = 1

;1520...
[state -2, 1520...]
type = RemoveExplod
trigger1 = stateno != 1520
ID = 1503
ignorehitpause = 1

;402...
[state -2, 402...]
type = RemoveExplod
trigger1 = stateno != 401
ID = 402
ignorehitpause = 1
