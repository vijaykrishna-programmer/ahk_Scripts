

AutoPasteToEverNote(){
	Send, ^c
	WinActivate, ahk_exe Evernote.exe
	Send, ^+v
	;Send, {PgDn}
	Send, {Enter}
	return
}

F2::
AutoPasteToEverNote()
Send, {Enter}
return