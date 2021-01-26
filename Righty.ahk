#Persistent  ; For demonstration purposes, keep the script running if the user chooses "No".
OnExit, ExitSub
return

ExitSub:
if A_ExitReason not in Logoff,Shutdown,Menu  ; Avoid spaces around the comma in this line.
{
    ;MsgBox, 4, , Are you sure you want AIShortcuts?
    ;IfMsgBox, Yes
        run AI
	ExitApp
return
}
ExitApp  ; 

numpaddot & numpadenter:: exitapp


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkeyotepad releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleinstance force

;;; for acer, have to first terminate launch manager worker.exe in task manager processes to disable ;;;notifications sounds, for goldtouch to work




;;;;;;;;numlock off
numpadins::shift
numpadhome::ctrl
numpadend::alt
;numpadpgup::send {tab}
numpaddel & numpadpgup:: send ^c
numpaddel & numpadright:: send ^v
numpaddel & numpadpgdn:: send ^z

;;;;;;;;;;;;;;internet and windows

numpaddot & numpad3::send {lwin}
numpaddot & numpad4::send {@}
;numpaddot & numpadsub::send ^#{Tab}
numpaddot & numpadsub::AltTab

numpaddot & numpadmult::send ^{Tab}
numpaddot & numpad9::send ^{f4}
numpaddot & numpad6::send !{f4}
;numpaddot & numpaddiv::send winmaximize, a

numpaddot & numpad5::send {f5}
numpaddot & numpad1::send {alt}
numpaddot & numpad2::send {tab}
numpaddot & numpad7::send !d
numpaddot & numpad8::send ^t

numpaddot & numpad0::send {esc} 
;numpaddot::capslock

;;;;;;;;;;;;;;;;;ai

;numpad4 & numpad5:: send {esc} 
numpad7 & numpad9:: send ^c
numpad7 & numpad6:: send ^v
numpad7 & numpad5:: send ^z
numpad7 & numpad3:: send ^g
;numpad7 & numpad2:: send {^-}
;numpad7 & numpad4:: send {f7}
;numpad7 & numpad2:: send {shift}
;numpad7 & numpad4:: send {ctrl}
 

;;;;;;;;;;;;;;;Layout 1

numpad0::send {space}
numpad1::send {blind}o
numpad2::send {blind}n
numpad3::send {blind}d
numpad4::send {blind}a
numpad5::send {blind}e

numpad6::send {blind}i
numpad7::send {blind}s
numpad8::send {blind}h
numpad9::send {blind}t
numpadmult::send {blind}c

numpaddiv::send {blind}u
numpadadd::send {blind}r
;numpadenter::capslock

;numpadsub::backspace
numpadsub::backspace
numpadmult & numpadsub::send {del}
;numpadmult & backspace::send {del}
delete::capslock
backspace::ctrl
tab:: capslock
esc::send {volume_mute}

;numpaddot & numpadsub::AltTab
;numpaddot & numpadmult::send ^#{Tab}

;;;;;;;;;;;;;;;;;;;Layout 2

numpad0 & numpad1:: send {enter}
numpad0 & numpad2:: send {blind}k
numpad0 & numpad3:: send {blind}m
numpad0 & numpad4:: send {blind}g
numpad0 & numpad5:: send {blind}f
numpad0 & numpad6:: send {blind}y
numpad0 & numpad7:: send {blind}b
numpad0 & numpad8:: send {blind}l
numpad0 & numpad9:: send {blind}j
numpad0 & numpaddiv:: send {blind}w
numpad0 & numpadmult:: send {blind}p
numpad0 & numpadsub:: send {blind}x
numpad0 & numpaddot:: send {blind}z
numpad0 & numpadenter:: send {blind}q
numpad0 & numpadadd:: send {blind}v

sc038::  RUN numlock.exe


;delete::capslock

numpad7 & numpad8:: send {enter} 

numpad4 & numpad8:: send .
numpad4 & numpad9:: send {,}
numpad4 & numpad5:: send '
numpad4 & numpad6:: send ?
numpad4 & numpad2:: send "
numpad4 & numpad3:: send {!}
;numpad4 & numpad1:: run aishortcuts.ahk
numpad4 & backspace::send {#}

;numpad4 & numpad7:: send 
numpad4 & numpad1:: send /
numpad4 & numpaddiv:: send {;}
numpad4 & numpadmult:: send -


;lefthand

numpadenter:: send {blind}{space}

numpadenter & numpad1:: send {enter}
numpadenter & numpad2:: send {blind}k
numpadenter & numpad3:: send {blind}m
numpadenter & numpad4:: send {blind}g
numpadenter & numpad5:: send {blind}f
numpadenter & numpad6:: send {blind}y
numpadenter & numpad7:: send {blind}b

numpadenter & numpad8:: send {blind}l
numpadenter & numpad9:: send {blind}j 
numpadenter & numpaddiv:: send {blind}w
numpadenter & numpadmult:: send {blind}p
numpadenter & numpadsub:: send {blind}x
numpadenter & numpaddot:: send {blind}z
numpadenter & numpad0:: send {blind}q
numpadenter & numpadadd:: send {blind}v

;;;;;;;;;;;;;;;;;;;;;;

numpad1 & backspace:: send 9
numpad1 & numpad2:: send 1
numpad1 & numpad3:: send 2
numpad1 & numpad4:: send 3
numpad1 & numpad5:: send 4
numpad1 & numpad6:: send 5
numpad1 & numpad7:: send 6
numpad1 & numpad8:: send 7
numpad1 & numpad9:: send 8
numpad1 & numpad0:: send 0



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkeyotepad releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleinstance force

;!Numpad6::
;  KeyWait, Numpad1, D
;  Send k
;Return

;!Numpad1::Return     ;So doesn't send "?" on the Alt-1 part of Alt-4-1

!Numpad4::
  KeyWait, Numpad4                ;Alt & Numpad4 both down .. wait for Numpad4 to be released

  While GetKeyState("Alt","P")
  {
    If GetKeyState("Numpad0","P") 
    {
      KeyWait, Numpad0            ;Alt & Numpad0 both down .. wait for Numpad0 to be released
      Send d      
      Return
    }

    If GetKeyState("Numpad1","P") 
    {
       KeyWait, Numpad1            ;Alt & Numpad0 both down .. wait for Numpad0 to be released
       Send z
       Return
    }

    Sleep, 1
  }
Return

