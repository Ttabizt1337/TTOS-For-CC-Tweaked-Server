document.addEventListener("DOMContentLoaded", function() {
    const scripts = [
        { name: "Back", url: "scripts/Back.lua" },
        { name: "command", url: "scripts/command.lua" },
        { name: "configure", url: "scripts/configure.lua" },
        { name: "Logo", url: "scripts/Logo.nfp" },
        { name: "LogoCC", url: "scripts/LogoCC.nfp" },
        { name: "MPrograms", url: "scripts/MPrograms.lua" },
        { name: "programs", url: "scripts/programs.lua" },
        { name: "starter", url: "scripts/starter.lua" },
        { name: "startup", url: "scripts/startup.lua" },
        { name: "startupFile", url: "scripts/startupFile.lua" },
        { name: "system", url: "scripts/system.lua" },
        { name: "Uninstall", url: "scripts/Uninstall.lua" },
        { name: "updateOS", url: "scripts/updateOS.lua" },
        { name: "UpdatePopup", url: "scripts/UpdatePopup.lua" }
    ];

    const scriptList = document.getElementById("script-list");
    scripts.forEach(script => {
        const li = document.createElement("li");
        const a = document.createElement("a");
        a.textContent = script.name;
        a.href = script.url;
        li.appendChild(a);
        scriptList.appendChild(li);
    });
});
