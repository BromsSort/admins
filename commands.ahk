SetWorkingDir %A_ScriptDir%

IfnotExist, %A_ScriptDir%\assets
{
FileCreateDir, %A_ScriptDir%\assets
}

IniRead, v, assets/Settings.ini, USER, v
if v != %version%
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cmds.txt?raw=true, %A_ScriptDir%\assets\cmds.txt
IniWrite, %version%, assets/Settings.ini, USER, v
}

IfnotExist, %A_ScriptDir%\update.ahk
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/update.ahk?raw=true, %A_ScriptDir%\update.ahk
}
IfnotExist, %A_ScriptDir%\assets\cmds.txt
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cmds.txt?raw=true, %A_ScriptDir%\assets\cmds.txt
}

Command:
FileEncoding, UTF-8
FileRead, allcmds, *t assets\cmds.txt
MsgBox, 0, Команды, Для использования сокращённых команд, введите в чат указанную команду, а затем нажмите ПРОБЕЛ `n %allcmds%
return



;======================================================================================================================Команды

;MISC
:?:..сп::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me включил%gender% музыку на колонке{enter}
sleep 400
return

:?:..взятьсумку::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В шкафчике лежит вместительная сумка и пачка зип-пакетов.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% шкафчик{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% вместительную сумку и пачку зип-пакетов из шкафчика{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На плече висит вместительная сумка.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Пачка зип-пакетов лежит в подсумке.{enter}
sleep 400
return

:?:..рейдобыск::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% сумку с плеча и положил%gender% её на пол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки открыл%gender% сумку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка открыта.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me осмотрел%gender% склад{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me начал%gender% складывать в сумку все нелегальные предметы{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка заполнена.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки повесил%gender% сумку на плечо{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка, заполненная нелегалом, висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакеты лежат в подсумке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки достал%gender% зип-пакет из подсумка{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет в руке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет заполнен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Заполненный зип-пакет в подсумке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки достал%gender% еще один пустой зип-пакет из подсумка{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет в руке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет заполнен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Заполненные нелегальными веществами зип-пакеты лежат в подсумке.{enter}
sleep 400
return

:?:..склад::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка с нелегалом висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% зип-пакеты из подсумка и положил%gender% их на полку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакеты на полке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% сумку с плеча и положил%gender% её на полку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка с нелегалом лежит на полке.{enter}
sleep 400
return

:?:..багажник::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка с нелегалом висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% зип-пакеты из подсумка и положил%gender% их в багажник{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакеты в багажнике.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% сумку с плеча и положил%gender% её в багажник{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка с нелегалом лежит в багажнике.{enter}
sleep 400
return

:?:..взятьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В рюкзаке находится ноутбук, измерительные устройства и полиграф для проведения допроса.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% рюкзак, затем взял%gender% ноутбук, измерительные устройства и полиграф в руки{enter}
sleep 400
return

:?:..подключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В руках агента ноутбук, полиграф и измерительные устройства для проведения допроса.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me поставил%gender% на стол ноутбук и подключил%gender% к нему с помощью проводов полиграф{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% экран ноутбука, затем нажал%gender% кнопку включения и ввел%gender% пароль{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Вход в систему выполнен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me включил%gender% специальную программу для работы с полиграфом{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me нажал%gender% на небольшую красную кнопочку на полиграфе{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф включен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me надел%gender% на правую руку человека напротив датчик артериального давления и частоты пульса{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me надел%gender% на два пальца левой руки два датчика потоотделения{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me надел%gender% на человека опоясывающий грудь датчик глубины дыхания{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подключил%gender% измерительные устройства к полиграфу при помощи проводов{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф готов к проведению измерений.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На экране ноутбука начали рисоваться графики согласно полученным данным.{enter}
sleep 400
return

:?:..отключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me снял%gender% с правой руки человека напротив датчик давления и частоты пульса, после чего положил%gender% его на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% с пальцев левой руки человека датчики потоотделения и положил%gender% их на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% с груди человека датчик глубины дыхания и положил%gender% его на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На столе лежат несколько датчиков, стоит включенный ноутбук, а также полиграф.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me нажал%gender% на кнопку выключения полиграфа и ноутбука{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф и ноутбук выключены.{enter}
sleep 400
return

:?:..датьконтракт::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do Контракт “О конфиденциальном сотрудничестве с FIB” лежит в закрытом ящике письменного стола.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% ящик письменного стола, достал%gender% Контракт “О конфиденциальном сотрудничестве с FIB” и положил%gender% его на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Шариковая ручка на столе.{enter}
sleep 400
return

:?:..взятьконтракт::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% Контракт “О конфиденциальном сотрудничестве с FIB” и шариковую ручку со стола в руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Контракт “О конфиденциальном сотрудничестве с FIB” и шариковая ручка в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подписал%gender% Контракт “О конфиденциальном сотрудничестве с FIB”, затем передал%gender% его обратно человеку напротив{enter}
sleep 400
return

:?:..датьбоди::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% рюкзак, затем открыл%gender% его{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака, затем передал%gender% их человеку напротив{enter}
sleep 400
return

:?:..взятьбоди::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% боди-камеру и комплект звукозаписывающих устройств у человека напротив, затем положил%gender% их к себе{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и комплект звукозаписывающих устройств лежат у агента.{enter}
sleep 400
return

:?:..бардачок::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств, сложил%gender% их в бардачок автомобиля{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и комплект звукозаписывающих устройств в бардачке.{enter}
sleep 400
return

:?:..бодиавто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% бардачок автомобиля, достал%gender% оттуда боди-камеру и комплект звукозаписывающих устройств{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me сложил%gender% боди-камеру и комплект звукозаписывающих устройств в рюкзак{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и коплект звукозаписывающих устройств в рюкзаке.{enter}
sleep 400
return

:?:..вкл::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и комплект звукозаписывающих устройств в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me скрытно установил%gender% на одежду боди-камеру и устройства звукозаписи, после чего включил%gender% их нажатием на кнопку питания{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и звукозаписывающие устройства активированы и записывают все происходящее.{enter}
sleep 400
return

:?:..выкл::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me скрытно нажал%gender% на кнопку “save” боди-камеры{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Запись с боди-камеры сохранена на microSD FlashCard.{enter}
sleep 400
return

:?:..датьматы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do MicroSD FlashCard с видеоматериалом находится у агента.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me неспешно достал%gender% из кармана microSD FlashCard с видеоматериалами, затем передал%gender% их человеку напротив{enter}
sleep 400
return

:?:..взятьматы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% microSD FlashCard с видеоматериалами у человека напротив, затем положил%gender% их к себе{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do MicroSD FlashCard с видеоматериалами у агента.{enter}
sleep 400
return

:?:..армия::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me взял%gender% из ящика с инструментами швабру{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Швабра в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me протянул%gender% руку за ведром, которое стояло рядом{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me аккуратно взял%gender% ведро в руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Ведро находится в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me поставил%gender% ведро на пол, намочил%gender% швабру и начал%gender% вытирать пол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Пол чист.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me взял%gender% в руки тряпку, начал%gender% протирать шкафчики{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Шкафы полностью убраны.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% большой мусорный пакет и стал%gender% убирать мусор с пола{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подобрал%gender% надкусанное яблоко, закинул%gender% его в пакет{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подобрал%gender% смятые бумаги и так же сложил%gender% всё в мусорку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Весь мусор сложен в пакет.{enter}
sleep 400
return

:?:..закрыто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do Окна в автомобиле закрыты.
return

:?:.зштп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ping{enter}
return

:?:.пинг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ping{enter}
return

:?:.ц::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /w{space}
return

:?:.и::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /b{space}
return

:?:.б::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /b{space}
return

:?:.а::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /f{space}
return

:?:.ф::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /f{space}
return

:?:.аи::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /fb{space}
return

:?:.фб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /fb{space}
return

:?:.с::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /c{space}
return

:?:.си::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /cb{space}
return

:?:.сб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /cb{space}
return

:?:.вуз::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep{space}
return

:?:.деп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep{space}
return

:?:.кузщке::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /report{space}
return

:?:.репорт::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /report{space}
return

:?:.ьу::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me{space}
return

:?:.вщ::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do{space}
return

:?:.екн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /try{space}
return

:?:.зфн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /pay{space}
return

:?:.зге::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /put{space}
return

:?:.згдд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /pull{space}
return

:?:.ызфцтсфкы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /spawncars
return

:?:..воркпд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Работайте.
return

:?:..ворксд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Работайте.
return

:?:..воркфиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Работайте.
return

:?:..ворксанг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to SANG: Работайте.
return

:?:..спавн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /spawncars
return

:?:..адвокат::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to GOV: Требуется адвокат в допросную{space}
return

:?:..ду::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do to GOV: Требуется адвокат в допросную{space}
return

:?:..пруфы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
return

:?:..прокурор::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to GOV: Требуется прокурор в допросную{space}
return

:?:..запросак::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD/LSCSD: Разрешите работать по АК и ДК.
return

:?:..запросфиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Разрешите работать по 13.4 УК.
return

:?:..юрсд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..юрпд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..миранда::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Вы задержаны и имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеете право на один телефонный разговор до 2х минут и на одного адвоката. Если вы не можете оплатить услуги адвоката, он будет предоставлен вам государством бесплатно. Ваш адвокат имеет право присутствовать и представлять ваши интересы до и во время допроса. Вы понимаете свои права?
return

:?:..похитка::
IniRead, frac, assets/Settings.ini, USER, frac
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: %frac% займётся похищением.
return

:?:..адекват::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Требования похитителей адекватные.
return

:?:..неадекват::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Требования похитителей неадекватные, требуется помощь всех гос. структур.
return

:?:..коридор::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Запрашиваю *** зелёного коридора для машин *** цвета.
return

:?:..заложники::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Заложники в безопасности.
return

:?:..банк::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% сумку, положил%gender% в неё деньги, закрыл%gender% её и закинул%gender% на плечо{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do В сумке лежит $.{left 2}
sleep 400
return

:?:..напол::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me поставил%gender% сумку на землю{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка на земле.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do В сумке лежит $.{left 2}
sleep 400
return

:?:..взятка::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me прохлопал%gender% верхние и нижние карманы человека напротив{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Имеется ли у @ аудио или видеозаписывающее устройство?{left 40}
sleep 400
return

:?:..опз::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me посмотрел%gender% на опознавательный знак человека.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Что написано на опознавательном знаке у @?{left 1}
sleep 400
return

:?:..сел::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me запрыгнул%gender% в автомобиль через открытое окно{enter}
sleep 400
return

:?:..вылез::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me выпрыгнул%gender% из автомобиля через открытое окно{enter}
sleep 400
return

:?:..нарко::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do На столе лежит сумка с мед. приборами.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% резиновые перчатки из тактического пояса и надел%gender% их на руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% медицинские ножницы и пробирку с раствором{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% из зип-лока пакетик с порошком, насыпал%gender% порошок в пробирку с раствором{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Тест будет готов через 3 секунды.{enter}
sleep 3000
Sendinput, {t}
sleep 200
Sendinput, /do Результат готов. Раствор изменился в цвете.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Анализ показал содержание наркотических веществ.{enter}
sleep 400
return

:?:..весы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do Весы лежат на столе.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me включил%gender% весы и положил%gender% на них пакет с наркотическим веществом{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Весы показали{space}{space}грамм.{left 7}
sleep 400
return

;FUCK NO VOICE
:?:..номера::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% телефон в руки, сфотографировал%gender% номера транспорта и отправил%gender% фотографию диспетчеру{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Фотография успешно отправлена.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Диспетчер прислал ответ.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
sleep 400
return

:?:..пред::
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, sid, assets/Settings.ini, USER, sid
IniRead, place, assets/Settings.ini, USER, place

SendMessage, 0x50,, 0x4190419,, A
Sendinput, Здравствуйте, являюсь сотрудником %frac%, опознавательный знак на мне находится{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На %place% находится %type%: [%frac% | %otdel% | %sid%]{Enter}.{enter}
sleep 400
return

:?:..вавто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% дверь патрульного автомобиля, посадил%gender% туда задержанного{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me пристегнул%gender% его ремнём безопасности{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Задержанный надёжно пристёгнут ремнём безопасности.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me закрыл%gender% дверь автомобиля{enter}
sleep 400
return

:?:..изавто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% дверь патрульного автомобиля{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me отстегнул%gender% ремень безопасности{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Задержанный не пристёгнут ремнём безопасности{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% задержанного из транспорта{enter}
sleep 400
return

:?:..грим::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% в руки мокрую тряпочку, убрал%gender% грим с лица человека{enter}
return

:?:..очки::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me приподнял%gender% очки у человека напротив{enter}
return

:?:..фоторобот::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% в руки телефон, включил%gender% приложение "Камера"{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me сфотографировал%gender% лицо человека напротив{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Диспетчер прислал ответ, что человек  находится в розыске.{left 21}
sleep 400
return


:?:..20::/mark 10-20
:?:..7::/mark CODE-7
:?:..4::/mark CODE-4
:?:..2::/mark CODE-2
:?:..0::/mark CODE-0

:?:/20::/mark 10-20
:?:/7::/mark CODE-7
:?:/4::/mark CODE-4
:?:/2::/mark CODE-2
:?:/0::/mark CODE-0

:?:..апд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Вызов принят.
return
:?:..асд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Вызов принят.
return
:?:..афиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Вызов принят.
return

:?:/apd::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Вызов принят.
return
:?:/asd::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Вызов принят.
return
:?:/afib::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Вызов принят.
return


:?:..все::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL:{space}
return

:?:..пд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD:{space}
return

:?:..сд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to SD:{space}
return

:?:..фиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB:{space}
return

:?:..санг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to SANG:{space}
return

:?:..емс::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to EMS:{space}
return

:?:..вн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to WN:{space}
return

:?:..гов::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to GOV:{space}
return

:?:..клин::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /clearchat
return

:?:..трусы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /mark 10-20 [Рвут трусы]
return

:?:.да::👍
:?:.нет::👎
:?:.ок::👌
:?:.лол::😂
:?:.сэд::😢
:?:.демон::😈
:?:.огонь::🔥
:?:.банан::🍌
:?:.пуп::💩
:?:.лайк::❤️
