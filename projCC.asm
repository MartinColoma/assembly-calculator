.model small
.stack 100h
.data
	;-------------- MAIN MENU STRINGS --------------;
	homeMenu 					db 	"MAIN MENU$" 
	homeCalc 					db  "[1] Calculator$" 
	homeConv					db  "[2] Conversion$"
	homeExit					db  "[3] Exit$" 
	homeInput					db  "Enter your choice: $"
	;-------------- EXIT MENU STRINGS --------------;
	homeExitMsg					db  "Are you sure you want to exit this program [Y/N]: $"
	homeTYMsg					db  "Thank you for using this program.$"
	;-------------- CALCULATOR OPERATORS SUBMENU --------------;
	calcMenu 					db 	"CALCULATOR MENU$" 
	calcMul						db  "[1] Multiplication$"
	calcDiv 					db  "[2] Division$"
	calcAdd 					db  "[3] Addition$"
	calcSubt 					db  "[4] Subtraction$"
	calcModulo					db  "[5] Modulo$"
	calcBack					db  "[6] Back to Main Menu$"
	calcInput 					db  "Enter your choice: $"
	;-------------- CALCULATOR MULTIPLICATION SUBMENU BASES --------------;	
	calcMulSubMenuH1 			db 	"CALCULATOR SUBMENU$" 
	calcMulSubMenuH2 			db  "Multiplication$"
	calcMulBase5SubMenu 		db  "[1] Base 05$"
	calcMulBase16SubMenu 		db  "[2] Base 16$"
	calcMulBase2SubMenu 		db  "[3] Base 02$"
	calcMulBackSubMenu      	db  "[4] Back to Calculator Menu$"
	calcMulInputSubMenu			db  "Enter your choice: $"
	;BASE 5
	calcMulBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" 
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
	calcMulBase2SubMenuAgain    db  "Use operation again [Y/N]: $" 
	;-------------- CALCULATOR DIVISON SUBMENU BASES --------------;
	calcDivSubMenuH1 			db 	"CALCULATOR SUBMENU$" 
	calcDivSubMenuH2 			db  "Division$"
	calcDivBase5SubMenu 		db  "[1] Base 05$"
	calcDivBase16SubMenu 		db  "[2] Base 16$"
	calcDivBase2SubMenu 		db  "[3] Base 02$"
	calcDivBackSubMenu      	db  "[4] Back to Calculator Menu$"
	calcDivInputSubMenu			db   "Enter your choice: $"
	;BASE 5
	calcDivBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" 
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
	calcDivBase2SubMenuAgain    db  "Use operation again [Y/N]: $" 
	;-------------- CALCULATOR ADDITION SUBMENU BASES --------------;
	calcAddSubMenuH1 			db 	"CALCULATOR SUBMENU$" 
	calcAddSubMenuH2 			db  "Addition$"
	calcAddBase5SubMenu 		db  "[1] Base 05$"
	calcAddBase16SubMenu 		db  "[2] Base 16$"
	calcAddBase2SubMenu 		db  "[3] Base 02$"
	calcAddBackSubMenu      	db  "[4] Back to Calculator Menu$"
	calcAddInputSubMenu			db   "Enter your choice: $"
	;BASE 5
	calcAddBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" 
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
	calcAddBase2SubMenuAgain    db  "Use operation again [Y/N]: $" 
	;-------------- CALCULATOR SUBTRACTION SUBMENU BASES --------------;
	calcSubtSubMenuH1 			db 	"CALCULATOR SUBMENU$" 
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
	calcSubtBase2SubMenuAgain   db  "Use operation again [Y/N]: $" 
	;-------------- CALCULATOR MODULO SUBMENU BASES --------------;
	calcModuloSubMenuH1 			db 	"CALCULATOR SUBMENU$" 
	calcModuloSubMenuH2 			db  "Modulo$"
	calcModuloBase5SubMenu 			db  "[1] Base 05$"
	calcModuloBase16SubMenu 		db  "[2] Base 16$"
	calcModuloBase2SubMenu 			db  "[3] Base 02$"
	calcModuloBackSubMenu      		db  "[4] Back to Calculator Menu$"
	calcModuloInputSubMenu			db   "Enter your choice: $"
	;BASE 5
	calcModuloBase5SubMenuH1 		db 	"CALCULATOR SUBMENU$" 
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
	calcModuloBase2SubMenuAgain    	db  "Use operation again [Y/N]: $" 
	;-------------- CONVERSION SUBMENU --------------;    
	convMenu 					db "CONVERSION MENU$"
	convBase7Menu				db "[1] Base 07$"  
	convBase5Menu				db "[2] Base 05$"   
	convBase2Menu 				db "[3] Base 02$" 
	convBackSubMenu				db "[4] Back to Main Menu$"
	convMenuInput 				db "Enter your choice: $"
	;-------------- CONVERSION SUBMENU BASES--------------;    
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
	;-------------- ERROR STRINGS --------------;    
	errorMsg 					db "Invalid Input.$"
	errorKey 					db "Press any KEY to try again.$"
.code
main proc
    mov ax, @data
    mov ds, ax
	jmp HomeScreenMenu
	clrScreen : ;clear and change of txt & bg color
	mov ax,0600h
	mov bh,70h
	mov cx,0000h
	mov dx,404fh
	int 10h
	mov bh,00h
	ret
main endp
	;-------------- MAIN MENU --------------;
Home proc
HomeScreenMenu: ;Start of Main Menu
	call clrScreen
	mov ah,02h
	mov dx,071Fh
	int 10h
	mov ah, 09h
	lea dx, homeMenu
	int 21h
	mov ah,02h
	mov dx,091Ah
	int 10h
	mov ah, 09h
	lea dx, homeCalc
	int 21h
	mov ah,02h
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, homeConv
	int 21h
	mov ah,02h
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, homeExit
	int 21h	
	mov ah,02h
	mov dx,0D1Ah
	int 10h
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
errorHomeInput:
	mov ah,02h
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h
	mov ah,02h
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp HomeScreenMenu
	ret
Home endp
	;-------------- CALCULATOR --------------;
Calculator proc	
	;-------------- CALCULATOR MENU --------------;
calcScreenMenu proc
calcScreenMenu: ;start ng calcu menu
	call clrScreen
	mov ah,02h
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcMenu
	int 21h	
	mov ah,02h
	mov dx,091Ah
	int 10h
	mov ah, 09h
	lea dx, calcMul
	int 21h	
	mov ah,02h
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, calcDiv
	int 21h	
	mov ah,02h
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, calcAdd
	int 21h	
	mov ah,02h
	mov dx,0C1Ah
	int 10h
	mov ah, 09h
	lea dx, calcSubt
	int 21h	
	mov ah,02h
	mov dx,0D1Ah
	int 10h
	mov ah, 09h
	lea dx, calcModulo
	int 21h
	mov ah,02h
	mov dx,0E1Ah
	int 10h
	mov ah, 09h
	lea dx, calcBack
	int 21h
	mov ah,02h
	mov dx,101Ah
	int 10h
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
errorCalcMenuInput: 
	mov ah,02h
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcScreenMenu
calcScreenMenu endp		
	;-------------- CALCULATOR MULTIPLICATION --------------;
calcMulBase proc
calcMulBase:;Multiplication Sub Menu after pumili ng operator sa Calculator Menu 	
	call clrScreen	
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcMulSubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0820h
	int 10h
	mov ah, 09h
	lea dx, calcMulSubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, calcMulBase5SubMenu
	int 21h
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, calcMulBase16SubMenu
	int 21h
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	mov ah, 09h
	lea dx, calcMulBase2SubMenu
	int 21h
	mov ah,02h	
	mov dx,0D1Ah
	int 10h
	mov ah, 09h
	lea dx, calcMulBackSubMenu
	int 21h
	mov ah,02h	
	mov dx,0F1Ah
	int 10h
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
errorCalcMulSubMenuInput: 
	mov ah,02h		
	mov dx,111Ch
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase	
calcMulBase5:;BASE 5 Sub Menu after pumili ng base sa calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcMulBase5SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081ch
	int 10h
	mov ah, 09h
	lea dx, calcMulBase5SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase5SubMenuMulti1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input (0) 
	int 21h
	call CalcMulBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcMulBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcMulBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcMulBase5LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase5SubMenuMulti2 ;multiplier
	int 21h
	mov ah, 01h ;2ND input (0) 
	int 21h
	cmp al, 30h
	JnE CalcMulBase5LoadNumErrorInput2
	mov ah, 02h
	mov dl, 2Eh ; dot ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcMulBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcMulBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcMulBase5LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase5SubMenuProduct
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcMulBase5LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcMulBase5SubMenuYNInput: 
	mov ah,02h		
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase5
errorCalcMulBase5SubMenuNUMInput: 
	mov ah,02h		
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase
calcMulBase16:;BASE 16 Sub Menu after pumili ng base sa calcu
	call clrScreen	
	mov ah,02h	
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcMulBase16SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081ch
	int 10h
	mov ah, 09h
	lea dx, calcMulBase16SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase16SubMenuMulti1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input (0) 
	int 21h
	call CalcMulBase16Load0NumErrorInput
	mov ah,02h
	mov dl, 2Eh ; dot ;dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcMulBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcMulBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcMulBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase16SubMenuMulti2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcMulBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcMulBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcMulBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcMulBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase16SubMenuProduct
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	jmp CalcMulBase16LoadNumErrorInput2
CalcMulBase16LoadYNChecker:
	CMP AL, 59H ;big Y
	JE CalcMulBase16LoadMulBase5Menu
	CMP AL, 4EH ;big N
	JE CalcMulBase16LoadMulBaseMenu
	CMP AL, 59H ;not Y
	JnE CalcMulBase16LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcMulBase16SubMenuYNInput: 
	mov ah,02h		
	mov dx,111Ch
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase16
errorCalcMulBase16SubMenuNUMInput: 
	mov ah,02h		
	mov dx,111Ch
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase
calcMulBase2:;BASE 2 Sub Menu after pumili ng base sa calcu
	call clrScreen
	mov ah,02h	
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcMulBase2SubMenuH1
	int 21h
	mov ah,02h
	mov dx,081ch
	int 10h
	mov ah, 09h
	lea dx, calcMulBase2SubMenuH2
	int 21h
	mov ah,02h
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase2SubMenuMulti1 ;Multiplicand
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcMulBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcMulBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcMulBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcMulBase2LoadNumChecker
	;insert computation process here
	mov ah,02h
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase2SubMenuMulti2 ;multiplier
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcMulBase2LoadNumErrorInput2
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcMulBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcMulBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcMulBase2LoadNumChecker
	;insert computation process here	
	mov ah,02h
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcMulBase2SubMenuProduct
	int 21h	
	;put the answer here	
	mov ah,02h
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcMulBase2LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcMulBase2SubMenuYNInput: 
	mov ah, 02h	
	mov dx,	111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase2
errorCalcMulBase2SubMenuNUMInput: 
	mov ah, 02h	
	mov dx,	111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcMulBase
calcMulBase endp	
	;-------------- CALCULATOR DIVISION --------------;
calcDivBase proc
calcDivBase:;Division Sub Menu after pumili ng operator sa Calculator Menu 	
	call clrScreen
	mov ah,02h	
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcDivSubMenuH1
	int 21h
	mov ah,02h
	mov dx,0823h
	int 10h
	mov ah, 09h
	lea dx, calcDivSubMenuH2
	int 21h
	mov ah,02h
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, calcDivBase5SubMenu
	int 21h
	mov ah,02h
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, calcDivBase16SubMenu
	int 21h
	mov ah,02h
	mov dx,0C1Ah
	int 10h
	mov ah, 09h
	lea dx, calcDivBase2SubMenu
	int 21h
	mov ah,02h
	mov dx,0D1Ah
	int 10h
	mov ah, 09h
	lea dx, calcDivBackSubMenu
	int 21h
	mov ah,02h
	mov dx,0F1Ah
	int 10h
	mov ah, 09h
	lea dx, calcDivInputSubMenu
	int 21h	
	mov ah, 01h ;Input
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
errorCalcDivSubMenuInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase	
calcDivBase5:;BASE 5 Sub Menu after pumili ng base sa calcu
	call clrScreen
	mov ah,02h	
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcDivBase5SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0820h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase5SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase5SubMenuDivi1 ;Dividend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcDivBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcDivBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcDivBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcDivBase5LoadNumChecker
	;insert computation process here
	mov ah,02h	;centerscreen
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase5SubMenuDivi2 ;Divisor
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcDivBase5LoadNumErrorInput2
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcDivBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcDivBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcDivBase5LoadNumChecker
	;insert computation process here	
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase5SubMenuQuo
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcDivBase5LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcDivBase5SubMenuYNInput: 
	mov ah,02h		
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase5
errorCalcDivBase5SubMenuNUMInput: 
	mov ah,02h		
	mov dx,111fh
	int 10h	
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase
calcDivBase16:;BASE 16 Sub Menu after pumili ng base sa calcu
	call clrScreen
	mov ah,02h	
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcDivBase16SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081fh
	int 10h
	mov ah, 09h
	lea dx, calcDivBase16SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase16SubMenuDivi1 ;Dividend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcDivBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcDivBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcDivBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcDivBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase16SubMenuDivi2 ;Divisor
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcDivBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcDivBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcDivBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcDivBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase16SubMenuQuo
	int 21h	
	;put the answer here	
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	jmp CalcDivBase16LoadNumErrorInput2
CalcDivBase16LoadYNChecker:
	CMP AL, 59H ;big Y
	JE CalcDivBase16LoadDivBase16Menu
	CMP AL, 4EH ;big N
	JE CalcDivBase16LoadDivBaseMenu
	CMP AL, 59H ;not Y
	JnE CalcDivBase16LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcDivBase16SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase16
errorCalcDivBase16SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase
calcDivBase2:;BASE 2 Sub Menu after pumili ng base sa calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcDivBase2SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0820h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase2SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase2SubMenuDivi1 ;Dividend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcDivBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcDivBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcDivBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcDivBase2LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase2SubMenuDivi2 ;Divisor
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcDivBase2LoadNumErrorInput2
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcDivBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcDivBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcDivBase2LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcDivBase2SubMenuQuo
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcDivBase2LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorcalcDivBase2SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorcalcDivBase2SubMenucntr1 :
	mov ah,02h	
	mov dx,1218h
	int 10h
	ret
errorCalcDivBase2SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase2
errorCalcDivBase2SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcDivBase
calcDivBase endp	
	;-------------- CALCULATOR ADDITION --------------;
calcAddBase proc
calcAddBase:;Addition Sub Menu after pumili ng operation sa Calculator Menu 	
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcAddSubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0823h
	int 10h
	mov ah, 09h
	lea dx, calcAddSubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, calcAddBase5SubMenu
	int 21h
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, calcAddBase16SubMenu
	int 21h
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	mov ah, 09h
	lea dx, calcAddBase2SubMenu
	int 21h
	mov ah,02h	
	mov dx,0D1Ah
	int 10h
	mov ah, 09h
	lea dx, calcAddBackSubMenu
	int 21h
	mov ah,02h	
	mov dx,0F1Ah
	int 10h
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
errorCalcAddSubMenuInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase	
calcAddBase5:;BASE 5 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcAddBase5SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0820h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase5SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase5SubMenuAddend ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcAddBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcAddBase5LoadNumChecker
	sub al,30h
	mov ch,al
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcAddBase5LoadNumChecker
	sub al,30h
	mov cl,al
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcAddBase5LoadNumChecker
	sub al,30h
	mov bl,al
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase5SubMenuAugend ;augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE Input2Error2Base5
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h	
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcAddBase5LoadNumChecker
	sub al,30h
	mov ah,ch
	push ax
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcAddBase5LoadNumChecker
	sub al,30h
	mov ah,cl
	push ax
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcAddBase5LoadNumChecker
	sub al,30h
	mov ah,bl
	push ax
	;insert computation process here	
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase5SubMenuSum
	int 21h
	;put the answer here
	 ;process
	mov bx,0000h
	mov cx,0000h
	mov dx,0000h
    pop bx
    add bh,bl
    cmp bh,04h
    jg Base5Div
    add bh,30h
    mov ch,bh 
    jmp SecondPartb5
Input2Error2Base5:
	jmp CalcAddBase5LoadNumErrorInput2
Base5Div:
    mov ax,0000h
    mov al,bh
    mov bl,05h
    div bl
    mov ch,ah
    add ch,30h 
    mov dh,al  
SecondPartb5: ;
    pop bx
    add bh,bl
    add bh,dh
    cmp bh,04h
    jg Base5Div2
    add bh,30h
    mov cl,bh 
    jmp ThirdPartb5
Base5Div2:
    mov ax,0000h
    mov al,bh
    mov bl,05h
    div bl
    mov cl,ah
    add cl,30h
    mov dh,al  
ThirdPartb5: 
    pop bx
    add bh,bl
    add bh,dh
    cmp bh,04h
    jg Base5Div3
    add bh,30h
    mov dl,bh
    jmp NoQuotientb5
Base5Div3:
    mov ax,0000h
    mov al,bh
    mov bl,05h
    div bl
    mov bh,ah
    add bh,30h 
    mov bl,al  
    jmp Quotientb5
NoQuotientb5:
    mov ah,02h
    mov dl,30h
    int 21h
    mov dl,2Eh
    int 21h
    mov dl,bh
    int 21h
    mov dl,cl
    int 21h
    mov dl,ch
    int 21h
    jmp ReuseBase5
Quotientb5:
    mov ah,02h
    mov dl,bl 
    add dl,30h
    int 21h
    mov dl,2Eh
    int 21h
    mov dl,bh
    int 21h
    mov dl,cl
    int 21h
    mov dl,ch
    int 21h
ReuseBase5:
	mov bh,00h
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcAddBase5LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcAddBase5SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase5
errorCalcAddBase5SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase
calcAddBase16:;BASE 16 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcAddBase16SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081fh
	int 10h
	mov ah, 09h
	lea dx, calcAddBase16SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase16SubMenuAddend ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcAddBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcAddBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcAddBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcAddBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase16SubMenuAugend ;Augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcAddBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT

	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcAddBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcAddBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcAddBase16LoadLetterNumErrorInput
	;insert computation process here	
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase16SubMenuSum
	int 21h	
	;put the answer here	
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	jmp CalcAddBase16LoadNumErrorInput2
CalcAddBase16LoadYNChecker:
	CMP AL, 59H ;big Y
	JE CalcAddBase16LoadAddBase16Menu
	CMP AL, 4EH ;big N
	JE CalcAddBase16LoadAddBaseMenu
	CMP AL, 59H ;not Y
	JnE CalcAddBase16LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcAddBase16SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase16
errorCalcAddBase16SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase
calcAddBase2:;BASE 2 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcAddBase2SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0820h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase2SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase2SubMenuAddend ;Addend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcAddBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcAddBase2LoadNumChecker
	sub al,30h
	mov ch,al
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcAddBase2LoadNumChecker
	sub al,30h
	mov cl,al
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcAddBase2LoadNumChecker
	sub al,30h
	mov bl,al
	;second input
	mov ah,02h	
	mov dx,0B14h
	int 10h	
	mov ah, 09h
	lea dx, calcAddBase2SubMenuAugend ;Augend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE Input2Error2Base2
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcAddBase2LoadNumChecker
	sub al,30h
	mov ah,ch
	push ax
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcAddBase2LoadNumChecker
	sub al,30h
	mov ah,cl
	push ax
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcAddBase2LoadNumChecker
	sub al,30h
	mov ah,bl
	push ax
	;insert computation process here	
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcAddBase2SubMenuSum
	int 21h		
	;put the answer here
;PROCESS ADDITION BASE2
	mov bx,0000h
	mov cx,0000h
	mov dx,0000h
    pop bx ;FIRST POP
    add bh,bl
    cmp bh,01h
    jg BinaryDiv
    add bh,30h
    mov ch,bh 
    jmp SecondPart
Input2Error2Base2:
	jmp CalcAddBase2LoadNumErrorInput2
BinaryDiv:
    mov ax,0000h
    mov al,bh
    mov bl,02h
    div bl
    mov ch,ah
    add ch,30h 
    mov dh,al  
SecondPart: 
    pop bx ;SECOND POP
    add bh,bl
    add bh,dh
    cmp bh,01h
    jg BinaryDiv2
    add bh,30h
    mov cl,bh 
    jmp ThirdPart
BinaryDiv2:
    mov ax,0000h
    mov al,bh
    mov bl,02h
    div bl
    mov cl,ah
    add cl,30h 
    mov dh,al  
ThirdPart: 
    pop bx ; THIRD POP
    add bh,bl
    add bh,dh
    cmp bh,01h
    jg BinaryDiv3
    add bh,30h
    mov dl,bh 
    jmp NoQuotient
BinaryDiv3:
    mov ax,0000h
    mov al,bh
    mov bl,02h
    div bl
    mov bh,ah
    add bh,30h 
    mov bl,al  
    jmp Quotient   
NoQuotient:
    mov ah,02h
    mov dl,30h
    int 21h
    mov dl,2Eh
    int 21h
    mov dl,bh
    int 21h
    mov dl,cl
    int 21h
    mov dl,ch
    int 21h
    jmp ReuseBase2
Quotient:
    mov ah,02h
    mov dl,bl 
    add dl,30h
    int 21h
    mov dl,2Eh
    int 21h
    mov dl,bh
    int 21h
    mov dl,cl
    int 21h
    mov dl,ch
    int 21h
ReuseBase2:
	mov bh,00h
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcAddBase2LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcAddBase2SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase2
errorCalcAddBase2SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcAddBase
calcAddBase endp	
	;-------------- CALCULATOR SUBTRACTION --------------;
calcSubtBase proc
calcSubtBase:;Sub Menu after pumili sa Calculator Menu 	
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcSubtSubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0822h
	int 10h
	mov ah, 09h
	lea dx, calcSubtSubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenu
	int 21h
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenu
	int 21h
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase2SubMenu
	int 21h
	mov ah,02h	
	mov dx,0D1Ah
	int 10h
	mov ah, 09h
	lea dx, calcSubtBackSubMenu
	int 21h
	mov ah,02h	
	mov dx,0F1Ah
	int 10h
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
	mov dx,071Eh
	int 10h
	ret
calcSubtSubMenuH2cntr :
	mov ah,02h	
	mov dx,0822h
	int 10h
	ret
errorCalcSubtSubMenuInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase	
calcSubtBase5:;BASE 5 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081Eh
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuMinu ;Minuend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcSubtBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcSubtBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcSubtBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcSubtBase5LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuSubtra ;Subtrahend
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcSubtBase5Load0NumErrorInput ;CHECKER NG 2ND INPUT
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcSubtBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcSubtBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcSubtBase5LoadNumChecker
	;insert computation process here	
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenuDiff
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcSubtBase5LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcSubtBase5SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase5
errorCalcSubtBase5SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase
calcSubtBase16:;BASE 16 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081Dh
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuMinu ;Minuend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcSubtBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcSubtBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcSubtBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcSubtBase16LoadLetterNumErrorInput
	;insert computation process here	
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuSubtra ;Subtrahend
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcSubtBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcSubtBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcSubtBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcSubtBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenuDiff
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	jmp CalcSubtBase16LoadNumErrorInput2
CalcSubtBase16LoadYNChecker:
	CMP AL, 59H ;big Y
	JE CalcSubtBase16LoadSubtBase16Menu
	CMP AL, 4EH ;big N
	JE CalcSubtBase16LoadSubtBaseMenu
	CMP AL, 59H ;not Y
	JnE CalcSubtBase16LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcSubtBase16SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase16
errorCalcSubtBase16SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1215h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase
calcSubtBase2:;BASE 2 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,081Eh
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuMinu ;Minuend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcSubtBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcSubtBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcSubtBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcSubtBase2LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuSubtra ;Subtrahend
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcSubtBase2LoadNumErrorInput2
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcSubtBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcSubtBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcSubtBase2LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcSubtBase2SubMenuDiff
	int 21h	
	;put the answer here	
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcSubtBase2LoadYNErrorInput
	CMP AL, 4EH ;not N
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
	mov dx,071Eh
	int 10h
	ret
calcSubtBase2SubMenuH2cntr :
	mov ah,02h	
	mov dx,081Eh
	int 10h
	ret
calcSubtBase2SubMenuMinucntr :
	mov ah,02h	
	mov dx,0A12h
	int 10h
	ret
calcSubtBase2SubMenuSubtracntr :
	mov ah,02h	
	mov dx,0B14h
	int 10h
	ret
calcSubtBase2SubMenuDiffcntr :
	mov ah,02h	
	mov dx,0D19h
	int 10h
	ret
calcSubtBase2SubMenuAgaincntr :
	mov ah,02h	
	mov dx,0f17h
	int 10h
	ret
errorCalcSubtBase2SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase2
errorCalcSubtBase2SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcSubtBase
calcSubtBase endp
	;-------------- CALCULATOR MODULO --------------;
calcModuloBase proc
calcModuloBase:;Sub Menu after pumili sa Calculator Menu 	
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcModuloSubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0824h
	int 10h
	mov ah, 09h
	lea dx, calcModuloSubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase5SubMenu
	int 21h
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase16SubMenu
	int 21h
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase2SubMenu
	int 21h
	mov ah,02h	
	mov dx,0D1Ah
	int 10h
	mov ah, 09h
	lea dx, calcModuloBackSubMenu
	int 21h
	mov ah,02h	
	mov dx,0F1Ah
	int 10h	
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
errorCalcModuloSubMenuInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase	
calcModuloBase5:;BASE 5 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0821h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuDivi1 ;Dividend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcModuloBase5Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcModuloBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcModuloBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcModuloBase5LoadNumChecker
	;insert computation process here	
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuDivi2 ;Divisor
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcModuloBase5Load0NumErrorInput ;CHECKER NG 2ND INPUT
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov cl, 03
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcModuloBase5LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcModuloBase5LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcModuloBase5LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase5SubMenuQuo
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcModuloBase5LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcModuloBase5SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase5
errorCalcModuloBase5SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase
calcModuloBase16:;BASE 16 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuH1
	int 21h
	mov ah,02h	
	mov dx,0820h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuDivi1 ;Dividend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcModuloBase16Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcModuloBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcModuloBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcModuloBase16LoadLetterNumErrorInput
	;insert computation process here	
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuDivi2 ;Divisor
	int 21h
	mov ah, 01h ;second input
	int 21h
	call CalcModuloBase16Load0NumErrorInput ;CHECKER NG 2ND INPUT
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcModuloBase16LoadLetterNumErrorInput
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcModuloBase16LoadLetterNumErrorInput
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcModuloBase16LoadLetterNumErrorInput
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase16SubMenuQuo
	int 21h		
	;put the answer here
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	jmp CalcModuloBase16LoadNumErrorInput2
CalcModuloBase16LoadYNChecker:
	CMP AL, 59H ;big Y
	JE CalcModuloBase16LoadModuloBase16Menu
	CMP AL, 4EH ;big N
	JE CalcModuloBase16LoadModuloBaseMenu
	CMP AL, 59H ;not Y
	JnE CalcModuloBase16LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcModuloBase16SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase16
errorCalcModuloBase16SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase
calcModuloBase2:;BASE 2 Sub Menu after pumili ng base sa addition submenu ng calcu
	call clrScreen	
	mov ah,02h		
	mov dx,071Eh
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuH1
	int 21h	
	mov ah,02h	
	mov dx,0821h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuH2
	int 21h
	mov ah,02h	
	mov dx,0A12h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuDivi1 ;Dividend
	int 21h
	mov ah, 01h ;1st input
	int 21h
	call CalcModuloBase2Load0NumErrorInput ;CHECKER NG 1ST INPUT
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcModuloBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcModuloBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcModuloBase2LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0B14h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuDivi2 ;Divisor
	int 21h
	mov ah, 01h ;second input
	int 21h
	cmp al, 30h
	JnE CalcModuloBase2LoadNumErrorInput2
	mov ah, 02h
	mov dl, 2Eh ; dot
	int 21h
	mov ah, 01h ;1st decimal place
	int 21h
	call CalcModuloBase2LoadNumChecker
	mov ah, 01h ;2ND decimal place
	int 21h
	call CalcModuloBase2LoadNumChecker
	mov ah, 01h ;3rd decimal place
	int 21h
	call CalcModuloBase2LoadNumChecker
	;insert computation process here
	mov ah,02h	
	mov dx,0D19h
	int 10h
	mov ah, 09h
	lea dx, calcModuloBase2SubMenuQuo
	int 21h	
	;put the answer here	
	mov ah,02h	
	mov dx,0f17h
	int 10h
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
	CMP AL, 59H ;not Y
	JnE CalcModuloBase2LoadYNErrorInput
	CMP AL, 4EH ;not N
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
errorCalcModuloBase2SubMenuYNInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase2
errorCalcModuloBase2SubMenuNUMInput: 
	mov ah,02h	
	mov dx,111fh
	int 10h
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah,02h	
	mov dx,1218h
	int 10h
	mov ah, 09h
	lea dx, errorKey
	int 21h
	mov ah, 01h
	int 21h
	jmp calcModuloBase
calcModuloBase endp
Calculator endp
	;-------------- CONVERSION --------------;
Conversion proc
	;-------------- CONVERSION MENU --------------;
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
	
	mov dx,071Eh
	int 10h
	ret
	
convBase7Menucntr :
	mov ah,02h	
	mov dx,091Ah
	int 10h
	ret
	
convBase5Menucntr :
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	ret
	
convBase2Menucntr :
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	ret
	
convBackSubMenucntr :
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	ret
	
convMenuInputcntr :
	mov ah,02h	
	mov dx,0E1Ah
	int 10h
	ret
		
errorconvMenuInputcntr : ;start ng center alignment ng error messages
	mov ah,02h	
	
	mov dx,111fh
	int 10h
	ret
errorconvMenuInputcntr1 :
	mov ah,02h	
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
	;-------------- CONVERSION BASE 7 MENU --------------;
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
		
	mov dx,071Eh
	int 10h
	ret
	
convBase7SubMenuH2cntr :
	mov ah,02h	
	mov dx,0824h
	int 10h
	ret
	
convBase7to4SubMenucntr :
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	ret
	
convBase7BackSubMenucntr :
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	ret
	
convBase7InputSubMenucntr :
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	ret
	
	
errorconvBase7Inputcntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorconvBase7Inputcntr1 :
	mov ah,02h	
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

	
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	
	mov cl, 03h
convBase7to4Input:	
	mov ah, 01h
	int 21h
	call convBase7to4LoadNumChecker

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
		CMP AL, 59H ;not Y
		JnE convBase7to4LoadYNErrorInput
		CMP AL, 4EH ;not N
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
	mov dx,071Eh
	int 10h
	ret
convBase7to4SubMenuH2cntr :
	mov ah,02h	
	mov dx,081Eh
	int 10h
	ret
convBase7to4InputSubMenucntr :
	mov ah,02h	
	mov dx,0A12h
	int 10h
	ret
convBase7to4OutputSubMenucntr :
	mov ah,02h	
	mov dx,0B14h
	int 10h
	ret
convBase7to4SubMenuAgaincntr :
	mov ah,02h	
	mov dx,0D19h
	int 10h
	ret
errorconvBase7to4SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorconvBase7to4SubMenucntr1 :
	mov ah,02h	
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
	;-------------- CONVERSION BASE 5 MENU --------------;
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
	mov dx,071Eh
	int 10h
	ret
	
convBase5SubMenuH2cntr :
	mov ah,02h	
	mov dx,0824h
	int 10h
	ret
	
convBase5to10SubMenucntr :
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	ret
	
convBase5BackSubMenucntr :
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	ret
	
convBase5InputSubMenucntr :
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	ret
	
	
errorconvBase5Inputcntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorconvBase5Inputcntr1 :
	mov ah,02h	
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
	
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	
	mov cl, 03h
convBase5to10Input:	
	mov ah, 01h
	int 21h
	call convBase5to10LoadNumChecker

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
		CMP AL, 59H ;not Y
		JnE convBase5to10LoadYNErrorInput
		CMP AL, 4EH ;not N
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
		
	mov dx,071Eh
	int 10h
	ret
convBase5to10SubMenuH2cntr :
	mov ah,02h	
	mov dx,081Eh
	int 10h
	ret
convBase5to10InputSubMenucntr :
	mov ah,02h	
	mov dx,0A12h
	int 10h
	ret
convBase5to10OutputSubMenucntr :
	mov ah,02h	
	mov dx,0B14h
	int 10h
	ret
convBase5to10SubMenuAgaincntr :
	mov ah,02h	
	mov dx,0D19h
	int 10h
	ret

errorconvBase5to10SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorconvBase5to10SubMenucntr1 :
	mov ah,02h	
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
	;-------------- CONVERSION BASE 2 MENU --------------;
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
		
	mov dx,071Eh
	int 10h
	ret
	
convBase2SubMenuH2cntr :
	mov ah,02h	
	mov dx,0824h
	int 10h
	ret
	
convBase2to8SubMenucntr :
	mov ah,02h	
	mov dx,0A1Ah
	int 10h
	ret
	
convBase2BackSubMenucntr :
	mov ah,02h	
	mov dx,0B1Ah
	int 10h
	ret
	
convBase2InputSubMenucntr :
	mov ah,02h	
	mov dx,0C1Ah
	int 10h
	ret
	
	
errorconvBase2Inputcntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorconvBase2Inputcntr1 :
	mov ah,02h	
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

	
	mov ah,02h
	mov dl, 2Eh ; dot
	int 21h
	
	mov cl, 03h
convBase2to8Input:	
	mov ah, 01h
	int 21h
	call convBase2to8LoadNumChecker

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
		CMP AL, 59H ;not Y
		JnE convBase2to8LoadYNErrorInput
		CMP AL, 4EH ;not N
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
		
	mov dx,071Eh
	int 10h
	ret
convBase2to8SubMenuH2cntr :
	mov ah,02h	
	mov dx,081Eh
	int 10h
	ret
convBase2to8InputSubMenucntr :
	mov ah,02h	
	mov dx,0A12h
	int 10h
	ret
convBase2to8OutputSubMenucntr :
	mov ah,02h	
	mov dx,0B14h
	int 10h
	ret
convBase2to8SubMenuAgaincntr :
	mov ah,02h	
	mov dx,0D19h
	int 10h
	ret

errorconvBase2to8SubMenucntr : ;start ng center alignment ng error messages
	mov ah,02h	
	mov dx,111fh
	int 10h
	ret
errorconvBase2to8SubMenucntr1 :
	mov ah,02h	
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
	;--------------    EXIT   --------------;
exit proc
exitSwitch:
	mov ah,02h
	
	mov dx,0f10h
	int 10h
	MOV AH, 09H
	LEA DX, homeExitMsg
	INT 21H	
	MOV AH, 01H
	INT 21H	
	CMP AL, 59H ;big Y
	JE ExitYes
	CMP AL, 4EH ;big N
	JE ExitNo
	CMP AL, 59H ;not Y
	JnE ExitInvalidInput
	CMP AL, 4EH ;not N
	JnE ExitInvalidInput
ExitYes:
	call clrScreen
	mov ah,02h
	
	mov dx,0a15h
	int 10h
	mov ah, 09h
	lea dx, homeTYMsg
	int 21h
    mov ah, 4ch
    int 21h
ExitNo:
	jmp HomeScreenMenu
ExitInvalidInput:
	call errorHomeInput	
exit endp
end main
