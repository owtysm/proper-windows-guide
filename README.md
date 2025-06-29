# Set-up
> # Skipping microsoft account setup
```
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f
```
```
shutdown /r /t 0
```
Based on https://pureinfotech.com/bypass-microsoft-account-setup-windows-11/

Later on, choose options which give you more privacy.

> # Debloating / Performance / Telemetry
**Mentions of:**
Hellzerg Optimizer, O&O Shutup, privacy.sexy

## 1. Hellzerg Optimizer

Start with Hellzerg's Optimizer @ [github.com/hellzerg/optimizer](https://github.com/hellzerg/optimizer)
<p align="center">
   <img src="https://raw.githubusercontent.com/hellzerg/optimizer/master/banner.png">
</p>

## 2. O&O Shutup
Remove tracking and useless behaviour with O&O Shutup @ [oo-software.com/en/download/current/ooshutup10](https://www.oo-software.com/en/download/current/ooshutup10)
<p align="center">
   <img src="https://github.com/user-attachments/assets/4e54502e-7b65-4b87-8784-594fa29723e4">
</p>

## 3. privacy.sexy
Get rid of trackers, telemetry, bloat. Gain privacy, configure apps, cleanup @ [privacy.sexy](https://privacy.sexy/)
<p align="center">
   <img src="https://github.com/user-attachments/assets/2cfabd95-8ad3-465e-a349-29b60a638ddb">
</p>

> ## 🛑 Avoid this junk:

> [!CAUTION]
> ### 1. Hone
> Reverts your optimizations, paid tiers to apply optimizations.

> [!CAUTION]
> ### 2. ExitLag
> Don't pay yet, first change your dns to:
```1.1.1.1``` (cloudflare) 
or 
```8.8.8.8 (google)```
 and check if that helps.

> [!CAUTION]
> ### 3. "Driver Booster" / "Cleaner" apps
> Manually install drivers from official websites.
> Manually clean files on the disk you don't need (Folders like `Photos`, `Videos`, `Documents` or `Downloads`)

> [!NOTE]
> ### 4. Antiviruses
> Only if you trust defender and don't take risks by running random programs or scripts.
