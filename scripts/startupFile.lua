w, h = term.getSize()
speaker = peripheral.find("speaker")
isColor = term.isColor()
term.clear()
term.setBackgroundColor(colors.blue)
term.clear()
term.setCursorPos(1, 1)
term.write("Terminal Monitor Weight: " .. w)
term.setCursorPos(1, 2)
term.write("Terminal Monitor Height: " .. h)
term.setCursorPos(1, 3)
if isColor then
    term.write("Terminal Monitor Colors: ")
    term.setTextColor(colors.red)
    term.write("T")
    term.setTextColor(colors.cyan)
    term.write("R")
    term.setTextColor(colors.yellow)
    term.write("U")
    term.setTextColor(colors.purple)
    term.write("E")
    term.setTextColor(colors.white)
    term.write("!")
else
    term.write("Terminal Monitor Colors: FALSE!")
end
sleep(2)
term.clear()
term.setCursorPos(w / 2 - 4, h / 2 - 1)
term.write("Starting...")
sleep(0.5)
term.setCursorPos(w / 2 - 5, h / 2 + 1)
textutils.slowPrint("###########", 5)
sleep(1)
local nOption = 1

local function SysFullInstall()
    fs.makeDir("os")
    print("Made Folder os")
    sleep(1)
    fs.copy("disk/.starter", "startup")
    print("Installed Startup File")
    sleep(1)
    fs.copy("disk/.programs", "os/.programs")
    print("Installed Programs")
    sleep(1)
    fs.copy("disk/.MPrograms", "os/.MPrograms")
    fs.copy("disk/.Back", "Back")
    fs.copy("disk/.system", "os/.system")
    fs.copy("disk/.configure", "os/configure")
    fs.copy("disk/updateOS", "os/updateOS")
    print("Installed Main System Files!")
    sleep(1)
    fs.copy("disk/.command", "os/.command")
    fs.copy("disk/FileSend.lua", "FileSend.lua")
    fs.copy("disk/FileReceive.lua", "FileReceive.lua")
    fs.copy("disk/FileGitDownload.lua", "os/FileGitDownload.lua")
    print("Installed File Sending And Receiving Programs!")
    sleep(1)
    fs.copy("disk/.Uninstall", "os/.Uninstall")
    print("System Installed Successfully!")
    sleep(2)
    shell.run("os/configure")
end

term.setBackgroundColor(colors.green)
term.clear()
local LogoCC = paintutils.loadImage("disk/LogoCC.nfp")
paintutils.drawImage(LogoCC, 1, 1)
local Logo = paintutils.loadImage("disk/Logo.nfp")
paintutils.drawImage(Logo, 9, 1)
term.setBackgroundColor(colors.green)
term.setCursorPos(w / 2 - 3, h / 2-1)
if speaker then
    speaker.playNote("pling", 1, 15)
end
textutils.slowPrint("Welcome!", 10)
if speaker then
    speaker.playNote("pling", 1, 15)
end

local function printCentered(y, s)
    local x = math.floor((w - string.len(s)) / 2)
    term.setCursorPos(x, y)
    term.clearLine()
    term.write(s)
end

local function drawFrontend()
    printCentered(math.floor(h / 2) + 1, "  Select What To Do:")
    printCentered(math.floor(h / 2) + 2, (nOption == 1 and "  [ Install ]  " or "  Install "))
    printCentered(math.floor(h / 2) + 3, (nOption == 2 and "  [ Shutdown ]" or "  Shutdown"))
    printCentered(math.floor(h / 2) + 4, "")
end

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
            drawFrontend()
        end
    elseif KK == "down" or KK == "s" then
        if nOption < 2 then
            nOption = nOption + 1
            drawFrontend()
        end
    elseif KK == "enter" then
        break
    end
end
term.clear()

if nOption == 1 then
    term.clear()
    term.setCursorPos(1,1)
    print("Starting Installation...")
    sleep(1)
    print("Prepairing For System Installation...")
    sleep(1.5)
    SysFullInstall()
elseif nOption == 2 then
    os.shutdown()
end
