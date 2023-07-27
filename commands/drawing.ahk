#Include %A_ScriptDir%\configs.ahk

open_pens := Format("!{1}", PEN_SLOT)


DrawingToolFactory(NavigationPlan){
    return () => Send(open_pens "{End}" NavigationPlan "{Enter}")
}

Class DrawingTools{


    static Slot1 := DrawingToolFactory("")
    static Slot2 := DrawingToolFactory("{Right 1}")
    static Slot3 := DrawingToolFactory("{Right 2}")
    static Slot4 := DrawingToolFactory("{Right 3}")
    static Slot5 := DrawingToolFactory("{Right 4}")
}