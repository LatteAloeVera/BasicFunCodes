Option Explicit
Dim Title,Answer,ws,Site
Site = "https://www.youtube.com/"
Title = "Open Sesame"
Answer = MsgBox("Do you wanna go gaming mode?",VbQuestion+VbYesNo,Title)
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("C:\Users\ayberk\AppData\Local\Discord\Update.exe --processStart Discord.exe")
    ws.run("chrome.exe" &" "& Site)
End If
Wscript.Quit()