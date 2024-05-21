document.addEventListener("DOMContentLoaded", function() {
    const scripts = [
        { name: "Online Installer", url: "scripts/OnlineInstaller.lua" }
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
