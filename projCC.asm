.model small
.stack 100h
.data
	;------------------------------ MAIN MENU STRINGS ----------------------------------------;
	homeMenu 					db 	"MAIN MENU$" ;main menu
	homeCalc 					db  "[1] Calculator$" 
	homeConv					db  "[2] Conversion$"
	homeExit					db  "[3] Exit$" 
	homeInput					db  "Enter your choice: $"
	homeExitMsg					db  "Are you sure you want to exit this program [Y/N]: $"
	homeTYMsg					db  "Thank you for using this program.$"
	;------------------------------ CALCULATOR OPERATORS SUBMENU ----------------------------------------;
	calcMenu 					db 	"CALCULATOR MENU$" ;calc menu
	calcMul						db  "[1] Multiplication$"
	calcDiv 					db  "[2] Division$"
	calcAdd 					db  "[3] Addition$"
	calcSubt 					db  "[4] Subtraction$"
	calcModulo					db  "[5] Modulo$"
	calcBack					db  "[6] Back to Main Menu$"
	calcInput 					db  "Enter your choice: $"
	;------------------------------ CALCULATOR MULTIPLICATION SUBMENU BASES ----------------------------------------;	
	calcMulSubMenuH1 			db 	"CALCULATOR SUBMENU$" ;mul submenu
	calcMulSubMenuH2 			db  "Multiplication$"
	calcMulBase5SubMenu 		db  "[1] Base 05$"
	calcMulBase16SubMenu 		db  "[2] Base 16$"
	calcMulBase2SubMenu 		db  "[3] Base 02$"
	calcMulBackSubMenu      	db  "[4] Back to Calculator Menu$"
	calcMulInputSubMenu			db  "Enter your choice: $"
	;BASE 5
	calcMulBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" ;start of mul submenu per bases
	calcMulBase5SubMenuH2 		db  "Base 5 Multiplication$"
	calcMulBase5SubMenuMulti1	db  "Multiplicand [0.000 - 0.444]: $"
	calcMulBase5SubMenuMulti2 	db  "Multiplier [0.000 - 0.444]: $"
	calcMulBase5SubMenuProduct 	db  "The product is : $"
	calcMulBase5SubMenuAgain    db  "Use operation again [Y/N]: $"
	;BASE 16
	calcMulBase16SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcMulBase16SubMenuH2 		db  "Base 16 Multiplication$"
	calcMulBase16SubMenuMulti1	db  "Multiplicand [0.000 - 0.FFF]: $"
	calcMulBase16SubMenuMulti2 	db  "Multiplier [0.000 - 0.FFF]: $"
	calcMulBase16SubMenuProduct db  "The product is : $"
	calcMulBase16SubMenuAgain   db  "Use operation again [Y/N]: $"
	;BASE 2
	calcMulBase2SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcMulBase2SubMenuH2 		db  "Base 2 Multiplication$"
	calcMulBase2SubMenuMulti1	db  "Multiplicand [0.000 - 0.111]: $"
	calcMulBase2SubMenuMulti2 	db  "Multiplier [0.000 - 0.111]: $"
	calcMulBase2SubMenuProduct 	db  "The product is : $"
	calcMulBase2SubMenuAgain    db  "Use operation again [Y/N]: $" ;end of mul submenu per bases
	;------------------------------ CALCULATOR DIVISON SUBMENU BASES ----------------------------------------;
	calcDivSubMenuH1 			db 	"CALCULATOR SUBMENU$" ;div submenu
	calcDivSubMenuH2 			db  "Division$"
	calcDivBase5SubMenu 		db  "[1] Base 05$"
	calcDivBase16SubMenu 		db  "[2] Base 16$"
	calcDivBase2SubMenu 		db  "[3] Base 02$"
	calcDivBackSubMenu      	db  "[4] Back to Calculator Menu$"
	calcDivInputSubMenu			db   "Enter your choice: $"
	;BASE 5
	calcDivBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" ;start of div submenu per bases
	calcDivBase5SubMenuH2 		db  "Base 5 Division$"
	calcDivBase5SubMenuDivi1	db  "Dividend [0.000 - 0.444]: $"
	calcDivBase5SubMenuDivi2 	db  "Divisor [0.000 - 0.444]: $"
	calcDivBase5SubMenuQuo 		db  "The quotient is : $"
	calcDivBase5SubMenuAgain    db 	"Use operation again [Y/N]: $"
	;BASE 16
	calcDivBase16SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcDivBase16SubMenuH2 		db  "Base 16 Division$"
	calcDivBase16SubMenuDivi1	db  "Dividend [0.000 - 0.FFF]: $"
	calcDivBase16SubMenuDivi2 	db  "Divisor [0.000 - 0.FFF]: $"
	calcDivBase16SubMenuQuo 	db  "The quotient is : $"
	calcDivBase16SubMenuAgain    db  "Use operation again [Y/N]: $"
	;BASE 2
	calcDivBase2SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcDivBase2SubMenuH2 		db  "Base 2 Division$"
	calcDivBase2SubMenuDivi1	db  "Dividend [0.000 - 0.111]: $"
	calcDivBase2SubMenuDivi2 	db  "Divisor [0.000 - 0.111]: $"
	calcDivBase2SubMenuQuo 		db  "The quotient is : $"
	calcDivBase2SubMenuAgain    db  "Use operation again [Y/N]: $" ;end of div submenu per bases
	;------------------------------ CALCULATOR ADDITION SUBMENU BASES ----------------------------------------;
	calcAddSubMenuH1 			db 	"CALCULATOR SUBMENU$" ;add submenu
	calcAddSubMenuH2 			db  "Addition$"
	calcAddBase5SubMenu 		db  "[1] Base 05$"
	calcAddBase16SubMenu 		db  "[2] Base 16$"
	calcAddBase2SubMenu 		db  "[3] Base 02$"
	calcAddBackSubMenu      	db  "[4] Back to Calculator Menu$"
	calcAddInputSubMenu			db   "Enter your choice: $"
	;BASE 5
	calcAddBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" ;start of Add submenu per bases
	calcAddBase5SubMenuH2 		db  "Base 5 Addition$"
	calcAddBase5SubMenuAddend	db  "Addend [0.000 - 0.444]: $"
	calcAddBase5SubMenuAugend 	db  "Augend [0.000 - 0.444]: $"
	calcAddBase5SubMenuSum 		db  "The sum is : $"
	calcAddBase5SubMenuAgain    db 	"Use operation again [Y/N]: $"
	;BASE 16
	calcAddBase16SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcAddBase16SubMenuH2 		db  "Base 16 Addition$" 
	calcAddBase16SubMenuAddend	db  "Addend [0.000 - 0.FFF]: $"
	calcAddBase16SubMenuAugend 	db  "Augend [0.000 - 0.FFF]: $"
	calcAddBase16SubMenuSum 	db  "The sum is : $"
	calcAddBase16SubMenuAgain   db  "Use operation again [Y/N]: $"
	;BASE 2
	calcAddBase2SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcAddBase2SubMenuH2 		db  "Base 2 Addition$"
	calcAddBase2SubMenuAddend	db  "Addend [0.000 - 0.111]: $"
	calcAddBase2SubMenuAugend 	db  "Augend [0.000 - 0.111]: $"
	calcAddBase2SubMenuSum 		db  "The sum is : $"
	calcAddBase2SubMenuAgain    db  "Use operation again [Y/N]: $" ;end of Add submenu per bases
	;------------------------------ CALCULATOR SUBTRACTION SUBMENU BASES ----------------------------------------;
	calcSubtSubMenuH1 			db 	"CALCULATOR SUBMENU$" ;subtraction menu
	calcSubtSubMenuH2 			db  "Subtraction$"
	calcSubtBase5SubMenu		db  "[1] Base 05$"
	calcSubtBase16SubMenu 		db  "[2] Base 16$"
	calcSubtBase2SubMenu 		db  "[3] Base 02$"
	calcSubtBackSubMenu     	db  "[4] Back to Calculator Menu$"
	calcSubtInputSubMenu		db   "Enter your choice: $"
	;BASE 5
	calcSubtBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" 
	calcSubtBase5SubMenuH2 		db  "Base 5 Subtraction$"
	calcSubtBase5SubMenuSubtra	db  "Subtrahend [0.000 - 0.444]: $"
	calcSubtBase5SubMenuMinu 	db  "Minuend [0.000 - 0.444]: $"
	calcSubtBase5SubMenuDiff 	db  "The difference is : $"
	calcSubtBase5SubMenuAgain   db 	"Use operation again [Y/N]: $"
	;BASE 16
	calcSubtBase16SubMenuH1 	db 	"CALCULATOR SUBMENU$"
	calcSubtBase16SubMenuH2 	db  "Base 16 Subtraction$" 
	calcSubtBase16SubMenuSubtra	db  "Subtrahend [0.000 - 0.FFF]: $"
	calcSubtBase16SubMenuMinu	db  "Minuend [0.000 - 0.FFF]: $"
	calcSubtBase16SubMenuDiff 	db  "The difference is : $"
	calcSubtBase16SubMenuAgain  db  "Use operation again [Y/N]: $"
	;BASE 2
	calcSubtBase2SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcSubtBase2SubMenuH2 		db  "Base 2 Subtraction$"
	calcSubtBase2SubMenuSubtra	db  "Subtrahend [0.000 - 0.111]: $"
	calcSubtBase2SubMenuMinu 	db  "Minuend [0.000 - 0.111]: $"
	calcSubtBase2SubMenuDiff 	db  "The difference is : $"
	calcSubtBase2SubMenuAgain   db  "Use operation again [Y/N]: $" ;end of Subt submenu per bases
	;------------------------------ CALCULATOR MODULO SUBMENU BASES ----------------------------------------;
	calcModuloSubMenuH1 			db 	"CALCULATOR SUBMENU$" ;div submenu
	calcModuloSubMenuH2 			db  "Modulo$"
	calcModuloBase5SubMenu 			db  "[1] Base 05$"
	calcModuloBase16SubMenu 		db  "[2] Base 16$"
	calcModuloBase2SubMenu 			db  "[3] Base 02$"
	calcModuloBackSubMenu      		db  "[4] Back to Calculator Menu$"
	calcModuloInputSubMenu			db   "Enter your choice: $"
	;BASE 5
	calcModuloBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" ;start of div submenu per bases
	calcModuloBase5SubMenuH2 		db  "Base 5 Modulo$"
	calcModuloBase5SubMenuDivi1		db  "Dividend [0.000 - 0.444]: $"
	calcModuloBase5SubMenuDivi2 	db  "Divisor [0.000 - 0.444]: $"
	calcModuloBase5SubMenuQuo 		db  "The remainder is : $"
	calcModuloBase5SubMenuAgain    	db 	"Use operation again [Y/N]: $"
	;BASE 16
	calcModuloBase16SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcModuloBase16SubMenuH2 		db  "Base 16 Modulo$"
	calcModuloBase16SubMenuDivi1	db  "Dividend [0.000 - 0.FFF]: $"
	calcModuloBase16SubMenuDivi2 	db  "Divisor [0.000 - 0.FFF]: $"
	calcModuloBase16SubMenuQuo 		db  "The remainder is : $"
	calcModuloBase16SubMenuAgain    db  "Use operation again [Y/N]: $"
	;BASE 2
	calcModuloBase2SubMenuH1 		db 	"CALCULATOR SUBMENU$"
	calcModuloBase2SubMenuH2 		db  "Base 2 Modulo$"
	calcModuloBase2SubMenuDivi1		db  "Dividend [0.000 - 0.111]: $"
	calcModuloBase2SubMenuDivi2 	db  "Divisor [0.000 - 0.111]: $"
	calcModuloBase2SubMenuQuo 		db  "The remainder is : $"
	calcModuloBase2SubMenuAgain    	db  "Use operation again [Y/N]: $" ;end of div submenu per bases
	;------------------------------ CONVERSION SUBMENU ----------------------------------------;    
	convMenu 					db "CONVERSION MENU$"
	convBase7Menu				db "[1] Base 07$"  
	convBase5Menu				db "[2] Base 05$"   
	convBase2Menu 				db "[3] Base 02$" 
	convBackSubMenu				db "[4] Back to Main Menu$"
	convMenuInput 				db "Enter your choice: $"

	;------------------------------ CONVERSION SUBMENU BASES----------------------------------------;    
    ;FOR BASE 7
    convBase7SubMenuH1			db "CONVERSION SUBMENU$"
    convBase7SubMenuH2			db "BASE 7$"
    convBase7to4SubMenu			db "[1] Base 7 to Base 4$"
    convBase7BackSubMenu 		db "[2] Back to Conversion Menu$"
    convBase7InputSubMenu 		db "Enter your choice: $"
    
    convBase7to4SubMenuH1		db "CONVERSION$"
    convBase7to4SubMenuH2		db "Base 7 to Base 4$"
    convBase7to4InputSubMenu 	db "Input a number [0.000 - 0.666]: $"
    convBase7to4OutputSubMenu 	db "Base 4 Equivalent is: $"
    convBase7to4SubMenuAgain	db "Use operation again [Y/N]: $"
    
    ;FOR BASE 5
    convBase5SubMenuH1 			db "CONVERSION SUBMENU$"
    convBase5SubMenuH2 			db "BASE 5$"
    convBase5to10SubMenu 		db "[1] Base 5 to Base 10 $"
    convBase5BackSubMenu 		db "[2] Back to Conversion Menu$"
    convBase5InputSubMenu 		db "Enter your choice:  $"
    
	convBase5to10SubMenuH1 		db "CONVERSION$"
    convBase5to10SubMenuH2 		db "Base 5 Base 10$"
    convBase5to10InputSubMenu 	db "Input a number [0.000 - 0.444]: $"
    convBase5to10OutputSubMenu 	db "Base 10 Equivalent is: $"
    convBase5to10SubMenuAgain 	db "Use operation again [Y/N]: $"
    
    ;FOR BASE 2
    convBase2SubMenuH1 			db "CONVERSION SUBMENU$"
    convBase2SubMenuH2 			db "BASE 2$"
    convBase2to8SubMenu 		db "[1]Base 2 to Base 8 $"
    convBase2BackSubMenu 		db "[2] Back to Conversion Menu$"
    convBase2InputSubMenu 		db "Base 8 conversion is: $"
    
    convBase2to8SubMenuH1 		db "CONVERSION$"
    convBase2to8SubMenuH2 		db "Base 2 Base 8$"
    convBase2to8InputSubMenu 	db "Input a number [0.000 - 0.111]: $"
    convBase2to8OutputSubMenu 	db "Base 8 Equivalent is: $"
    convBase2to8SubMenuAgain 	db "Use operation again [Y/N]: $"

	;------------------------------ ERROR STRINGS ----------------------------------------;    
	errorMsg 					db "Invalid Input.$"
	errorKey 					db "Press any KEY to try again.$"
	
.code
main proc
    mov ax, @data
    mov ds, ax
	jmp HomeScreenMenu
	
	clrScreen :
	mov ax,0600h
	mov bh,70h
	mov cx,0000h
	mov dx,404fh
	int 10h
	mov bh,00h
	ret

main endp
	;------------------------------ MAIN MENU ----------------------------------------;
Home proc
HomeScreenMenu: ;Start ng Main Menu
	call clrScreen
	call homeMenucntr
	mov ah, 09h
	lea dx, homeMenu
	int 21h
	call homeCalccntr
	mov ah, 09h
	lea dx, homeCalc
	int 21h
	call homeConvcntr
	mov ah, 09h
	lea dx, homeConv
	int 21h
	call homeExitcntr
	mov ah, 09h
	lea dx, homeExit
	int 21h	
	call homeInputcntr
	mov ah, 09h
	lea dx, homeInput
	int 21h	
	mov al, 00h
	mov ah, 01h
	int 21h
	cmp al, 31h
	je HomeCallCalcMenu
	cmp al, 32h
	je HomeCallConvMenu
	cmp al, 33h
	je HomeCallEnd
	cmp al, 30h
	jle HomeCallError
	cmp al, 34h
	jge HomeCallError
	
	HomeCallCalcMenu:
		jmp calcScreenMenu
	HomeCallConvMenu:
		jmp convScreenMenu
	HomeCallEnd:
		jmp exitSwitch
	HomeCallError:
		call errorHomeInput

homeMenucntr : ;START NG pag-align ng mga string ;main menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Fh
	int 10h
	ret
homeCalccntr :
	mov ah,02h
	mov bh,00h
	mov dx,091Ah
	int 10h
	ret
homeConvcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
homeExitcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
homeInputcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret

errorHomeInputcntr : ;center alignment ng error messages sa main menu
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorHomeInputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorHomeInput: ;start ng loop error messages na tatawagin kapag mis-input
	call errorHomeInputcntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h
	call errorHomeInputcntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp HomeScreenMenu
	ret

Home endp
	;------------------------------ CALCULATOR ----------------------------------------;
Calculator proc	
	;------------------------------ CALCULATOR MENU ----------------------------------------;
calcScreenMenu proc
calcScreenMenu: ;start ng calcu menu
	call clrScreen
	call calcMenucntr
	mov ah, 09h
	lea dx, calcMenu
	int 21h
	
	call calcMulcntr
	mov ah, 09h
	lea dx, calcMul
	int 21h
	
	call calcDivcntr
	mov ah, 09h
	lea dx, calcDiv
	int 21h
	
	call calcAddcntr
	mov ah, 09h
	lea dx, calcAdd
	int 21h
	
	call calcSubtcntr
	mov ah, 09h
	lea dx, calcSubt
	int 21h
	
	call calcModulocntr
	mov ah, 09h
	lea dx, calcModulo
	int 21h

	call calcBackcntr
	mov ah, 09h
	lea dx, calcBack
	int 21h

	call calcInputcntr
	mov ah, 09h
	lea dx, calcInput
	int 21h
	
	mov ah, 01h
	int 21h
	cmp al, 31h
	je CalcLoadMulBase
	cmp al, 32h
	je CalcLoadDivBase
	cmp al, 33h
	je CalcLoadAddBase
	cmp al, 34h
	je CalcLoadSubtBase
	cmp al, 35h
	je CalcLoadModuloBase
	cmp al, 36h
	je CalcLoadHomeScreen
	cmp al, 30h
	jle CalcLoadErrorInput
	cmp al, 37h
	jge CalcLoadErrorInput
	CalcLoadMulBase:
		jmp calcMulBase
	CalcLoadDivBase:
		JMP calcDivBase
	CalcLoadAddBase:
		JMP calcAddBase
	CalcLoadSubtBase:
		JMP calcSubtBase
	CalcLoadModuloBase:
		JMP calcModuloBase
	CalcLoadHomeScreen:
		JMP HomeScreenMenu
	CalcLoadErrorInput:
		JMP errorCalcMenuInput

calcMenucntr : ;calc menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
	
calcMulcntr :
	mov ah,02h
	mov bh,00h
	mov dx,091Ah
	int 10h
	ret
	
calcDivcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
	
calcAddcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
	
calcSubtcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
	
calcModulocntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret
	
calcBackcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0E1Ah
	int 10h
	ret
	
calcInputcntr :
	mov ah,02h
	mov bh,00h
	mov dx,101Ah
	int 10h
	ret
	
errorCalcMenuInputcntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorCalcMenuInputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcMenuInput: 
	call errorCalcMenuInputcntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorCalcMenuInputcntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcScreenMenu
calcScreenMenu endp		
	;------------------------------ CALCULATOR MULTIPLICATION ----------------------------------------;
calcMulBase proc
calcMulBase:;Multiplication Sub Menu after pumili ng operator sa Calculator Menu 	
	call clrScreen
	call calcMulSubMenuH1cntr
	mov ah, 09h
	lea dx, calcMulSubMenuH1
	int 21h
	call calcMulSubMenuH2cntr
	mov ah, 09h
	lea dx, calcMulSubMenuH2
	int 21h
	call calcMulBase5SubMenucntr
	mov ah, 09h
	lea dx, calcMulBase5SubMenu
	int 21h
	call calcMulBase16SubMenucntr
	mov ah, 09h
	lea dx, calcMulBase16SubMenu
	int 21h
	call calcMulBase2SubMenucntr
	mov ah, 09h
	lea dx, calcMulBase2SubMenu
	int 21h
	call calcMulBackSubMenucntr
	mov ah, 09h
	lea dx, calcMulBackSubMenu
	int 21h
	call calcMulInputSubMenucntr
	mov ah, 09h
	lea dx, calcMulInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h

	cmp al, 31h
	je CalcMulBase5LoadCalcMenu
	cmp al, 32h
	je CalcMulBase16LoadCalcMenu
	cmp al, 33h
	je CalcMulBase2LoadCalcMenu
	cmp al, 34h
	je CalcMulBaseLoadCalcMenu
	cmp al, 30h
	jle CalcMulBaseLoadErrorInput
	cmp al, 35h
	jge CalcMulBaseLoadErrorInput
	
	CalcMulBase5LoadCalcMenu:
		jmp calcMulBase5
	CalcMulBase16LoadCalcMenu:
		jmp calcMulBase16
	CalcMulBase2LoadCalcMenu:
		jmp calcMulBase2
	CalcMulBaseLoadCalcMenu:
		jmp calcScreenMenu
	CalcMulBaseLoadErrorInput:
		jmp errorCalcMulSubMenuInput

calcMulSubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcMulSubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0820h
	int 10h
	ret
calcMulBase5SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
calcMulBase16SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
calcMulBase2SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
calcMulBackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret
calcMulInputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0F1Ah
	int 10h
	ret

	
errorcalcMulSubMenucntr : ;start ng center alignment ng error messages

	mov ah,02h
	mov bh,00h
	mov dx,111Ch
	int 10h
	ret
errorcalcMulSubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1215h
	int 10h
	ret
errorCalcMulSubMenuInput: 
	call errorcalcMulSubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulSubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase	

calcMulBase5:;BASE 5 Sub Menu after pumili ng base sa calcu
	call clrScreen
	call calcMulBase5SubMenuH1cntr
	mov ah, 09h
	lea dx, calcMulBase5SubMenuH1
	int 21h
	call calcMulBase5SubMenuH2cntr
	mov ah, 09h
	lea dx, calcMulBase5SubMenuH2
	int 21h
	call calcMulBase5SubMenuMulti1cntr 
	mov ah, 09h
	lea dx, calcMulBase5SubMenuMulti1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcMulBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
MultiBase5Input1:	
	mov ah, 01h
	int 21h
	call CalcMulBase5LoadNumChecker
	PUSH AX
	loop MultiBase5Input1
	call calcMulBase5SubMenuMulti2cntr
	mov ah, 09h
	lea dx, calcMulBase5SubMenuMulti2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcMulBase5LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
MultiBase5Input2:	
	mov ah, 01h ;second input
	int 21h
	call CalcMulBase5LoadNumChecker
	PUSH AX
	loop MultiBase5Input2
	
	call calcMulBase5SubMenuProductcntr ;product
	mov ah, 09h
	lea dx, calcMulBase5SubMenuProduct
	int 21h		
	call calcMulBase5SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcMulBase5SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcMulBase5LoadYNChecker
	
	CalcMulBase5LoadMulBaseMenu:
		jmp calcMulBase
	CalcMulBase5LoadMulBase5Menu:
		jmp calcMulBase5
	CalcMulBase5LoadNumChecker:
		cmp al, 30h
		jl CalcMulBase5LoadNumErrorInput2
		cmp al, 34h
		jg CalcMulBase5LoadNumErrorInput2
		ret
	CalcMulBase5LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcMulBase5LoadMulBase5Menu
		CMP AL, 4EH ;big N
		JE CalcMulBase5LoadMulBaseMenu
		CMP AL, 79H ;small y
		JE CalcMulBase5LoadMulBase5Menu
		CMP AL, 6EH ;small n
		JE CalcMulBase5LoadMulBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcMulBase5LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcMulBase5LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcMulBase5LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcMulBase5LoadYNErrorInput
		ret
	CalcMulBase5LoadYNErrorInput:
		jmp errorCalcMulBase5SubMenuYNInput
	CalcMulBase5LoadNumErrorInput2:
		jmp errorCalcMulBase5SubMenuNUMInput
	CalcMulBase5Load0NumErrorInput:
		cmp al, 30h
		je CalcMulBase5Load0NumRetInput
		jmp CalcMulBase5LoadNumErrorInput2
	CalcMulBase5Load0NumRetInput:
		ret
	
calcMulBase5SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcMulBase5SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081ch
	int 10h
	ret
calcMulBase5SubMenuMulti1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcMulBase5SubMenuMulti2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcMulBase5SubMenuProductcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcMulBase5SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret

	
errorcalcMulBase5SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcMulBase5SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcMulBase5SubMenuYNInput: 
	call errorcalcMulBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase5

errorCalcMulBase5SubMenuNUMInput: 
	call errorcalcMulBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase

calcMulBase16:;BASE 16 Sub Menu after pumili ng base sa calcu
	call clrScreen
	call calcMulBase16SubMenuH1cntr
	mov ah, 09h
	lea dx, calcMulBase16SubMenuH1
	int 21h
	call calcMulBase16SubMenuH2cntr
	mov ah, 09h
	lea dx, calcMulBase16SubMenuH2
	int 21h
	call calcMulBase16SubMenuMulti1cntr 
	mov ah, 09h
	lea dx, calcMulBase16SubMenuMulti1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcMulBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
MultiBase16Input1:	
	mov ah, 01h
	int 21h
	CALL CalcMulBase16LoadLetterNumErrorInput
	PUSH AX
	loop MultiBase16Input1
	call calcMulBase16SubMenuMulti2cntr
	mov ah, 09h
	lea dx, calcMulBase16SubMenuMulti2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcMulBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
MultiBase16Input2:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcMulBase16LoadLetterNumErrorInput
	PUSH AX
	loop MultiBase16Input2
	
	call calcMulBase16SubMenuProductcntr ;product
	mov ah, 09h
	lea dx, calcMulBase16SubMenuProduct
	int 21h		
	call calcMulBase16SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcMulBase16SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcMulBase16LoadYNChecker
	
	
	CalcMulBase16LoadMulBaseMenu:
		jmp calcMulBase
	CalcMulBase16LoadMulBase5Menu:
		jmp calcMulBase16
	CalcMulBase16LoadLetterNumErrorInput:
		cmp al, 30h
		jl CalcMulBase16LoadNumErrorInput2
		cmp al, 39h
		jle CalcMulBase16Load0NumRetInput
		cmp al, 41h ;A
		jl CalcMulBase16LoadNumErrorInput2
		cmp al, 46h ;F
		jle CalcMulBase16Load0NumRetInput
		cmp al, 61h ;a
		jl CalcMulBase16LoadNumErrorInput2
		cmp al, 66h ;f
		jle CalcMulBase16Load0NumRetInput
		jmp CalcMulBase16LoadNumErrorInput2
	CalcMulBase16LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcMulBase16LoadMulBase5Menu
		CMP AL, 4EH ;big N
		JE CalcMulBase16LoadMulBaseMenu
		CMP AL, 79H ;small y
		JE CalcMulBase16LoadMulBase5Menu
		CMP AL, 6EH ;small n
		JE CalcMulBase16LoadMulBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcMulBase16LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcMulBase16LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcMulBase16LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcMulBase16LoadYNErrorInput
		ret
	CalcMulBase16LoadYNErrorInput:
		jmp errorCalcMulBase16SubMenuYNInput
	CalcMulBase16LoadNumErrorInput2:
		jmp errorCalcMulBase16SubMenuNUMInput
	CalcMulBase16Load0NumErrorInput:
		cmp al, 30h
		je CalcMulBase16Load0NumRetInput
		jmp CalcMulBase16LoadNumErrorInput2
	CalcMulBase16Load0NumRetInput:
		ret
	
calcMulBase16SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcMulBase16SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081ch
	int 10h
	ret
calcMulBase16SubMenuMulti1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcMulBase16SubMenuMulti2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcMulBase16SubMenuProductcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcMulBase16SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
	
errorcalcMulBase16SubMenucntr : ;start ng center alignment ng error messages

	mov ah,02h
	mov bh,00h
	mov dx,111Ch
	int 10h
	ret
errorcalcMulBase16SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1215h
	int 10h
	ret

errorCalcMulBase16SubMenuYNInput: 
	call errorcalcMulBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase16

errorCalcMulBase16SubMenuNUMInput: 
	call errorcalcMulBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase

calcMulBase2:;BASE 2 Sub Menu after pumili ng base sa calcu
	call clrScreen
	call calcMulBase2SubMenuH1cntr
	mov ah, 09h
	lea dx, calcMulBase2SubMenuH1
	int 21h
	call calcMulBase2SubMenuH2cntr
	mov ah, 09h
	lea dx, calcMulBase2SubMenuH2
	int 21h
	call calcMulBase2SubMenuMulti1cntr 
	mov ah, 09h
	lea dx, calcMulBase2SubMenuMulti1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcMulBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
MultiBase2Input1:	
	mov ah, 01h
	int 21h
	call CalcMulBase2LoadNumChecker
	PUSH AX
	loop MultiBase2Input1
	call calcMulBase2SubMenuMulti2cntr
	mov ah, 09h
	lea dx, calcMulBase2SubMenuMulti2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcMulBase2LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
MultiBase2Input2:	
	mov ah, 01h ;second input
	int 21h
	call CalcMulBase2LoadNumChecker
	PUSH AX
	loop MultiBase2Input2
	
	call calcMulBase2SubMenuProductcntr ;product
	mov ah, 09h
	lea dx, calcMulBase2SubMenuProduct
	int 21h		
	call calcMulBase2SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcMulBase2SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcMulBase2LoadYNChecker
	
	CalcMulBase2LoadMulBaseMenu:
		jmp calcMulBase
	CalcMulBase2LoadMulBase2Menu:
		jmp calcMulBase2
	CalcMulBase2LoadNumChecker:
		cmp al, 30h
		jl CalcMulBase2LoadNumErrorInput2
		cmp al, 31h
		jg CalcMulBase2LoadNumErrorInput2
		ret
	CalcMulBase2LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcMulBase2LoadMulBase2Menu
		CMP AL, 4EH ;big N
		JE CalcMulBase2LoadMulBaseMenu
		CMP AL, 79H ;small y
		JE CalcMulBase2LoadMulBase2Menu
		CMP AL, 6EH ;small n
		JE CalcMulBase2LoadMulBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcMulBase2LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcMulBase2LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcMulBase2LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcMulBase2LoadYNErrorInput
		ret
	CalcMulBase2LoadYNErrorInput:
		jmp errorCalcMulBase2SubMenuYNInput
	CalcMulBase2LoadNumErrorInput2:
		jmp errorCalcMulBase2SubMenuNUMInput
	CalcMulBase2Load0NumErrorInput:
		cmp al, 30h
		je CalcMulBase2Load0NumRetInput
		jmp CalcMulBase2LoadNumErrorInput2
	CalcMulBase2Load0NumRetInput:
		ret
	
calcMulBase2SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcMulBase2SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081ch
	int 10h
	ret
calcMulBase2SubMenuMulti1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcMulBase2SubMenuMulti2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcMulBase2SubMenuProductcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcMulBase2SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcMulBase2SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcMulBase2SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcMulBase2SubMenuYNInput: 
	call errorcalcMulBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase2

errorCalcMulBase2SubMenuNUMInput: 
	call errorcalcMulBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcMulBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase
	

calcMulBase endp	
	;------------------------------ CALCULATOR DIVISION ----------------------------------------;
calcDivBase proc
calcDivBase:;Division Sub Menu after pumili ng operator sa Calculator Menu 	
	call clrScreen
	call calcDivSubMenuH1cntr
	mov ah, 09h
	lea dx, calcDivSubMenuH1
	int 21h
	call calcDivSubMenuH2cntr
	mov ah, 09h
	lea dx, calcDivSubMenuH2
	int 21h
	call calcDivBase5SubMenucntr
	mov ah, 09h
	lea dx, calcDivBase5SubMenu
	int 21h
	call calcDivBase16SubMenucntr
	mov ah, 09h
	lea dx, calcDivBase16SubMenu
	int 21h
	call calcDivBase2SubMenucntr
	mov ah, 09h
	lea dx, calcDivBase2SubMenu
	int 21h
	call calcDivBackSubMenucntr
	mov ah, 09h
	lea dx, calcDivBackSubMenu
	int 21h
	call calcDivInputSubMenucntr
	mov ah, 09h
	lea dx, calcDivInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h

	cmp al, 31h
	je CalcDivBase5LoadCalcMenu
	cmp al, 32h
	je CalcDivBase16LoadCalcMenu
	cmp al, 33h
	je CalcDivBase2LoadCalcMenu
	cmp al, 34h
	je CalcDivBaseLoadCalcMenu
	cmp al, 30h
	jle CalcDivBaseLoadErrorInput
	cmp al, 35h
	jge CalcDivBaseLoadErrorInput
	
	CalcDivBase5LoadCalcMenu:
		jmp calcDivBase5
	CalcDivBase16LoadCalcMenu:
		jmp calcDivBase16
	CalcDivBase2LoadCalcMenu:
		jmp calcDivBase2
	CalcDivBaseLoadCalcMenu:
		jmp calcScreenMenu
	CalcDivBaseLoadErrorInput:
		jmp errorCalcDivSubMenuInput

calcDivSubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcDivSubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0823h
	int 10h
	ret
calcDivBase5SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
calcDivBase16SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
calcDivBase2SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
calcDivBackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret
calcDivInputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0F1Ah
	int 10h
	ret
 
errorcalcDivSubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcDivSubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcDivSubMenuInput: 
	call errorcalcDivSubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivSubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase	

calcDivBase5:;BASE 5 Sub Menu after pumili ng base sa calcu
	call clrScreen
	call calcDivBase5SubMenuH1cntr
	mov ah, 09h
	lea dx, calcDivBase5SubMenuH1
	int 21h
	call calcDivBase5SubMenuH2cntr
	mov ah, 09h
	lea dx, calcDivBase5SubMenuH2
	int 21h
	call calcDivBase5SubMenuDivi1cntr 
	mov ah, 09h
	lea dx, calcDivBase5SubMenuDivi1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcDivBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
DiviBase5Input1:	
	mov ah, 01h
	int 21h
	call CalcDivBase5LoadNumChecker
	PUSH AX
	loop DiviBase5Input1
	call calcDivBase5SubMenuDivi2cntr
	mov ah, 09h
	lea dx, calcDivBase5SubMenuDivi2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcDivBase5LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
DiviBase5Input2:	
	mov ah, 01h ;second input
	int 21h
	call CalcDivBase5LoadNumChecker
	PUSH AX
	loop DiviBase5Input2
	
	call calcDivBase5SubMenuQuocntr ;product
	mov ah, 09h
	lea dx, calcDivBase5SubMenuQuo
	int 21h		
	call calcDivBase5SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcDivBase5SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcDivBase5LoadYNChecker
	
	CalcDivBase5LoadDivBaseMenu:
		jmp calcDivBase
	CalcDivBase5LoadDivBase5Menu:
		jmp calcDivBase5
	CalcDivBase5LoadNumChecker:
		cmp al, 30h
		jl CalcDivBase5LoadNumErrorInput2
		cmp al, 34h
		jg CalcDivBase5LoadNumErrorInput2
		ret
	CalcDivBase5LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcDivBase5LoadDivBase5Menu
		CMP AL, 4EH ;big N
		JE CalcDivBase5LoadDivBaseMenu
		CMP AL, 79H ;small y
		JE CalcDivBase5LoadDivBase5Menu
		CMP AL, 6EH ;small n
		JE CalcDivBase5LoadDivBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcDivBase5LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcDivBase5LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcDivBase5LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcDivBase5LoadYNErrorInput
		ret
	CalcDivBase5LoadYNErrorInput:
		jmp errorCalcDivBase5SubMenuYNInput
	CalcDivBase5LoadNumErrorInput2:
		jmp errorCalcDivBase5SubMenuNUMInput
	CalcDivBase5Load0NumErrorInput:
		cmp al, 30h
		je CalcDivBase5Load0NumRetInput
		jmp CalcDivBase5LoadNumErrorInput2
	CalcDivBase5Load0NumRetInput:
		ret
	
calcDivBase5SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcDivBase5SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0820h
	int 10h
	ret
calcDivBase5SubMenuDivi1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcDivBase5SubMenuDivi2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcDivBase5SubMenuQuocntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcDivBase5SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcDivBase5SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcDivBase5SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcDivBase5SubMenuYNInput: 
	call errorcalcDivBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase5

errorCalcDivBase5SubMenuNUMInput: 
	call errorcalcDivBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase

calcDivBase16:;BASE 16 Sub Menu after pumili ng base sa calcu
	call clrScreen
	call calcDivBase16SubMenuH1cntr
	mov ah, 09h
	lea dx, calcDivBase16SubMenuH1
	int 21h
	call calcDivBase16SubMenuH2cntr
	mov ah, 09h
	lea dx, calcDivBase16SubMenuH2
	int 21h
	call calcDivBase16SubMenuDivi1cntr 
	mov ah, 09h
	lea dx, calcDivBase16SubMenuDivi1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcDivBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
DiviBase16Input1:	
	mov ah, 01h
	int 21h
	CALL CalcDivBase16LoadLetterNumErrorInput
	PUSH AX
	loop DiviBase16Input1
	call calcDivBase16SubMenuDivi2cntr
	mov ah, 09h
	lea dx, calcDivBase16SubMenuDivi2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcDivBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
DiviBase16Input2:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcDivBase16LoadLetterNumErrorInput
	PUSH AX
	loop DiviBase16Input2
	
	call calcDivBase16SubMenuQuocntr ;product
	mov ah, 09h
	lea dx, calcDivBase16SubMenuQuo
	int 21h		
	call calcDivBase16SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcDivBase16SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcDivBase16LoadYNChecker
	
	
	CalcDivBase16LoadDivBaseMenu:
		jmp calcDivBase
	CalcDivBase16LoadDivBase16Menu:
		jmp calcDivBase16
	CalcDivBase16LoadLetterNumErrorInput:
		cmp al, 30h
		jl CalcDivBase16LoadNumErrorInput2
		cmp al, 39h
		jle CalcDivBase16Load0NumRetInput
		cmp al, 41h ;A
		jl CalcDivBase16LoadNumErrorInput2
		cmp al, 46h ;F
		jle CalcDivBase16Load0NumRetInput
		cmp al, 61h ;a
		jl CalcDivBase16LoadNumErrorInput2
		cmp al, 66h ;f
		jle CalcDivBase16Load0NumRetInput
		jmp CalcDivBase16LoadNumErrorInput2
	CalcDivBase16LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcDivBase16LoadDivBase16Menu
		CMP AL, 4EH ;big N
		JE CalcDivBase16LoadDivBaseMenu
		CMP AL, 79H ;small y
		JE CalcDivBase16LoadDivBase16Menu
		CMP AL, 6EH ;small n
		JE CalcDivBase16LoadDivBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcDivBase16LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcDivBase16LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcDivBase16LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcDivBase16LoadYNErrorInput
		ret
	CalcDivBase16LoadYNErrorInput:
		jmp errorCalcDivBase16SubMenuYNInput
	CalcDivBase16LoadNumErrorInput2:
		jmp errorCalcDivBase16SubMenuNUMInput
	CalcDivBase16Load0NumErrorInput:
		cmp al, 30h
		je CalcDivBase16Load0NumRetInput
		jmp CalcDivBase16LoadNumErrorInput2
	CalcDivBase16Load0NumRetInput:
		ret
	
calcDivBase16SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcDivBase16SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081fh
	int 10h
	ret
calcDivBase16SubMenuDivi1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcDivBase16SubMenuDivi2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcDivBase16SubMenuQuocntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcDivBase16SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcDivBase16SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcDivBase16SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcDivBase16SubMenuYNInput: 
	call errorcalcDivBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase16

errorCalcDivBase16SubMenuNUMInput: 
	call errorcalcDivBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase

calcDivBase2:;BASE 2 Sub Menu after pumili ng base sa calcu
	call clrScreen
	call calcDivBase2SubMenuH1cntr
	mov ah, 09h
	lea dx, calcDivBase2SubMenuH1
	int 21h
	call calcDivBase2SubMenuH2cntr
	mov ah, 09h
	lea dx, calcDivBase2SubMenuH2
	int 21h
	call calcDivBase2SubMenuDivi1cntr 
	mov ah, 09h
	lea dx, calcDivBase2SubMenuDivi1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcDivBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
DiviBase2Input1:	
	mov ah, 01h
	int 21h
	call CalcDivBase2LoadNumChecker
	PUSH AX
	loop DiviBase2Input1
	call calcDivBase2SubMenuDivi2cntr
	mov ah, 09h
	lea dx, calcDivBase2SubMenuDivi2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcDivBase2LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
DiviBase2Input2:	
	mov ah, 01h ;second input
	int 21h
	call CalcDivBase2LoadNumChecker
	PUSH AX
	loop DiviBase2Input2
	
	call calcDivBase2SubMenuQuocntr;product
	mov ah, 09h
	lea dx, calcDivBase2SubMenuQuo
	int 21h		
	call calcDivBase2SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcDivBase2SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcDivBase2LoadYNChecker
	
	CalcDivBase2LoadDivBaseMenu:
		jmp calcDivBase
	CalcDivBase2LoadDivBase2Menu:
		jmp calcDivBase2
	CalcDivBase2LoadNumChecker:
		cmp al, 30h
		jl CalcDivBase2LoadNumErrorInput2
		cmp al, 31h
		jg CalcDivBase2LoadNumErrorInput2
		ret
	CalcDivBase2LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcDivBase2LoadDivBase2Menu
		CMP AL, 4EH ;big N
		JE CalcDivBase2LoadDivBaseMenu
		CMP AL, 79H ;small y
		JE CalcDivBase2LoadDivBase2Menu
		CMP AL, 6EH ;small n
		JE CalcDivBase2LoadDivBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcDivBase2LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcDivBase2LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcDivBase2LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcDivBase2LoadYNErrorInput
		ret
	CalcDivBase2LoadYNErrorInput:
		jmp errorCalcDivBase2SubMenuYNInput
	CalcDivBase2LoadNumErrorInput2:
		jmp errorCalcDivBase2SubMenuNUMInput
	CalcDivBase2Load0NumErrorInput:
		cmp al, 30h
		je CalcDivBase2Load0NumRetInput
		jmp CalcDivBase2LoadNumErrorInput2
	CalcDivBase2Load0NumRetInput:
		ret
	
calcDivBase2SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcDivBase2SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0820h
	int 10h
	ret
calcDivBase2SubMenuDivi1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcDivBase2SubMenuDivi2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcDivBase2SubMenuQuocntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcDivBase2SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcDivBase2SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcDivBase2SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcDivBase2SubMenuYNInput: 
	call errorcalcDivBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase2

errorCalcDivBase2SubMenuNUMInput: 
	call errorcalcDivBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcDivBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase
	

calcDivBase endp	
	;------------------------------ CALCULATOR ADDITION ----------------------------------------;
calcAddBase proc
calcAddBase:;Addition Sub Menu after pumili ng operation sa Calculator Menu 	
	call clrScreen
	call calcAddSubMenuH1cntr
	mov ah, 09h
	lea dx, calcAddSubMenuH1
	int 21h
	call calcAddSubMenuH2cntr
	mov ah, 09h
	lea dx, calcAddSubMenuH2
	int 21h
	call calcAddBase5SubMenucntr
	mov ah, 09h
	lea dx, calcAddBase5SubMenu
	int 21h
	call calcAddBase16SubMenucntr
	mov ah, 09h
	lea dx, calcAddBase16SubMenu
	int 21h
	call calcAddBase2SubMenucntr
	mov ah, 09h
	lea dx, calcAddBase2SubMenu
	int 21h
	call calcAddBackSubMenucntr
	mov ah, 09h
	lea dx, calcAddBackSubMenu
	int 21h
	call calcAddInputSubMenucntr
	mov ah, 09h
	lea dx, calcAddInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h

	cmp al, 31h
	je CalcAddBase5LoadCalcMenu
	cmp al, 32h
	je CalcAddBase16LoadCalcMenu
	cmp al, 33h
	je CalcAddBase2LoadCalcMenu
	cmp al, 34h
	je CalcAddBaseLoadCalcMenu
	cmp al, 30h
	jle CalcAddBaseLoadErrorInput
	cmp al, 35h
	jge CalcAddBaseLoadErrorInput
	
	CalcAddBase5LoadCalcMenu:
		jmp calcAddBase5
	CalcAddBase16LoadCalcMenu:
		jmp calcAddBase16
	CalcAddBase2LoadCalcMenu:
		jmp calcAddBase2
	CalcAddBaseLoadCalcMenu:
		jmp calcScreenMenu
	CalcAddBaseLoadErrorInput:
		jmp errorCalcAddSubMenuInput

calcAddSubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcAddSubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0823h
	int 10h
	ret
calcAddBase5SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
calcAddBase16SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
calcAddBase2SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
calcAddBackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret
calcAddInputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0F1Ah
	int 10h
	ret 
	
errorcalcAddSubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcAddSubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcAddSubMenuInput: 
	call errorcalcAddSubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddSubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase	

calcAddBase5:;BASE 5 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcAddBase5SubMenuH1cntr
	mov ah, 09h
	lea dx, calcAddBase5SubMenuH1
	int 21h
	call calcAddBase5SubMenuH2cntr
	mov ah, 09h
	lea dx, calcAddBase5SubMenuH2
	int 21h
	call calcAddBase5SubMenuAddendcntr 
	mov ah, 09h
	lea dx, calcAddBase5SubMenuAddend ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcAddBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
AddendBase5Input:	
	mov ah, 01h
	int 21h
	call CalcAddBase5LoadNumChecker
	PUSH AX
	loop AddendBase5Input
	
	call calcAddBase5SubMenuAugendcntr
	mov ah, 09h
	lea dx, calcAddBase5SubMenuAugend ;augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcAddBase5LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
AugendBase5Input:	
	mov ah, 01h ;second input
	int 21h
	call CalcAddBase5LoadNumChecker
	PUSH AX
	loop AugendBase5Input
	
	call calcAddBase5SubMenuSumcntr ;product
	mov ah, 09h
	lea dx, calcAddBase5SubMenuSum
	int 21h		
	call calcAddBase5SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcAddBase5SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcAddBase5LoadYNChecker
	
	CalcAddBase5LoadAddBaseMenu:
		jmp calcAddBase
	CalcAddBase5LoadAddBase5Menu:
		jmp calcAddBase5
	CalcAddBase5LoadNumChecker:
		cmp al, 30h
		jl CalcAddBase5LoadNumErrorInput2
		cmp al, 34h
		jg CalcAddBase5LoadNumErrorInput2
		ret
	CalcAddBase5LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcAddBase5LoadAddBase5Menu
		CMP AL, 4EH ;big N
		JE CalcAddBase5LoadAddBaseMenu
		CMP AL, 79H ;small y
		JE CalcAddBase5LoadAddBase5Menu
		CMP AL, 6EH ;small n
		JE CalcAddBase5LoadAddBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcAddBase5LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcAddBase5LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcAddBase5LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcAddBase5LoadYNErrorInput
		ret
	CalcAddBase5LoadYNErrorInput:
		jmp errorCalcAddBase5SubMenuYNInput
	CalcAddBase5LoadNumErrorInput2:
		jmp errorCalcAddBase5SubMenuNUMInput
	CalcAddBase5Load0NumErrorInput:
		cmp al, 30h
		je CalcAddBase5Load0NumRetInput
		jmp CalcAddBase5LoadNumErrorInput2
	CalcAddBase5Load0NumRetInput:
		ret
	
calcAddBase5SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcAddBase5SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0820h
	int 10h
	ret
calcAddBase5SubMenuAddendcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcAddBase5SubMenuAugendcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcAddBase5SubMenuSumcntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcAddBase5SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcAddBase5SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcAddBase5SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcAddBase5SubMenuYNInput: 
	call errorcalcAddBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase5

errorCalcAddBase5SubMenuNUMInput: 
	call errorcalcAddBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase

calcAddBase16:;BASE 16 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcAddBase16SubMenuH1cntr
	mov ah, 09h
	lea dx, calcAddBase16SubMenuH1
	int 21h
	call calcAddBase16SubMenuH2cntr
	mov ah, 09h
	lea dx, calcAddBase16SubMenuH2
	int 21h
	call calcAddBase16SubMenuAddendcntr 
	mov ah, 09h
	lea dx, calcAddBase16SubMenuAddend ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcAddBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
AddendBase16Input:	
	mov ah, 01h
	int 21h
	CALL CalcAddBase16LoadLetterNumErrorInput
	PUSH AX
	loop AddendBase16Input
	
	call calcAddBase16SubMenuAugendcntr
	mov ah, 09h
	lea dx, calcAddBase16SubMenuAugend ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcAddBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
AugendBase16Input:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcAddBase16LoadLetterNumErrorInput
	PUSH AX
	loop AugendBase16Input
	
	call calcAddBase16SubMenuSumcntr ;product
	mov ah, 09h
	lea dx, calcAddBase16SubMenuSum
	int 21h		
	call calcAddBase16SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcAddBase16SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcAddBase16LoadYNChecker
	
	
	CalcAddBase16LoadAddBaseMenu:
		jmp calcAddBase
	CalcAddBase16LoadAddBase16Menu:
		jmp calcAddBase16
	CalcAddBase16LoadLetterNumErrorInput:
		cmp al, 30h
		jl CalcAddBase16LoadNumErrorInput2
		cmp al, 39h
		jle CalcAddBase16Load0NumRetInput
		cmp al, 41h ;A
		jl CalcAddBase16LoadNumErrorInput2
		cmp al, 46h ;F
		jle CalcAddBase16Load0NumRetInput
		cmp al, 61h ;a
		jl CalcAddBase16LoadNumErrorInput2
		cmp al, 66h ;f
		jle CalcAddBase16Load0NumRetInput
		jmp CalcAddBase16LoadNumErrorInput2
	CalcAddBase16LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcAddBase16LoadAddBase16Menu
		CMP AL, 4EH ;big N
		JE CalcAddBase16LoadAddBaseMenu
		CMP AL, 79H ;small y
		JE CalcAddBase16LoadAddBase16Menu
		CMP AL, 6EH ;small n
		JE CalcAddBase16LoadAddBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcAddBase16LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcAddBase16LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcAddBase16LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcAddBase16LoadYNErrorInput
		ret
	CalcAddBase16LoadYNErrorInput:
		jmp errorCalcAddBase16SubMenuYNInput
	CalcAddBase16LoadNumErrorInput2:
		jmp errorCalcAddBase16SubMenuNUMInput
	CalcAddBase16Load0NumErrorInput:
		cmp al, 30h
		je CalcAddBase16Load0NumRetInput
		jmp CalcAddBase16LoadNumErrorInput2
	CalcAddBase16Load0NumRetInput:
		ret
	
calcAddBase16SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcAddBase16SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081fh
	int 10h
	ret
calcAddBase16SubMenuAddendcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcAddBase16SubMenuAugendcntr:
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcAddBase16SubMenuSumcntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcAddBase16SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcAddBase16SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcAddBase16SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcAddBase16SubMenuYNInput: 
	call errorcalcAddBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase16

errorCalcAddBase16SubMenuNUMInput: 
	call errorcalcAddBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase

calcAddBase2:;BASE 2 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcAddBase2SubMenuH1cntr
	mov ah, 09h
	lea dx, calcAddBase2SubMenuH1
	int 21h
	call calcAddBase2SubMenuH2cntr
	mov ah, 09h
	lea dx, calcAddBase2SubMenuH2
	int 21h
	call calcAddBase2SubMenuAddendcntr 
	mov ah, 09h
	lea dx, calcAddBase2SubMenuAddend ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcAddBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
AddendBase2Input:	
	mov ah, 01h
	int 21h
	call CalcAddBase2LoadNumChecker
	PUSH AX
	loop AddendBase2Input
	
	call calcAddBase2SubMenuAugendcntr
	mov ah, 09h
	lea dx, calcAddBase2SubMenuAugend ;Augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcAddBase2LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
AugendBase2Input:	
	mov ah, 01h ;second input
	int 21h
	call CalcAddBase2LoadNumChecker
	PUSH AX
	loop AugendBase2Input
	
	call calcAddBase2SubMenuSumcntr;sum
	mov ah, 09h
	lea dx, calcAddBase2SubMenuSum
	int 21h		
	call calcAddBase2SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcAddBase2SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcAddBase2LoadYNChecker
	
	CalcAddBase2LoadAddBaseMenu:
		jmp calcAddBase
	CalcAddBase2LoadAddBase2Menu:
		jmp calcAddBase2
	CalcAddBase2LoadNumChecker:
		cmp al, 30h
		jl CalcAddBase2LoadNumErrorInput2
		cmp al, 31h
		jg CalcAddBase2LoadNumErrorInput2
		ret
	CalcAddBase2LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcAddBase2LoadAddBase2Menu
		CMP AL, 4EH ;big N
		JE CalcAddBase2LoadAddBaseMenu
		CMP AL, 79H ;small y
		JE CalcAddBase2LoadAddBase2Menu
		CMP AL, 6EH ;small n
		JE CalcAddBase2LoadAddBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcAddBase2LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcAddBase2LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcAddBase2LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcAddBase2LoadYNErrorInput
		ret
	CalcAddBase2LoadYNErrorInput:
		jmp errorCalcAddBase2SubMenuYNInput
	CalcAddBase2LoadNumErrorInput2:
		jmp errorCalcAddBase2SubMenuNUMInput
	CalcAddBase2Load0NumErrorInput:
		cmp al, 30h
		je CalcAddBase2Load0NumRetInput
		jmp CalcAddBase2LoadNumErrorInput2
	CalcAddBase2Load0NumRetInput:
		ret
	
calcAddBase2SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcAddBase2SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0820h
	int 10h
	ret
calcAddBase2SubMenuAddendcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcAddBase2SubMenuAugendcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcAddBase2SubMenuSumcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcAddBase2SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcAddBase2SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcAddBase2SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcAddBase2SubMenuYNInput: 
	call errorcalcAddBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase2

errorCalcAddBase2SubMenuNUMInput: 
	call errorcalcAddBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcAddBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase
	

calcAddBase endp	
	;------------------------------ CALCULATOR SUBTRACTION ----------------------------------------;
calcSubtBase proc
calcSubtBase:;Sub Menu after pumili sa Calculator Menu 	
	call clrScreen
	call calcSubtSubMenuH1cntr
	mov ah, 09h
	lea dx, calcSubtSubMenuH1
	int 21h
	call calcSubtSubMenuH2cntr
	mov ah, 09h
	lea dx, calcSubtSubMenuH2
	int 21h
	call calcSubtBase5SubMenucntr
	mov ah, 09h
	lea dx, calcSubtBase5SubMenu
	int 21h
	call calcSubtBase16SubMenucntr
	mov ah, 09h
	lea dx, calcSubtBase16SubMenu
	int 21h
	call calcSubtBase2SubMenucntr
	mov ah, 09h
	lea dx, calcSubtBase2SubMenu
	int 21h
	call calcSubtBackSubMenucntr
	mov ah, 09h
	lea dx, calcSubtBackSubMenu
	int 21h
	call calcSubtInputSubMenucntr
	mov ah, 09h
	lea dx, calcSubtInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h

	cmp al, 31h
	je CalcSubtBase5LoadCalcMenu
	cmp al, 32h
	je CalcSubtBase16LoadCalcMenu
	cmp al, 33h
	je CalcSubtBase2LoadCalcMenu
	cmp al, 34h
	je CalcSubtBaseLoadCalcMenu
	cmp al, 30h
	jle CalcSubtBaseLoadErrorInput
	cmp al, 35h
	jge CalcSubtBaseLoadErrorInput
	
	CalcSubtBase5LoadCalcMenu:
		jmp calcSubtBase5
	CalcSubtBase16LoadCalcMenu:
		jmp calcSubtBase16
	CalcSubtBase2LoadCalcMenu:
		jmp calcSubtBase2
	CalcSubtBaseLoadCalcMenu:
		jmp calcScreenMenu
	CalcSubtBaseLoadErrorInput:
		jmp errorCalcSubtSubMenuInput

calcSubtSubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcSubtSubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0822h
	int 10h
	ret
calcSubtBase5SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
calcSubtBase16SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
calcSubtBase2SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
calcSubtBackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret
calcSubtInputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0F1Ah
	int 10h
	ret
 
errorcalcSubtSubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcSubtSubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret	
errorCalcSubtSubMenuInput: 
	call errorcalcSubtSubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtSubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase	

calcSubtBase5:;BASE 5 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcSubtBase5SubMenuH1cntr
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuH1
	int 21h
	call calcSubtBase5SubMenuH2cntr
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuH2
	int 21h
	call calcSubtBase5SubMenuMinucntr 
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuMinu ;Minuend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcSubtBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
MinuBase5Input:	
	mov ah, 01h
	int 21h
	call CalcSubtBase5LoadNumChecker
	PUSH AX
	loop MinuBase5Input
	
	call calcSubtBase5SubMenuSubtracntr
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuSubtra ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcSubtBase5Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
SubtraBase5Input:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcSubtBase5LoadNumChecker
	PUSH AX
	loop SubtraBase5Input
	
	call calcSubtBase5SubMenuDiffcntr ;product
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuDiff
	int 21h		
	call calcSubtBase5SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcSubtBase5LoadYNChecker
	
	CalcSubtBase5LoadSubtBaseMenu:
		jmp calcSubtBase
	CalcSubtBase5LoadSubtBase5Menu:
		jmp calcSubtBase5
	CalcSubtBase5LoadNumChecker:
		cmp al, 30h
		jl CalcSubtBase5LoadNumErrorInput2
		cmp al, 34h
		jg CalcSubtBase5LoadNumErrorInput2
		ret
	CalcSubtBase5LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcSubtBase5LoadSubtBase5Menu
		CMP AL, 4EH ;big N
		JE CalcSubtBase5LoadSubtBaseMenu
		CMP AL, 79H ;small y
		JE CalcSubtBase5LoadSubtBase5Menu
		CMP AL, 6EH ;small n
		JE CalcSubtBase5LoadSubtBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcSubtBase5LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcSubtBase5LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcSubtBase5LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcSubtBase5LoadYNErrorInput
		ret
	CalcSubtBase5LoadYNErrorInput:
		jmp errorCalcSubtBase5SubMenuYNInput
	CalcSubtBase5LoadNumErrorInput2:
		jmp errorCalcSubtBase5SubMenuNUMInput
	CalcSubtBase5Load0NumErrorInput:
		cmp al, 30h
		je CalcSubtBase5Load0NumRetInput
		jmp CalcSubtBase5LoadNumErrorInput2
	CalcSubtBase5Load0NumRetInput:
		ret
	
calcSubtBase5SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcSubtBase5SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081Eh
	int 10h
	ret
calcSubtBase5SubMenuMinucntr:
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcSubtBase5SubMenuSubtracntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcSubtBase5SubMenuDiffcntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcSubtBase5SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcSubtBase5SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcSubtBase5SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1215h
	int 10h
	ret

errorCalcSubtBase5SubMenuYNInput: 
	call errorcalcSubtBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase5

errorCalcSubtBase5SubMenuNUMInput: 
	call errorcalcSubtBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase


calcSubtBase16:;BASE 16 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcSubtBase16SubMenuH1cntr
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuH1
	int 21h
	call calcSubtBase16SubMenuH2cntr
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuH2
	int 21h
	call calcSubtBase16SubMenuMinucntr 
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuMinu ;Minu
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcSubtBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
MinuBase16Input:	
	mov ah, 01h
	int 21h
	CALL CalcSubtBase16LoadLetterNumErrorInput
	PUSH AX
	loop MinuBase16Input
	
	call calcSubtBase16SubMenuSubtracntr
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuSubtra ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcSubtBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
SubtraBase16Input:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcSubtBase16LoadLetterNumErrorInput
	PUSH AX
	loop SubtraBase16Input
	
	call calcSubtBase16SubMenuDiffcntr ;product
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuDiff
	int 21h		
	call calcSubtBase16SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcSubtBase16LoadYNChecker
	
	
	CalcSubtBase16LoadSubtBaseMenu:
		jmp calcSubtBase
	CalcSubtBase16LoadSubtBase16Menu:
		jmp calcSubtBase16
	CalcSubtBase16LoadLetterNumErrorInput:
		cmp al, 30h
		jl CalcSubtBase16LoadNumErrorInput2
		cmp al, 39h
		jle CalcSubtBase16Load0NumRetInput
		cmp al, 41h ;A
		jl CalcSubtBase16LoadNumErrorInput2
		cmp al, 46h ;F
		jle CalcSubtBase16Load0NumRetInput
		cmp al, 61h ;a
		jl CalcSubtBase16LoadNumErrorInput2
		cmp al, 66h ;f
		jle CalcSubtBase16Load0NumRetInput
		jmp CalcSubtBase16LoadNumErrorInput2
	CalcSubtBase16LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcSubtBase16LoadSubtBase16Menu
		CMP AL, 4EH ;big N
		JE CalcSubtBase16LoadSubtBaseMenu
		CMP AL, 79H ;small y
		JE CalcSubtBase16LoadSubtBase16Menu
		CMP AL, 6EH ;small n
		JE CalcSubtBase16LoadSubtBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcSubtBase16LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcSubtBase16LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcSubtBase16LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcSubtBase16LoadYNErrorInput
		ret
	CalcSubtBase16LoadYNErrorInput:
		jmp errorCalcSubtBase16SubMenuYNInput
	CalcSubtBase16LoadNumErrorInput2:
		jmp errorCalcSubtBase16SubMenuNUMInput
	CalcSubtBase16Load0NumErrorInput:
		cmp al, 30h
		je CalcSubtBase16Load0NumRetInput
		jmp CalcSubtBase16LoadNumErrorInput2
	CalcSubtBase16Load0NumRetInput:
		ret
	
calcSubtBase16SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcSubtBase16SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081Dh
	int 10h
	ret
calcSubtBase16SubMenuMinucntr:
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcSubtBase16SubMenuSubtracntr:
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcSubtBase16SubMenuDiffcntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcSubtBase16SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcSubtBase16SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcSubtBase16SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1215h
	int 10h
	ret

errorCalcSubtBase16SubMenuYNInput: 
	call errorcalcSubtBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase16

errorCalcSubtBase16SubMenuNUMInput: 
	call errorcalcSubtBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase

calcSubtBase2:;BASE 2 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcSubtBase2SubMenuH1cntr
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuH1
	int 21h
	call calcSubtBase2SubMenuH2cntr
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuH2
	int 21h
	call calcSubtBase2SubMenuMinucntr 
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuMinu ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcSubtBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
MinuBase2Input:	
	mov ah, 01h
	int 21h
	call CalcSubtBase2LoadNumChecker
	PUSH AX
	loop MinuBase2Input
	
	call calcSubtBase2SubMenuSubtracntr
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuSubtra ;Augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcSubtBase2LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
SubtraBase2Input:	
	mov ah, 01h ;second input
	int 21h
	call CalcSubtBase2LoadNumChecker
	PUSH AX
	loop SubtraBase2Input
	
	call calcSubtBase2SubMenuDiffcntr;sum
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuDiff
	int 21h		
	call calcSubtBase2SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcSubtBase2LoadYNChecker
	
	CalcSubtBase2LoadSubtBaseMenu:
		jmp calcSubtBase
	CalcSubtBase2LoadSubtBase2Menu:
		jmp calcSubtBase2
	CalcSubtBase2LoadNumChecker:
		cmp al, 30h
		jl CalcSubtBase2LoadNumErrorInput2
		cmp al, 31h
		jg CalcSubtBase2LoadNumErrorInput2
		ret
	CalcSubtBase2LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcSubtBase2LoadSubtBase2Menu
		CMP AL, 4EH ;big N
		JE CalcSubtBase2LoadSubtBaseMenu
		CMP AL, 79H ;small y
		JE CalcSubtBase2LoadSubtBase2Menu
		CMP AL, 6EH ;small n
		JE CalcSubtBase2LoadSubtBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcSubtBase2LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcSubtBase2LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcSubtBase2LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcSubtBase2LoadYNErrorInput
		ret
	CalcSubtBase2LoadYNErrorInput:
		jmp errorCalcSubtBase2SubMenuYNInput
	CalcSubtBase2LoadNumErrorInput2:
		jmp errorCalcSubtBase2SubMenuNUMInput
	CalcSubtBase2Load0NumErrorInput:
		cmp al, 30h
		je CalcSubtBase2Load0NumRetInput
		jmp CalcSubtBase2LoadNumErrorInput2
	CalcSubtBase2Load0NumRetInput:
		ret
	
calcSubtBase2SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcSubtBase2SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081Eh
	int 10h
	ret
calcSubtBase2SubMenuMinucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcSubtBase2SubMenuSubtracntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcSubtBase2SubMenuDiffcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcSubtBase2SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcSubtBase2SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcSubtBase2SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret

errorCalcSubtBase2SubMenuYNInput: 
	call errorcalcSubtBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase2

errorCalcSubtBase2SubMenuNUMInput: 
	call errorcalcSubtBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcSubtBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase
calcSubtBase endp
	;------------------------------ CALCULATOR MODULO ----------------------------------------;
calcModuloBase proc
calcModuloBase:;Sub Menu after pumili sa Calculator Menu 	
	call clrScreen
	call calcModuloSubMenuH1cntr
	mov ah, 09h
	lea dx, calcModuloSubMenuH1
	int 21h
	call calcModuloSubMenuH2cntr
	mov ah, 09h
	lea dx, calcModuloSubMenuH2
	int 21h
	call calcModuloBase5SubMenucntr
	mov ah, 09h
	lea dx, calcModuloBase5SubMenu
	int 21h
	call calcModuloBase16SubMenucntr
	mov ah, 09h
	lea dx, calcModuloBase16SubMenu
	int 21h
	call calcModuloBase2SubMenucntr
	mov ah, 09h
	lea dx, calcModuloBase2SubMenu
	int 21h
	call calcModuloBackSubMenucntr
	mov ah, 09h
	lea dx, calcModuloBackSubMenu
	int 21h
	call calcModuloInputSubMenucntr
	mov ah, 09h
	lea dx, calcModuloInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h

	cmp al, 31h
	je CalcModuloBase5LoadCalcMenu
	cmp al, 32h
	je CalcModuloBase16LoadCalcMenu
	cmp al, 33h
	je CalcModuloBase2LoadCalcMenu
	cmp al, 34h
	je CalcModuloBaseLoadCalcMenu
	cmp al, 30h
	jle CalcModuloBaseLoadErrorInput
	cmp al, 35h
	jge CalcModuloBaseLoadErrorInput
	
	CalcModuloBase5LoadCalcMenu:
		jmp calcModuloBase5
	CalcModuloBase16LoadCalcMenu:
		jmp calcModuloBase16
	CalcModuloBase2LoadCalcMenu:
		jmp calcModuloBase2
	CalcModuloBaseLoadCalcMenu:
		jmp calcScreenMenu
	CalcModuloBaseLoadErrorInput:
		jmp errorCalcModuloSubMenuInput

calcModuloSubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcModuloSubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0824h
	int 10h
	ret
calcModuloBase5SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
calcModuloBase16SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
calcModuloBase2SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
calcModuloBackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D1Ah
	int 10h
	ret
calcModuloInputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0F1Ah
	int 10h
	ret
 
errorcalcModuloSubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcModuloSubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcModuloSubMenuInput: 
	call errorcalcModuloSubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloSubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase	

calcModuloBase5:;BASE 5 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcModuloBase5SubMenuH1cntr
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuH1
	int 21h
	call calcModuloBase5SubMenuH2cntr
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuH2
	int 21h
	call calcModuloBase5SubMenuDivi1cntr 
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuDivi1 ;Minuend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcModuloBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
Divi1Base5Input:	
	mov ah, 01h
	int 21h
	call CalcModuloBase5LoadNumChecker
	PUSH AX
	loop Divi1Base5Input
	
	call calcModuloBase5SubMenuDivi2cntr
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuDivi2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcModuloBase5Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
Divi2Base5Input:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcModuloBase5LoadNumChecker
	PUSH AX
	loop Divi2Base5Input
	
	call calcModuloBase5SubMenuQuocntr ;product
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuQuo
	int 21h		
	call calcModuloBase5SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcModuloBase5LoadYNChecker
	
	CalcModuloBase5LoadModuloBaseMenu:
		jmp calcModuloBase
	CalcModuloBase5LoadModuloBase5Menu:
		jmp calcModuloBase5
	CalcModuloBase5LoadNumChecker:
		cmp al, 30h
		jl CalcModuloBase5LoadNumErrorInput2
		cmp al, 34h
		jg CalcModuloBase5LoadNumErrorInput2
		ret
	CalcModuloBase5LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcModuloBase5LoadModuloBase5Menu
		CMP AL, 4EH ;big N
		JE CalcModuloBase5LoadModuloBaseMenu
		CMP AL, 79H ;small y
		JE CalcModuloBase5LoadModuloBase5Menu
		CMP AL, 6EH ;small n
		JE CalcModuloBase5LoadModuloBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcModuloBase5LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcModuloBase5LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcModuloBase5LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcModuloBase5LoadYNErrorInput
		ret
	CalcModuloBase5LoadYNErrorInput:
		jmp errorCalcModuloBase5SubMenuYNInput
	CalcModuloBase5LoadNumErrorInput2:
		jmp errorCalcModuloBase5SubMenuNUMInput
	CalcModuloBase5Load0NumErrorInput:
		cmp al, 30h
		je CalcModuloBase5Load0NumRetInput
		jmp CalcModuloBase5LoadNumErrorInput2
	CalcModuloBase5Load0NumRetInput:
		ret
	
calcModuloBase5SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcModuloBase5SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0821h
	int 10h
	ret
calcModuloBase5SubMenuDivi1cntr:
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcModuloBase5SubMenuDivi2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcModuloBase5SubMenuQuocntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcModuloBase5SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcModuloBase5SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcModuloBase5SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcModuloBase5SubMenuYNInput: 
	call errorcalcModuloBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase5

errorCalcModuloBase5SubMenuNUMInput: 
	call errorcalcModuloBase5SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloBase5SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase


calcModuloBase16:;BASE 16 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	call calcModuloBase16SubMenuH1cntr
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuH1
	int 21h
	call calcModuloBase16SubMenuH2cntr
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuH2
	int 21h
	call calcModuloBase16SubMenuDivi1cntr 
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuDivi1 ;Minu
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcModuloBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	mov ah,02h
	mov dl, 2Eh
	int 21h
	mov cl, 03h
Divi1Base16Input:	
	mov ah, 01h
	int 21h
	CALL CalcModuloBase16LoadLetterNumErrorInput
	PUSH AX
	loop Divi1Base16Input
	
	call calcModuloBase16SubMenuDivi2cntr
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuDivi2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcModuloBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
Divi2Base16Input:	
	mov ah, 01h ;second input
	int 21h
	CALL CalcModuloBase16LoadLetterNumErrorInput
	PUSH AX
	loop Divi2Base16Input
	
	call calcModuloBase16SubMenuQuocntr ;product
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuQuo
	int 21h		
	call calcModuloBase16SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcModuloBase16LoadYNChecker
	
	
	CalcModuloBase16LoadModuloBaseMenu:
		jmp calcModuloBase
	CalcModuloBase16LoadModuloBase16Menu:
		jmp calcSubtBase16
	CalcModuloBase16LoadLetterNumErrorInput:
		cmp al, 30h
		jl CalcModuloBase16LoadNumErrorInput2
		cmp al, 39h
		jle CalcModuloBase16Load0NumRetInput
		cmp al, 41h ;A
		jl CalcModuloBase16LoadNumErrorInput2
		cmp al, 46h ;F
		jle CalcModuloBase16Load0NumRetInput
		cmp al, 61h ;a
		jl CalcModuloBase16LoadNumErrorInput2
		cmp al, 66h ;f
		jle CalcModuloBase16Load0NumRetInput
		jmp CalcModuloBase16LoadNumErrorInput2
	CalcModuloBase16LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcModuloBase16LoadModuloBase16Menu
		CMP AL, 4EH ;big N
		JE CalcModuloBase16LoadModuloBaseMenu
		CMP AL, 79H ;small y
		JE CalcModuloBase16LoadModuloBase16Menu
		CMP AL, 6EH ;small n
		JE CalcModuloBase16LoadModuloBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcModuloBase16LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcModuloBase16LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcModuloBase16LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcModuloBase16LoadYNErrorInput
		ret
	CalcModuloBase16LoadYNErrorInput:
		jmp errorCalcModuloBase16SubMenuYNInput
	CalcModuloBase16LoadNumErrorInput2:
		jmp errorCalcModuloBase16SubMenuNUMInput
	CalcModuloBase16Load0NumErrorInput:
		cmp al, 30h
		je CalcModuloBase16Load0NumRetInput
		jmp CalcModuloBase16LoadNumErrorInput2
	CalcModuloBase16Load0NumRetInput:
		ret
	
calcModuloBase16SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcModuloBase16SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0820h
	int 10h
	ret
calcModuloBase16SubMenuDivi1cntr:
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcModuloBase16SubMenuDivi2cntr:
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcModuloBase16SubMenuQuocntr:
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcModuloBase16SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret
 
errorcalcModuloBase16SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcModuloBase16SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcModuloBase16SubMenuYNInput: 
	call errorcalcModuloBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase16

errorCalcModuloBase16SubMenuNUMInput: 
	call errorcalcModuloBase16SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloBase16SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase

calcModuloBase2:;BASE 2 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	
	call calcModuloBase2SubMenuH1cntr
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuH1
	int 21h
	
	call calcModuloBase2SubMenuH2cntr
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuH2
	int 21h
	
	call calcModuloBase2SubMenuDivi1cntr 
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuDivi1 ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcModuloBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	
	mov ah,02h
	mov dl, 2Eh
	int 21h
	
	mov cl, 03h
Divi1Base2Input:	
	mov ah, 01h
	int 21h
	call CalcModuloBase2LoadNumChecker
	PUSH AX
	loop Divi1Base2Input
	
	call calcModuloBase2SubMenuDivi2cntr
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuDivi2 ;Augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcModuloBase2LoadNumErrorInput2
	PUSH AX
	mov ah, 02h
	mov dl, 2Eh
	int 21h
	mov cl, 03
Divi2Base2Input:	
	mov ah, 01h ;second input
	int 21h
	call CalcModuloBase2LoadNumChecker
	PUSH AX
	loop Divi2Base2Input
	
	call calcModuloBase2SubMenuQuocntr;sum
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuQuo
	int 21h		
	call calcModuloBase2SubMenuAgaincntr
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call CalcModuloBase2LoadYNChecker
	
	CalcModuloBase2LoadModuloBaseMenu:
		jmp calcModuloBase
	CalcModuloBase2LoadModuloBase2Menu:
		jmp calcModuloBase2
	CalcModuloBase2LoadNumChecker:
		cmp al, 30h
		jl CalcModuloBase2LoadNumErrorInput2
		cmp al, 31h
		jg CalcModuloBase2LoadNumErrorInput2
		ret
	CalcModuloBase2LoadYNChecker:
		CMP AL, 59H ;big Y
		JE CalcModuloBase2LoadModuloBase2Menu
		CMP AL, 4EH ;big N
		JE CalcModuloBase2LoadModuloBaseMenu
		CMP AL, 79H ;small y
		JE CalcModuloBase2LoadModuloBase2Menu
		CMP AL, 6EH ;small n
		JE CalcModuloBase2LoadModuloBaseMenu
		CMP AL, 59H ;not Y/y
		JnE CalcModuloBase2LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE CalcModuloBase2LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE CalcModuloBase2LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE CalcModuloBase2LoadYNErrorInput
		ret
	CalcModuloBase2LoadYNErrorInput:
		jmp errorCalcModuloBase2SubMenuYNInput
	CalcModuloBase2LoadNumErrorInput2:
		jmp errorCalcModuloBase2SubMenuNUMInput
	CalcModuloBase2Load0NumErrorInput:
		cmp al, 30h
		je CalcModuloBase2Load0NumRetInput
		jmp CalcModuloBase2LoadNumErrorInput2
	CalcModuloBase2Load0NumRetInput:
		ret
	
calcModuloBase2SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
calcModuloBase2SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0821h
	int 10h
	ret
calcModuloBase2SubMenuDivi1cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
calcModuloBase2SubMenuDivi2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
calcModuloBase2SubMenuQuocntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret
calcModuloBase2SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f17h
	int 10h
	ret

errorcalcModuloBase2SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorcalcModuloBase2SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorCalcModuloBase2SubMenuYNInput: 
	call errorcalcModuloBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase2

errorCalcModuloBase2SubMenuNUMInput: 
	call errorcalcModuloBase2SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorcalcModuloBase2SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase
calcModuloBase endp


Calculator endp
	;------------------------------ CONVERSION ----------------------------------------;
Conversion proc
	;------------------------------ CONVERSION MENU ----------------------------------------;
convScreenMenu proc
convScreenMenu: ;start ng CONV menu
	call clrScreen
	call convMenucntr
	mov ah, 09h
	lea dx, convMenu
	int 21h
	
	call convBase7Menucntr
	mov ah, 09h
	lea dx, convBase7Menu
	int 21h
	
	call convBase5Menucntr
	mov ah, 09h
	lea dx, convBase5Menu
	int 21h
	
	call convBase2Menucntr
	mov ah, 09h
	lea dx, convBase2Menu
	int 21h
	
	call convBackSubMenucntr
	mov ah, 09h
	lea dx, convBackSubMenu
	int 21h
	
	call convMenuInputcntr
	mov ah, 09h
	lea dx, convMenuInput
	int 21h


	mov ah, 01h
	int 21h
	cmp al, 31h
	je convLoadBase7
	cmp al, 32h
	je convLoadBase5
	cmp al, 33h
	je convLoadBase2
	cmp al, 34h
	je convLoadHomeScreen

	cmp al, 30h
	jle convLoadErrorInput
	cmp al, 35h
	jge convLoadErrorInput
	
	convLoadBase7:
		jmp convBase7SubMenuScreen
	convLoadBase5:
		JMP convBase5SubMenuScreen
	convLoadBase2:
		JMP convBase2SubMenuScreen
	convLoadHomeScreen:
		JMP HomeScreenMenu
	convLoadErrorInput:
		JMP errorconvMenuInput

convMenucntr : ;calc menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
	
convBase7Menucntr :
	mov ah,02h
	mov bh,00h
	mov dx,091Ah
	int 10h
	ret
	
convBase5Menucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
	
convBase2Menucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
	
convBackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
	
convMenuInputcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0E1Ah
	int 10h
	ret
		
errorconvMenuInputcntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvMenuInputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvMenuInput: 
	call errorconvMenuInputcntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvMenuInputcntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convScreenMenu
convScreenMenu endp		

convBase7SubMenuScreen proc
convBase7SubMenuScreen: ;start ng CONV menu
	call clrScreen
	
	call convBase7SubMenuH1cntr
	mov ah, 09h
	lea dx, convBase7SubMenuH1 ; Conversion
	int 21h
	
	call convBase7SubMenuH2cntr
	mov ah, 09h
	lea dx, convBase7SubMenuH2 ;Base 7
	int 21h
	
	call convBase7to4SubMenucntr
	mov ah, 09h
	lea dx, convBase7to4SubMenu ; base 7 to 4
	int 21h
	
	call convBase7BackSubMenucntr
	mov ah, 09h
	lea dx, convBase7BackSubMenu ; back to conversion menu
	int 21h
	
	call convBase7InputSubMenucntr
	mov ah, 09h
	lea dx, convBase7InputSubMenu ;Enter your choice
	int 21h

	
	mov ah, 01h
	int 21h
	cmp al, 31h
	je convBase7LoadBase7to4
	cmp al, 32h
	je convBase7LoadconvScreen

	cmp al, 30h
	jle convBase7LoadErrorInput
	cmp al, 35h
	jge convBase7LoadErrorInput
	

	convBase7LoadBase7to4:
		jmp convBase7to4SubMenuScreen
	convBase7LoadconvScreen:
		jmp convScreenMenu
	convBase7LoadErrorInput:
		jmp errorconvBase7Input

convBase7SubMenuH1cntr : ;calc menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
	
convBase7SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0824h
	int 10h
	ret
	
convBase7to4SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
	
convBase7BackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
	
convBase7InputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
	
	
errorconvBase7Inputcntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvBase7Inputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvBase7Input: 
	call errorconvBase7Inputcntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase7Inputcntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convScreenMenu
	
convBase7to4SubMenuScreen proc
convBase7to4SubMenuScreen:;BASE 7 Sub Menu after pumili ng base sa CONVERSION submenu 
	call clrScreen
	
	call convBase7to4SubMenuH1cntr
	mov ah, 09h
	lea dx, convBase7to4SubMenuH1
	int 21h
	
	call convBase7to4SubMenuH2cntr
	mov ah, 09h
	lea dx, convBase7to4SubMenuH2
	int 21h
	
	call convBase7to4InputSubMenucntr 
	mov ah, 09h
	lea dx, convBase7to4InputSubMenu ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call convBase7to4Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	
	mov ah,02h
	mov dl, 2Eh
	int 21h
	
	mov cl, 03h
convBase7to4Input:	
	mov ah, 01h
	int 21h
	call convBase7to4LoadNumChecker
	PUSH AX
	loop convBase7to4Input
	
	call convBase7to4OutputSubMenucntr;sum
	mov ah, 09h
	lea dx, convBase7to4OutputSubMenu
	int 21h		
	
	call convBase7to4SubMenuAgaincntr
	mov ah, 09h
	lea dx, convBase7to4SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call convBase7to4LoadYNChecker
	
	convBase7to4LoadBase7Menu:
		jmp convBase7SubMenuScreen
	convBase7to4LoadBase7to4Menu:
		jmp convBase7to4SubMenuScreen
	convBase7to4LoadNumChecker:
		cmp al, 30h
		jl convBase7to4LoadNumErrorInput
		cmp al, 36h
		jg convBase7to4LoadNumErrorInput
		ret
	convBase7to4LoadYNChecker:
		CMP AL, 59H ;big Y
		JE convBase7to4LoadBase7to4Menu
		CMP AL, 4EH ;big N
		JE convBase7to4LoadBase7Menu
		CMP AL, 79H ;small y
		JE convBase7to4LoadBase7to4Menu
		CMP AL, 6EH ;small n
		JE convBase7to4LoadBase7Menu
		CMP AL, 59H ;not Y/y
		JnE convBase7to4LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE convBase7to4LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE convBase7to4LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE convBase7to4LoadYNErrorInput
		ret
	convBase7to4LoadYNErrorInput:
		jmp errorconvBase7to4SubMenuYNInput
	convBase7to4LoadNumErrorInput:
		jmp errorconvBase7to4SubMenuNUMInput
	convBase7to4Load0NumErrorInput:
		cmp al, 30h
		je convBase7to4Load0NumRetInput
		jmp convBase7to4LoadNumErrorInput
	convBase7to4Load0NumRetInput:
		ret
	
convBase7to4SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
convBase7to4SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081Eh
	int 10h
	ret
convBase7to4InputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
convBase7to4OutputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
convBase7to4SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret

errorconvBase7to4SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvBase7to4SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvBase7to4SubMenuYNInput: 
	call errorconvBase7to4SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase7to4SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convBase7SubMenuScreen

errorconvBase7to4SubMenuNUMInput: 
	call errorconvBase7to4SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase7to4SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convBase7SubMenuScreen
convBase7to4SubMenuScreen endp
		
convBase7SubMenuScreen endp		


convBase5SubMenuScreen proc
convBase5SubMenuScreen: ;start ng CONV menu
	call clrScreen
	
	call convBase5SubMenuH1cntr
	mov ah, 09h
	lea dx, convBase5SubMenuH1 ; Conversion
	int 21h
	
	call convBase5SubMenuH2cntr
	mov ah, 09h
	lea dx, convBase5SubMenuH2 ;Base 5
	int 21h
	
	call convBase5to10SubMenucntr
	mov ah, 09h
	lea dx, convBase5to10SubMenu ; base 5 to 10
	int 21h
	
	call convBase5BackSubMenucntr
	mov ah, 09h
	lea dx, convBase5BackSubMenu ; back to conversion menu
	int 21h
	
	call convBase5InputSubMenucntr
	mov ah, 09h
	lea dx, convBase5InputSubMenu ;Enter your choice
	int 21h

	
	mov ah, 01h
	int 21h
	cmp al, 31h
	je convBase5LoadBase5to10
	cmp al, 32h
	je convBase5LoadconvScreen

	cmp al, 30h
	jle convBase5LoadErrorInput
	cmp al, 35h
	jge convBase5LoadErrorInput
	

	convBase5LoadBase5to10:
		jmp convBase5to10SubMenuScreen
	convBase5LoadconvScreen:
		jmp convScreenMenu
	convBase5LoadErrorInput:
		jmp errorconvBase5Input

convBase5SubMenuH1cntr : ;calc menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
	
convBase5SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0824h
	int 10h
	ret
	
convBase5to10SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
	
convBase5BackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
	
convBase5InputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
	
	
errorconvBase5Inputcntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvBase5Inputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvBase5Input: 
	call errorconvBase7Inputcntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase5Inputcntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convScreenMenu
	
convBase5to10SubMenuScreen proc
convBase5to10SubMenuScreen:;BASE 5 Sub Menu after pumili ng base sa CONVERSION submenu 
	call clrScreen
	
	call convBase5to10SubMenuH1cntr
	mov ah, 09h
	lea dx, convBase5to10SubMenuH1
	int 21h
	
	call convBase5to10SubMenuH2cntr
	mov ah, 09h
	lea dx, convBase5to10SubMenuH2
	int 21h
	
	call convBase5to10InputSubMenucntr 
	mov ah, 09h
	lea dx, convBase5to10InputSubMenu ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call convBase5to10Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	
	mov ah,02h
	mov dl, 2Eh
	int 21h
	
	mov cl, 03h
convBase5to10Input:	
	mov ah, 01h
	int 21h
	call convBase5to10LoadNumChecker
	PUSH AX
	loop convBase5to10Input
	
	call convBase5to10OutputSubMenucntr;sum
	mov ah, 09h
	lea dx, convBase5to10OutputSubMenu
	int 21h		
	
	call convBase5to10SubMenuAgaincntr
	mov ah, 09h
	lea dx, convBase5to10SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call convBase5to10LoadYNChecker
	
	convBase5to10LoadBase5Menu:
		jmp convBase5SubMenuScreen
	convBase5to10LoadBase5to10Menu:
		jmp convBase5to10SubMenuScreen
	convBase5to10LoadNumChecker: ;Checker if input is less than 0 or greater than 4 
		cmp al, 30h
		jl convBase5to10LoadNumErrorInput
		cmp al, 34h
		jg convBase5to10LoadNumErrorInput
		ret
	convBase5to10LoadYNChecker:
		CMP AL, 59H ;big Y
		JE convBase5to10LoadBase5to10Menu
		CMP AL, 4EH ;big N
		JE convBase5to10LoadBase5Menu
		CMP AL, 79H ;small y
		JE convBase5to10LoadBase5to10Menu
		CMP AL, 6EH ;small n
		JE convBase5to10LoadBase5Menu
		CMP AL, 59H ;not Y/y
		JnE convBase5to10LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE convBase5to10LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE convBase5to10LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE convBase5to10LoadYNErrorInput
		ret
	convBase5to10LoadYNErrorInput:
		jmp errorconvBase5to10SubMenuYNInput
	convBase5to10LoadNumErrorInput:
		jmp errorconvBase5to10SubMenuNUMInput
	convBase5to10Load0NumErrorInput:
		cmp al, 30h
		je convBase5to10Load0NumRetInput
		jmp convBase5to10LoadNumErrorInput
	convBase5to10Load0NumRetInput:
		ret
	
convBase5to10SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
convBase5to10SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081Eh
	int 10h
	ret
convBase5to10InputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
convBase5to10OutputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
convBase5to10SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret

errorconvBase5to10SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvBase5to10SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvBase5to10SubMenuYNInput: 
	call errorconvBase5to10SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase5to10SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convBase5SubMenuScreen

errorconvBase5to10SubMenuNUMInput: 
	call errorconvBase5to10SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase5to10SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convBase5SubMenuScreen
convBase5to10SubMenuScreen endp
		
convBase5SubMenuScreen endp		


convBase2SubMenuScreen proc
convBase2SubMenuScreen: ;start ng CONV menu
	call clrScreen
	
	call convBase2SubMenuH1cntr
	mov ah, 09h
	lea dx, convBase2SubMenuH1 ; Conversion
	int 21h
	
	call convBase2SubMenuH2cntr
	mov ah, 09h
	lea dx, convBase2SubMenuH2 ;Base 2
	int 21h
	
	call convBase2to8SubMenucntr
	mov ah, 09h
	lea dx, convBase2to8SubMenu ; base 2 to 10
	int 21h
	
	call convBase2BackSubMenucntr
	mov ah, 09h
	lea dx, convBase2BackSubMenu ; back to conversion menu
	int 21h
	
	call convBase2InputSubMenucntr
	mov ah, 09h
	lea dx, convBase2InputSubMenu ;Enter your choice
	int 21h

	
	mov ah, 01h
	int 21h
	cmp al, 31h
	je convBase2LoadBase2to8
	cmp al, 32h
	je convBase2LoadconvScreen

	cmp al, 30h
	jle convBase2LoadErrorInput
	cmp al, 35h
	jge convBase2LoadErrorInput
	

	convBase2LoadBase2to8:
		jmp convBase2to8SubMenuScreen
	convBase2LoadconvScreen:
		jmp convScreenMenu
	convBase2LoadErrorInput:
		jmp errorconvBase5Input

convBase2SubMenuH1cntr : ;calc menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
	
convBase2SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0824h
	int 10h
	ret
	
convBase2to8SubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A1Ah
	int 10h
	ret
	
convBase2BackSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B1Ah
	int 10h
	ret
	
convBase2InputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0C1Ah
	int 10h
	ret
	
	
errorconvBase2Inputcntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvBase2Inputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvBase2Input: 
	call errorconvBase2Inputcntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase2Inputcntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convScreenMenu
	
convBase2to8SubMenuScreen proc
convBase2to8SubMenuScreen:;BASE 2 Sub Menu after pumili ng base sa CONVERSION submenu 
	call clrScreen
	
	call convBase2to8SubMenuH1cntr
	mov ah, 09h
	lea dx, convBase2to8SubMenuH1
	int 21h
	
	call convBase2to8SubMenuH2cntr
	mov ah, 09h
	lea dx, convBase2to8SubMenuH2
	int 21h
	
	call convBase2to8InputSubMenucntr 
	mov ah, 09h
	lea dx, convBase2to8InputSubMenu ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call convBase2to8Load0NumErrorInput ;CHECKER NG 1ST INPUT
	PUSH AX
	
	mov ah,02h
	mov dl, 2Eh
	int 21h
	
	mov cl, 03h
convBase2to8Input:	
	mov ah, 01h
	int 21h
	call convBase2to8LoadNumChecker
	PUSH AX
	loop convBase2to8Input
	
	call convBase2to8OutputSubMenucntr;sum
	mov ah, 09h
	lea dx, convBase2to8OutputSubMenu
	int 21h		
	
	call convBase2to8SubMenuAgaincntr
	mov ah, 09h
	lea dx, convBase2to8SubMenuAgain ;use again
	int 21h
	MOV AH, 01H
	int 21h
	call convBase2to8LoadYNChecker
	
	convBase2to8LoadBase2Menu:
		jmp convBase2SubMenuScreen
	convBase2to8LoadBase2to8Menu:
		jmp convBase2to8SubMenuScreen
	convBase2to8LoadNumChecker: ;Checker if input is 0 or 1 
		cmp al, 30h
		jl convBase2to8LoadNumErrorInput
		cmp al, 31h
		jg convBase2to8LoadNumErrorInput
		ret
	convBase2to8LoadYNChecker:
		CMP AL, 59H ;big Y
		JE convBase2to8LoadBase2to8Menu
		CMP AL, 4EH ;big N
		JE convBase2to8LoadBase2Menu
		CMP AL, 79H ;small y
		JE convBase2to8LoadBase2to8Menu
		CMP AL, 6EH ;small n
		JE convBase2to8LoadBase2Menu
		CMP AL, 59H ;not Y/y
		JnE convBase2to8LoadYNErrorInput
		CMP AL, 4EH ;not N/n
		JnE convBase2to8LoadYNErrorInput
		CMP AL, 79H ;not Y/y
		JnE convBase2to8LoadYNErrorInput
		CMP AL, 6EH ;not N/n
		JnE convBase2to8LoadYNErrorInput
		ret
	convBase2to8LoadYNErrorInput:
		jmp errorconvBase2to8SubMenuYNInput
	convBase2to8LoadNumErrorInput:
		jmp errorconvBase2to8SubMenuNUMInput
	convBase2to8Load0NumErrorInput:
		cmp al, 30h
		je convBase2to8Load0NumRetInput
		jmp convBase2to8LoadNumErrorInput
	convBase2to8Load0NumRetInput:
		ret
	
convBase2to8SubMenuH1cntr : ;calc mul base menu 
	mov ah,02h
	mov bh,00h
	mov dx,071Eh
	int 10h
	ret
convBase2to8SubMenuH2cntr :
	mov ah,02h
	mov bh,00h
	mov dx,081Eh
	int 10h
	ret
convBase2to8InputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A12h
	int 10h
	ret
convBase2to8OutputSubMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B14h
	int 10h
	ret
convBase2to8SubMenuAgaincntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D19h
	int 10h
	ret

errorconvBase2to8SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h
	mov bh,00h
	mov dx,111fh
	int 10h
	ret
errorconvBase2to8SubMenucntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1218h
	int 10h
	ret
errorconvBase2to8SubMenuYNInput: 
	call errorconvBase2to8SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase2to8SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convBase2SubMenuScreen

errorconvBase2to8SubMenuNUMInput: 
	call errorconvBase2to8SubMenucntr
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	call errorconvBase2to8SubMenucntr1
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp convBase2SubMenuScreen
convBase2to8SubMenuScreen endp
		
convBase2SubMenuScreen endp		

Conversion endp	
	;------------------------------    EXIT   ----------------------------------------;
exit proc

exitSwitch:
	call errorHomeExitInputcntr 
	MOV AH, 09H
	LEA DX, homeExitMsg
	INT 21H
	
	MOV AH, 01H
	INT 21H
	
	CMP AL, 59H ;big Y
	JE ExitYes
	CMP AL, 4EH ;big N
	JE ExitNo
	CMP AL, 79H ;small y
	JE ExitYes
	CMP AL, 6EH ;small n
	JE ExitNo
	CMP AL, 59H ;not Y/y
	JnE ExitInvalidInput
	CMP AL, 4EH ;not N/n
	JnE ExitInvalidInput
	CMP AL, 79H ;not Y/y
	JnE ExitInvalidInput
	CMP AL, 6EH ;not N/n
	JnE ExitInvalidInput
	
	
ExitYes:
	call clrScreen
	call errorHomeTYMsgcntr
	mov ah, 09h
	lea dx, homeTYMsg
	int 21h
    mov ah, 4ch
    int 21h
	

ExitNo:
	jmp HomeScreenMenu
	
ExitInvalidInput:
	call errorHomeInput
	
errorHomeExitInputcntr : ;center alignment ng error messages sa exit menu

	mov ah,02h
	mov bh,00h
	mov dx,0f10h
	int 10h
	ret
	
errorHomeTYMsgcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0a15h
	int 10h
	ret

	
exit endp
end main
