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
; Hotkey, *q, Off
; Hotkey, *w, Off
Hotkey, *[, Off
Hotkey, *', Off
Hotkey, *f, Off
Hotkey, *., Off
Hotkey, *`,, Off
Hotkey, *m, Off
Hotkey, *w, Off
Hotkey, *q, Off
Hotkey, *c, Off
Hotkey, *x, Off
Hotkey, *v, Off
Hotkey, *r, Off
Hotkey, *z, Off
Hotkey, *y, Off
Hotkey, *t, Off
Hotkey, *a, Off
Hotkey, *d, Off
Hotkey, *`;, Off
Hotkey, *g, Off
Hotkey, *t, Off
Hotkey, *b, Off

*RAlt::
    Hotkey, *i, on
    Hotkey, *j, on
    Hotkey, *k, on
    Hotkey, *l, on
    Hotkey, *o, on
    Hotkey, *u, on
    ; Hotkey, *q, on
    ; Hotkey, *w, on
    Hotkey, *[, on
    Hotkey, *', on
    Hotkey, *f, on
    Hotkey, *., on
    Hotkey, *`,, on
    Hotkey, *m, on
    Hotkey, *w, on
    Hotkey, *q, on
    Hotkey, *c, on
    Hotkey, *x, on
    Hotkey, *v, on
    Hotkey, *r, on
    Hotkey, *z, on
    Hotkey, *y, on
    Hotkey, *t, on
    Hotkey, *a, on
    Hotkey, *d, on
    Hotkey, *`;, on
    Hotkey, *g, on
    Hotkey, *t, on
    Hotkey, *b, on
return

*RAlt up::
    Hotkey, *i, off
    Hotkey, *j, off
    Hotkey, *k, off
    Hotkey, *l, off
    Hotkey, *o, Off
    Hotkey, *u, Off
    ; Hotkey, *q, Off
    ; Hotkey, *w, Off
    Hotkey, *[, Off
    Hotkey, *', Off
    Hotkey, *f, Off
    Hotkey, *., Off
    Hotkey, *`,, Off
    Hotkey, *m, Off
    Hotkey, *w, Off
    Hotkey, *q, Off
    Hotkey, *c, Off
    Hotkey, *x, Off
    Hotkey, *v, Off
    Hotkey, *r, Off
    Hotkey, *z, Off
    Hotkey, *y, Off
    Hotkey, *t, Off
    Hotkey, *a, Off
    Hotkey, *d, Off
    Hotkey, *`;, Off
    Hotkey, *g, Off
    Hotkey, *t, Off
    Hotkey, *b, Off
return

;RALT combos:   
*i::send {blind}{up}
*j::send {blind}{left}
*k::send {blind}{down}
*l::send {blind}{right}
*o::send {blind}{end}
*u::send {blind}{home}
;
;Required extensions for following custom commands:
;"Quick and Simple Text Selection" publisher:"David Bankier" 
;"change-case" publisher:"wmaurer"
;"Go to Next/Previous Member" publisher:"Mishkin Faustini"
;"Bracket Pair Colorizer 2" publisher:"CoenraadS"
;"Any Swap" by publisher:"wolray"
;"copy word in cursor" publisher:"Alessandro Fragnani"
;"Semicolon Insertion Shortcut" publisher:"Christian Valentin"
;"Multiple clipboards for VSCode" publisher:"slevesque"
;"Code Ace Jumper" publisher:"lucax88x"
;"Multiple clipboards for VSCode" publisher:"slevesque"
;
; *q::send {LCtrl Down}{k}{LCtrl Up}{LShift Down}{,}{LShift Up}   ;select inside angled brackets ! "Quick and Simple Text Selection" 
; *w::send {LCtrl Down}{k}{LCtrl Up}{LShift Down}{.}{LShift Up}   ;select inside tag ! "Quick and Simple Text Selection" 

*[::send {blind}{LCtrl Down}{k}{LCtrl Up}{[}   ;select inside bracket ! "Quick and Simple Text Selection" 
*'::send {LCtrl Down}{k}{LCtrl Up}{LShift Down}{;}{LShift Up}   ;switch quotes ! "Quick and Simple Text Selection" 
*f::send {blind}{F13}    ;(Flip case) flip upper/lower case !"change-case" 
*.::send {blind}{F14}    ;swap argument right !"Any Swap"
*,::send {blind}{F15}    ;swap argument left
*q::send {blind}{F16}    ;(Quote) select inside quote(bracket-pair-colorizer-2.expandBracketSelection)
*m::send {blind}{F17}    ;(Member) jump to next/previous member !"Go to Next/Previous Member" 
*w::send {LCtrl Down}{d}{LCtrl Up}    ;(Word) select word, press again to select next occurrence
*c::send {LCtrl Down}{c}{LCtrl Up}    ;(Copy) copy word ! "copy word in cursor" 
*x::send {LCtrl Down}{x}{LCtrl Up}    ;(X) cut word/selection !need above extension
*v::send {LCtrl Down}{v}{LCtrl Up}    ;(V) Paste 
*r::send {LCtrl Down}{d}{v}{LCtrl Up}    ;(Replace) replace Word
*z::send {LCtrl Down}{z}{LCtrl Up}    ;(Z) undo
*y::send {LCtrl Down}{y}{LCtrl Up}    ;(Y) redo
*t::send {home}{LShift Down}{end}{LShift Up}    ;(Text) select all Text in line (excluding the indent)
*a::send {LCtrl Down}{l}{LCtrl Up}    ;(Line) select line
*d::send {LCtrl Down}{d}{BackSpace}{LCtrl Up}    ;(Delete) word
*;::send {blind}{LCtrl Down}{;}{LCtrl Up}    ;add ;/: at end of line !Semicolon Insertion Shortcut
*g::send {Blind}{LCtrl Down}{g}{LCtrl Up}   ;(Goto) go to word, RALT+SHIFT+G go to line !ACE Jumper
*b::send {blind}{F18}   ;(Board) clipboard buffer

;<><>->_->=>___ZZZZZZZXXZXZbb```
*]::Send {Delete}  ;(Delete) 
^]::Send {LCtrl Down}{LShift Down}{Right}{LShift Up}{LCtrl Up}{BackSpace} ;don't send {delete} to avoid triggering the alt+ctrl+delete system-wide command on windows
; ^]::Send {LCtrl Down}{Delete}{LCtrl Up}

*`::Escape ;mapping backtick ` key to ESCAPE

; double press CapsLock to turn on, single press to turn off.. 
~CapsLock:: 
    if (A_PriorHotkey != "~CapsLock" or A_TimeSincePriorHotkey > 200)
    {
        ; Too much time between presses, so this isn't a double-press
        KeyWait, CapsLock
        SetCapsLockState, off
        return
    }
    SetCapsLockState, On ;double-pressed
return

CapsLock & j::Send {1}
CapsLock & k::Send {2}
CapsLock & l::Send {3}
CapsLock & u::Send {4}
CapsLock & i::Send {5}
CapsLock & o::Send {6}
CapsLock & 7::Send {7}
CapsLock & 8::Send {8}
CapsLock & 9::Send {9}
CapsLock & 0::Send {0}
CapsLock & a::SendMode("{-}{>}", "{=}{>}")  ;A for Arrow
CapsLock & p::SendMode("{+}", "assignment") ;P for Plus
CapsLock & -::SendMode("{-}", "assignment")
CapsLock & m::SendMode("{*}", "assignment") ;M for Multiply
CapsLock & /::SendMode("{/}", "assignment")
CapsLock & h::SendMode("{&}", "assignment") ;no mnemonic :/
CapsLock & n::SendMode("{|}", "assignment")
CapsLock & `;::SendMode("{:}", "assignment")
CapsLock & '::Send {"}
CapsLock & q::Send {<}
CapsLock & w::Send {>}
CapsLock & e::Send {[}
CapsLock & r::Send {]}
CapsLock & d::Send {(}
CapsLock & f::Send {)}
CapsLock & c::Send {{}
CapsLock & v::Send {}}
CapsLock & 1::Send {!}
CapsLock & 2::Send {@}  
CapsLock & 3::Send {#}   
CapsLock & 4::Send {$}  
CapsLock & 5::Send {`%}
CapsLock & 6::Send {^} 
CapsLock & s::Send {_}  ;S for underScore 
CapsLock & t::Send {~}  ;T for Tilde
CapsLock & b::Send {``}  ;B for Back tick
; CapsLock & @::SendMode("ummmmm@gmail.com", "string")

;disable keys: 
;   
<+9::return ;disable left shift + 9 
<++::return
<+8::return
; <+[::return
; <+]::return 
; *[::return


SendMode(key, mode) {
    LAlt := GetKeyState("LALT", "P")

    if LAlt {
        switch mode {
            case "assignment":  Send, %key%=
            case "string":      Send, %key%
            Default:            Send, %mode% ; switch
        }
    }
    else {
        Send, %key%
    }
}
