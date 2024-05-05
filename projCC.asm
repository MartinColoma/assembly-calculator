.model small
.stack 100h
.data
	homeMenu 				db "------MAIN MENU------$" 
	homeCalc 				db  "[1] Calculator$" 
	homeConv				db  "[2] Conversion$"
	homeExit				db  "[3] Exit$" 
	homeInput				db   "Enter your choice: $"
	
	calcMenu 				db "CALCULATOR MENU$" 
	calcMul					db  "[1] Multiplication$"
	calcDiv 				db  "[2] Division$"
	calcAdd 				db  "[3] Addition$"
	calcSubt 				db  "[4] Subtraction$"
	calcBack				db  "[5] Back to Main Menu$"
	calcInput 				db   "Enter your choice: $"
	
	calcMulSubMenuH1 		db "CALCULATOR MENU$"
	calcMulSubMenuH2 		db  "Multiplication$"
	calcMulBase5SubMenu 	db  "[1] Base 05$"
	calcMulBase16SubMenu 	db  "[2] Base 16$"
	calcMulBase3SubMenu 	db  "[3] Base 02$"
	calcMulBackSubMenu      db  "[4] Back to Calculator Menu$"
	calcMulInputSubMenu		db   "Enter your choice: $"
	
	calcDivSubMenuH1 		db "CALCULATOR MENU$"
	calcDivSubMenuH2 		db  "Division$"
	calcDivBase5SubMenu 	db  "[1] Base 05$"
	calcDivBase16SubMenu 	db  "[2] Base 16$"
	calcDivBase3SubMenu 	db  "[3] Base 02$"
	calcDivBackSubMenu      db  "[4] Back to Calculator Menu$"
	calcDivInputSubMenu		db   "Enter your choice: $"
	
	calcAddSubMenuH1 		db "CALCULATOR MENU$"
	calcAddSubMenuH2 		db  "Division$"
	calcAddBase5SubMenu 	db  "[1] Base 05$"
	calcAddBase16SubMenu 	db  "[2] Base 16$"
	calcAddBase3SubMenu 	db  "[3] Base 02$"
	calcAddBackSubMenu      db  "[4] Back to Calculator Menu$"
	calcAddInputSubMenu		db   "Enter your choice: $"
	
	calcSubtSubMenuH1 		db "CALCULATOR MENU$"
	calcSubtSubMenuH2 		db  "Division$"
	calcSubtBase5SubMenu	db  "[1] Base 05$"
	calcSubtBase16SubMenu 	db  "[2] Base 16$"
	calcSubtBase3SubMenu 	db  "[3] Base 02$"
	calcSubtBackSubMenu     db  "[4] Back to Calculator Menu$"
	calcSubtInputSubMenu	db   "Enter your choice: $"
	
	
	convMenu 				db  "CONVERSION MENU",  "[1] Base 05",  "[2] Base 16",   "[3] Base 02",  "[4] Back to Main Menu",   "Enter your choice: ",   "$"
	errorMsg 				db  "Invalid Input.$"
	errorKey 				db  "Press any KEY to try again.$"


.code
main proc
    mov ax, @data
    mov ds, ax
	jmp HomeScreenMenu
main endp
Home proc
HomeScreenMenu: ;Start ng Main Menu
	call homeclr
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
	ret
	HomeCallCalcMenu:
		call calcScreenMenu
	HomeCallConvMenu:
		call convScreenMenu
	HomeCallEnd:
		mov ah, 4ch
		int 21h
	HomeCallError:
		jmp errorHomeInput

Home endp

Calculator proc	
calcScreenMenu: ;start ng calcu menu
	call cntr
	call clr
	mov ah, 09h
	lea dx, calcMenu
	int 21h
	mov ah, 09h
	lea dx, calcMul
	int 21h
	mov ah, 09h
	lea dx, calcDiv
	int 21h
	mov ah, 09h
	lea dx, calcAdd
	int 21h
	mov ah, 09h
	lea dx, calcSubt
	int 21h
	mov ah, 09h
	lea dx, calcBack
	int 21h
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
	je CalcLoadHomeScreen
	cmp al, 30h
	jle CalcLoadErrorInput
	cmp al, 36h
	jge CalcLoadErrorInput
	ret
	
	CalcLoadMulBase:
		call calcMulBase
	CalcLoadDivBase:
		call calcDivBase
	CalcLoadAddBase:
		call calcAddBase
	CalcLoadSubtBase:
		call calcSubtBase
	CalcLoadHomeScreen:
		call HomeScreenMenu
	CalcLoadErrorInput:
		call errorCalcMenuInput

;Sub Menu after pumili sa Calculator Menu 	
calcMulBase:
	call cntr
	call clr
	mov ah, 09h
	lea dx, calcMulSubMenuH1
	int 21h
	mov ah, 09h
	lea dx, calcMulSubMenuH2
	int 21h
	mov ah, 09h
	lea dx, calcMulBase5SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcMulBase16SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcMulBase3SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcMulBackSubMenu
	int 21h
	mov ah, 09h
	lea dx, calcMulInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h


	cmp al, 34h
	je CalcMulBaseLoadCalcMenu
	ret
	CalcMulBaseLoadCalcMenu:
		call calcScreenMenu
	
	
calcDivBase:
	call cntr
	call clr
	mov ah, 09h
	lea dx, calcDivSubMenuH1
	int 21h
	mov ah, 09h
	lea dx, calcDivSubMenuH2
	int 21h
	mov ah, 09h
	lea dx, calcDivBase5SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcDivBase16SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcDivBase3SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcDivBackSubMenu
	int 21h
	mov ah, 09h
	lea dx, calcDivInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h


	cmp al, 34h
	je CalcDivBaseLoadCalcMenu
	ret
	CalcDivBaseLoadCalcMenu:
		call calcScreenMenu
	
calcAddBase:
	call cntr
	call clr
	mov ah, 09h
	lea dx, calcAddSubMenuH1
	int 21h
	mov ah, 09h
	lea dx, calcAddSubMenuH2
	int 21h
	mov ah, 09h
	lea dx, calcAddBase5SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcAddBase16SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcAddBase3SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcAddBackSubMenu
	int 21h
	mov ah, 09h
	lea dx, calcAddInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h


	cmp al, 34h
	je CalcAddBaseLoadCalcMenu
	ret
	CalcAddBaseLoadCalcMenu:
		call calcScreenMenu
	
calcSubtBase:
	call cntr
	call clr
	mov ah, 09h
	lea dx, calcSubtSubMenuH1
	int 21h
	mov ah, 09h
	lea dx, calcSubtSubMenuH2
	int 21h
	mov ah, 09h
	lea dx, calcSubtBase5SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcSubtBase16SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcSubtBase3SubMenu
	int 21h
	mov ah, 09h
	lea dx, calcSubtBackSubMenu
	int 21h
	mov ah, 09h
	lea dx, calcSubtInputSubMenu
	int 21h
	
	mov ah, 01h
	int 21h


	cmp al, 34h
	je CalcSubtBaseLoadCalcMenu
	ret
	CalcSubtBaseLoadCalcMenu:
		call calcScreenMenu
	

	
	
;Sub Menu after pumili ng base sa calcu
calcMulBase5:
	;mov ah, 09h
	;lea dx, calcMenu
	;int 21h
	;mov ah, 01h
	;int 21h
	;cmp al, 31h
	;je calc
	;cmp al, 34h
	;je calc
calcMulBase16:
	;mov ah, 09h
	;lea dx, calcMenu
	;int 21h
	;mov ah, 01h
	;int 21h
	;cmp al, 31h
	;je calc
	;cmp al, 34h
	;je calc	
calcMulBase2:
	;mov ah, 09h
	;lea dx, calcMenu
	;int 21h
	;mov ah, 01h
	;int 21h
	;cmp al, 31h
	;je calc
	;cmp al, 34h
	;je calc	

Calculator endp
Conversion proc
convScreenMenu:
	mov ah, 09h
	lea dx, convMenu
	int 21h
	mov ah, 01h
	int 21h
	cmp al, 34h
	je ConvLoadHomeScreen
	ret
	ConvLoadHomeScreen:
		call HomeScreenMenu
	


	
Conversion endp	
InputNError proc

homeMenucntr :
	mov ah,02h
	mov bh,00h
	mov dx,0715h
	int 10h
	ret


homeCalccntr :
	mov ah,02h
	mov bh,00h
	mov dx,0915h
	int 10h
	ret

homeConvcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0A15h
	int 10h
	ret

homeExitcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0B15h
	int 10h
	ret

homeInputcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0D15h
	int 10h
	ret
homeclr :
	mov ax,0600h
	mov bh,07h
	mov cx,0000h
	mov dx,404fh
	int 10h
	ret
clr :
	mov ax,0600h
	mov bh,07h
	mov cx,0000h
	mov dx,404fh
	int 10h
	ret
cntr :
	mov ah,02h
	mov bh,00h
	mov dx,0815h
	int 10h
	ret

errorHomeInputcntr :
	mov ah,02h
	mov bh,00h
	mov dx,0f15h
	int 10h
	ret
errorHomeInputcntr1 :
	mov ah,02h
	mov bh,00h
	mov dx,1015h
	int 10h
	ret
errorHomeInput: 
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

errorCalcMenuInput: 
	mov ah, 09h
	lea dx, errorMsg
	int 21h	
	mov ah, 09h
	lea dx, errorKey
	int 21h
	jmp calcScreenMenu

exitSwitch:
    mov ah, 4ch
    int 21h

InputNError endp
end main
