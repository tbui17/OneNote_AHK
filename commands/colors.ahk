#Include %A_ScriptDir%\configs.ahk

open_colors := Format("!{1}",FONT_COLOR_SLOT)
go_to_standard_color_row := "{Up 2}"

Class TextColorFactory{

    static CreateStandardRowColor(RowNavigationPlan){
        return () => Send(open_colors RowNavigationPlan "{Enter}")
    }
    static CreateColor(NavigationPlan){
        return () => Send(open_colors NavigationPlan)
    }
}

class TextColors {
    static Purple := TextColorFactory.CreateStandardRowColor("")
    static Blue := TextColorFactory.CreateStandardRowColor("{Left 2}")
    static Green := TextColorFactory.CreateStandardRowColor("{Left 3}")
    static Red := TextColorFactory.CreateStandardRowColor("{Home}{Right}")
    static Pink := TextColorFactory.CreateStandardRowColor("{Home}")
    static Default := TextColorFactory.CreateColor("{Enter}")
}