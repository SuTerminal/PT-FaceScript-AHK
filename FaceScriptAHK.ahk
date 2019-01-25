/*
Scripted by SUTermnial550
Use at your own risk
*/

CoordMode, ToolTip , Screen
face_expression := "Null"
face_aoa := "Null"

SetKeyDelay, 0

^ESC::ExitApp
F12::Reload
F11::Suspend

NumpadAdd::
send, {+}
face_expression := "c"
face_aoa := false
return

NumpadSub::
send, {-}
face_expression := "-"
face_aoa := false
return

NumpadDel::
send, {,}
face_expression := "O"
face_aoa := false
return

NumpadMult::
send, {*}
face_expression := "."
face_aoa := false
return

NumpadDiv::
send, {/}
face_expression := "~"
face_aoa := false
return

F9::
face_expression := "n"
face_aoa := false
return

F10::
face_expression := "_"
face_aoa := false
return

NumpadEnter & NumpadAdd::
send, {+}
face_expression := "C"
face_aoa := true
return

NumpadEnter & NumpadSub::
send, {-}
face_expression := "-"
face_aoa := true
return

NumpadEnter & NumpadDel::
send, {,}
face_expression := "O"
face_aoa := true
return

NumpadEnter & NumpadMult::
send, {*}
face_expression := "."
face_aoa := true
return

NumpadEnter & NumpadDiv::
send, {/}
face_expression := "~"
face_aoa := true
return

NumpadEnter & F9::
face_expression := "n"
face_aoa := true
return

NumpadEnter & F10::
face_expression := "_"
face_aoa := true
return


NumpadHome::left_up(face_expression, face_aoa)
NumpadUp::up(face_expression, face_aoa)
NumpadPgUp::right_up(face_expression, face_aoa)

NumpadLeft::left(face_expression, face_aoa)
NumpadClear::mid(face_expression, face_aoa)
NumpadRight::right(face_expression, face_aoa)

NumpadEnd::left_down(face_expression, face_aoa)
NumpadDown::down(face_expression, face_aoa)
NumpadPgDn::right_down(face_expression, face_aoa)



left_up(x, y){
if (y == false)
send, {Enter}/e g%x%g{Enter}
else if (y == true)
send, {Enter}/e g%x%a{Enter}
}

up(x, y){
if (y == false)
send, {Enter}/e 9%x%9{Enter}
else if (y == true)
send, {Enter}/e o%x%a{Enter}
}

right_up(x, y){
if (y == false)
send, {Enter}/e e%x%e{Enter}
else if (y == true)
send, {Enter}/e a%x%e{Enter}
}

left(x,y){
if (y == false)
send, {Enter}/e <%x%<{Enter}
else if (y == true)
send, {Enter}/e <%x%a{Enter}
}

mid(x, y){
if (y == false)
send, {Enter}/e o%x%o{Enter}
else if (y == true)
send, {Enter}/e a%x%a{Enter}
}

right(x, y){
if (y == false)
send, {Enter}/e >%x%>{Enter}
else if (y == true)
send, {Enter}/e a%x%>{Enter}
}



left_down(x, y){
if (y == false)
send, {Enter}/e d%x%d{Enter}
else if (y == true)
send, {Enter}/e d%x%a{Enter}
}

down(x, y){
if (y == false)
send, {Enter}/e 6%x%6{Enter}
else if (y == true)
send, {Enter}/e a%x%o{Enter}
}

right_down(x, y){
if (y == false)
send, {Enter}/e b%x%b{Enter}
else if (y == true)
send, {Enter}/e a%x%b{Enter}
}

NumpadIns::send, {Enter}/e{Enter}


/*Quick commands*/
F1::send, {Enter}/achoo{Enter}
F2::send, {Enter}/blush{Enter}
F3::send, {Enter}/yawn{Enter}
F4::send, {Enter}/sleep{Enter}

F5::send, {Enter}{^}{^}{Enter}
F6::send, {Enter}/e =-={Enter}
F7::send, {Enter}/e OAO{Enter}
F8::send, {Enter}/-3-{Enter}
/*Lets make Enter great again*/
NumpadEnter::send, {Enter}


