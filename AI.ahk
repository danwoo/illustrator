#Persistent  ; For demonstration purposes, keep the script running if the user chooses "No".
OnExit, ExitSub
return
; if mouse mode is arrow keys, ie. shifting the object up and down instead of mouse, switch back to
; non mouse mode, press del  4    del   , and switch back to mouse mode and try it then.
ExitSub:
if A_ExitReason not in Logoff,Shutdown,Menu  ; Avoid spaces around the comma in this line.
{
    ;MsgBox, 4, , Are you sure you want RightHand?
    ;IfMsgBox, Yes
        run righty
	ExitApp
return
}
ExitApp  ; 

numpaddot & numpadenter:: exitapp

;esc::send {numlock}

numpadins::shift
numpadpgup::send {tab}
numpaddel & numpadright:: send ^c
numpaddel & numpadpgdn:: send ^v


numpaddot & numpad3::send {lwin}
;numpaddot & numpad4::send {appskey}
numpaddot & numpad4::send {numlock}
numpaddot & numpadsub::AltTab
;numpaddot & numpadmult::send ^{Tab}
;numpaddot & numpad9::send ^{f4}
;numpaddot & numpad6::send !{f4}

numpaddot & numpad9::send x
numpaddot & numpad6::send {/}


numpaddot & numpad5::send {f5}
numpaddot & numpad1::send {alt}
numpaddot & numpad2::send {enter}
numpaddot & numpad0::send {f7}

numpaddot & numpad7::send {f6}
numpaddot & numpad8::send {f2}
numpaddot & numpaddiv::send {f3}
numpaddot & numpadmult::send {f1}
numpaddot & backspace::run shiftdown



;numpaddot & numpad8::send ^t	
;numpaddot & numpad7::send !d
;numpaddot & numpad7::send {space}

;numpad1 & numpadsub::send ^#{Tab}
;numpad1 & numpadsub::AltTab
;numpad1 & numpadmult::send ^#{Tab}
;numpad4 & numpad1::run onehandn305.ahk

numpadsub::backspace
numpadmult & numpadsub::send {del}

;#ifwinactive ahk_class illustrator
numpad0 & numpad1:: send b
numpad0 & numpad2:: send a
numpad0 & numpad3:: send p
numpad0 & numpad4:: send i
numpad0 & numpad5:: send r
numpad0 & numpad6:: send y
;numpad0 & numpad7:: send {esc}

numpad0 & numpad7:: send {volume_mute}

numpad0 & numpad8:: send u
numpadmult::send e

;Numpad0::send {[}
numpad1::q
numpad2::v
numpad3::h
;numpad4::r
numpad5::z
numpad6::c
;numpad7::g

numpad7::g


tab::send {shift down}

;numpad8:: send {]}
numpad9::Alt

;numpad4 & numpad5:: send {esc} 

;numpad4 & numpad6:: send {f7} 

;numpad7 & numpad8:: send {enter}



;delete::numlock

numpaddiv::f

numpadadd::shift

;numpadadd::Shift
;numpadsub::f
numpadenter::Ctrl

;backspace::a

;numpad1 & backspace::send ^#{Tab}
;numpad4 & backspace::run onehandn305
;sc020:: 
;sc014:: 
;sc038:: RUN numlock.exe


;#singleinstance force

!Numpad6::
  KeyWait, Numpad1, D
  Send k
Return

!Numpad1::Return     ;So doesn't send "?" on the Alt-1 part of Alt-4-1

!Numpad4::
  KeyWait, Numpad4                ;Alt & Numpad4 both down .. wait for Numpad4 to be released

  While GetKeyState("Alt","P")
  {
    If GetKeyState("Numpad0","P") 
    {
      KeyWait, Numpad0            ;Alt & Numpad0 both down .. wait for Numpad0 to be released
      Send  h    
      Return
    }

    If GetKeyState("Numpad1","P") 
    {
       KeyWait, Numpad1            ;Alt & Numpad0 both down .. wait for Numpad0 to be released
       Send v
       Return
    }

    Sleep, 1
  }
Return
