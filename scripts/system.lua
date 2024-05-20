--startup/setup section
if fs.exists("os/OSVersion") == true then
else
    local OSC = fs.open("os/OSVersion", "w")
    OSC.write("1.1")
    OSC.close()
end
os.pullEvent = os.pullEventRaw
term.clear()
speaker = peripheral.find("speaker")
w,h = term.getSize()
BackgroundC = fs.open("options", "r")
Readed = BackgroundC.readAll()
if Readed == "1" then
    term.setBackgroundColor(colors.black)
elseif Readed == "2" then
    term.setBackgroundColor(colors.blue)
elseif Readed == "3" then
    term.setBackgroundColor(colors.green)
else
    term.setBackgroundColor(colors.black)
end
term.clear()
sleep(0.1)



--functions
function printCentered( y,s )
    local x = math.floor((w - string.len(s)) / 2)
    term.setCursorPos(x,y)
    term.clearLine()
    term.write( s )
end
  
local nOption = 1

local function MenuDraw()
    term.setCursorPos(w/w,h/h)
    term.write("TtabztOS - V1.1 | More Colors!")
    term.setCursorPos(w/w,h/h+1)
    term.write("_____________________________________________________")
end


local function drawFrontend()
    printCentered( math.floor(h/2) - 3, "")
    printCentered( math.floor(h/2) - 2, "Start Menu" )
    printCentered( math.floor(h/2) - 1, "")
    printCentered( math.floor(h / 2) + 0, ((nOption == 1 and "[ Command ]  ") or "Command "))
    printCentered( math.floor(h/2) + 1, ((nOption == 2) and "[ Programs ]") or "Programs" )
    printCentered( math.floor(h/2) + 2, ((nOption == 3) and "[ Settings ]") or "Settings" )
    printCentered( math.floor(h/2) + 3, ((nOption == 4) and "[ Update ]") or "Update" )
    printCentered( math.floor(h/2) + 4, ((nOption == 5) and "[ Shutdown ]") or "Shutdown" )
    printCentered( math.floor(h/2) + 5, ((nOption == 6) and "[ Uninstall ]") or " Uninstall" )
    printCentered( math.floor(h/2) + 6, "")
end

--draw menu
MenuDraw()
drawFrontend()

local function KeyGet()
    local event, key, is_held = os.pullEvent("key")
    KK = keys.getName(key)
    return KK
end

while true do
    KK = KeyGet()
    if KK == "up" or KK == "w" then
        if nOption > 1 then
            nOption = nOption - 1
            MenuDraw()
            drawFrontend()
        end
    elseif KK == "down" or KK == "s" then
        if nOption < 5 then
            nOption = nOption + 1
            MenuDraw()
            drawFrontend()
        end
    elseif KK == "enter" then
        break
    end
end
term.clear()
 
--Conditions
if nOption  == 1 then
shell.run("os/.command")
elseif nOption == 2 then
shell.run("os/.programs")
elseif nOption == 3 then
shell.run("os/updateOS")
elseif nOption == 4 then
shell.run("os/configure")
elseif nOption == 5 then
speaker.playNote("pling", 1, 15)
sleep(0.2)
speaker.playNote("pling", 1, 10)
sleep(0.2)
speaker.playNote("pling", 1, 5)
sleep(0.2)
os.shutdown()
else
shell.run("os/.Uninstall")
end