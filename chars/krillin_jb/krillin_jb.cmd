;=====================================
;"KRILLIN", from Buyuu Retsudan (edit)
;=====================================

;----------------------------------------
;Author:	Jabi (D-GENERACION Z Team)
;		
;Web:		http://www.jabixtreme.cjb.net/
;----------------------------------------

;===========================================================================



; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;****************************************************************************
;****************************************************************************
;****************************************************************************
;****************************************************************************


;-| AI |---------------------------------------------------------------------

[Command]
name = "ai1"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai2"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y
time = 1

[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,a+b+c+z+x+y
time = 1

[Command]
name = "ai5"
command = F,B,F,B,F,B,F,B,F,B,F,B,a+b+c+z+x+y
time = 1

[Command]
name = "ai6"
command = B,D,F,U,a+b+c+z+x+y+B+D+F+U
time = 1

[Command]
name = "ai7"
command = B,D,F,U,B,D,F,U,a+b+c+z+x+y
time = 1

[Command]
name = "ai8"
command = F,B,F,F,F,B,B,U,U,D,D,a+b+c+z+x+y
time = 1

[Command]
name = "ai9"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = F,x,B,x,D,x,U,x,F,x,B,x,D,x,U,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai11"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B
time = 1

[Command]
name = "ai12"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai14"
command = F,B,F,B,F,a+b+c+z+x+y+U+B+D+F
time = 1

[Command]
name = "ai15"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B
time = 1






;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "bola_grande"
command = ~D, DB, B, F, x
time = 20

[Command]
name = "kamehameha"
command = ~D, DB, B, F, z
time = 20


;[Command]
;name = "TripleKFPalm"
;command = ~D, DF, F, D, DF, F, x
;time = 20

;[Command]
;name = "TripleKFPalm"   ;Same name as above
;command = ~D, DF, F, D, DF, F, y
;time = 20

;[Command]
;name = "SmashKFUpper"
;command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
;time = 20

;[Command]
;name = "SmashKFUpper"   ;Same name as above
;command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
;time = 20

;-| Special Motions |------------------------------------------------------
;[Command]
;name = "upper_x"
;command = ~F, D, DF, x

;[Command]
;name = "upper_y"
;command = ~F, D, DF, y

;[Command]
;name = "upper_xy"
;command = ~F, D, DF, x+y

;--------------------

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "especial_a"
command = ~D, DB, B, a

[Command]
name = "especial_b"
command = ~D, DB, B, b

[Command]
name = "especial_c"
command = ~D, DB, B, c

[Command]
name =  "especial_x"
command = ~D, DB, B, x



[Command];fire ball aka renzocu
name = "bola_energia"
command = c
time = 30


[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "fly" ;  
command = b+y ; 
time = 1 ; tempo que podera usar o comando 



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "ki"
command = /x
time = 1

[Command]
name = "ki2"
command = /a
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

;-| Hold Dir |-----------Movimiento del char,todas direcciones-----
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

;-| single Dir |-----------apretar una vez la direccion-----
[Command]
name = "F";
command = F
time = 1



;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------

;AI mode
[State -1, AI]
type = VarSet
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10= command = "ai10"
trigger11= command = "ai11"
trigger12= command = "ai12"
trigger13= command = "ai13"
trigger14= command = "ai14"
trigger15= command = "ai15"
var(59) = 1



;---------------------------------------------------------------------------
;Run Fwd ;correr adelante
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back  ;correr atras
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;=============================================================================
;ESTADOS ESPECIALES
;=============================================================================

;Taunt
;Burla
[State -1, Burla]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------

;Carga de KI
[State -1, Cargar KI]
type = ChangeState
value = 830
triggerall = command = "ki" && command = "ki2"
;triggerall = power < 3000
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S
;trigger2 = stateno = 900

;---------------

;Carga de KI en  el aire
[State -1, Cargar KI]
type = ChangeState
value = 831
triggerall = command = "ki" && command = "ki2"
;triggerall = command != "holddown"
triggerall = ctrl = 0
trigger1 = stateno = 900



;---------------------------------------------------------------------------
;Fly ; Volando
[State -1, Volar]
type = ChangeState
value = 900 
triggerall = command = "fly"   
trigger1 = statetype = A ; puede ser hecho en el aire
trigger1 = ctrl = 1 ; o seu char voa sem controle para cima 

;-----
 
;Fly ;Empezar a volar
[State -1, Volar]
type = ChangeState
value = 910 
triggerall = command = "fly" 
trigger1 = statetype != A ; no precisa estar en el aire
trigger1 = ctrl = 1 ; seu char para no alto 

;---------------------------------------------------------------------------

;Kung Fu Throw
[State -1, Kung Fu Throw]
type = null ;ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;GOLPES BASICOS
;===========================================================================

;Stand Light Punch "a"
;Putazo flojo
[State -1, Stand Light Punch]
type = ChangeState
value = 200           ;busca el [statedef 200] en el .cns
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "especial_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 230 && MoveContact 
trigger5 = stateno = 240 && MoveContact 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "especial_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = stateno = 200 && MoveContact  
trigger4 = stateno = 230 && MoveContact 
trigger5 = stateno = 210 && MoveContact 
trigger6 = stateno = 240 && MoveContact 

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "bola_grande"
triggerall = command != "especial_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
;estas lineas sirven para poder hacer combos  manuales.
trigger3 = stateno = 200 && MoveContact ;para combinar putazo flojo y patada floja.  
;trigger6 = stateno = 230 && MoveContact ;para combinar dos patadas flojas.
trigger4 = stateno = 210 && MoveContact ;para combinar dos patadas flojas.
trigger5 = stateno = 240 && MoveContact 

;------
[State -1, Combo_x1]
type = ChangeState
value = 1300
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 230

;------
[State -1, Combo_x2]
type = ChangeState
value = 1301
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1300

;------
[State -1, Combo_x3]
type = ChangeState
value = 1302
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1301

;------
[State -1, Combo_x4]
type = ChangeState
value = 1303
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1302

;------
[State -1, Combo_x5];fin combo_x
type = ChangeState
value = 1304
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1303




;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = stateno = 200 && MoveContact 
trigger4 = stateno = 230 && MoveContact 
trigger5 = stateno = 210 && MoveContact 
;trigger6 = stateno = 240 && MoveContact 

;------
[State -1, Combo_y1]
type = ChangeState
value = 1400
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 240
;trigger1 = stateno = 240
;trigger1 = statetype = S

;------
[State -1, Combo_y2]
type = ChangeState
value = 1401
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1400
;trigger1 = MoveContact
;trigger1 = stateno = 1400

;------
[State -1, Combo_y3]
type = ChangeState
value = 1402
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1401
;trigger1 = MoveContact
;trigger1 = stateno = 1400

;------
[State -1, Combo_y4]
type = ChangeState
value = 1403
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1402

;------
[State -1, Combo_y5];fin combo_y
type = ChangeState
value = 1405
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1403


;---------------------------------------------------------------------------
;Standing Strong2 Kick(tira a tierra p2)
[State -1, Standing Strong2 Kick]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "kamehameha"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = stateno = 200 && MoveContact 
trigger4 = stateno = 230 && MoveContact 
trigger5 = stateno = 210 && MoveContact 
trigger6 = stateno = 240 && MoveContact 


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a" || command = "b" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = null; ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x" || command = "y" || command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = null; ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a" || command = "b" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = null; ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x" || command = "y" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = null; ChangeState
value = 640
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact



;=============================================================================
;TECNICAS ESPECIALES (special motions)
;=============================================================================

;Especial_a (combo especial)
[State -1, especial_a]
type = ChangeState
value = 2000
triggerall = command = "especial_a"
triggerall = power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;trigger1 = ctrl

;-------------------------------------------------------------------------------

;Especial_b (combo especial)
[State -1, especial_b]
type = ChangeState
value = 2050
triggerall = command = "especial_b"
triggerall = power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;----------------------------------------------------------------------------------


;Especial_c (combo especial)
[State -1, especial_c]
type = ChangeState
value = 2100
triggerall = command = "especial_c"
triggerall = power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = stateno = 50
trigger4 = stateno = 2500 || stateno = 2501 
trigger5 = stateno = 250 && MoveContact 


;-------------------------------------------------------------------------------

;Especial_x (combo especial)
[State -1, especial_x]
type = ChangeState
value = 2150
triggerall = command = "especial_x"
triggerall = power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;----------------------------------------------------------------------------------


;Bola_energia (peque)1
[State -1, bola_energia]
type = ChangeState
value = 2500 
triggerall = command = "bola_energia" 
triggerall = command != "especial_c"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3 = stateno = 50 && command != "especial_c"

trigger4 = stateno = 200 && MoveContact 
trigger5 = stateno = 210 && MoveContact 
trigger6 = stateno = 230 && MoveContact 
trigger7 = stateno = 240 && MoveContact 
trigger8 = stateno = 250 && MoveContact 


;Bola_energia (peque)2
[State -1, bola_energia]
type = ChangeState
value = 2501 
triggerall = command = "bola_energia" 
;trigger1 = statetype = S 
;trigger1 = ctrl = 1
triggerall = power >= 1
triggerall = Time > 9
trigger1 = stateno = 2500
trigger2 = stateno = 50 && command != "especial_c"


;Bola_energia (peque)3
[State -1, bola_energia]
type = ChangeState
value = 2500 
triggerall = command = "bola_energia" 
triggerall = power >= 1
triggerall = Time > 9
trigger1 = stateno = 2501
trigger2 = stateno = 50 && command != "especial_c"

;--------------------------------------------------------------------------------------




;=============================================================================
;SUPER TECNICAS (Hiper motions)
;=============================================================================

;Bola_grande (bola de energia)
[State -1, "bola_grande"]
type = ChangeState
value = 3000
triggerall = command = "bola_grande"
triggerall = power >= 2000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900


;-----------------------------------------------------------------------

;Shunkanido Kamehameha
[State -1]
type = ChangeState
value = 3050
triggerall = Var(58) = 0
triggerall = command = "kamehameha"
triggerall = numproj = 0
triggerall = power >= 3000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 900

