### Table of contents:
- Skipping microsoft account setup during installer
- Windows settings
- Debloating / Performance / Telemetry
- Avoid this junk

> # Skipping microsoft account setup during installer
During installation, when it asks you to add a microsoft account, press `Shift + F10` to open the console.

Then, execute these commands:
```
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f
```
```
shutdown /r /t 0
```
Based on https://pureinfotech.com/bypass-microsoft-account-setup-windows-11/

> # Windows settings

> ## Built-in privacy toggles
1. ### Open Windows settings (`⊞ Win + U`)

2. ### Go to `Privacy and Security > Diagnostics`
- Turn everything off
- Press "Delete diagnostic data"

3. ### Go to `Privacy and Security > Handwriting and input personalization`
- Turn off "Custom handwriting and writing dictionary"

4. ### Go to `Privacy and Security > Search permissions`
- Turn off "Search history on this device"
- Press "Clear device's search history"

5. ### Go to `Privacy and Security > General`
- Turn everything off

6. ### Go to `Privacy and Security > Speech`
- Turn everything off (if you can)

7. ### Go to `Privacy and Security > Activity history`
- Turn everything off (if you can)

8. ### Go to `Privacy and Security` and scroll down
> You will see an "Application permissions" section.
- Revoke access to what you do not want applications to know.

> ## Miscallenous

1. ### Open Windows settings (`⊞ Win + U`)

2. ### Go to `System > Display`

3. ### Press "Advanced display settings"
- Choose the highest refresh rate available

> # Debloating / Performance / Telemetry
**Mentions of:**
Hellzerg Optimizer, O&O Shutup, privacy.sexy

## ![image](https://github.com/user-attachments/assets/0444329a-1625-4e60-84e1-93050acb719e) 1. Hellzerg Optimizer

Start with Hellzerg's Optimizer @ [github.com/hellzerg/optimizer](https://github.com/hellzerg/optimizer)
<p align="center">
   <img src="https://raw.githubusercontent.com/hellzerg/optimizer/master/banner.png">
</p>

## ![image](https://github.com/user-attachments/assets/67c0ba5b-d615-4937-9743-057bb600360f) 2. O&O Shutup
Remove tracking and useless behaviour with O&O Shutup @ [oo-software.com/en/download/current/ooshutup10](https://www.oo-software.com/en/download/current/ooshutup10)
<p align="center">
   <img src="https://github.com/user-attachments/assets/4e54502e-7b65-4b87-8784-594fa29723e4">
</p>

## ![image](https://github.com/user-attachments/assets/be45ed3f-7a27-490a-aa3e-dc44a3bda1ee) 3. privacy.sexy
Get rid of trackers, telemetry, bloat. Gain privacy, configure apps, cleanup @ [privacy.sexy](https://privacy.sexy/)
<p align="center">
   <img src="https://github.com/user-attachments/assets/2cfabd95-8ad3-465e-a349-29b60a638ddb">
</p>

> ## 🛑 Avoid this junk:

> [!CAUTION]
> ### ![hone opt](https://github.com/user-attachments/assets/99c5855e-cd7c-4cac-98aa-9333a13cacce) 1. Hone
> Reverts your optimizations, paid tiers to apply optimizations.

> [!CAUTION]
> ### ![exitlag](https://github.com/user-attachments/assets/025a7837-a975-4d5c-8c65-adb70e1fb86a) 2. ExitLag
> - Change your dns to:
> ```1.1.1.1``` (cloudflare) 
> or 
> ```8.8.8.8 (google)```
> and check if that helps.

> [!CAUTION]
> ### ![ccleaner](https://github.com/user-attachments/assets/2a502fe9-99bb-41fc-a743-695ab59a7ce3) ![image](https://github.com/user-attachments/assets/aa9581bd-a3ef-4dd8-8c84-dd9039ba2afe) 3. "Driver Booster" / "Cleaner" apps
> - Manually install drivers from official websites. (Download standalone installers, not whole apps)
>   
> - Manually clean files on the disk you don't need. (Folders like `Photos`, `Videos`, `Documents` or `Downloads`)

> [!CAUTION]
> ### ![avast](https://github.com/user-attachments/assets/c3a36f30-4f7f-4dd4-b477-8f73eb5161d8) 4. Antiviruses
> Having an anti-virus is fine, but you shouldn't pay for one.

