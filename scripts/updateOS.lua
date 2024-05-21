shell.run("pastebin", "get", "iSXg8yqQ", "os/OSVersionS")
speaker = peripheral.find("speaker")
term.clear()
term.setCursorPos(1,1)
local OSV = fs.open("os/OSVersionS", "r")
local AOSV = fs.open("os/OSVersion", "r")

if OSV == nil or AOSV == nil then
    printError("ERROR")
    OSV.close()
    AOSV.close()
    return
end

local readedOSV = OSV.readAll()
local readedAOSV = AOSV.readAll()

if readedOSV == readedAOSV or readedOSV < readedAOSV then
    print("System is Up To Date!")
    speaker.playNote("pling", 1, 15)
    sleep(0.2)
    speaker.playNote("pling", 1, 20)
    sleep(0.2)
    speaker.playNote("pling", 1, 25)
    sleep(0.2)
    OSV.close()
    fs.delete("os/OSVersionS")
    AOSV.close()
    sleep(3)
    shell.run("os/.system")
else
    term.setTextColor(colors.red)
    print("System found update!")
    speaker.playNote("pling", 1, 20)
    sleep(0.2)
    speaker.playNote("pling", 1, 20)
    sleep(0.2)
    speaker.playNote("pling", 1, 20)
    sleep(0.2)
    OSV.close()
    fs.delete("os/OSVersionS")
    AOSV.close()
    sleep(3)
    term.setTextColor(colors.white)
    shell.run("os/.UpdatePopup")
end
