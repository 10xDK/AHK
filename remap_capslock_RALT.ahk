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
Hotkey, *., Off
Hotkey, *`,, Off
Hotkey, *w, Off
Hotkey, *q, Off
Hotkey, *c, Off
Hotkey, *x, Off
Hotkey, *v, Off
Hotkey, *r, Off
Hotkey, *z, Off
Hotkey, *y, Off
Hotkey, *s, Off
Hotkey, *a, Off

*RAlt::
    Hotkey, *i, on
    Hotkey, *j, on
    Hotkey, *k, on
    Hotkey, *l, on
    Hotkey, *o, on
    Hotkey, *u, on
    Hotkey, *e, on
    Hotkey, *., on
    Hotkey, *`,, on
    Hotkey, *w, on
    Hotkey, *q, on
    Hotkey, *c, on
    Hotkey, *x, on
    Hotkey, *v, on
    Hotkey, *r, on
    Hotkey, *z, on
    Hotkey, *y, on
    Hotkey, *s, on
    Hotkey, *a, on
return

*RAlt up::
    Hotkey, *i, off
    Hotkey, *j, off
    Hotkey, *k, off
    Hotkey, *l, off
    Hotkey, *o, Off
    Hotkey, *u, Off
    Hotkey, *e, Off
    Hotkey, *., Off
    Hotkey, *`,, Off
    Hotkey, *w, Off
    Hotkey, *q, Off
    Hotkey, *c, Off
    Hotkey, *x, Off
    Hotkey, *v, Off
    Hotkey, *r, Off
    Hotkey, *z, Off
    Hotkey, *y, Off
    Hotkey, *s, Off
    Hotkey, *a, Off
return

*i::send {blind}{up}
*j::send {blind}{left}
*k::send {blind}{down}
*l::send {blind}{right}
*o::send {blind}{end}
*u::send {blind}{home}
*e::send {blind}{F13}   ;select inside tag !need extension "Quick and Simple Text Selection" publisher:"David Bankier" 
*.::send {blind}{F14}   ;jump to next member !need extension support 
*,::send {blind}{F15}   ;jump to previous member
*q::send {blind}{F16}   ;select inside quote(including brackets) !need extension support "bracket select" by chunsen wang
*w::send {LCtrl Down}{d}{LCtrl Up}   ;(Word) select word
*c::send {LCtrl Down}{c}{LCtrl Up}   ;(Copy)copy word !need extension "copy word in cursor" publisher:"Alessandro Fragnani"
*x::send {LCtrl Down}{x}{LCtrl Up}   ;(X) cut word/selection !need above extension
*v::send {LCtrl Down}{v}{LCtrl Up}       ;(V) Replace
*r::send {LCtrl Down}{d}{v}{LCtrl Up}   ;(Replace) replace Word
*z::send {LCtrl Down}{z}{LCtrl Up}   ;(Z) undo
*y::send {LCtrl Down}{y}{LCtrl Up}   ;(Y) redo
*s::send {home}{LShift Down}{end}{LShift Up}   ;(Sentence) select the sentence (all text in the line)
*a::send {LCtrl Down}{l}{LCtrl Up}   ;(Line) select line

; key 9 and key 0 always behave like backspace and delete key
*9::Send {Blind}{BackSpace}
*0::Send {Blind}{Delete}

; double press CapsLock to turn on, single press to turn off....
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
CapsLock & x::Send {x}
CapsLock & n::Send {.}
CapsLock & h::Send {,}
CapsLock & t::SendMode("{-}{>}", "arrow")
CapsLock & g::SendMode("{&}", "assignment")
CapsLock & b::SendMode("{|}", "assignment")
CapsLock & p::SendMode("{+}", "assignment")
CapsLock & -::SendMode("{-}", "assignment")
CapsLock & 8::SendMode("{*}", "assignment")
CapsLock & /::SendMode("{/}", "assignment")
CapsLock & `;::SendMode("{:}", "assignment")
CapsLock & '::Send {"}
CapsLock & e::Send {<}
CapsLock & r::Send {>}
CapsLock & d::Send {(}
CapsLock & f::Send {)}
CapsLock & c::Send {{}
CapsLock & v::Send {}}
CapsLock & 4::Send {$}
CapsLock & 5::Send {`%}
CapsLock & 6::Send {^} 
CapsLock & s::Send {_}
CapsLock & \::SendMode("{\}", "{n}") 

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
