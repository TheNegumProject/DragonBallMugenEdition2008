[Statedef -2]

;====(A.I.)=============================================================

;--(Punch/Kick)---------------------------------------------------------
[State -2,AI Stand Light Punch]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall=(EnemyNear,StateType!= A)
triggerall=(p2bodydist x<20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=900)
value = 200
;-------------------------------------------------------------------
[State -2,AI Stand Strong Punch]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall=(EnemyNear,StateType != A)
triggerall=(p2bodydist x<20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=900)
value = 210
;-------------------------------------------------------------------
[State -2,AI Stand Light Kick]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall=(EnemyNear,StateType != A)
triggerall=(p2bodydist x < 20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=900)
value = 230
;-------------------------------------------------------------------
[State -2,AI Stand Strong Kick]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall=(EnemyNear,StateType != A)
triggerall=(p2bodydist x < 20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=900)
value = 240

;---(Chains)-------------------------------------------------------------------
[State -2,2Hit]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(StateType = S)
trigger1 = (Stateno = 200)&&(Movecontact)
trigger2 = (Stateno = 205)&&(Movecontact)
value= IfElse(random >400,230,1700)



[State -2,3Hit]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(StateType = S)
trigger1 = (Stateno = 230)&&(Movecontact)
trigger2 = (Stateno = 1700)&&(Movecontact)
value = 210

[State -2,4Hit]
type =ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(StateType = S)
trigger1 = (Stateno = 210)&&(Movecontact)
value = 240

[State -2,5Hit]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(StateType = S)
trigger1 = (Stateno = 240)&&(Movecontact)
value = 220

[State -2,6Hit]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(StateType = S)
trigger1 = (Stateno = 220)&&(Movecontact)||(Stateno = 240)&&(Movecontact)
value = IfElse(Random > 200,1400,IfElse(Random > 200,1500,IfElse(Random > 200,1800,2000)))

[State -2,7Hit]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(StateType = S)&&(Power >=1000)
trigger1 = (Stateno = 220)&&(Movecontact)||(Stateno = 240)&&(Movecontact)
value = 3200


;--(Punch Crounch/Kick Crouch)---------------------------------------------------------
[State -2,AI Crouching Punch]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = C)
triggerall=(p2bodydist x < 20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=11)
value = 400
;--------------------------------------------------------------------
[State -2,AI Crouching Strong Punch]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!= 0)&&(StateType = C)
trigger1 = (Stateno = 400)&&(Movecontact)
value = 410
;--------------------------------------------------------------------
[State -2,AI Crouching Light Kick]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = C)
triggerall=(p2bodydist x < 20)&&(p2movetype=I)&&(Random > 400)
trigger1= (MoveContact)
trigger2=(stateno=11)
value = 430
;--------------------------------------------------------------------
[State -2,AI Crouching Strong Kick]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!= 0)&&(StateType = C)
trigger1= (Stateno=430)&&(Movecontact)
value = 440
;--(Jump Punch/Jump Kick)---------------------------------------------------------
[State -2,AI Jump Light Punch]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = A)
triggerall=(p2bodydist x < 20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=50)
value = 600
;--------------------------------------------------------------------
[State -2,AI Jump Strong Punch]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!= 0)&&(StateType = A)
trigger1 = (Stateno = 600)&&(Movecontact)
value = 610
;--------------------------------------------------------------------
[State -2,AI Jump Light Kick]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = A)
triggerall=(p2bodydist x < 20)&&(p2movetype=I)&&(Random > 400)
trigger1=(MoveContact)
trigger2=(stateno=50)
value = 630
;--------------------------------------------------------------------
[State -2,AI Jump Strong Kick]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!= 0)&&(StateType = A)
trigger1 = (Stateno = 630)&&(movecontact)
value = 640
;--(Run Fwd)-------------------------------------------------------------------
[State -2,AI Run FWD]
type = ChangeState
triggerall =(roundstate=2)&&(Var(59)!=0)&&(StateType = S)&&(Stateno=0)
triggerall=(EnemyNear,MoveType=I)
trigger1 =(p2bodydist x>30)&&(Random > 100)
value = 100
;--(Ki Charge)-----------------------------------------------------------------
[State -2,ki Charge ON]
type=changestate
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(Power<3000)&&(var(4)= 0)
triggerall=(EnemyNear,MoveType!= A)
triggerall=(p2bodydist x>300)
trigger1= (stateno=0)
value = 1000
;-------------------------------------------------------------------------
[State -2,ki Charge OFF]
type=changestate
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(Power>=3000)
triggerall=(EnemyNear,MoveType= A)
triggerall=(p2bodydist x<300)
trigger1= (stateno=1000)
value = 1001
;--(Buukujutsu)------------------------------------------------------------------------
[State -2,Buukujutsu ON]
type = ChangeState
triggerall =(RoundState=2)&&(Var(59)!= 0)&&(power>=100)&&(Stateno=0)
trigger1 =(p2bodydist Y<-30)&&(stateno=0)
value = 910
;--------------------------------------------------------------------------
[State -2,Buukujutsu OFF]
type = ChangeState
triggerall =(RoundState=2)&&(Var(59)!= 0)
trigger1 =(p2bodydist Y>30)&&(stateno=900)
value = 50
;--(Renzouken)------------------------------------------------------------------------
[State -2,AI Renzouken]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = S)&&(power>=1000)
trigger1= (EnemyNear,MoveType= A)
trigger1=(p2bodydist x < 150)&&(p2bodydist Y>=0)
trigger1=(Random > 400)
value = 1100
;--(Zanzouken)------------------------------------------------------------------------
[State -2,AI Zanzouken]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = S)
trigger1= (EnemyNear,MoveType = A)
trigger1= (EnemyNear,Stateno >=1000)
trigger1=(p2bodydist x < 50)
trigger1=(Random > 400)
value = 1200
;--(Armor Mode/Power Mode)------------------------------------------------------------------------
[State -2,AI Armor Mode/Power Mode]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType = S)
trigger1= (Power >= 3000)
trigger1= (var(4) = 0)
trigger1= (var(5) = 0)
value= IfElse(Random <= 200,2999,3100)
;------------------------------------------------------------------------------
[State -2,AI W.Sonic Knee/S. Sonic Knee]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall=(p2bodydist x<20)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=220)
value = IfElse(Random > 499,1400,1500)
;-------------------------------------------------------------------------
[State -2,AI Bakuhatsu]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)&&(Pos Y>=0)
triggerall=(EnemyNear,MoveType=A)
triggerall=(p2bodydist x>30)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=220)
value = IfElse(Random < 200,1800,1900)
;--------------------------------------------------------------------------
[State -2,AI Kienzan]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall=(EnemyNear,MoveType=A)
triggerall=(p2bodydist x>30)
trigger1=(MoveContact)
trigger2=(stateno=0||stateno=100||stateno=220)
value = IfElse(Random < 200,2000,2100)
;---------------------------------------------------------------------------
[State -2,Big Bang]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
trigger1= (Power >=1000)&&(Random > 200)
trigger1=(stateno=0||stateno=100||stateno=220)
value= 3200
;----------------------------------------------------------------------------
[State -2,Final Flash]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=S)
triggerall= (Power >=2000)&&(Random <= 200)
trigger1=(stateno=0||stateno=100||stateno=220)
value= 3500
;----------------------------------------------------------------------------
[State -2,Final Flash]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=A)
triggerall= (Power >=2000)&&(Random <= 200)
trigger1=(stateno=0||stateno=100||stateno=1400)
value= 3501
;----------------------------------------------------------------
[State -2,Final Shine]
type = ChangeState
triggerall=(roundstate=2)&&(Var(59)!= 0)&&(ctrl)&&(StateType=A)
triggerall= (Power >=2000)&&(Random <= 200)
trigger1=(stateno=0||stateno=100||stateno=220)
value= 4100


