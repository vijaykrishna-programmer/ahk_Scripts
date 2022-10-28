

#IfWinActive ahk_exe Notion.exe

SSWithShareX() {
	clipboard := ""
	Send, !k
	ClipWait, 2
	WinActivate, ahk_exe Notion.exe
	Send, ^v
	return
}


VlcToEvenote() {
	clipboard := ""
	Send, !e
	Sleep, 1000
	ClipWait, 2
	WinActivate, ahk_exe Notion.exe
	Send, ^v
	Sleep, 1000
	Send, {NumpadPgDn}
	return
}

CopyARegion() {
	Send, {Media_Play_Pause}
	clipboard := ""
	Send, !t
	Sleep, 1500
	ClipWait, 2
	WinActivate, ahk_exe Notion.exe
	Send, ^v
	Sleep, 1000
	Send, {NumpadPgDn}
	return
}


!f::
;Click, 1221 1071
VlcToEvenote()
return

!r::
CopyARegion()
;MsgBox, Task Completed
return





;rewind 3 sec
!,::
WinActivate, ahk_exe vlc.exe
Send, {Left}
WinActivate, ahk_exe Notion.exe
;MsgBox, Task Compleeted
return

;forword 3 sec
!.::
WinActivate, ahk_exe vlc.exe
Send, {Right}
WinActivate, ahk_exe Notion.exe
return

;Speed dec 1
!s::
WinActivate, ahk_exe vlc.exe
send, [
WinActivate, ahk_exe Notion.exe
;MsgBox, Task Compleeted
return

;Speed inc 1
!d::
WinActivate, ahk_exe vlc.exe
send, ]
WinActivate, ahk_exe Notion.exe
return








