term.setBackgroundColor(colors.blue)
term.clear()
w,h = term.getSize()
term.setCursorPos(w/2-5,h/2-4)
print("Config Menu")
term.setCursorPos(1, h/2)

local function ChAns(ans)
    while true do 
        if rr == "1" then
            file = fs.open("options", "w")
            file.write("1")
            file.close()
            shell.run("startup")
            break
        elseif rr == "2" then
            file = fs.open("options", "w")
            file.write("2")
            file.close()
            shell.run("startup")
            break
        elseif rr == "3" then
            file = fs.open("options", "w")
            file.write("3")
            file.close()
            shell.run("startup")
            break
        else    
            print("Wrong Answer")
            sleep(2)
            shell.run("os/configure")
            break
        end
    end
end

local function CCA()
    print("What Background you want to have?")
    print("Black = 1, Blue = 2, Green = 3")
    rr = read()
    ChAns(rr)
end
CCA()
