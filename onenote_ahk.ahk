#Include %A_ScriptDir%\commands\colors.ahk
#Include %A_ScriptDir%\commands\navigation.ahk
#Include %A_ScriptDir%\commands\drawing.ahk
#Include %A_ScriptDir%\commands\common.ahk

; Some helpful setup first
SetTitleMatchMode("RegEx") ; Match window titles by regular expressions


#HotIf WinActive("- OneNote$") ; ------ only in windows with title ending with "- OneNote"




; ==================== OneNote hotkeys ====================





; Color Binds
^!p::TextColors.Purple()
^!b::TextColors.Blue()
^!g::TextColors.Green()
^!r::TextColors.Red()
^!k::TextColors.Pink()
^!a::TextColors.Default()

; Pens
!e::DrawingTools.PenSlot1() ; Eraser
!r::DrawingTools.PenSlot2() ; Red

; Shapes
!v::DrawingTools.Rectangle()

; Navigation
!q::PageBack()
!w::PageForward()

; Common
!s::CollapseAllListsFromThisLevel()
!a::OpenListByOneLevel()
!c::Highlight()
!`::OpenCommandPalette()
!t::CopyLink()
!y::CreateSubPageWithLink()



; Mouse scrolling
A_MaxHotkeysPerInterval := 200
~LShift & WheelUp:: WheelLeft  ; Scroll left
~LShift & WheelDown:: WheelRight  ; Scroll right








; ==================== End of OneNote hotkeys ====================




#HotIf ; ------ end of section restricted to specific windows

