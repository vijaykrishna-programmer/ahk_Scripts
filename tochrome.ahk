


#IfWinActive ahk_exe chrome.exe


CopyARegion() {
	clipboard := ""
	Send, !e
	Sleep, 1500
	ClipWait, 2
	WinActivate, 1.Day - Evernote - Google Chrome
	Send, ^v
	return
}

!f::
CopyARegion()
MsgBox, Test complete
return