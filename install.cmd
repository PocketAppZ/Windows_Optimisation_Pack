@echo off
cd "C:\Windows_Optimization_Pack"
echo ...
echo --- WCHICHTIG --- 
echo Bitte erst Windows Updaten
echo Der Ornder Windows_Optimization_Pack muss unter C liegen.
echo Muss als Admin ausgefuert werden
echo --- WCHICHTIG ---
echo ...
timeout 10

cls

echo ==============================
echo Windows Optimization Pack
echo ==============================
echo Schritt 1   - Apps Autostart deaktivieren
echo Schritt 2   - Autostart bereinigen
echo Schritt 3   - oShutup
echo Schritt 4   - Registry Werte (Benutzerkontensteuerung deaktivieren)
echo Schritt 4   - Registry Werte (Zeiger Beschleunigung deaktivieren)
echo Schritt 5   - Schnellstart deaktiveren
echo Schritt 6   - Winget / Winstall
echo Schritt 6.1 - C++ installieren
echo Schritt 6.2 - Direct X Installieren
echo Schritt 6.3 - Alle Programme Updaten
echo Schritt 6.4 - Nuetzliche Programme installieren
echo Schritt 7   - Sophia Script
pause
cls

echo ---------------------------
echo Schritt 1 - Apps Autostart deaktivieren
echo ---------------------------
echo Apps Autostart deaktivieren
start ms-settings:startupapps
cls

echo ---------------------------
echo Schritt 2 - Autostart bereinigen
echo ---------------------------
echo Hier bitte nur Aenderungen durchfüren, wenn das noetige Wissen vorhanden ist.
echo Ansonsten diesen Schritt bitte überspringen
cd "C:\Windows_Optimization_Pack\_Files\"
start Autoruns.exe
cls

echo ---------------------------
echo Schritt 3 - o&oShutup
echo ---------------------------
cd "C:\Windows_Optimization_Pack\_Files\oShutup"
start OOSU10.exe
cls

echo ---------------------------
echo Schritt 4 Registry Werte
echo ---------------------------
reg import "C:\Windows_Optimization_Pack\_Files\Registry.reg"
cls

echo ---------------------------
echo Schritt 5 - Schnellstart deaktiveren
echo ---------------------------
echo Nun wird der Schnellstart deaktiviert 
powercfg -h off
cls

echo ---------------------------
echo Schritt 6.1 - C++ installieren
echo ---------------------------
echo Nun wird C++ installiert
winget source update
winget install --id=Microsoft.VC++2012Redist-x64 -e  && winget install --id=Microsoft.VC++2012Redist-x86 -e  && winget install --id=Microsoft.VC++2013Redist-x64 -e  && winget install --id=Microsoft.VC++2013Redist-x86 -e  && winget install --id=Microsoft.VC++2015Redist-x64 -e  && winget install --id=Microsoft.VC++2015Redist-x86 -e  && winget install --id=Microsoft.VC++2017Redist-x64 -e  && winget install --id=Microsoft.VC++2017Redist-x86 -e  && winget install --id=Microsoft.VC++2005Redist-x86 -e  && winget install --id=Microsoft.VC++2008Redist-x86 -e  && winget install --id=Microsoft.VC++2015-2019Redist-x64 -e  && winget install --id=Microsoft.VC++2015-2019Redist-x86 -e  && winget install --id=Microsoft.VC++2005Redist-x64 -e  && winget install --id=Microsoft.VC++2008Redist-x64 -e  && winget install --id=Microsoft.VC++2010Redist-x64 -e  && winget install --id=Microsoft.VC++2010Redist-x86 -e
echo ---------------------------
echo Schritt 6.2 - Direct X Installieren
echo ---------------------------
echo nun wird Direct X installiert
winget install --id=Microsoft.DirectX  -e
echo ---------------------------
echo Schritt 6.3 - Alle Programme Updaten
echo ---------------------------
echo Nun werden alle Programme auf den aktuellstens stand gebracht
winget upgrade --all --include-unknown
echo ---------------------------
echo Schritt 6.4 - Nuetzliche Programme installieren
echo ---------------------------
winget install --id=RARLab.WinRAR -e && winget install --id=VideoLAN.VLC -e  && winget install --id=Notepad++.Notepad++ -e  && winget install --id=Discord.Discord -e  && winget install --id=Valve.Steam -e && winget install --id=BitSum.ProcessLasso && -e winget install --id=REALiX.HWiNFO -e 
cls

echo ---------------------------
echo Schritt 7 - Sophia Script
echo ---------------------------
Powershell.exe -executionpolicy remotesigned -File "C:\Windows_Optimization_Pack\_Files\Sophia Script\Sophia.ps1"
