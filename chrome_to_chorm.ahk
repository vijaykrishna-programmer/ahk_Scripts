


#IfWinActive Zoho Creator - Google Chrome


;Videos | Zoho Creator - Google Chrome
;ahk_exe msedge.exe


!,::    ; backward
WinActivate, ahk_exe msedge.exe
Send, z
WinActivate, ahk_exe chrome.exe
return

!.::    ; backward
WinActivate, ahk_exe msedge.exe
Send, x
WinActivate, ahk_exe chrome.exe
return

!s::
WinActivate, ahk_exe msedge.exe
Send, s
WinActivate, ahk_exe chrome.exe
return

!d::
WinActivate, ahk_exe msedge.exe
Send, d
WinActivate, ahk_exe chrome.exe
return


