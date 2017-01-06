
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!LButton::
	MouseClick, Left,X,Y,20,1,
return

mega_click = y

^!RButton::
	if mega_click = y
		mega_click = n
return

^!LButton::
	mega_click = y
	Loop, 360 {
		if mega_click = n
			return
		MouseClick, Left,X,Y,1,1
		Sleep 625
	}
return