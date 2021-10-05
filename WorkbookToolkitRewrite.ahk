#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!W::
run taskkill /F /IM "WorkbookStartAlt.exe"
return

#IfWinActive Workbook
!e::Send !v
return

^v::Send %clipboard%
return

!q::
MouseClick, left, 1830, 140
Send !{v 20}
return

LWin::return

