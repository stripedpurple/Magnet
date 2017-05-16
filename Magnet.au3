#NoTrayIcon
#include <MsgBoxConstants.au3>
#include <TrayConstants.au3> ; Required for the $TRAY_ICONSTATE_SHOW constant.

Const $displayHeight = @DesktopHeight
Const $displayWidth = @DesktopWidth

HotKeySet("#!{LEFT}", left)
HotKeySet("#!{RIGHT}", right)
HotKeySet("#!{UP}", top)
HotKeySet("#!{DOWN}", bottom)
HotKeySet("#!u", topLeft)
HotKeySet("#!i", topRight)
HotKeySet("#!J", BottomLeft)
HotKeySet("#!k", bottomRight)
HotKeySet("#!d", leftThird)
HotKeySet("#!e", leftTwoThird)
HotKeySet("#!f", centerThird)
HotKeySet("#!g", rightThird)
HotKeySet("#!t", rightTwoThird)

Opt("TrayMenuMode", 3) ; The default tray menu items will not be shown and items are not checked when selected. These are options 1 and 2 for TrayMenuMode.

Main()

Func Main()
	; Basic Window Movements
	Local $left = TrayCreateItem("Left" & @TAB & "Win+Alt+Left") ; Postion 1
	Local $right = TrayCreateItem("Right" & @TAB & "Win+Alt+Right") ; Postion 2
	Local $top = TrayCreateItem("Top" & @TAB & "Win+Alt+Up") ; Postion 3
	Local $bottom = TrayCreateItem("Down" & @TAB & "Win+Alt+Down") ; Postion 4
	TrayCreateItem("") ; Create a separator line.

	; Quadrants
	Local $topLeft = TrayCreateItem("Top Left" & @TAB & "Win+Alt+U") ; Postion 1
	Local $topRight = TrayCreateItem("Top Right" & @TAB & "Win+Alt+I") ; Postion 2
	Local $bottomLeft = TrayCreateItem("Bottom Left" & @TAB & "Win+Alt+J") ; Postion 3
	Local $bottomRight = TrayCreateItem("Bottom Right" & @TAB & "Win+Alt+K") ; Postion 4
	TrayCreateItem("") ; Create a separator line.

	; Rulle of thirds
	Local $leftThird = TrayCreateItem("Left Third" & @TAB & "Win+Alt+D") ; Postion 1
	Local $leftTwoThirds = TrayCreateItem("Left Two Thirds" & @TAB & "Win+Alt+E") ; Postion 2
	Local $centerThird = TrayCreateItem("Center Third" & @TAB & "Win+Alt+F") ; Postion 3
	Local $rightThird = TrayCreateItem("Right Third" & @TAB & "Win+Alt+G") ; Postion 4
	Local $rightTwoThirds = TrayCreateItem("Right Two Thirds" & @TAB & "Win+Alt+T") ; Postion 5
	TrayCreateItem("") ; Create a separator line.

	; TODO - Next/Previous display
	; Display Switching
	; TrayCreateItem("") ; Create a separator line.

	; Max, Center, Restore
	Local $maximize = TrayCreateItem("Maximize" & @TAB & "Win+Alt+Enter")
	Local $center = TrayCreateItem("Center" & @TAB & "Win+Alt+C")
	Local $restore = TrayCreateItem("Restore" & @TAB & "Win+Alt+Back")
	TrayCreateItem("") ; Create a separator line.

	; Misc.
	Local $helpTray = TrayCreateItem("Help")
	Local $aboutTray = TrayCreateItem("About")
	Local $exitTray = TrayCreateItem("Exit")

	TraySetState($TRAY_ICONSTATE_SHOW) ; Show the tray menu.

	While 1
		Switch TrayGetMsg()
			Case $left
				left()
			Case $right
				right()
			Case $top
				top()
			Case $bottom
				bottom()
			Case $topLeft
				topLeft()
			Case $topRight
				topRight()
			Case $bottomLeft
				bottomLeft()
			Case $bottomRight
				bottomRight()
			Case $leftThird
				leftThird()
			Case $leftTwoThirds
				leftTwoThird()
			Case $centerThird
				centerThird()
			Case $rightThird
				rightThird()
			Case $rightTwoThirds
				rightTwoThird()
			Case $exitTray
				Exit
		EndSwitch
	WEnd
EndFunc   ;==>Main


Func left()
	Local $curWindow = WinGetHandle("")
	WinMove($curWindow, "", 0, 0, $displayWidth / 2, $displayHeight)
EndFunc   ;==>left

Func right()
	Local $curWindow = WinGetHandle("")
	WinMove($curWindow, "", $displayWidth / 2, 0, $displayWidth / 2, $displayHeight)
EndFunc   ;==>right

Func top()
	Local $curWindow = WinGetHandle("")
	WinMove($curWindow, "", 0, 0, $displayWidth, $displayHeight / 2)
EndFunc   ;==>top

Func bottom()
	Local $curWindow = WinGetHandle("")
	WinMove($curWindow, "", 0, $displayWidth / 2, $displayWidth, $displayHeight / 2)
EndFunc   ;==>bottom

Func topLeft()

EndFunc   ;==>topLeft

Func topRight()

EndFunc   ;==>topRight

Func bottomLeft()

EndFunc   ;==>bottomLeft

Func bottomRight()

EndFunc   ;==>bottomRight

Func leftThird()

EndFunc   ;==>leftThird

Func leftTwoThird()

EndFunc   ;==>leftTwoThird

Func rightThird()

EndFunc   ;==>rightThird

Func centerThird()

EndFunc   ;==>centerThird

Func rightTwoThird()

EndFunc   ;==>rightTwoThird

Func maximize()

EndFunc   ;==>maximize

Func center()

EndFunc   ;==>center

Func restore()

EndFunc   ;==>restore
