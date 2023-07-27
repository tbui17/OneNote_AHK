#Include %A_ScriptDir%\commands\navigation.ahk

OpenCommandPalette(){
    Send("!q")
}

CopyBlock(){
    send("^a" "^c")
}

UseCommandPalette(commandName){
    OpenCommandPalette()
    Sleep(500)
    Send(commandName)
    Sleep(250)
    Send("{Down}{Enter}")
}

CreateSubPageWithLink(){
    result := InputBox("Enter the name of the subpage to create", "Create subpage").value
    if (result == ""){
        return
    }
    UseCommandPalette("New Subpage")
    Send(result)
    CopyLink()
    PageBack()
    Send("^v")
    PageForward()
    
}


CollapseAllListsFromThisLevel(){
    Send("!_")
}
OpenListByOneLevel(){
    Send("!{+}")
}
Highlight(){
    Send("^!h")
}

CopyLink(){
    Send("{AppsKey}" "p" "p" "{Enter}")
}