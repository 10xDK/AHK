#NoEnv
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
Hotkey, *h, Off
; Hotkey, *[, Off
Hotkey, *s, Off
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
Hotkey, *p, Off

*RAlt::
    Hotkey, *i, on
    Hotkey, *j, on
    Hotkey, *k, on
    Hotkey, *l, on
    Hotkey, *o, on
    Hotkey, *u, on
    Hotkey, *e, on
    Hotkey, *h, on
    ; Hotkey, *[, on
    Hotkey, *s, on
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
    Hotkey, *p, on
return

*RAlt up::
    Hotkey, *i, off
    Hotkey, *j, off
    Hotkey, *k, off
    Hotkey, *l, off
    Hotkey, *o, Off
    Hotkey, *u, Off
    Hotkey, *e, Off
    Hotkey, *h, Off
    ; Hotkey, *[, Off
    Hotkey, *s, Off
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
    Hotkey, *p, Off
return

;RALT combos:   
*i::send {blind}{up}
*j::send {blind}{left}
*k::send {blind}{down}
*l::send {blind}{right}
*o::send {blind}{end}
*u::send {blind}{home}
;
; Custom commands are software-dependent and need manual configuration for the keybinds.
; Below are the required extensions for VSCode: 
;"Bracket Select" publisher:"Chunsen Wang"
;"Quick and Simple Text Selection" publisher:"David Bankier" 
;"change-case" publisher:"wmaurer"
;"Go to Next/Previous Member" publisher:"Mishkin Faustini"
;"Any Swap" by publisher:"wolray"
;"copy word in cursor" publisher:"Alessandro Fragnani"
;"Semicolon Insertion Shortcut" publisher:"Christian Valentin"
;"Multiple clipboards for VSCode" publisher:"slevesque"
;"Code Ace Jumper" publisher:"lucax88x"
;

*e::send {LCtrl Down}{k}{LCtrl Up}{LShift Down}{,}{LShift Up}   ;select inside angled brackets ! "Quick and Simple Text Selection" (extension.selectAngleBrackets)
*h::send {LCtrl Down}{k}{LCtrl Up}{LShift Down}{.}{LShift Up}   ;select inside HTML tag ! "Quick and Simple Text Selection" (extension.selectInTag)
; *[::send {blind}{LCtrl Down}{k}{LCtrl Up}{[}   ;select inside square/curly bracket ! "Quick and Simple Text Selection" 
*s::send {F16}{LCtrl Down}{k}{LCtrl Up}{LShift Down}{;}{LShift Up}   ;switch quotes ! "Quick and Simple Text Selection" (extension.switchQuotes)
*f::send {blind}{F13}    ;(Flip case) flip to lower/upper/camal/firstUpper case !"change-case" (extension.changeCase.lower, extension.changeCase.upper, extension.changeCase.upperFirst)
*.::send {blind}{F14}    ;swap argument right !"Any Swap" (anySwap.forward)
*,::send {blind}{F15}    ;swap argument left (anySwap.Backward)
*q::send {blind}{F16}    ;(Quote) select inside quote !"Bracket Select" (bracket-select.select)
*m::send {blind}{F17}    ;(Member) jump to next/previous member !"Go to Next/Previous Member" (gotoNextPreviousMember.nextMember, gotoNextPreviousMember.previousMember)
*w::send {LCtrl Down}{d}{LCtrl Up}    ;(Word) select word, press again to select next occurrence
*c::send {LCtrl Down}{d}{c}{LCtrl Up}    ;(Copy) copy word ! "copy word in cursor" 
*x::send {LCtrl Down}{d}{x}{LCtrl Up}    ;(X) cut word/selection !need above extension
*v::send {LCtrl Down}{v}{LCtrl Up}    ;(V) Paste 
*r::send {LCtrl Down}{d}{v}{LCtrl Up}    ;(Replace) replace Word with the clipboard
*z::send {LCtrl Down}{z}{LCtrl Up}    ;(Z) undo
*y::send {LCtrl Down}{y}{LCtrl Up}    ;(Y) redo
*t::send {home}{LShift Down}{end}{LShift Up}    ;(Text) select all Text in line (excluding the indent)
*a::send {LCtrl Down}{l}{LCtrl Up}    ;(All) select all thing in a line including the indent
*d::send {LCtrl Down}{d}{BackSpace}{LCtrl Up}    ;(Delete) word 
*;::send {blind}{LCtrl Down}{LShift Down}{;}{LShift Up}{LCtrl Up}    ;add ;/: at end of line !Semicolon Insertion Shortcut
*g::send {Blind}{LCtrl Down}{g}{LCtrl Up}   ;(Goto) go to word, RALT+SHIFT+G go to line !ACE Jumper
*b::send {blind}{F18}   ;(Board) clipboard buffer
*p::send {blind}{F19}   ;(Page) page up or down 

;;;standalone keys: "[" key send DELETE, Use it if the Delete key is distant on your keyboard.
*\::Send {Delete}  ;(Delete) 
^\::Send {LShift Down}{end}{LShift Up}{BackSpace} ;don't send {delete} to avoid triggering the alt+ctrl+delete system-wide command on windows
+\::Send {LShift Down}{home}{LShift Up}{BackSpace} ;don't send {delete} to avoid triggering the alt+ctrl+delete system-wide command on windows
; +\::Send {LCtrl Down}{LShift Down}{Right}{LShift Up}{LCtrl Up}{BackSpace} ;don't send {delete} to avoid triggering the alt+ctrl+delete system-wide command on windows
;; ^[::Send {LCtrl Down}{Delete}{LCtrl Up}

*[::Send {=}
*`::Escape ;backtick "`" key to send ESCAPE
*0::Send {_} ; 
*/::Send {blind}{?} ;
; *'::Send {"} ; 
;;;END of standalone keys


; CapsLock Mode 1: double press CapsLock to turn on, single press to turn off.. 
; CapsLock:: 
;     ; MsgBox, %A_PriorHotkey%
;     if (A_PriorHotkey != "*Capslock Up" or A_TimeSincePriorHotkey > 200)
;     {
;         ; Too much time between presses, so this isn't a double-press
;         KeyWait, CapsLock
;         SetCapsLockState, off
;         CLState := 0
;         return
;     }
;     SetCapsLockState, On ;double-pressed
;     CLState := 1
; return

; CapsLock Mode 2: double press CapsLock to turn it on/off.. 
CapsLock:: 
    ; MsgBox, %A_PriorHotkey%
    if (A_PriorHotkey == "*Capslock Up" and A_TimeSincePriorHotkey < 300)
    {
        KeyWait, CapsLock

        if GetKeyState("CapsLock", "T") 
        {
            SetCapsLockState, off
            CLState := 0
        }
        else
        {
            SetCapsLockState, on
            CLState := 1
        }
    }
Return

*Capslock Up:: ; Fire the hotkey even if extra modifiers are being held down. 
    if CLState == 0
        SetCapsLockState, off
return

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

CapsLock & j::Send {1}
CapsLock & k::Send {2}
CapsLock & l::Send {3}
CapsLock & u::Send {4}
CapsLock & i::Send {5}
CapsLock & o::Send {6}
CapsLock & 7::Send {7}
CapsLock & 8::Send {8}
CapsLock & 9::Send {9}
CapsLock & h::Send {0}
CapsLock & p::SendMode("{+}", "assignment") ;P for Plus
CapsLock & y::SendMode("{-}", "assignment") ;M for Minus
CapsLock & m::SendMode("{*}", "assignment") ;T for Times
CapsLock & /::SendMode("{/}", "assignment")
CapsLock & n::SendMode("{&}", "assignment") ;aNd 
CapsLock & b::SendMode("{|}", "assignment") ;OR (Y shape gate)
CapsLock & 6::SendMode("{^}", "assignment") ;xor
CapsLock & `;::SendMode("{:}", "assignment")
CapsLock & e::SendMode("{<}", "assignment")
CapsLock & r::SendMode("{>}", "assignment")
CapsLock & g::SendMode("{-}{>}", "{=}{>}")  ;-> (Go to)
CapsLock & t::Send {~}  ;Tilde
CapsLock & q::Send {[}
CapsLock & w::Send {]}
CapsLock & d::Send {(}
CapsLock & f::Send {)}
CapsLock & c::Send {{}
CapsLock & v::Send {}}
CapsLock & "::Send {"}
CapsLock & 1::SendMode("{!}", "assignment")
CapsLock & 2::Send {@}  
CapsLock & 3::Send {#}   
CapsLock & 4::Send {$}  
CapsLock & 5::Send {`%}
CapsLock & z::Send {``} ;
CapsLock & s::Send {_}  ;S for Score
CapsLock & x::Send {\}  ;
; CapsLock & 0::Send {_}  ;just for easy accessibility 
CapsLock & a::Send {a}  ;placeholder!
CapsLock & =::Send {=}  ; 
CapsLock & _::Send {_}  ;
CapsLock & 0::Send {0}  ;
CapsLock & [::Send {[}  ;
CapsLock & ]::Send {]}  ;
CapsLock & ,::Send {,}  ;
CapsLock & .::Send {.}  ;
CapsLock & \::Send {Delete}  ;
CapsLock & Backspace::Send {Backspace}  ;
CapsLock & Enter::Send {Enter}  ;
CapsLock & Space::Send {Space}  ;
; CapsLock & @::SendMode("ummmmm@gmail.com", "string")

;disable keys: 
;   
<+9::return ;disable left shift + 9 
<++::return
<+8::return
; <+[::return
; <+]::return 
; *[::return
