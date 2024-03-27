Dim firstMessage
Do until firstMessage=6
firstMessage = msgbox("Oh hello there adventurer! Do you want to help me with a problem? ", 4+64+4096, "Adventurer's Quest")
if firstMessage=6 Then
a=msgbox("Good! i will mark the location on your map, go there and you understand what to do.",0+64,"*Writes some stuff on your map*")
s=msgbox("NEW QUEST ADDED TO YOUR JOURNAL!", 0, "Yey!")
Else
var=msgbox("You shouldn't have done that.", 48,"Uh-Oh..")
end if 
Loop
