;-| ���K�E�Z |--------------------------------------------------------
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

;-| �K�E�Z |------------------------------------------------------
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

;-| �Q�񉟂��Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
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

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
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

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
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


; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;���ܔM��ԗ�
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
;���ܔM��ԗ�
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
;�Q���\���r �iEX�j
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
;�\�_���iEX�j
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
;�d�P�V �iEX�j
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
;�Q���\���r �i��j
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
;�Q���\���r �i��j
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
;�\�_���i��j
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
;�\�_���i���j
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
;�d�P�V �i��j
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
;�d�P�V �i���j
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
;�|���̎��̓���
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
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�������p���`
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
;������L�b�N
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
;�������L�b�N
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
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆋��p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

