;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "shakunetu"
command = ~F, B, DB,D,F,a+b
Time = 23

[Command]
name = "bomber"
command = ~D,D,a+b

[Command]
name = "bomber"
command = ~D,D,x+y

;-| 必殺技 |------------------------------------------------------
[Command]
name = "DF_x"
command = ~D, DF, F, x

[Command]
name = "DF_y"
command = ~D, DF, F, y

[Command]
name = "DF_xy"
command = ~D, DF, F, x+y

[Command]
name = "FD_x"
command = ~F, D, DF, x

[Command]
name = "FD_y"
command = ~F, D, DF, y

[Command]
name = "FD_xy"
command = ~F, D, DF, x+y

[Command]
name = "DB_a"
command = ~D, DB, B, a

[Command]
name = "DB_b"
command = ~D, DB, B, b

[Command]
name = "DB_ab"
command = ~D, DB, B, a+b

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+y
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "taoreru"
command = x+a
time = 1

[Command]
name = "taoreru"
command = x+b
time = 1

[Command]
name = "taoreru"
command = y+a
time = 1

[Command]
name = "taoreru"
command = y+b
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;超灼熱大車輪
[State -1]
type = ChangeState
value = 1700
triggerall = command = "bomber"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;超灼熱大車輪
[State -1]
type = ChangeState
value = 1600
triggerall = command = "shakunetu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;渦巻暴風脚 （EX）
[State -1]
type = ChangeState
value = 1500
triggerall = command = "DB_ab"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;暴棒堅（EX）
[State -1]
type = ChangeState
value = 1400
triggerall = command = "FD_xy"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;硬襲啖 （EX）
[State -1]
type = ChangeState
value = 1300
triggerall = command = "DF_xy"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;渦巻暴風脚 （弱）
[State -1]
type = ChangeState
value = 1200
triggerall = command = "DB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;渦巻暴風脚 （弱）
[State -1]
type = ChangeState
value = 1210
triggerall = command = "DB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;暴棒堅（弱）
[State -1]
type = ChangeState
value = 1100
triggerall = command = "FD_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;暴棒堅（強）
[State -1]
type = ChangeState
value = 1110
triggerall = command = "FD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;硬襲啖 （弱）
[State -1]
type = ChangeState
value = 1000
triggerall = command = "DF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;硬襲啖 （強）
[State -1]
type = ChangeState
value = 1010
triggerall = command = "DF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;倒れるの時の動作
[State -1, Standing Strong Kick]
type = ChangeState
value = 300
triggerall = command = "taoreru"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

