#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#KeyHistory 0

Hotkey, *i, Off
Hotkey, *j, Off
Hotkey, *k, Off
Hotkey, *l, Off
Hotkey, *o, Off
Hotkey, *u, Off
Hotkey, *e, Off
Hotkey, *9, Off
Hotkey, *c, Off
Hotkey, *., Off
Hotkey, *`,, Off
Hotkey, *\, Off

*RAlt::
    Hotkey, *i, on
    Hotkey, *j, on
    Hotkey, *k, on
    Hotkey, *l, on
    Hotkey, *o, on
    Hotkey, *u, on
    Hotkey, *e, on
    Hotkey, *9, on
    Hotkey, *c, on
    Hotkey, *., on
    Hotkey, *`,, on
    Hotkey, *\, on
return

*RAlt up::
    Hotkey, *i, off
    Hotkey, *j, off
    Hotkey, *k, off
    Hotkey, *l, off
    Hotkey, *o, Off
    Hotkey, *u, Off
    Hotkey, *e, Off
    Hotkey, *9, Off
    Hotkey, *c, Off
    Hotkey, *., Off
    Hotkey, *`,, Off
    Hotkey, *\, Off
return

*i::send {blind}{up}
*j::send {blind}{left}
*k::send {blind}{down}
*l::send {blind}{right}
*o::send {blind}{end}
*u::send {blind}{home}
*e::send {blind}{F13}
*9::send {blind}{F14}
*c::send {blind}{F15}
*.::send {blind}{F16}
*,::send {blind}{F17}
*\::send {blind}{delete}

; double press CapsLock to turn on, single press to turn off.
~CapsLock:: 
    if (A_PriorHotkey != "~CapsLock" or A_TimeSincePriorHotkey > 200)
    {
        ; Too much time between presses, so this isn't a double-press.
        KeyWait, CapsLock
        SetCapsLockState, off
        return
    }
    SetCapsLockState, On ;double-pressed
return

; CapsLock & 1::SendMode("{1}", "double")
; CapsLock & s::SendMode("{s}", "assignment")
CapsLock & @::SendMode("ummmmm@gmail.com", "string")

CapsLock & u::Send {1}
CapsLock & i::Send {2}
CapsLock & o::Send {3}
CapsLock & j::Send {4}
CapsLock & k::Send {5}
CapsLock & l::Send {6}
CapsLock & m::Send {7}
CapsLock & ,::Send {8}
CapsLock & .::Send {9}
CapsLock & y::Send {0}
; CapsLock & RAlt::Send {0}
CapsLock & x::Send {x}
CapsLock & n::Send {.}
CapsLock & t::SendMode("{-}{>}", "arrow")
CapsLock & h::SendMode("{&}", "assignment")
CapsLock & g::SendMode("{|}", "assignment")
CapsLock & p::SendMode("{+}", "assignment")
CapsLock & -::SendMode("{-}", "assignment")
CapsLock & 8::SendMode("{*}", "assignment")
CapsLock & /::SendMode("{/}", "assignment")
CapsLock & `;::SendMode("{:}", "assignment")
CapsLock & '::Send {"}
CapsLock & e::Send {<}
CapsLock & r::Send {>}
; CapsLock & 9::Send {(}
; CapsLock & 0::Send {)}
CapsLock & d::Send {(}
CapsLock & f::Send {)}
CapsLock & c::Send {{}
CapsLock & v::Send {}}
CapsLock & s::SendMode("{\}", "{n}") 
CapsLock & 4::Send ({$}) 
CapsLock & 5::Send ({%}) 
CapsLock & 6::Send ({^}) 
CapsLock & \::Send {delete}


;disable keys: 
;   
<+9::return ;disable left shift + 9 
<++::return
<+8::return
<+[::return
<+]::return


SendMode(key, mode) {
    LAlt := GetKeyState("LALT", "P")

    if LAlt {
        switch mode {
            ; case "double":      Send, %key%%key%
            case "assignment":  Send, %key%=
            case "arrow":       Send, =>
            case "string":      Send, %key%
            Default:            Send, %key%%mode%
        }
    }
    else {
        Send, %key%
    }
}

; CapsLock::
;     KeyWait, CapsLock                                                   ; Wait forever until Capslock is released.
;     KeyWait, CapsLock, D T0.2                                           ; ErrorLevel = 1 if CapsLock not down within 0.2 seconds.
;     if ((ErrorLevel = 0) && (A_PriorKey = "CapsLock") )                 ; Is a double tap on CapsLock?
;         {
;             ; SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"  ; Toggle the state of CapsLock LED
;             ; CLState := GetKeyState("CapsLock","T")
;             ; MsgBox CLState is %CLState%
;             if (GetKeyState("CapsLock","T") == False)
;             {
;                 SetCapsLockState, on
;                 CLState := 0
;                 ; MsgBox CLState is %CLState%
;             }
;             else if (GetKeyState("CapsLock","T") == True)
;             {
;                 SetCapsLockState, off
;                 CLState := 1
;                 ; MsgBox CLState is %CLState%
;             }
;         }
; return

; *CapsLock up::
;     if (CLState != 1)
;     {
;         SetCapsLockState, Off
;         CLState := 0
;     }
; return
