shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/Back.lua", "disk/.Back")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/command.lua", "disk/.command")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/configure.lua", "disk/.configure")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/Logo.nfp", "disk/Logo.nfp")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/LogoCC.nfp", "disk/LogoCC.nfp")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/MPrograms.lua", "disk/.MPrograms")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/programs.lua", "disk/.programs")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/starter.lua", "disk/.starter")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/startup.lua", "disk/startup")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/startupFile.lua", "disk/.startup")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/system.lua", "disk/.system")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/Uninstall.lua", "disk/.Uninstall")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/updateOS.lua", "disk/updateOS")
shell.run("wget", "https://ttabizt1337.github.io/TTOS-For-CC-Tweaked-Server/scripts/UpdatePopup.lua", "disk/.UpdatePopup")
shell.run("pastebin", "get", "yu4ASf1H", "disk/FileSend.lua")
shell.run("pastebin", "get", "JeRVpe9M", "disk/FileReceive.lua")
shell.run("pastebin", "get", "eppcxwUu", "disk/FileGitDownload.lua")
print("Saved on Floppy Disk!")
print("Rebooting in a while...")
sleep(3)
os.reboot()
