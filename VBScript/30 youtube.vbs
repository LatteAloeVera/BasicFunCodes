Dim var,Site,ws
Dim a : a = 30
Site = "https://www.youtube.com/watch?v=xvFZjo5PgG0&ab_channel=Duran"
set ws = CreateObject("wscript.shell")

var=msgbox("Do you wanna have a bad time?", 4+16,"Geez rick!")

If var = 6 Then
For i = 0 to a Step 1
	ws.run("chrome.exe" &" "& Site)
Next
end if
Wscript.Quit()