#IfWinActive, ahk_exe ONENOTE.EXE

;colors==========================

$^!p::Send !6{Up 1}{Enter} ;purple
$^!b::Send !6{Up 1}{Left 2}{Enter} ;blue
$^!g::Send !6{Up 3}{Enter} ;green
$^!r::Send !6{Left 1}{Up 1}{Right 1}{Enter} ;red
$^!k::Send !6{Left 1}{Up 1}{Enter} ;pink
$^!a::Send !6{Enter} ;default

$!q::Send !{Left} ;Page Back
$!w::Send !{Right} ;Page Forward
$!s::Send !_ ;Collapse all lists from that level
$!a::Send !{+} ;Open list by 1 level
$!c::Send ^!h ;Highlight
$!z::Send !q ; the command palette at the top with previous hotkey alt+q

;link functionality=========================================

!d::Send l{AppsKey}p ;Create marker and copy link to clipboard
!e::Send {AppsKey}p ;Copy link to text

!g:: ;Turn highlighted text into link leading to marker
Send ^k
sleep 100
send ^v
send {enter}
return

!f:: ; Create a link icon leading to marker
Send {space}{U+1F517}
Send ^+{Left}
Send ^k
sleep 100
send ^v
send {enter}
return

#IfWinActive ; ------ end of section restricted to specific windows

#MaxHotkeysPerInterval 200
~LShift & WheelUp::  ; Scroll left.
 ControlGetFocus, fcontrol, A
 Loop 10  ; <-- Increase or decrease this value to scroll faster or slower.
    SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINERIGHT.
return

 ~LShift & WheelDown::  ; Scroll right.
 ControlGetFocus, fcontrol, A
 Loop 10  ; <-- Increase or decrease this value to scroll faster or slower.
    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINELEFT.
return

