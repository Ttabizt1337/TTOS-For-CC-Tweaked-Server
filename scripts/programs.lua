--startup/setup section
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
    term.write("TtabztOS - V1.0")
    term.setCursorPos(w/w,h/h+1)
    term.write("_____________________________________________________")
end


local function drawFrontend()
    printCentered( math.floor(h/2) - 3, "")
    printCentered( math.floor(h/2) - 2, "Programs Menu" )
    printCentered( math.floor(h/2) - 1, "")
    printCentered( math.floor(h / 2) + 0, ((nOption == 1 and "[ Send File ]") or " Send File "))
    printCentered( math.floor(h/2) + 1, ((nOption == 2) and "[ Receive File ]") or " Receive File " )
    printCentered( math.floor(h/2) + 2, ((nOption == 3) and "[ Github Downloader ]") or " Github Downloader " )
    printCentered( math.floor(h/2) + 3, ((nOption == 4) and "[ More Programs ]") or " More Programs " )
    printCentered( math.floor(h/2) + 4, ((nOption == 5) and "[ Back ]") or " Back " )
    printCentered( math.floor(h/2) + 5, "")
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
shell.run("FileSend")
elseif nOption == 2 then
shell.run("FileReceive")
elseif nOption == 3 then
shell.run("FileGitDownload")
elseif nOption == 4 then
shell.run("os/.MPrograms")
else
shell.run("Back")
end
