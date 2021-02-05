;=======================================
;[Info]
;Name = "Vegeta GT SSJ2"
;=======================================
;=| Button Remapping |==================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;=| Default Values |==================
[Defaults]
command.time = 15
command.buffer.time = 1

;= A.I ===============================

[Command]
name="CPU_1"
Command=x,x,x,x,x,x
time=1

[Command]
name="CPU_2"
Command= y,y,y,y,y,y
time=1

[Command]
name="CPU_3"
Command= a,a,a,a,a,a
time=1

[Command]
name="CPU_4"
Command= b,b,b,b,b,b
time=1

[Command]
name="CPU_5"
Command= a,b,a,b,a,b
time=1

[Command]
name="CPU_6"
Command=x,y,x,y,x,y
time=1

[Command]
name="CPU_7"
Command= x,x,a,y,b,B+y
time=1

[Command]
name="CPU_8"
Command=x,B,y,x,B,y,x,B,y
time=1

[Command]
name="CPU_9"
Command=a,b,B,y,a,b,B,y
time=1

[Command]
name="CPU_10"
Command=x,y,B,y,x,y,B,y
time=1

[Command]
name="CPU_11"
Command=b,B,y,b,B,y,b
time=1

[Command]
name="CPU_12"
Command=x,a,y,b,B,y
time=1

[Command]
name="CPU_13"
Command=x,a,y,b,B,y,D,DF,F,a
time=1
;=| Super Motions   |==================

[Command]
name = "Big Bang"
command = ~D, DF, F, D, DF, F, x
time=60


[Command]
name = "Final Flash"
command = ~D, DF, F, D, DF, F, y
time=60

[Command]
name = "Final Shine"
command = ~D, DF, F, D, DF, F, z
time=60

;=| Special Motions |==================

[Command]
name = "Strong Sonic Knee"
command = D, DF, F, b

[Command]
name = "Weak Sonic Knee"
command = D, DF, F, a

[Command]
name = "Kienzan_x"
command = D, DB, B, x

[Command]
name = "Kienzan_y"
command = D, DB, B, y

[Command]
name = "Bakuhatsu_x"
command = D, DF, F, x

[Command]
name = "Bakuhatsu_y"
command = D, DF, F, y

[Command]
name = "Flying Kick"
command = D, DF, F, b

[Command]
name = "Power Elbow_x"
command = D, DF, F, x

[Command]
name = "Power Elbow_y"
command = D, DF, F, y

[Command]
name = "Long Jump"
command = ~$D, $U


;=| Double Tap |==================
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;=| 2/3 Button Combination |==================
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name="Buukujutsu"
Command=b+y
time=1

[Command]
name="Armor Mode"
Command=a+b
time=1

[Command]
name="Power Mode"
Command=b+c
time=1

;=| Dir + Button |==================
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 10

;=| Single Button |==================


[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
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
name = "start"
command = s
time = 1

;=| Hold Dir |==================
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------

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
name = "holdstart"
command = /s
time = 1


;=======================================================
[Statedef -1]

;======================================================
[State -1,AI]
type=VarSet
trigger1=Command="CPU_1"
trigger2=Command="CPU_2"
trigger3=Command="CPU_3"
trigger4=Command="CPU_4"
trigger5=Command="CPU_5"
trigger6=Command="CPU_6"
trigger7=Command="CPU_7"
trigger8=Command="CPU_8"
trigger9=Command="CPU_9"
trigger10=Command="CPU_10"
trigger11=Command="CPU_11"
trigger12=Command="CPU_12"
trigger12=Command="CPU_13"
v=59
value=1
;--------------------------------------------------------------------
;Final Shine
[State -1,Final Shine]
type = ChangeState
value = 4100
triggerall = (command="Final Shine")&&(command!="holddown")
triggerall = (Power >= 2000)
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 = (stateno=900);Buukujutsu
ignorehitpause = 1
;-------------------------------------------------------------------
;Final Flash
[State -1,Final Flash]
type = ChangeState
value = 3501
triggerall =(command="Final Flash")
triggerall = (Power >= 2000)
trigger1 =(statetype=A)&&(ctrl)
trigger2 = (stateno=900)

;Final Flash
[State -1,Final Flash]
type = ChangeState
value = 3500
triggerall =(command="Final Flash")&&(command!="holddown")
triggerall = (Power >= 2000)
trigger1 =(statetype!=A)&&(ctrl)
;------------------------------------------------------------------
;Big bang
[State -1,Big bang]
type = ChangeState
value = 3200
triggerall = (command="Big Bang")&&(command!="holddown")
triggerall = (Power >= 1000)
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 = (stateno=900);Buukujutsu
ignorehitpause = 1
;-------------------------------------------------------------------
;Kienzan High
[State -1,Kienzan High]
type = ChangeState
value = 2100
triggerall = (command="Kienzan_y")&&(command!="holddown")
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 =(stateno=900);;Buukujutsu
ignorehitpause = 1
;-------------------------------------------------------------------
;Kienzan Low
[State -1,Kienzan Low]
type = ChangeState
value = 2000
triggerall = (command="Kienzan_x")&&(command!="holddown")
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 =(stateno=900);;Buukujutsu
ignorehitpause = 1
;--------------------------------------------------------------------
;Bakuhatsu_y
[State -1,Bakuhatsu_y]
type = ChangeState
value = 1900
triggerall = (command="Bakuhatsu_y")&&(command!="holddown")&&(pos y>=0)
trigger1 = (statetype=S)&&(ctrl)
ignorehitpause = 1
;-------------------------------------------------------------------
;Bakuhatsu_x
[State -1,Bakuhatsu_x]
type = ChangeState
value = 1800
triggerall = (command="Bakuhatsu_x")&&(command!="holddown")&&(pos y>=0)
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
ignorehitpause = 1
;--------------------------------------------------------------------
;Power Elbow
[State -1,Power Elbow]
type = ChangeState
value = 1700
triggerall = (command="Power Elbow_x")||(command="Power Elbow_y")
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 =(stateno=900);;Buukujutsu
ignorehitpause = 1
;--------------------------------------------------------------------
;Strong Sonic Knee
[State -1,Strong Sonic Knee]
type = ChangeState
value = 1500
triggerall = (command="Strong Sonic Knee")&&(command!="holddown")&&(pos y>=0)
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
ignorehitpause = 1
;----------------------------------------------------------------------
;Weak Sonic Knee
[State -1,Weak Sonic Knee]
type = ChangeState
value = 1400
triggerall = (command="Weak Sonic Knee")&&(command!="holddown")
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)||(stateno=220)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 =(stateno=900)
ignorehitpause = 1
;----------------------------------------------------------------------------
;Flying Kick
[State -1,Flying Kick]
type 	= ChangeState
value 	= 1600
triggerall = (Command = "Flying Kick")
trigger1 = (statetype=A)&&(ctrl)
trigger2 =(stateno=900)
;----------------------------------------------------------------------------
;Uppercut
[State -1,Uppercut]
type = ChangeState
value = 220
triggerall = (command="back_y")&&(command!="holddown")
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 = (stateno=210)&&(movecontact)
trigger4 = (stateno=230)&&(movecontact)||(stateno=240)&&(movecontact)
trigger5 = (stateno=900);Buukujutsu
;-----------------------------------------------------------------------------
;Armor mode
[State -1,Armor mode]
type = ChangeState
value = 2999
triggerall = (Power >= 3000)
triggerall = (command = "Armor Mode")
triggerall = (var(4) = 0)
triggerall = (var(5) = 0)
trigger1 = (statetype=S)&&(ctrl)
;-----------------------------------------------------------------------------
;Power mode
[State -1,Power mode]
type = ChangeState
value = 3100
triggerall = (Power >= 3000)
triggerall = (command = "Power Mode")
triggerall = (var(4) = 0)
triggerall = (var(5) = 0)
trigger1 = (statetype=S)&&(ctrl)
;-----------------------------------------------------------------------------
;Ki Charge
[State -1,Ki Charge]
type =ChangeState
value = 1000
triggerall =(Power<3000)&&(ctrl)&&(var(4)= 0)&&(var(5)= 0)
trigger1 =(command="holda")&&(command="holdx")&&(statetype=S)
;----------------------------------------------------------------------------
;Buukujutsu
[State -1,buukujutsu]
type = ChangeState
value = 900
triggerall =(command="Buukujutsu")&&(power>=100)
trigger1 =(statetype=A)&&(ctrl)

;Begin Buukujutsu
[State -1,Begin Buukujutsu]
type = ChangeState
value = 910
triggerall =(command="Buukujutsu")&&(power>=100)
trigger1 =(statetype!=A)&&(ctrl)
;--------------------------------------------------------------------------
;Run Fwd
[State -1,Run Fwd]
type = ChangeState
value = 100
trigger1 =(command="FF")&&(statetype=S)&&(ctrl)
;---------------------------------------------------------------------------
;Run Back
[State -1,Run Back]
type = ChangeState
value = 105
trigger1 =(command="BB")&&(statetype=S)&&(ctrl)
;---------------------------------------------------------------------------
;Fwd Dash Air
[State -1, Fwd Dash Air]
type = ChangeState
value = 60
trigger1 =(command="FF")&&(statetype=A)&&(ctrl)&&(stateno = 50)
;---------------------------------------------------------------------------
;Back Dash Air
[State -1, Back Dash Air]
type = ChangeState
value = 65
trigger1 =(command="BB")&&(statetype=A)&&(ctrl)&&(stateno = 50)
;---------------------------------------------------------------------------
;Throw
[State -1,Throw]
type = ChangeState
value = 800
triggerall =(command="y")&&(statetype=S)&&(ctrl)&&(stateno!=100)
trigger1 =(command="holdfwd")&&(p2bodydist X<3)&&(p2movetype!=H)
trigger1 = (p2statetype=S)||(p2statetype=C)
trigger2 = (command="holdback")&&(p2bodydist X<5)&&(p2movetype!=H)
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;Renzouken Energy Dan
[State -1,Renzouken Energy Dan]
type=ChangeState
value=1100
triggerall=(Command="c")&&(power>=100)
trigger1= (statetype=S)&&(Ctrl)
;-------------------------------------------------------------------------
;Zanzouken
[State -1,Zanzouken]
type=ChangeState
value=1200
triggerall=(Command="z")
trigger1=(Ctrl)
trigger2=(stateno=900);Buukujutsu
trigger3=(stateno=50)
;--------------------------------------------------------------------------
;Elbow
[State -1, Elbow]
type = ChangeState
value = 205
triggerall =(p2bodydist X < 2)&&(command!="holddown")&&(command="x")
trigger1 =(statetype=S)&&(ctrl)
trigger2 =(stateno=900);Buukujutsu
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command="x")&&(command!="holddown")
trigger1 = (statetype=S)&&(ctrl)
trigger2 = (stateno=205)&&(movecontact)
trigger3 = (stateno=900);Buukujutsu
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall =(command="y")&&(command!="holddown")
trigger1 =(statetype = S)&&(ctrl)
trigger2 =(stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 =(stateno=230)&&(movecontact)
trigger4 =(stateno=900);Buukujutsu
;----------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(command="a")&&(command!= "holddown")
trigger1 =(statetype = S)&&(ctrl)
trigger2 =(stateno=200)&&(movecontact)||(stateno=205)&&(movecontact)
trigger3 =(stateno=900);;Buukujutsu
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall =(command ="b")&&(command!="holddown")
trigger1 =(statetype=S)&&(ctrl)
trigger2 =(stateno=210)&&(movecontact)||(stateno=230)&&(movecontact)
trigger3 =(stateno=900);Buukujutsu
;---------------------------------------------------------------------------
;Recover Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 2300
triggerall=(command ="holdb")&&(command!="holddown")||(command="holda")&&(command!="holddown")
trigger1 =(statetype=L)&&(ctrl)
trigger2 =(stateno=5110)
;-----------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall =(command="start")
trigger1 =(statetype!=A)&&(ctrl)
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall =(command="x")&&(command="holddown")
trigger1 =(statetype=C)&&(ctrl)
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall =(command="y")&&(command="holddown")
trigger1 =(statetype=C)&&(ctrl)
trigger2 =(stateno=400)&&(movecontact)||(stateno=430)&&(movecontact)
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall =(command="a")&&(command="holddown")
trigger1 =(statetype=C)&&(ctrl)
trigger2 =(stateno=400)&&(movecontact)
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall =(command="b")&&(command="holddown")
trigger1 =(statetype=C)&&(ctrl)
trigger2 =(stateno=430)&&(movecontact)
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall =(command="x")
trigger1 =(statetype=A)&&(ctrl)
trigger2 =(stateno=1400)&&(movecontact)
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall =(command="y")
trigger1 =(statetype=A)&&(ctrl)
trigger2 =(stateno=600)&&(movecontact)||(stateno=630)&&(movecontact)
trigger3 =(stateno=1400)&&(movecontact)
;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall =(command="a")
trigger1 =(statetype=A)&&(ctrl)
trigger2 =(stateno=600)&&(movecontact)
trigger3 =(stateno=1400)&&(movecontact)
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall =(command="b")
trigger1 =(statetype=A)&&(ctrl)
trigger2 =(stateno=600)&&(movecontact)||(stateno=630)&&(movecontact)
trigger3 =(stateno=1400)&&(movecontact)
