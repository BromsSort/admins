version := 1.238

SetWorkingDir %A_ScriptDir%

IfnotExist, %A_ScriptDir%\assets
{
FileCreateDir, %A_ScriptDir%\assets
}

{
URLDownloadToFile, https://raw.githubusercontent.com/BromsSort/admins/main/assets/cmds.txt?raw=true, %A_ScriptDir%\assets\cmds.txt
}

IfnotExist, %A_ScriptDir%\update.ahk
{
URLDownloadToFile, https://raw.githubusercontent.com/BromsSort/admins/main/update.ahk?raw=true, %A_ScriptDir%\update.ahk
}
IfnotExist, %A_ScriptDir%\assets\cmds.txt
{
URLDownloadToFile, https://raw.githubusercontent.com/BromsSort/admins/main/assets/cmds.txt?raw=true, %A_ScriptDir%\assets\cmds.txt
}

;======================================================================================================================Команды

;MISC
:?:..сп::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /mute 30 Soundpad в ЗЗ {space}
sleep 400
return

:?:..а::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /a {space}
return

:?:..esp3::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /esp3{enter}
return

:?:..cмс::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /asms {space}
return

:?:..gid::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /gid {space}
return

:?:..id::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /id {space}
return

:?:..тп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /tp {space}
return

:?:..гх::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /gh {space}
return

:?:..геткар::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /getcar {space}
return

:?:..делвех::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /delveh {space}
return

:?:..спек::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /spec {space}
return

:?:..дименшен:
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /setdim {space}
return

:?:..авех::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /aveh {space}
return

:?:..тпкар::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /tpcar {space}
return

:?:..инкар::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /incar {space}
return

:?:..гтп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /gtp {space}
return

:?:..тпх::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /tph {space}
return

:?:..хп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /hp {space}
return

:?:..рескью::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /rescue {space}
return

:?:..пг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ajail 35 PG {space}
return

:?:..дм::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ajail 120 DM {space}
return

:?:..1.19::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ajail 35 1.19 ПГО {space}
return

:?:..приветствие::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Здравствуйте, сейчас займусь Вашим обращением.{space}
return
