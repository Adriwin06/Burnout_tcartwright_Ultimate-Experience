#Requires AutoHotkey v2.0

m::
{
    static KeyDown := false
    KeyDown := !KeyDown
    If KeyDown
        SendInput("{k down}")
    Else
        SendInput("{k up}")
    Return
}