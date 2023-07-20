; Muhammad Asad Tariq (21L-5266) & Umair bin Asim (21L-1847)
; Computer Organisation & Assembly Language --- Project (Final)

[org 0x0100]

	JMP		start
	
		notes:
		
			sii: 		DW 2415
			la:  		DW 2711
			sol: 		DW 3043
			fa:  		DW 3416
			mi:  		DW 3619
			re:  		DW 4061
			do:  		DW 4560

			F_low: 		DW 6833
			Fsh_low: 	DW 6449
			Gsh_low: 	DW 5746
			Ash_low: 	DW 5119

			C: 			DW 4560
			Csh: 		DW 4304
			D: 			DW 4063
			Dsh: 		DW 3834
			E: 			DW 3619
			F: 			DW 3416
			Fsh: 		DW 3224
			G: 			DW 3043
			Gsh: 		DW 2873


			playNote:
			
				MOV		AL, 0xB6			; preparing speaker to play note
				OUT		0x43, AL

				MOV		AX, [BP]			; sending note to speaker in two parts
				OUT		0x42, AL
				
				MOV		AL, AH				; sending second part
				OUT		0x42, AL

				IN		AL, 0x61			; turning speaker on
				OR		AL, 0x03
				OUT		0x61, AL

			RET
			
			
			keepNote:

				MOV		AX, 0x0004
				BGouterloop:
					
					MOV		CX, 0xFFFF
					BGinnerloop:
					LOOP 	BGinnerloop
				
				DEC		AX
				CMP		AX, 0
				JNZ		BGouterloop
				
			RET
			
			
			stopNote:
			
				IN		AL, 0x61			; turning speaker off
				AND		AL, 0xFC
				OUT		0x61, AL
				
			RET


		BGmusic:

			SUB		SP, 2
			MOV		BP, SP

			BGmusicloop:

			MOV		AX, [Fsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote
			
			MOV		AX, [Gsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote
			
			;;;
			
			MOV		AX, [Ash_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [F_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [Gsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Ash_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			;;;
	  
			MOV		AX, [Fsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote
			
			MOV		AX, [Gsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			;;;
			
			MOV		AX, [Ash_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote
			CALL	keepNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [F_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Csh]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [C]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Gsh_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

			MOV		AX, [Ash_low]
			MOV		[BP], AX
			CALL	playNote
			CALL	keepNote
			CALL	stopNote

		JMP		BGmusicloop								; infinite loop to keep playing music in the backgroud
	
	
		KBISR:
		
			PUSH	AX
			
			PUSH	DS;
			PUSH	ES;
			PUSH	SI;
			PUSH	DI;
			
				PUSH	CS
				POP		DS
				
				
				IN		AL, 0x60
				
					CMP		AL, 0x01					; if ESC key pressed
					JNE		cmpUP
				
						CALL	confirmExit				; ask for confirmation
						
					JMP		exitKBISR
					
				cmpUP:
				
					CMP		AL, 0x48					; if arrow key pressed, go to appropriate fish movement subroutine (e.g. moveFishUp for up arrow)
					JNE		cmpDOWN
						
						CALL	moveFishUp
					
					JMP		exitKBISR
					
				cmpDOWN:
				
					CMP		AL, 0x50
					JNE		cmpLEFT

						CALL	moveFishDown

					JMP		exitKBISR
					
				cmpLEFT:
				
					CMP		AL, 0x4B
					JNE		cmpRIGHT
					
						CALL	moveFishLeft
					
					JMP		exitKBISR
					
				cmpRIGHT:
				
					CMP		AL, 0x4D
					JNE		exitKBISR
						
						CALL	moveFishRight
						
				exitKBISR:
				
				MOV		AL, 0x20						; after carrying out the desired command, send end of inteerupt to PIC and return from KBISR
				OUT		0x20, AL
				
			POP		DI;
			POP		SI;
			POP		ES;
			POP		DS;
			
			POP		AX
		
		IRET
		

		timer:
		
			PUSH	AX
			PUSH	DX
			
			PUSH	ES
			PUSH	SI
			PUSH	DI
			
			PUSHA;
			
			PUSH	BP

				PUSH	CS
				POP		DS
				
				
				XOR		AH, AH
				MOV		AL, [tickcount]
				
				MOV		DL, [timeperiod]
				DIV		DL
				
				MOV		DL, 255
				SUB		DL, AH
				INC		DL								; calculating wraparound limit
				
				
				INC		BYTE [tickcount]
				CMP		BYTE [tickcount], DL			; wraparound to 0 after this value to keep intervals of time constant
				JNE		notreset
				
					MOV		BYTE [tickcount], 0
					JMP		notreset;
					
				notreset:
				
					MOV		AH, 0
					MOV		AL, [tickcount]
					
					MOV		DL, [timeperiod]			; to carry out functionality only after certain number of ticks (18 for one second)
					DIV		DL
					
				CMP		AH, 1							; remainder will be 1 only after [timeperiod] (i.e. 18) timer interrupts
				JNE		exittimer;

					SUB		BYTE [coin1life], 1
					SUB		BYTE [coin2life], 1			; after every second, remaining life of each coin will decrease
					
					CMP		BYTE [coin1life], 0			; if life over
					JNE		nextcomp

						PUSH	WORD 1
						CALL	respawnCoin
						
					nextcomp:
					CMP		BYTE [coin2life], 0			; same as above but for green coin
					JNE		exittimer

						PUSH	WORD 2
						CALL	respawnCoin
	
				exittimer:		; after carrying out the desired command, jump to old timer otherwise system time will not get updated
				
			POP		BP
			
			POPA;
			
			POP		DI
			POP		SI
			POP		ES
			
			POP		DX
			POP		AX

			;;;;;;;;;; MultiTasking ;;;;;;;;;
			
			PUSH DS
			
				PUSH BX
				
				PUSH CS
				POP DS 										; initialize DS to data segment
				
				
				MOV BX, [current] 							; read index of current in BX
				
					SHL BX, 1
					SHL BX, 1
					SHL BX, 1
					SHL BX, 1
				
				SHL BX, 1 									; multiply by 32 for PCB start
				

					MOV [PCB + BX + 0], AX 					; save AX in current PCB
					MOV [PCB + BX + 4], CX 					; save CX in current PCB
					MOV [PCB + BX + 6], DX 					; save DX in current PCB
					MOV [PCB + BX + 8], SI 					; save SI in current PCB
					MOV [PCB + BX + 10], DI					; save DI in current PCB
					MOV [PCB + BX + 12], BP					; save BP in current PCB
					MOV [PCB + BX + 24], ES					; save ES in current PCB
					
					POP AX 									; read original BX from stack
					MOV [PCB + BX + 2], AX 					; save BX in current PCB
					POP AX 									; read original DS from stack
					MOV [PCB + BX + 20], AX 				; save DS in current PCB
					POP AX 									; read original IP from stack
					MOV [PCB + BX + 16], AX 				; save IP in current PCB
					

					POP AX 									; read original CS from stack
					MOV [PCB + BX + 18], AX 				; save CS in current PCB
					

					POP AX 									; read original flags from stack
					MOV [PCB +BX+26], AX 					; save flags in current PCB
					
					MOV [PCB +BX+22], SS 					; save SS in current PCB
					MOV [PCB +BX+14], SP 					; save SP in current PCB
				
				
				MOV BX, [PCB + BX + 28] 					; read next PCB of this PCB
				MOV [current], BX 							; update current to new PCB
				
				MOV CL, 5
				SHL BX, CL 									; multiply by 32 for PCB start
				
				
					MOV CX, [PCB + BX +4] 					; read CX of new process
					MOV DX, [PCB + BX +6] 					; read DX of new process
					MOV SI, [PCB + BX +8] 					; read SI of new process
					MOV DI, [PCB + BX +10]					; read DI of new process
					MOV BP, [PCB + BX +12] 					; read BP of new process
					MOV ES, [PCB + BX +24] 					; read ES of new process
					MOV SS, [PCB + BX +22] 					; read SS of new process
					MOV SP, [PCB + BX +14] 					; read SP of new process
					
					PUSH WORD [PCB + BX + 26] 				; push flags of new process
					
					PUSH WORD [PCB + BX + 18] 				; push CS of new process
					
					
					PUSH WORD [PCB + BX + 16]				; push IP of new process
					PUSH WORD [PCB + BX + 20] 				; push DS of new process
				

			trueexit:

				MOV AX, [PCB + BX + 0] 						; read AX of new process
				MOV BX, [PCB + BX + 2] 						; read BX of new process
				
			POP DS 											; read DS of new process
			
		JMP FAR [CS:oldTMR]
		
		
		
		
		val:	DW		0
		loc:	DW		320

		; PCB layout:
		
			; AX,BX,CX,DX,SI,DI,BP,SP,IP,CS,DS,SS,ES,flags,next,dummy
			; 0, 2, 4, 6, 8, 10,12,14,16,18,20,22,24, 26,   28,  30		
			
			PCB:		TIMES	2 * 16		DW		0
			stack:		TIMES	2 * 32		DW		0
			current:						DB		0
			
		
		
		
		data:
		
			; Prompt for Confirmation Regarding Quitting the Game:
			
				confirmMsg:		TIMES	15	DB		' '
											DB		'Are you sure you want to quit? Yes (Y) / No (N)'
								TIMES	12	DB		0x0A
											DB		'$'			; confirmation message, $ terminated string for service 9h of DOS interrupt 21h
																; which prints string at standard output --- newline chars (0x0A) used to move string
			;													; to centre of screen
		
			flag:				DB	1		; enable animation: 1 for movement, 0 for stopping
			
			
			screenBuffer:		TIMES	2000	DW	0	; space of 2000 words for saving entire display screen
	
			oldISR:				DD	0		; to store segment and offset of old keyboard interrupt handler
			oldTMR:				DD	0		; to store segment and offset of old timer interrupt handler
		
		
			tickcount:			DB	0
			
			redcoin:			DB	'O', 0x14	; shape and colour of coins
			greencoin:			DB	'O', 0x12
			
			coin1loc:			DW	2720		; locations of coins (wrt to display memory 0xB800)
			coin2loc:			DW	3998
			
			coin1life:			DB	1			; remaining lifespan of coins (in units of [timeperiod] ticks)
			coin2life:			DB	1
			
			fishlife:			DB	5
			score:				DW	0			; score of player
			
			timeperiod:			DB	18			; how many ticks constitute one unit of time after which actions are to be performed by the timer
			
			
			skycolour:			DB	0x30	; 0011 0000, cyan background
			
			seacolour1:			DB	0x13	; 0001 0011, blue background, teal foreground (if wave)
			seacolour2:			DB	0x10	; 0001 0000, blue background
			
			landcolour:			DB	0x20	; 0010 0000, green BG
			
			bldingcolour:		DB	0x00	; 0000 0000, black BG
			windowcolour:		DB	0x70	; 0111 0000, white BG
			
			shipshullcolour:	DB	0x60	; 0110 0000, brown BG
			rectanglecolour:	DB	0x00	; 0000 0000, black BG
			
			wave:				DB	'~'		; uncomment one of these to choose to display waves in second frame or not
			;wave:				DB	' '
			
			fishRow:			DB	20		; i.e. fifth row of third frame, initially
			fishCol:			DW	40		; i.e. centre of above row, initially
			
			fishColour:			DB	0x12	; 0001 0010, blue BG, cyan FG
			fishShape:			DB	'X'
			
			tflag:				DB	1		; used for ship drawing
			t2flag:				DB	1

			
			
			
			
			intromessage: db 'Enter Any Key to Continue' ; string to be printed
			introlength: dw 25 ; length of the string
			introattribute: db 0x92

			Fish1:  db"                  __,               "
			Fish2:  db"               .-'__'`              "
			Fish3:  db"             .' {`                  "
			Fish4:  db"         .-'````'-.    .-'``'.      "
			Fish5:  db"       .'0)       '._/ _.-.  `\     "
			Fish6:  db"      }     '. ))    _<`    )`  |   "
			Fish7:  db"       `-.,\'.\_,.-\` \`---; .' /   "
			Fish8:  db"            )  )       '-.  '--:    "
			Fish9:  db"           ( ' (          ) '.  \   "
			Fish10: db"            '.  )      .'(   /   )  "
			Fish11: db"              )/      (   '.    /   "
			Fish12: db"                       '._( ) .'    "
			Fish13: db"                           ( (      "
			Fish14: db"                            `-.     "
			lengthFish: dw 36
			FishAttribute:		DB	0x04

			game1: db"   ______          ______ _        __       __"
			game2: db"  / ____/ ___     / ____/(_)_____ / /_     / /"
			game3: db" / / __ / __ \   / /__  / // ___// __ \   / / "
			game4: db"/ /_/ // /_/ /  / ___/ / /(__  )/ / / /  /_/  "
			game5: db"\____/ \____/  /_/    /_//____//_/ /_/  (_)   "
			lengthgame: dw 46
			gameAttribute:		DB	0x02

			boundaryAttribute:		Dw	0xEB2a
			;--------------------------------------------------------------------
			sea1:  db"             ,~~|  |\                           ,                      "
			sea2:  db"             `~~|  |=\                       . ~ ~ .                   "
			sea3:  db"                |  |__\                    .'@ ))>>> '..~              "
			sea4:  db"       ]-------,|__|__,>---                > - ~``  '~\{               "
			sea5:  db"        \=====o==o===.'                                \               "
			sea6:  db"       [|___>^<.___.'`.                                       __,,-,._ "
			sea7:  db"       _,-' '` .   ` . \.._          ___,.....,---......,--''''` .  '``"
			sea8:  db"    ,-' .  '  .  '  .  '  .`....---'''  .  '  .  '  .  '  .  '  .  '  ."
			sea9:  db".-''  '` .  '` .  '` .  '` .  '`--..__'` .  '` .  '` .  '` .  '` .  '` "
			sea10: db"  .  ' ..  '  .  '  .  '  .  '  .  '  '\.  '  .  '  .  '  .  '  .  '  ."
			sea11: db"_______________________________________________________________________"
			lengthSea: dw 71
			SeaAttribute:		DB	0x03

			EnterName1:  db"                   ,__                                    "
			EnterName2:  db"                   |  `'.                                 "
			EnterName3:  db"__           |`-._/_.:---`-.._                            "
			EnterName4:  db"\='.       _/..--'`__         `'-._             ___       "
			EnterName5:  db" \- '-.--'`      ===        /   o  `',      _-~~   ~~-__  "
			EnterName6:  db"  )= (                 .--_ |       _.'    /  Player!   ) "
			EnterName7:  db" /_=.'-._             {=_-_ |   .--`-.   <   Enter Your  )"
			EnterName8:  db"/_.'    `\`'-._        '-=   \    _.'      \_   Name! __) "
			EnterName9:  db"         )  _.-'`'-..       _..-'`           ~--___--~    "
			EnterName10: db"        /_.'        `/';';`|                              "
			EnterName11: db"                     \` .'/                               "
			EnterName12: db"                      '--'                                "
			lengthEnterName: dw 58
			EnterNameAttribute:		DB	0x02

			NamePrompt:	db 'Enter Your Name: $'
			Namebuffer:		db 40 								; Byte # 0: Max length of buffer
			db 0 											; Byte # 1: number of characters on return
			times 40 db 0 									; 80 Bytes for actual buffer space
			space: dw 40
			
			
			
			
			
			
			message1:	db"                Hello "
			message2:	db"                Welcome to Go Fish!                           "
			message3:	db"       Your goal is to collect as many Coins as u can.        "
			message4:	db"       You can move your fish using the Arrow Keys.           "
			message5:	db"There are two Type of coins:                                  "
			message6:	db"          Red coin   - 50 Score (disappears after 5  sec)     "
			message7:	db"          Green coin - 10 Score (disappears after 10 sec)     "
			message8:	db"Your Score is Dispalyed on the top Right Corner of your screen"
			message9:	db"                GOOD LUCK!! :)                                "
			lengthmessage: dw 62
			messageAttribute:		DB	0x42

			message10:	db"Created By:                    "
			message11:	db"  M. Asad Tariq      (21L-5266)"
			message12:	db"  Umair Bin Asim     (21L-1847)"
			lengthmessage2: dw 31
			
			

			
			
			message: db 'Enter Any Key to Continue' ; string to be printed
			exitmessage: db 'Your Score: '
			exitmessagelength: dw 12
			length: dw 25 ; length of the string
			attribute: db 0x92
			attribute2: db 0x12

			GameOver1:
			
			incbin "game.dat"		; the below data is found in the game.dat file and is included from there:
			
			; kept here only so that if game.dat is not provided, the screen is still displayed
			
			db"      ,o888888o.         .8.                  ,8.       ,8.         8888888888"
			db"     8888     `88.       .88.                ,888.     ,88.         8888      "
			db"  ,8 8888       `8.     :8888.              .`8888.   .`888.        8888      "
			db"  88 8888              . `8888.            ,8.`8888. ,8.`888.       8888      "
			db" 88 8888             .8. `8888.           ,8'8.`8888,8^8.`888.      8888888888"
			db" 88 8888            .8`8. `8888.         ,8' `8.`8888' `8.`888.     88888     "
			db" 88 8888   8888888 .8' `8. `8888.       ,8'   `8.`88'   `8.`888.    8888      "
			db" `8 8888       .8'.8'   `8. `8888.     ,8'     `8.`'     `8.`888.   8888      " 
			db"    8888     ,88'.888888888. `8888.   ,8'       `8        `8.`888.  8888      "
			db"     `8888888P' .8'       `8. `8888. ,8'         `         `8.`888. 8888888888"
			db"                                                                              "
			db"         ,o888888o.  `8.`888b           ,8' 8 8888888888   8 888888888o.      "
			db"      . 8888     `88. `8.`888b         ,8'  8 8888         8 8888    `88.     "
			db"     ,8 8888       `8b `8.`888b       ,8'   8 8888         8 8888     `88     "
			db"     88 8888        `8b `8.`888b     ,8'    8 8888         8 8888     ,88     "
			db"     88 8888         88  `8.`888b   ,8'     8 888888888888 8 8888.   ,88'     "
			db"     88 8888         88   `8.`888b ,8'      8 8888         8 888888888P'      "
			db"     88 8888        ,8P    `8.`888b8'       8 8888         8 8888`8b          "
			db"     `8 8888       ,8P      `8.`888'        8 8888         8 8888 `8b.        "
			db"      ` 8888     ,88'        `8.`8'         8 8888         8 8888   `8b.      "
			db"         `8888888P'           `8.`          8 888888888888 8 8888     `88.    "

			lengthGameOver: dw 78
			GameOverAttribute:		DB	0x0a
			
			

			
			
	start:
		
		CALL	introGraphics
		CALL	introScreen
		
		CMP	BYTE [flag], 1
		JNE exitGame

			MOV 	BYTE [current], 0								; set current task index
			MOV		WORD [PCB + 28], 1								; set next PCB
			
			PUSH	CS												; register background music thread in PCB
			PUSH	WORD BGmusic
			CALL	initPCB
			
			
			CALL	printFrame1			; Sky in the background and some land with buildings on it
			CALL	printFrame2			; Sea with ships of various sizes moving in it
			CALL	printFrame3			; Sea - just a vast expanse of water, for now
			
			CALL	printlives;
			
			CALL	hookKBISR			; hook own keyboard handler in order to provide arrow key and ESC functionality
			CALL	hooktimer
			
			movement:

				CALL	moveFrame1		; moving the top frame leftwards
				CALL	moveFrame2		; moving the mid frame rightwards
				
				PUSH	4				; parameter specifying length of delay (decrease it to increase speed)
				CALL	delay			; causing a delay to keep movement slow enough to observe properly
		
			CMP	BYTE [flag], 0	
			JNE movement				; loop to keep the animation running until ESC is pressed (which changes flag)


			CALL	unhooktimer			; restore old timer before exiting program
			CALL	unhookKBISR			; restore old keyboard handler before exiting program

		exitGame:
		
			CALL	exitScreen			; display Game Over screen

	MOV		AX, 0x4C00					; terminate program
	INT		0x21
	


	initPCB:
		
		PUSH BP
		MOV BP, SP
		
			PUSH AX
			PUSH BX
			PUSH CX
			PUSH SI
			
				MOV BX, 1 						; read next available PCB index
				
					MOV CL, 5
					SHL BX, CL 							; multiply by 32 for PCB start
					
						MOV AX, [BP + 6] 				; read segment parameter
						MOV [PCB + BX + 18], AX 		; save in PCB space for CS
					
						MOV AX, [BP + 4]				; read offset parameter
						MOV [PCB + BX + 16], AX 		; save in PCB space for IP
					
					MOV [PCB + BX + 22], DS 			; set stack to our segment

						MOV SI, 1 				; read this PCB index
						
						MOV CL, 6
						SHL SI, CL 						; multiply by 512
						ADD SI, 32*2 + stack 			; end of stack for this thread
						
					MOV [PCB + BX + 14], SI 			; save SI in PCB space for SP

					MOV WORD [PCB + BX + 26], 0x0200 	; initialize thread flags
					
						MOV WORD [PCB + BX +28], 0			; set as next of new thread
				
				exit: 
			
			POP SI
			POP CX
			POP BX
			POP AX
			
		POP BP
		
	RET 4



	introGraphics:
	
		; Setting Video Mode 0x0D (320 x 200 graphics mode)
		
			MOV		AL, 0x0D
			MOV		AH, 0x00
			INT		0x10
			
		; subroutine to draw a ship in graphics mode
			CALL	drawship
		
		; BIOS INT 16h SRV 00h (get keystroke)
		
			MOV		AH, 0x00
			INT		0x16
		
		; Returning to Video Mode 0x02 (80 x 25 text mode)
		
			MOV		AL, 0x02
			MOV		AH, 0x00
			INT		0x10
			
		; Resetting cursor position, for subsequent screens
		
			MOV		DL, 0
			MOV		DH, 24
			MOV		AH, 2
			MOV		BH, 0
			INT		0x10

	RET
	
	
	drawship:
	
		PUSH	AX
		PUSH	BX
		PUSH	CX
		PUSH	DX
		PUSH	SI
		PUSH	DI
			
			; BIOS INT 10h SRV 0Ch			(write graphics pixel)
			
			MOV		AH, 0x0C
			MOV		AL, 0x06
			MOV		BH, 0x00
			MOV		CX, 10
			MOV		DX, 90
			
			
			base1:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				
			CMP		DX, 130
			JNE		base1
			
			base2:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				ADD 	CX, 2
				
			CMP		DX, 150
			JNE		base2
			
			base3:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				
			CMP		DX, 170
			JNE		base3
			
			base4:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				ADD 	CX, 2
				
			CMP		DX, 190
			JNE		base4
			
			base5:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 280
			JNE		base5
			
			base6:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				SUB 	DX, 3
				
			CMP		CX, 310
			JNE		base6
			
			base7:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				ADD 	DX, 2
				
			CMP		DX, 150
			JNE		base7
			
			base8:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 160
			JNE		base8
			
			base9:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				DEC		DX
				
			CMP		DX, 130
			JNE		base9
			
			base10:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 110
			JNE		base10
			
			base11:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				DEC		DX
				
			CMP		DX, 110
			JNE		base11
			
			base12:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 50
			JNE		base12
			
			base13:
			
				CALL	sdelay
				INT		0x10
				DEC		DX
				
			CMP		DX, 90
			JNE		base13
			
			base14:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 10
			JNE		base14
			
			
			mov dx,90
			basefill1:
			mov cx, 10
			add dx,1
				loopfill1:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, 50
				JNE		loopfill1
			cmp dx,110
			jne basefill1
			
			mov dx,110
			mov si, 91
			basefill2:
			mov cx, 10
			add dx,1
				loopfill2:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, si
				JNE		loopfill2
			inc si
			cmp dx,130
			jne basefill2
			
			mov dx,130
			mov DI, 0
			mov si, 141
			basefill3:
			add dx,1
			ADD DI,2
			MOV CX,10
			ADD CX,DI
				loopfill3:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, si
				JNE		loopfill3
			inc si
			cmp dx,150
			jne basefill3
			
			mov dx,150
			basefill4:
			mov cx, 50
			add dx,1
				loopfill4:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, 280
				JNE		loopfill4
			cmp dx,170
			jne basefill4
			
			mov dx,170
			mov DI, 0
			basefill5:
			add dx,1
			ADD DI,2
			MOV CX,50
			ADD CX,DI
				loopfill5:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, 280
				JNE		loopfill5
			cmp dx,190
			jne basefill5
			
			
			mov dx,190
			mov si, 281
			
			
			basefill6:
			sub dx,1
			MOV CX,280
				loopfill6:
				;CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, si
				JNE		loopfill6
			cmp byte [tflag], 3
			jne noinc
			inc si
			sub	byte [tflag], 3
			noinc:
			inc	byte [tflag]
			cmp dx,150
			jne basefill6
			
			
			
			mov dx,151
			mov di,0
			basefill7:
			sub dx,1
			cmp byte [t2flag], 1
			jne noinc3
			inc di
			noinc3:
			not byte [t2flag]
			MOV CX,285
			add cx,di
				loopfill7:
				;CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, si
				JNE		loopfill7
			cmp byte [tflag], 3
			jne noinc2
			inc si
			sub byte [tflag], 3
			noinc2:
			inc byte [tflag]
			cmp dx,105
			jne basefill7
			
			
			;;;
			
			MOV		AL, 0x04
			MOV CX, 50
			MOV DX, 90	
			
			sflag1:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 90
			JNE		sflag1
			
			sflag2:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				
			CMP		DX, 110
			JNE		sflag2
			
			MOV CX, 70
			sflag3:
			
				CALL	sdelay
				INT		0x10
				DEC		DX
				
			CMP		DX, 10
			JNE		sflag3
			
			sflag4:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 35
			JNE		sflag4
			
			
			sflag5:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				
			CMP		DX, 30
			JNE		sflag5
			
			sflag6:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 70
			JNE		sflag6
			
			mov dx,10
			flagfill1:
			mov cx, 35
			add dx,1
				loopfil1:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, 70
				JNE		loopfil1
			cmp dx,30
			jne flagfill1
			
			MOV		AL, 0x02

			MOV CX, 90
			MOV DX, 110
			
			sflag7:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 140
			JNE		sflag7
			
			sflag8:
			
				CALL	sdelay
				INT		0x10
				INC		DX	
			CMP		DX, 130
			
			JNE		sflag8
			
			MOV CX, 115
			sflag9:
			
				CALL	sdelay
				INT		0x10
				DEC		DX
				
			CMP		DX, 20
			JNE		sflag9
			
			sflag10:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 80
			JNE		sflag10
			
			sflag11:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				
			CMP		DX, 40
			JNE		sflag11
			
			sflag12:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 115
			JNE		sflag12
			
			mov dx,20
			flagfill2:
			mov cx, 80
			add dx,1
				loopfil2:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, 115
				JNE		loopfil2
			cmp dx,40
			jne flagfill2
			
			
			MOV		AL, 0x01
			MOV CX, 160
			MOV DX, 150
			
			sflag17:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				DEC		DX
				
			CMP		DX, 130
			JNE		sflag17
			
			sflag18:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 260
			JNE		sflag18
			
			sflag19:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				INC		DX
				
			CMP		DX, 150
			JNE		sflag19
			
			MOV CX, 200
			
			sflag20:
			
				CALL	sdelay
				INT		0x10
				DEC		DX
				
			CMP		DX, 130
			JNE		sflag20
			
			MOV CX, 240
			MOV DX, 150
			
			sflag21:
			
				CALL	sdelay
				INT		0x10
				DEC		DX
				
			CMP		DX, 130
			JNE		sflag21
			
			MOV CX, 220
			MOV DX, 150
			
			sflag22:
			
				CALL	sdelay
				INT		0x10
				DEC		DX
			CMP		DX, 55
			
			JNE		sflag22
			
			sflag23:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 185
			JNE		sflag23
			
			sflag24:
			
				CALL	sdelay
				INT		0x10
				INC		DX
				
			CMP		DX, 75
			JNE		sflag24
			
			sflag25:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 220
			JNE		sflag25
			
			mov dx,55
			flagfill3:
			mov cx, 185
			add dx,1
				loopfil3:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, 220
				JNE		loopfil3
			cmp dx,75
			jne flagfill3

			
			
			
			
			
			MOV		AL, 0x07
			MOV CX, 280
			MOV DX, 150
			
			sflag13:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				SUB 	DX,4
				
			CMP		CX, 315
			JNE		sflag13
			
			sflag14:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				
			CMP		CX, 245
			JNE		sflag14
			
			sflag15:
			
				CALL	sdelay
				INT		0x10
				DEC		CX
				ADD 	DX,4
				
			CMP		DX, 50
			JNE		sflag15
			
			sflag16:
			
				CALL	sdelay
				INT		0x10
				INC		CX
				
			CMP		CX, 305
			JNE		sflag16
			
			mov dx,10
			mov DI, 0
			mov si, 315
			flagfill4:
			add dx,4
			ADD DI,1
			MOV CX,245
			sub CX,DI
				loopfil4:
				CALL	qdelay
				INT		0x10
				INC		CX
				CMP		CX, si
				JNE		loopfil4
			dec si
			cmp dx,50
			jne flagfill4
			
			
			
			
		POP		DI
		POP		SI
		POP		DX
		POP		CX
		POP		BX
		POP		AX
	
	RET
	
	
	sdelay:

		PUSH	CX

			MOV		CX, 0x4444
			dlp:	LOOP	dlp
			
		POP		CX
	
	RET
	
	
	qdelay:

		PUSH	CX

			MOV		CX, 0x0222
			qlp:	LOOP	qlp
			
		POP		CX
	
	RET
	
	
	Boundary:;
	
				pusha
		Bnextchar:                  
				add di, 2                                                            
				cmp di, 4000                                                    
				jne Bnextchar                    
				mov ax, 0xb800                                                
				mov es, ax
				mov di,160
				mov cl,79    

		row1:                  
				add di, 2         
				mov ax,[boundaryAttribute]
				mov[es:di],ax
				dec cl
				cmp cl,0
				jnz row1
				mov cl,23

		col1:                  
				add di, 160
				mov ax,[boundaryAttribute]
				mov[es:di],ax
				 dec cl
				cmp cl,0
				 jnz col1
				 mov cl,79

		row2:                  
				sub di, 2                            
				mov ax,[boundaryAttribute]
				mov[es:di],ax
				dec cl
				cmp cl,0
				jnz row2
				 mov cl,23

		col2:                  
				sub di, 160                      
				mov ax,[boundaryAttribute]
				mov[es:di],ax
				dec cl
				cmp cl,0
				jnz col2
				
				popa
	
	RET
	
	
	
	
	introScreen:;
	
		CALL clearScreen ; call the clrscr subroutine
		CALL Boundary
		
		MOV AH, 0x13
		MOV AL, 0x00
		MOV BH, 0x00
		MOV BL, [FishAttribute]
		MOV CX, [lengthFish]
		MOV DL, 20
		PUSH CS
		POP ES
		
		MOV		DH, 1
		MOV		BP, Fish1
		SUB		BP, CX
		
		MOV		SI, 0
		drawfish:
		
			INC		DH
			ADD		BP, CX
			INT		0x10
		
		INC		SI
		CMP		SI, 14
		JNE		drawfish
		
		;;;

		MOV BL, [gameAttribute]
		MOV CX, [lengthgame]
		MOV DL, 18;;;	
		
		MOV		DH, 15
		MOV		BP, game1
		SUB		BP, CX
		
		MOV		SI, 0
		drawgame:
		
			INC		DH
			ADD		BP, CX
			INT		0x10
		
		INC		SI
		CMP		SI, 5
		JNE		drawgame
		
		;;;
		
		MOV BL, [introattribute]
		MOV CX, [introlength]
		MOV DL,28	
		MOV DH, 23
		MOV BP, intromessage
		INT 0x10
		
		MOV AH, 0 ; service 0 – get keystroke
		INT 0x16 ; call bios keyboard service
		CALL clearScreen
		
		;;;
		
		MOV AH, 0x13
		MOV AL, 0x00
		MOV BH, 0x00
		MOV BL, [SeaAttribute]
		MOV CX, [lengthSea]
		MOV DL,2

		PUSH CS
		POP ES		
		
		
		MOV		DH, -1
		MOV		BP, sea1
		SUB		BP, CX
		
		
		MOV		SI, 0
		drawsea:
		
			INC		DH
			ADD		BP, CX
			INT		0x10
		
		INC		SI
		CMP		SI, 11
		JNE		drawsea
		
		;;;
		
		MOV BL, [EnterNameAttribute]
		MOV CX, [lengthEnterName]
		MOV DL,2	
		
		
		
		
		MOV		DH, 10
		MOV		BP, EnterName1
		SUB		BP, CX
		
		
		MOV		SI, 0
		drawname:
		
			INC		DH
			ADD		BP, CX
			INT		0x10
		
		INC		SI
		CMP		SI, 12
		JNE		drawname
		
		;;;
		
		MOV DX, NamePrompt 						; MESSAGE TO PRINT
		MOV AH, 9 								; SERVICE 9 – WRITE STRING
		INT 0x21 
		
		MOV DX, Namebuffer 							; INPUT BUFFER (DS:DX POINTING TO INPUT BUFFER)
		MOV AH, 0x0A 							; DOS' SERVICE A – BUFFERED INPUT
		INT 0x21 								; DOS SERVICES CALL

		MOV BH, 0
		MOV BL, [Namebuffer+1] 						; READ ACTUAL SIZE IN BX I.E. NO OF CHARACTERS USER ENTERED
		MOV BYTE [Namebuffer+2+BX], '!' 
		CALL clearScreen
		
		;;;
		
		CALL Boundary
		MOV AH, 0x13
		MOV AL, 0x00
		MOV BH, 0x00
		MOV BL, [messageAttribute]
		MOV CX, 22
		MOV DL,10
		PUSH CS
		POP ES
		MOV DH, 6
		MOV BP, message1
		INT 0x10
		
		MOV DL, 32
		MOV BP, Namebuffer+2
		MOV CX, [space]
		INT 0x10 
		
		;;;
		
		MOV AH, 0x13
		MOV AL, 0x00
		MOV BH, 0x00
		MOV BL, [messageAttribute]
		MOV CX, [lengthmessage]
		MOV DL, 10
		PUSH CS
		POP ES

		
		MOV		DH, 6
		MOV		BP, message2
		SUB		BP, CX
		
		MOV		SI, 1
		drawmsg:
		
			INC		DH
			ADD		BP, CX
			INT		0x10
		
		INC		SI
		CMP		SI, 9
		JNE		drawmsg
		
		
		MOV 	DL,48
		MOV		CX, [lengthmessage2]
		MOV 	DH, 21
		MOV 	BP, message10
		INT 	0x10
		INC 	DH
		MOV 	BP, message11
		INT 	0x10
		INC 	DH
		MOV 	BP, message12
		INT 	0x10	
		
		
		getkey:
		
		MOV 	AH, 0 							; service 0 – get keystroke
		INT 	0x16
		
		CMP 	AH, 0x01
		JNE 	cmpenterkey
		
			CALL	confirmExit
			
			CMP 	BYTE [CS:flag], 0
			JE 		backtostart
			JMP		getkey
		
		cmpenterkey:
		
		CMP		AH, 0x1C
		JNE		getkey
		
		backtostart:
	
	RET
	
	
	
	exitScreen: ;
	
		PUSH	AX
			
			CALL	stopNote					; in case a note is in the midst of being played
			
			CALL 	clearScreen 					; call the clrscr subroutine
			
			mov ah, 0x13
			mov al, 0x00
			mov bh, 0x00
			mov bl, [GameOverAttribute]
			mov cx, [lengthGameOver]
			mov dl,0
			push cs
			pop es
			
			
			
			
			XOR		DH, DH
			MOV		BP, GameOver1
			SUB		BP, CX
			
			MOV		SI, 0
			endmsg:
			
				INC		DH
				ADD		BP, CX
				INT		0x10
			
			INC		SI
			CMP		SI, 21
			JNE		endmsg
			
			
			
			mov bl, [attribute2]
			mov cx, [exitmessagelength]
			mov dl,2	
			mov dh, 23
			mov bp, exitmessage
			int 0x10
			
			PUSH	WORD [score]
			CALL	printscore
			
			
			
			mov bl, [attribute]
			mov cx, [length]
			mov dl,28	
			mov dh, 24
			mov bp, message
			int 0x10

			
			MOV	AH, 0 ; service 0 – get keystroke
			INT	0x16 ; call BIOS keyboard service
			MOV	AH, 0 ; service 0 – get keystroke
			INT	0x16 ; call BIOS keyboard service
			
			;CALL 	clearScreen	
			
		POP		AX
		
	RET
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	hookKBISR:
	
		PUSH	AX
		PUSH	ES
		
			PUSH	0x0000
			POP		ES
			
			
			MOV		AX, [ES:9*4]						; saving offset and segment of old keyboard handler
			MOV		[oldISR], AX
			
			MOV		AX, [ES:9*4+2]
			MOV		[oldISR+2], AX
			
			
			CLI
			
				MOV		WORD [ES:9*4], KBISR			; hooking our own KBISR
				MOV		[ES:9*4+2], CS
			
			STI
			
		POP		ES
		POP		AX	
	
	RET
	
	
	
	hooktimer:
	
		PUSH	AX
		PUSH	ES
		
			PUSH	0x0000
			POP		ES
			
			
			MOV		AX, [ES:8*4]						; saving offset and segment of old timer handler
			MOV		[oldTMR], AX
			
			MOV		AX, [ES:8*4+2]
			MOV		[oldTMR+2], AX
			
			
			CLI
			
				MOV		WORD [ES:8*4], timer			; hooking our own timer
				MOV		[ES:8*4+2], CS
			
			STI
			
		POP		ES
		POP		AX	
	
	RET
	
	
	
	unhookKBISR:
	
		PUSH	AX
		PUSH	ES
		
			PUSH	0x0000
			POP		ES
			
			
			CLI

				MOV		AX, [oldISR]					; restoring old keyboard interrupt handler
				MOV		[ES:9*4], AX
				
				MOV		AX, [oldISR+2]
				MOV		[ES:9*4+2], AX

			STI
			
		POP		ES
		POP		AX
	
	RET
	
	
	
	unhooktimer:
	
		PUSH	AX
		PUSH	ES
		
			PUSH	0x0000
			POP		ES
			
			
			CLI

				MOV		AX, [oldTMR]					; restoring old timer interrupt handler
				MOV		[ES:8*4], AX
				
				MOV		AX, [oldTMR+2]
				MOV		[ES:8*4+2], AX

			STI
			
		POP		ES
		POP		AX
	
	RET
	
	
	
	genRandom:
	
		PUSH	BP
		MOV		BP, SP
		
			PUSH	AX
			PUSH	CX
			PUSH	DX
			
				MOV		AH, 0x00			; service to get system time
				INT		0x1A				
				
				XOR		DH, DH
				MOV		DL, [tickcount]

				ADD		DX, [BP + 6]		; if we just use system time, the change from one num to next is uniform as system time increments uniformly
				ADD		DX, [score]			; so we use score and prev coin location, small difference in initial conditions will get compounded
				
				MOV		AX, DX
				XOR		DX, DX
				
				MOV		CX, [BP + 4]
				DIV		CX					; this is to keep the number smaller than [BP + 6], i.e. 640 so it does not flow out of the limit of the frame
				
				MOV		[BP + 6], DX		; return value via [BP + 6]
		
			POP		DX
			POP		CX
			POP		AX
		
		POP		BP
		
	RET		2
	
	
	
	printCoin:
	
		PUSH	BP
		MOV		BP, SP
		
			PUSH	AX
			PUSH	BX
			
			PUSH	ES
			PUSH	DI
		
				MOV		AX, 0xB800
				MOV		ES, AX
				
				MOV		BX, [BP + 6]			; load address of old location of coin in bx
				MOV		DI, [BX]				; load old location of coin in DI

				MOV		AL, 0x20
				MOV		AH, [seacolour1]
				MOV		[ES:DI], AX				; restore sea in old location of coin (as its lifespan has ended)
				
				
				PUSH	DI
				PUSH	WORD 640
				CALL	genRandom				; get a random number
				
				PUSH	BP
				
					MOV		BP, SP
					MOV		AX, [BP + 2]		; random number returned by getRandom stored in AX
					
				POP		BP						; PUSH/POP BP to avoid confusion in referring to parameters of this printCoin function
				
				SHL		AX, 1					; random number multiplied by two to make it even, otherwise problem in data:attribute format of display cells
				ADD		SP, 2					; local variable for holding random number destroyed to restore stack
				
				
				MOV		DI, 2560
				ADD		DI, AX					; new coin location generated by base = start of frame3, and offset = random number (between 0 and 1280)
				MOV		[BX], DI				; coin location variable updated
				
				MOV		AX, [BP + 4]
				MOV		[ES:DI], AX				; coin printed at new location
				
				
			POP		DI
			POP		ES
			
			POP		BX
			POP		AX
				
		POP		BP

	RET		4
	
	

	confirmExit:										; if user presses ESC, need to confirm whether mistake or actual intention to quit
	
		PUSH	AX
			
			CALL	stopNote;
			
			CALL	saveScreen						; save screen before asking confirmation so that it can later be restored if user decides not to quit
			CALL	displayPopup
			
			awaitConfirm:
			
				IN		AL, 0x60
			
			CMP		AL, 0x15						; if user inputs Y (i.e. yes) upon confirmation, clear the enable flag to stop game and return
			JNE		notconfirmed
		
				MOV		BYTE [CS:flag], 0
				CALL	restoreScreen
				JMP		backtocaller
		
			notconfirmed:							; if inputs N (i.e. no) upon confirmation, restore screen and return to game
			CMP		AL, 0x31
			JNE		awaitConfirm					; otherwise, keep waiting for either Y or N to be entered by user
		
				CALL	restoreScreen		

			backtocaller:
			
		POP		AX
		
	RET	



	displayPopup:

		PUSH	AX
		PUSH	DX
		
			CALL	clearScreen						; clear screen before displaying confirmation message
			
			MOV		DX, confirmMsg					; display confirm message on screen
			MOV		AH, 0x09
			INT		0x21
	
		POP		DX
		POP		AX
	
	RET
	
	
	
	printFrame1:

		PUSH	BP
		MOV		BP, SP
	
			PUSH	ES
			PUSH	DI
			PUSH	AX
			PUSH	CX
			
				PUSH	0xB800
				POP		ES					; ES = 0xB800
				
				XOR		DI, DI				; equivalent to MOV DI, 0
				
				MOV		AH, [skycolour]
				MOV		AL, 0x20			; empty space (i.e. only background colour affected)
				
				MOV		CX, 560				; 7 rows (approx. 1/3 of screen, 1 row for land, see below) * 80 words in each row = 640 bytes
				
				CLD
				REP		STOSW				; changing colour of first 7 rows, i.e. one-third of screen
				
				
					; printing one row of land to provide base for buildings:
					
					MOV		AH, [landcolour]
					MOV		AL, 0x20
					
					MOV		CX, 80
					
					CLD
					REP		STOSW
				
				
				; Printing Building 1
				
					PUSH	1				; height of building
					PUSH	7				; row number of base of building
					PUSH	5				; col number of left corner of building
				
				CALL	printBuilding		; to print a rectangular building of given size at given position

				; Printing Building 2
				
					PUSH	5
					PUSH	7
					PUSH	20
				
				CALL	printBuilding
				
				; Printing Building 3
				
					PUSH	5
					PUSH	7
					PUSH	35
				
				CALL	printBuilding
				
				; Printing Building 4
				
					PUSH	3
					PUSH	7
					PUSH	50
				
				CALL	printBuilding
				
				; Printing Building 5
				
					PUSH	1
					PUSH	7
					PUSH	65
				
				CALL	printBuilding
				
			POP		CX
			POP		AX
			POP		DI
			POP		ES
		
		POP		BP
	
	RET



	printFrame2:

		PUSH	BP
		MOV		BP, SP
	
			PUSH	ES
			PUSH	DI
			PUSH	AX
			PUSH	CX
			
				PUSH	0xB800				; logic of this subroutine is similar to the one above
				POP		ES
				
				MOV		DI, 1280
				
				
					; printing one row of land to provide base for buildings
				
					MOV		AH, [landcolour]			; 0001 0000, blue BG, white FG
					MOV		AL, 0x20
					
					MOV		CX, 80
					
					CLD
					REP		STOSW
				
				
				MOV		AH, [seacolour1]	; 0001 0000, blue BG, white FG
				MOV		AL, [wave]
				
				MOV		CX, 560				; other 7 rows * 80 cells = 560 cells
				
				CLD
				REP		STOSW
				
				; Printing Ship 1
				
					PUSH	12				; length of ship
					PUSH	12				; row number of lowest part of ship
					PUSH	20				; col number of leftmost part of ship
					
				CALL	printShip			; to print a ship with a trapezium-shaped hull and a rectangular upper structure
				
				; Printing Ship 2
				
					PUSH	20
					PUSH	14
					PUSH	55
					
				CALL	printShip
				
			POP		CX
			POP		AX
			POP		DI
			POP		ES
		
		POP		BP
	
	RET
	
	
	
	printFrame3:

		PUSH	BP
		MOV		BP, SP
	
			PUSH	ES
			PUSH	DI
			PUSH	AX
			PUSH	CX
			
				PUSH	0xB800				; subroutine has logic similar to above ones
				POP		ES
				
				MOV		DI, 2560
				
				MOV		AH, [seacolour2]	; 0001 0000, blue BG, white FG
				MOV		AL, 0x20
				
				MOV		CX, 720
				
				CLD
				REP		STOSW
				
				
				CALL	printFish			; printing fish at its initial starting position
				
			POP		CX
			POP		AX
			POP		DI
			POP		ES
		
		POP		BP
	
	RET
	
	
	
	moveFrame1:									; move left
		
		CLI;
		
		PUSH	BP
		MOV		BP, SP
		
			PUSH	ES
			PUSH	SI
			PUSH	DI
			PUSH	AX
			PUSH	CX
			PUSH	DS
			
				PUSH	0xB800					; setting values of DS & SI and ES & DI in order to use MOVS instruction
				POP		DS
				
				MOV		SI, 160					; starting from start of second row (160 instead of 0) bcz first row displays score at top right
				
				PUSH	0xB800
				POP		ES
				
				MOV		DI, 160					; so first row is not supposed to be moved, it only has sky and score
				
				transferloop:
					
					MOV		AX, [DS:SI]			; saving value of first cell of row
					ADD		SI, 2				; moving SI to next cell
					
					CLD							; direction flag cleared for auto-increment mode
					MOV		CX, 79				; copying from next cell to previous 79 times
					REP 	MOVSW				; by the end, DI is at last cell of row and SI at first cell of next row
					
					MOV		[ES:DI], AX			; previously saved value (of first cell) stored into last cell
					ADD		DI, 2				; DI also taken to first cell of next row, for next iteration
					
				CMP		DI, 1280				; loop till end of first frame
				JNE		transferloop
				
			POP		DS
			POP		CX
			POP		AX
			POP		DI
			POP		SI
			POP		ES
		
		POP		BP
		
		STI;
	
	RET
	
	
	
	moveFrame2:									; move right
		
		CLI;
		
		PUSH	BP
		MOV		BP, SP
		
			PUSH	ES
			PUSH	DI
			PUSH	AX
			PUSH	CX
			PUSH	DS
			PUSH	SI
			
				PUSH	0xB800					; logic is similar to above function, but converse in some regards
				POP		DS
				
				MOV		SI, 2558				; starting from last cell of last row of frame2
			
				PUSH	0xB800
				POP		ES
				
				MOV		DI, 2558
				
				transferloop2:
					
					MOV		AX, [DS:SI]			; value of last cell saved in register
					SUB		SI, 2				; SI moved back one word for left to right shifting
					
					STD							; direction flag set for auto-decrement mode
					MOV		CX, 79				; copying cells rightwards 79 times
					REP 	MOVSW				; by the end, DI is at first cell of row and SI at last cell of previous row
					
					MOV		[ES:DI], AX			; saving previously stored value of last cell in first cell of row
					SUB 	DI, 2				; moving DI to last cell of previous row for next iteration
					
				CMP		DI, 1278				; loop till end of frame1, i.e. start of frame2
				JNE		transferloop2
				
			POP		SI
			POP		DS
			POP		CX
			POP		AX
			POP		DI
			POP		ES
		
		POP		BP
		
		STI;
	
	RET
	
	
	
	moveFishUp:

		CMP		BYTE [CS:fishRow], 16
		JNE		normalUp
		
			CALL	invalidMove					; moving above row 16 is invalid as the second frame (containing ships) starts above it
			RET
		
		normalUp:
			
			CALL	eraseFish					; erase fish from previous location
			SUB		BYTE [CS:fishRow], 1		; new location one row up from previous
			CALL	printFish					; print fish at nw location
	
	RET
	
	
	
	moveFishDown:

		CMP		BYTE [CS:fishRow], 24			; cannot move below row 24 as end of screen
		JNE		normalDown
		
			CALL	invalidMove
			RET
		
		normalDown:

			CALL	eraseFish					; logic same as above
			ADD		BYTE [CS:fishRow], 1
			CALL	printFish
	
	RET
	
	
	
	moveFishLeft:

		CALL	eraseFish						; erase fish from previous location

		CMP		WORD [CS:fishCol], 0			; if moving left from col 0, then wraparound to col 79 of same row
		JNE		normalLeft
		
			MOV		WORD [CS:fishCol], 79
		
		normalLeft:								; otherwise, new location one left (i.e. col - 1) from previous
		
			SUB		WORD [CS:fishCol], 1
		
		CALL	printFish						; print fish at new location
	
	RET
	
	
	
	moveFishRight:

		CALL	eraseFish						; logic same as above

		CMP		WORD [CS:fishCol], 79			; wraparound from col 79 to col 0 of same row
		JNE		normalRight
		
			MOV		WORD [CS:fishCol], 0
		
		normalRight:
		
			ADD		WORD [CS:fishCol], 1		; otherwise, just +1 in col to move one step right
		
		CALL	printFish
	
	RET

	
	
	delay:
		
		PUSH	BP
		MOV		BP, SP
		
			PUSH	AX
			PUSH	CX
			
				MOV		AX, 0
				outerloop:
				
					MOV		CX, 0xAAAA
					
					innerloop:
					LOOP innerloop			; inner loop, runs 0xFFFF times
					
					INC		AX
					
				CMP		AX, [BP+4]			; runs the inner loop [BP + 4] times, which is the parameter passed to this subroutine
				JNE		outerloop
			
			POP		CX
			POP		AX
		
		POP		BP
		
	RET		2
	
	
	
	printBuilding:
		
		PUSH	BP
		MOV		BP, SP
		
			PUSH	ES
			PUSH	DI
			PUSH	AX
			PUSH	CX
			PUSH	BX
			PUSH	DS
			PUSH	SI
			
				PUSH	0xB800
				POP		ES
				
				MOV		AL, 80
				MUL 	BYTE [BP+6]
				ADD		AX, [BP+4]
				SHL		AX, 1
				MOV		DI, AX						; loading starting position (bottom left corner) into DI using 2 * ((80 * row) + col)
				
				
				MOV		AH, [bldingcolour]
				MOV		AL, 0x20
				
				CLD
				MOV		CX, 11						; creating base of building (width 11)
				REP		STOSW
				
				
				SUB		DI, 182						; moving up one row to create first window layer
				MOV		[ES:DI], AX
				ADD		DI, 2
				
				MOV		BX, 1
				sample: 
				
					MOV		AH, [windowcolour]
					MOV		[ES:DI], AX
					
					ADD		DI, 2
					
					MOV		AH, [bldingcolour]
					MOV		[ES:DI], AX
					
					ADD		DI, 2
					
					ADD		BX, 2
				
				CMP		BX, 11						; creating window layer by alternating window and wall
				JL		sample
				
				
				PUSH	0xB800
				POP		DS
				
				MOV		SI, DI						; setting DS:SI such that it picks up the sample window layer upon use of MOVS
				SUB		SI, 22
				
				
				MOV		BX, 0
				construct:							; in loop, place window layer and normal wall layer alternatively till max height of building
					
					SUB		DI, 22
					
					CLD
					MOV		CX, 11
					REP		MOVSW
					
					SUB		DI, 182
					
					MOV		CX, 11
					REP		STOSW
					
					SUB		SI, 22
					ADD		BX, 2
					
					SUB		DI, 160
					
				CMP		BX, [BP+8]					; limit of construction (building height): parameter
				JL		construct
			
			POP		SI
			POP		DS
			POP		BX
			POP		CX
			POP		AX
			POP		DI
			POP		ES
		
		POP		BP
		
	RET		6
	
	
	
	printShip:
		
		PUSH	BP
		MOV		BP, SP
		
			PUSH	ES
			PUSH	DI
			PUSH	AX
			PUSH	CX
			PUSH	BX
			PUSH	DX
			
				PUSH	0xB800
				POP		ES
				
				MOV		AL, 80					; loading starting position into DI using 2 * ((80 * row) + col)
				MUL 	BYTE [BP+6]
				ADD		AX, [BP+4]
				SHL		AX, 1
				MOV		DI, AX
				
				
				MOV		AH, [shipshullcolour]
				MOV		AL, 0x20
				
				MOV		DX, [BP+8]				; length of hull, passed as parameter
				
				MOV		BX, 0
				hull:
				
					CLD
					MOV		CX, DX				; to print layer of hull
					REP		STOSW
					
					SUB		DI, 162				; move to upper layer of hull (which is greater in length to make trapezium)
					SUB		DI, DX
					SUB		DI, DX
					
					ADD		DX, 2
					INC		BX
					
				CMP		BX, 2					; to make ship with hull height 2
				JL		hull
				
				
				ADD		DI, 10
				SUB		DX, 10
				MOV		CX, DX
				MOV		AH, [rectanglecolour]	; to draw upper part of ship (rectangle)
				CLD
				REP		STOSW
				
			POP		DX
			POP		BX
			POP		CX
			POP		AX
			POP		DI
			POP		ES
		
		POP		BP
		
	RET		6
	
	
	
	printFish:									; to print fish at location stored in fishRow and fishCol
	
		PUSH	AX
		PUSH	CX
		PUSH	ES
		PUSH	DI

			MOV		AX, 0xB800
			MOV		ES, AX
			
			MOV		AL, [fishRow]
			
			MOV		CL, 80						; row * 80
			MUL		CL
			
			ADD		AX, [fishCol]				; (row * 80) + col
			SHL		AX, 1						; above * 2 (to obtain address of desired location)
			
			MOV		DI, AX
			
			
			CMP		DI, [coin1loc]				; before printing fish at new location, need to check whether reached a coin
			JNE		nxtcomp
			
				MOV		AX, [ES:DI]
				CMP		AX, [redcoin]
				JNE		c1green
				
					ADD		WORD [score], 40		; if so, increase score
					
				c1green:
				
					ADD		WORD [score], 10
				
				PUSH	WORD 1
				CALL	respawnCoin

			nxtcomp:
			CMP		DI, [coin2loc]				; same as above but for green coin
			JNE		showscore

				MOV		AX, [ES:DI]
				CMP		AX, [redcoin]
				JNE		c2green
				
					ADD		WORD [score], 40
					
				c2green:
				
					ADD		WORD [score], 10

				PUSH	WORD 2
				CALL	respawnCoin

			showscore:
			
				PUSH	WORD [score]

			CALL	printnum					; display score at top-right corner of screen
		
			
			MOV		AL, [fishShape]
			MOV		AH, [fishColour]
			
			MOV		[ES:DI], AX					; displaying fish at it new location after movement

		POP		DI
		POP		ES
		POP		CX
		POP		AX
		
	RET
	
	
	
	eraseFish:									; to erase fish from previous location before printing it at new location (to show movement)
	
		PUSH	AX
		PUSH	CX
		PUSH	ES
		PUSH	DI

			MOV		AX, 0xB800
			MOV		ES, AX
			
			MOV		AL, [fishRow]				; logic for obtaining address in display memory same as for above function
			
			MOV		CL, 80
			MUL		CL
			
			ADD		AX, [fishCol]
			SHL		AX, 1
			
			MOV		DI, AX
			
			MOV		AL, 0x20
			MOV		AH, [seacolour2]			; but making that cell represent the sea instead of a fish
			
			MOV		[ES:DI], AX

		POP		DI
		POP		ES
		POP		CX
		POP		AX
		
	RET
	
	
	
	saveScreen:									; to save previous state of screen before displaying confirmation message (so possible to restore later)
	
		PUSH	AX
		PUSH	DS
		PUSH	SI
		PUSH	ES
		PUSH	DI
		PUSH	CX
			
			MOV		AX, 0xB800
			MOV		DS, AX
			XOR		SI, SI
			
			MOV		AX, CS
			MOV		ES, AX
			MOV		DI, screenBuffer
			
			MOV		CX, 2000					; all 2000 cells are moved to screenBuffer
			
			CLD
			REP		MOVSW
			
		POP		CX
		POP		DI
		POP		ES
		POP		SI
		POP		DS
		POP		AX
		
	RET
	
	
	
	restoreScreen:								; restoring screen from buffer in case user changes decision of quitting game
	
		PUSH	AX
		PUSH	DS
		PUSH	SI
		PUSH	ES
		PUSH	DI
		PUSH	CX
		
			MOV		AX, CS
			MOV		DS, AX
			MOV		SI, screenBuffer

			MOV		AX, 0xB800
			MOV		ES, AX
			XOR		DI, DI

			MOV		CX, 2000					; logic similar to that of above function, 2000 cells copied from buffer to display memory
			REP		MOVSW
		
		POP		CX
		POP		DI
		POP		ES
		POP		SI
		POP		DS
		POP		AX
		
	RET
	
	
	
	clearScreen:								; clearing screen before displaying confirmation message

		PUSH	AX
		PUSH	ES
		PUSH	DI 
		PUSH	CX

			MOV		AX, 0xB800
			MOV		ES, AX
			XOR		DI, DI
			
			MOV		AX, 0x0720					; empty space (black background) placed in all 2000 cells of display memory to clear screen
			MOV		CX, 2000
			
			CLD
			REP		STOSW
	
		POP		CX
		POP 	DI
		POP 	ES
		POP 	AX

	RET
	
	
	
	invalidMove:								; in case fish tries to escape the third frame from below or above

		PUSH	AX
		PUSH	CX
		PUSH	ES
		PUSH	DI
			
			MOV		AX, 0xB800
			MOV		ES, AX
			
			MOV		AL, [CS:fishRow]
			
			MOV		CL, 80
			MUL		CL
			
			ADD		AX, [CS:fishCol]
			SHL		AX, 1
			
			MOV		DI, AX						; calculate address of fish location
			
			MOV		AL, [fishShape]
			MOV		AH, 0x94					; display fish in red colour and with blinking attribute to show user that chosen movement is invalid
			
			MOV		[ES:DI], AX
			
			CALL	playsound					; play sound notification
			
			DEC		BYTE [CS:fishlife]
			CMP		BYTE [CS:fishlife], 0
			JE		lifeover
			
				CALL	printlives
				
				MOV		AH, 0x12
				MOV		[ES:DI], AX					; restoring original fish colour (+ without blinking)

				JMP		returnfrommove

			lifeover:
			
				MOV		BYTE [CS:flag], 0
			
			returnfrommove:
			
		POP		DI
		POP		ES
		POP		CX
		POP		AX
	
	RET
	
	
	
	playsound:									; sound notification for invalid movement
	
		PUSH	AX
		PUSH	CX
		
			CLI									; to prevent further movement while notification for previous invalid movement is being sounded
			
				MOV		CX, 3					; repeat sound three times
				soundloop:
				
					MOV		AL, 0x00B6
					OUT		0x43, AL

				;load the counter 2 value for d3
					
					MOV		AX, 0x1FB4
					OUT		0x42, AL
					
					MOV		AL, AH
					OUT		0x42, AL

				;turn the speaker on
					
					IN		AL, 0x61
					MOV		AH, AL
					
					OR		AL, 0x03
					OUT		0x61, AL
					
					PUSH	1
					CALL	delay

					MOV		AL, AH
					OUT		0x61, AL

					PUSH	1
					CALL	delay
					
				;load the counter 2 value for a3
					
					MOV		AX, 0x152F
					OUT		0x42, AL
					
					MOV		AL, AH
					OUT		0x42, AL
					
				;turn the speaker on
				
					IN		AL, 0x61
					MOV		AH, AL

					OR		AL, 0x03
					OUT		0x61, AL
					
					PUSH	1
					CALL	delay
					
					MOV		AL, AH
					OUT		0x61, AL
					
					PUSH	1
					CALL	delay
					
				;load the counter 2 value for a4
					
					MOV		AX, 0x0A97
					OUT		0x42, AL
					
					MOV		AL, AH
					OUT		0x42, AL
					
				;turn the speaker on
					
					IN		AL, 0x61
					MOV		AH, AL
					
					OR		AL, 0x03
					OUT		0x61, AL
					
					PUSH	1
					CALL	delay
					
					MOV		AL, AH
					OUT		0x61, AL
					
					PUSH	1
					CALL	delay
				 
				LOOP	soundloop

			STI
	
		POP		CX
		POP		AX
	
	RET	
	
	
	
	printscore: 
	
		PUSH	BP
		MOV		BP, SP
			
			PUSH	ES
			PUSH	AX
			PUSH	BX
			PUSH	CX
			PUSH	DX
			PUSH	DI

				MOV		AX, 0XB800
				MOV		ES, AX				; point es to video base
				

				MOV		AX, [BP + 4]		; load number in ax
				MOV		BX, 10				; use base 10 for division
				MOV		CX, 0				; initialize count of digits


				nextscoredigit:
					
					MOV 	DX, 0			; zero upper half of dividend
					DIV 	BX				; divide by 10 ax/bx : quotient --> ax, remainder --> dx ..... 
					ADD 	DL, 0x30		; convert digit into ascii value
					PUSH 	DX				; save ascii value on stack
					INC 	CX				; increment count of values
					
				CMP 	AX, 0				; is the quotient zero
				JNZ 	nextscoredigit			; if no divide it again


				MOV 	DI, 3720			; point di to desired location
				SHL		CX, 1
				SUB		DI, CX				; to leave enough space for all digits
				SHR		CX, 1

				nextscorepos:
				
					POP 	DX				; remove a digit from the stack
					MOV 	DH, 0x12		; use blue FG, teal BG
					MOV 	[ES:DI], DX		; print char on screen
					ADD 	DI, 2			; move to next screen location
					
				LOOP 	nextscorepos		; repeat for all digits on stack

			POP		DI
			POP		DX
			POP 	CX
			POP 	BX
			POP 	AX
			POP 	ES

		POP BP

	RET		2
	
	
	
	printnum: 
	
		PUSH	BP
		MOV		BP, SP
			
			PUSH	ES
			PUSH	AX
			PUSH	BX
			PUSH	CX
			PUSH	DX
			PUSH	DI

				MOV		AX, 0XB800
				MOV		ES, AX				; point es to video base


				MOV		AL, 0x20
				MOV		AH, [CS:skycolour]
				
				MOV		CX, 70;
				XOR		DI, DI
				ADD		DI, 20;
				
				CLD
				REP		STOSW				; erasing previous score (restoring sky in first line)


				MOV		AX, [BP + 4]		; load number in ax
				MOV		BX, 10				; use base 10 for division
				MOV		CX, 0				; initialize count of digits


				nextdigit:
					
					MOV 	DX, 0			; zero upper half of dividend
					DIV 	BX				; divide by 10 ax/bx : quotient --> ax, remainder --> dx ..... 
					ADD 	DL, 0x30		; convert digit into ascii value
					PUSH 	DX				; save ascii value on stack
					INC 	CX				; increment count of values
					
				CMP 	AX, 0				; is the quotient zero
				JNZ 	nextdigit			; if no divide it again


				MOV 	DI, 160				; point di to top right column
				SHL		CX, 1
				SUB		DI, CX				; to leave enough space for all digits
				SUB		DI, 2;				; to leave one extra space
				SHR		CX, 1

				nextpos:
				
					POP 	DX				; remove a digit from the stack
					MOV 	DH, 0x31		; use blue FG, teal BG
					MOV 	[ES:DI], DX		; print char on screen
					ADD 	DI, 2			; move to next screen location
					
				LOOP 	nextpos				; repeat for all digits on stack

			POP		DI
			POP		DX
			POP 	CX
			POP 	BX
			POP 	AX
			POP 	ES

		POP BP

	RET		2
	
	
	
	printlives: 
	
		PUSH	BP
		MOV		BP, SP
			
			PUSH	ES
			PUSH	AX
			PUSH	BX
			PUSH	CX
			PUSH	DX
			PUSH	DI

				MOV		AX, 0xB800
				MOV		ES, AX				; point es to video base


				MOV		AL, 0x20
				MOV		AH, [CS:skycolour]
				
				MOV		CX, 10
				XOR		DI, DI
				
				CLD
				REP		STOSW				; erasing previous lives (restoring sky in first line)

				;;;;;

				XOR		DI, DI
				ADD		DI, 2

				MOV		AL, 0x03
				MOV		AH, 0x34

				MOV		CL, [CS:fishlife]
				XOR		CH, CH

				REP		STOSW

			POP		DI
			POP		DX
			POP 	CX
			POP 	BX
			POP 	AX
			POP 	ES

		POP 	BP

	RET		2
	
	
	
	respawnCoin:
	
		PUSH	BP
		MOV		BP, SP
			
			PUSH	AX
			PUSH	BX
			PUSH	DX
			
				CMP		WORD [BP + 4], 1
				JNE		coin2seed
				
					MOV		BX, [coin1loc]
					SHR		BX, 1
					JMP		getRandColour
					
				coin2seed:
				
					MOV		BX, [coin2loc]
					SHR		BX, 1
					
				getRandColour:
				
					PUSH	BX
					PUSH	WORD 14;
					CALL	genRandom
					POP		AX
				
				CMP		AX, 7;
				JAE		notred
				
					MOV		BX, [redcoin]
					MOV		DL, 5
					JMP		spawn
					
				notred:
				
					MOV		BX, [greencoin]
					MOV		DL, 10
					
				spawn:
				
				CMP		WORD [BP + 4], 1
				JNE		coin2spawn
				
					PUSH	WORD coin1loc
					PUSH	BX
					CALL	printCoin				; print new coin at random place
					
					MOV		BYTE [coin1life], DL		; 5 sec lifespan reset
					JMP		respawned
				
				coin2spawn:
			
					PUSH	WORD coin2loc			; old location of coin, and shape of coin given as parameters to printCoin function
					PUSH	BX
					CALL	printCoin
					
					MOV		BYTE [coin2life], DL	; 10 sec life reset
					
				respawned:
				
			POP		DX
			POP		BX
			POP		AX
			
		POP		BP
		
	RET		2
	


	debug: 
	CLI
	
		PUSH	BP
		MOV		BP, SP
			
			PUSHA;
			PUSH	ES
			PUSH	AX
			PUSH	BX
			PUSH	CX
			PUSH	DX
			PUSH	DI

				MOV		AX, 0xB800
				MOV		ES, AX				; point es to video base

				MOV		AX, [val]		; load number in ax
				MOV		BX, 10				; use base 10 for division
				XOR		CX, CX				; initialize count of digits


				nextdigitD:
					
					MOV 	DX, 0			; zero upper half of dividend
					DIV 	BX				; divide by 10 ax/bx : quotient --> ax, remainder --> dx ..... 
					ADD 	DL, 0x30		; convert digit into ascii value
					PUSH 	DX				; save ascii value on stack
					INC 	CX				; increment count of values
					
				CMP 	AX, 0				; is the quotient zero
				JNZ 	nextdigitD			; if no divide it again


				MOV		DI, [loc]

				nextposD:
				
					POP 	DX				; remove a digit from the stack
					MOV 	DH, 0x31		; use blue FG, teal BG
					MOV 	[ES:DI], DX		; print char on screen
					ADD 	DI, 2			; move to next screen location
					
				LOOP 	nextposD			; repeat for all digits on stack

				ADD		DI, 4;
				MOV		[loc], DI;

			POP		DI
			POP		DX
			POP 	CX
			POP 	BX
			POP 	AX
			POP 	ES
			POPA;
			
		POP BP
		
	STI
	RET
