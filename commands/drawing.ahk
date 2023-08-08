#Include %A_ScriptDir%\configs.ahk

open_pens := Format("!{1}", PEN_SLOT)
open_shapes := Format("!{1}", SHAPE_SLOT)


Class DrawingToolFactory {
    
    static CreatePenSlot(NavigationPlan) {
        
        return (args*) => SendEvent(open_pens "{End}" NavigationPlan "{Enter}")
    }

    static CreateShape(NavigationPlan) {
        return (args*) => Send(open_shapes NavigationPlan "{Enter}")

    }
}


Class DrawingTools {

    static PenSlot1 := DrawingToolFactory.CreatePenSlot("")
    static PenSlot2 := DrawingToolFactory.CreatePenSlot("{Right 1}")
    static PenSlot3 := DrawingToolFactory.CreatePenSlot("{Right 2}")
    static PenSlot4 := DrawingToolFactory.CreatePenSlot("{Right 3}")
    static PenSlot5 := DrawingToolFactory.CreatePenSlot("{Right 4}")

    static Rectangle := DrawingToolFactory.CreateShape("{Down 1}")
}