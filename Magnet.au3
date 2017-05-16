#NoTrayIcon
#include <MsgBoxConstants.au3>
#include <TrayConstants.au3> ; Required for the $TRAY_ICONSTATE_SHOW constant.

Const $displayHeight = @DesktopHeight
Const $displayWidth = @DesktopWidth

HotKeySet("{LWIN}!{LEFT}",halves(1))

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
	Local $rightThird = TrayCreateItem("Right Third" & @TAB & "Win+Alt+T") ; Postion 4
	Local $rightTwoThirds = TrayCreateItem("Right Two Thirds" & @TAB & "Win+Alt+G") ; Postion 5
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
				halves(1)
			Case $right
				halves(2)
			Case $top
				halves(3)
			Case $bottom
				halves(4)
			Case $topLeft
				quadrant(1)
			Case $topRight
				quadrant(2)
			Case $bottomLeft
				quadrant(3)
			Case $bottomRight
				quadrant(4)
			Case $leftThird
				thirds(1)
			Case $leftTwoThirds
				thirds(2)
			Case $centerThird
				thirds(3)
			Case $rightThird
				thirds(4)
			Case $rightTwoThirds
				thirds(5)
			Case $exitTray ; Exit the loop.
				Exit
		EndSwitch
	WEnd
EndFunc   ;==>Example


Func halves ($newPos)
	local $curWindow = WinGetHandle("")
	Switch $newPos
		Case 1
			WinMove($curWindow,"", 0,0, $displayWidth/2, $displayHeight/2)
		Case 2

		Case 3

		Case 4

		EndSwitch
EndFunc

Func quadrant ($newPos)

EndFunc

Func thirds ($newPos)

EndFunc