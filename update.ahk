Filedelete, %A_ScriptDir%\commands.ahk
IfnotExist, %A_ScriptDir%\commands.ahk
{
URLDownloadToFile, https://raw.githubusercontent.com/BromsSort/admins/main/commands.ahk?raw=true, %A_ScriptDir%\commands.ahk
Run,%A_ScriptDir%\commands.ahk
ExitApp
return
}
