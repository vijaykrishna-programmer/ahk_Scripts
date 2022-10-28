

;

#IfWinActive ahk_exe Evernote.exe


!e::
Send, {Media_Stop}
clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
Send, !t
;Sleep, 1500
ClipWait, 2
WinActivate, ahk_exe Evernote.exe
Sleep, 500
Send, ^v
;MsgBox, Task Compleeted
return