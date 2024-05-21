speaker = peripheral.find("speaker")
speaker.playNote("pling", 1, 15)
term.clear()
term.setCursorPos(1,1)


local function ChA(ans)
    if (ans == "1") then
        shell.run("disk/.startup")
    elseif (ans == "2") then
        term.clear()
        disk.eject("left")
        disk.eject("right")
        disk.eject("top")
        disk.eject("bottom")
        disk.eject("back")
        shell.run("wget", "run", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/OnlineInstaller.lua")
    else
        print("Wrong Answer, Please Try Again!")
        sleep(3)
        shell.run("disk/startup")
    end
end

local function ST()
    print("Do you want to install TTOS from disk or from Internet?")
    print("Disk - 1, Internet - 2")
    print("(Internet Function Downloads latest system!)")
    print(" ")
    term.write("Instalation Mode: ")
    rr = read()
    ChA(rr)
end

ST()
