

;

#IfWinActive ahk_exe sm18.exe ;

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
	ClipWait, 2
	;WinActivate, ahk_exe Evernote.exe
	WinActivate, ahk_exe sm18.exe
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
	WinActivate, ahk_exe sm18.exe
	Send, ^v
	return
}

;Capture last region

lastregioncapture() {
	clipboard := ""
	Send, !k ; full window capture
	ClipWait, 2
	WinActivate, ahk_exe sm18.exe
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


!e::
lastregioncapture()
return


!f::
SSWithShareX()
return
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
!,::
WinActivate, ahk_exe chrome.exe
send, z
WinActivate, ahk_exe sm18.exe
;MsgBox, Task Compleeted
return

;rewind 3 sec
!.::
WinActivate, ahk_exe chrome.exe
send, x
WinActivate, ahk_exe sm18.exe
return

;Speed increase 1
!s::
WinActivate, ahk_exe chrome.exe
send, s
WinActivate, ahk_exe sm18.exe
;MsgBox, Task Compleeted
return

;Speed decrease 1
!d::
WinActivate, ahk_exe chrome.exe
send, d
WinActivate, ahk_exe sm18.exe
return


region_screeenshort() {
	clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
	;Send, {Media_Play_Pause}
	Send, !t
	Sleep, 2000
	ClipWait, 2
	WinActivate, ahk_exe sm18.exe
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
return













