

#If, WinActive("ahk_exe Evernote.exe") or WinActive("ahk_exe eclipse.exe")

;#IfWinActive ahk_exe Evernote.exe || #IfWinActive ahk_exe eclipse.exe

FmtSecs(T, Fmt:="{:}d {:02}h {:02}m {:02}s") { ; v0.50 by SKAN on D36G/H @ tiny.cc/fmtsecs
Local D, H, M, HH, Q:=60, R:=3600, S:=86400
Return Format(Fmt, D:=T//S, H:=(T:=T-D*S)//R, M:=(T:=T-H*R)//Q, T-M*Q, HH:=D*24+H, HH*Q+M)
}


CopyUrlAtCurrentTime() {
	clipboard := ""
	WinActivate, ahk_exe chrome.exe
	Send, u
	ClipWait
	;MsgBox % Clipboard
	Url:=clipboard
	Url_array :=StrSplit(Url,"=")
	Seconds := Url_array[Url_array.MaxIndex()]
	Formatted_time := FmtSecs(Seconds)
	Clipboard := Formatted_time
	WinActivate, ahk_exe Evernote.exe
	Send, ^v
}

;
SSWithShareXToSupermemo() {
	clipboard := ""
	Send, !k
	ClipWait, 2
	WinActivate, ahk_exe sm18.exe
	Send, ^v
	return
}

; using
SSWithShareX() {
	clipboard := ""
	Send, !o   ; full window capture
	ClipWait,, 1
	WinActivate, ahk_exe Evernote.exe
	;WinActivate, ahk_exe sm18.exe
	;
	Send, ^v
	;
	;Send, {Ctrl Down}
	;Sleep, 100
	;Send,v
	;Sleep, 1000
	;Send, {Ctrl Up}
	;
	Sleep, 900
	Send, {PgDn}
	return
}


;
SSWithYoutubeE() {
	clipboard := ""
	WinActivate, ahk_exe chrome.exe
	Send, r
	ClipWait, 2
	WinActivate, ahk_exe Evernote.exe
	Send, ^v
	return
}





; grap frame

GrabeFrame() {
	clipboard := ""
	WinActivate, ahk_exe chrome.exe
	;Sleep, 200
	Send, p ; full window capture
	ClipWait,,1
	WinActivate, ahk_exe Evernote.exe
	;
	Send, ^v
	;
	;Send, {Ctrl Down}
	;Sleep, 100
	;Send,v
	;Sleep, 1000
	;Send, {Ctrl Up}
	;
	Sleep, 900
	Send, {PgDn}
	;MsgBox, "ok"
	return
}

!e::
CopyUrlAtCurrentTime()
GrabeFrame()
return



;Capture last region

lastregioncapture() {
	clipboard := ""
	Send, !k ; full window capture
	ClipWait,,1
	WinActivate, ahk_exe Evernote.exe
	;
	Send, ^v
	;
	;Send, {Ctrl Down}
	;Sleep, 100
	;Send,v
	;Sleep, 1000
	;Send, {Ctrl Up}
	;
	Sleep, 900
	Send, {PgDn}
	return
}

!t::
lastregioncapture()
CopyUrlAtCurrentTime()
return

!f::
CopyUrlAtCurrentTime()
SSWithShareX()
return


/*
;!f::
;Send, {Media_Play_Pause}   ;{Media_Stop}
;  ; Start off empty to allow ClipWait to detect when the text has arrived.
;
;;Sleep, 1500
;ClipWait, 2
;WinActivate, ahk_exe Evernote.exe
;Sleep, 500
;Send, ^v
;return


; Working ShareX and copy to evernote---------------
;!f::
;
;---------------

;forword 3 sec
*/


!,::
WinActivate, ahk_exe chrome.exe
send, z
WinActivate, ahk_exe Evernote.exe
;MsgBox, Task Compleeted
return

;rewind 3 sec
!.::
WinActivate, ahk_exe chrome.exe
send, x
WinActivate, ahk_exe Evernote.exe
return

;Speed increase 1
!s::
WinActivate, ahk_exe chrome.exe
send, s
WinActivate, ahk_exe Evernote.exe
;MsgBox, Task Compleeted
return

;Speed decrease 1
!d::
WinActivate, ahk_exe chrome.exe
send, d
WinActivate, ahk_exe Evernote.exe
return


region_screeenshort() {
	clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
	;Send, {Media_Play_Pause}
	Send, !i
	;Sleep, 2000
	ClipWait,, 1
	WinActivate, ahk_exe Evernote.exe
	;
	Send, ^v
	;
	;Send, {Ctrl Down}
	;Sleep, 100
	;Send,v
	;Sleep, 1000
	;Send, {Ctrl Up}
	;
	;Send, {Media_Play_Pause}
	;MsgBox, Task Compleeted
	Sleep, 900
	Send, {PgDn}
	return
}



!r::
clipboard := ""
region_screeenshort()
CopyUrlAtCurrentTime()
return













