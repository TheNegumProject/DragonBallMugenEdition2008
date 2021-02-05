;---------------------------------------------------------------------------
;--------------------| Minus States for Super Zangya |----------------------
;---------------------------| By SSj3 Vejita |------------------------------
;------------------------/Remake by SaKyo y SaWWeN/-----------------------------
[Statedef -2]
[State -2,Display 1]
type = DisplayToClipboard
triggerall = stateno = [1301,1302]
trigger1 = var(12) = 0
text = "----------------|Super Zangya by SSj3 Vejita|----------------------\n             AI=%d,var(15)=%d,FLY=%d,Hyper direction:straight"
params = var(59),var(15),var(8)
ignorehitpause = 1
persistent = 1

[State -2,Display 2]
type = DisplayToClipboard
triggerall = stateno = [1301,1302]
trigger1 = var(12) = 1
text = "----------------|Super Zangya by SSj3 Vejita|----------------------\n             AI=%d,var(15)=%d,FLY=%d,Hyper direction:up"
params = var(59),var(15),var(8)
ignorehitpause = 1
persistent = 1

[State -2,Display 3]
type = DisplayToClipboard
triggerall = stateno = [1301,1302]
trigger1 = var(12) = 2
text = "----------------|Super Zangya by SSj3 Vejita|----------------------\n             AI=%d,var(15)=%d,FLY=%d,Hyper direction:down"
params = var(59),var(15),var(8)
ignorehitpause = 1
persistent = 1

[State -2,Display 4]
type = DisplayToClipboard
trigger1 = stateno != [1301,1302]
text = "----------------|Super Zangya by SSj3 Vejita|----------------------\n             AI=%d,var(15)=%d,FLY=%d,Hyper direction:none"
params = var(59),var(15),var(8)
ignorehitpause = 1
persistent = 1

[State -2, Jump sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = prevstateno != 98
trigger1 = prevstateno != 101
trigger1 = prevstateno != 106
trigger1 = prevstateno != 430
trigger1 = prevstateno != 440
trigger1 = prevstateno != 630
trigger1 = prevstateno != 640
trigger1 = prevstateno != 220
trigger1 = prevstateno != 60
trigger1 = prevstateno != 1310
trigger1 = prevstateno != 1308
trigger1 = prevstateno != 61
trigger1 = stateno = 50
trigger2 = stateno = 1770
value = 0,13

[State -2, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = prevstateno = 1308
value = 6,0

[State -2, Reset Hyper]
type = VarSet
trigger1 = stateno != [1300,1302]
trigger2 = movetype = H
v = 12
value = 0

[State -2]
type = varadd
trigger1 = var(13) = 1
v = 14
value = 1

[State -2]
type = varset
trigger1 = var(14) = 450
var(13) = 0

[State -2]
type = varset
trigger1 = var(14) = 450
var(15) = 0

[State -2]
type = varset
trigger1 = var(14) = 450
var(14) = 0

[State -2, Get Hit Sound]
type = PlaySnd
trigger1 = var(6) = 0
trigger1 = GetHitVar(fall) = 1
trigger1 = GetHitVar(hitcount) < 2
trigger1 = time = 0
trigger1 = alive = 1
value = 7,2
volume = 0

[State -2]
type = varset
trigger1 = GetHitVar(fall) = 1
trigger1 = time = 1
trigger1 = alive = 1
var(6) = 1

[State -2]
type = varset
trigger1 = movetype != H
trigger1 = time = 1
trigger1 = alive = 1
var(6) = 0

[Statedef -3]
[State -3, Power refilling]
type = PowerAdd
triggerall = var(59) = 0
triggerall = stateno != [730,742]
triggerall = stateno != [1730,1742]
triggerall = stateno != [1200,1201]
triggerall = stateno != 1000
triggerall = stateno != 70
triggerall = stateno != 1100
triggerall = stateno != 110
triggerall = stateno != [180,199]
triggerall = stateno != [5000,5500]
triggerall = stateno != [1300,1312]
triggerall = ctrl=1
triggerall = movetype != H
trigger1 = gametime%5=0
value = 5

[State -3, Power refilling AI]
type = PowerAdd
triggerall = var(59) > 0
triggerall = stateno != [730,742]
triggerall = stateno != [1730,1742]
triggerall = stateno != [1200,1201]
triggerall = stateno != 1000
triggerall = stateno != 70
triggerall = stateno != 1100
triggerall = stateno != 110
triggerall = stateno != [180,199]
triggerall = stateno != [5000,5500]
triggerall = stateno != [1300,1312]
triggerall = ctrl=1
triggerall = movetype != H
trigger1 = gametime%5=0
value = 8
