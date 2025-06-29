## Table of contents:
- Skipping microsoft account setup during installer
- Windows settings
    - Built-in privacy toggles
    - Use the highest Refresh Rate
- Debloating / Performance / Telemetry
    - Avoid this junk
- Browser
    - The options we have
    - Search engine
        - If you want to use Google

## Definitions
**Telemetry** - collection of data

**Debloating** - getting rid of unnecessary things

# 💽 Skipping microsoft account setup during installer
During installation, when it asks you to add a microsoft account, press `Shift + F10` to open the console.

Then, execute these commands:
```
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f
```
```
shutdown /r /t 0
```
Based on https://pureinfotech.com/bypass-microsoft-account-setup-windows-11/

# ⚙️ Windows settings

## Built-in privacy toggles
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
You will see an "Application permissions" section:
- Revoke access to what you don't want applications to know.

## Use the highest Refresh Rate

1. ### Open Windows settings (`⊞ Win + U`)

2. ### Go to `System > Display`

3. ### Press `Advanced display settings`
- Choose the highest refresh rate available

# Debloating / Performance / Telemetry

## Recommended programs

**Mentions of:**
Hellzerg Optimizer, O&O Shutup, privacy.sexy

## ![image](https://github.com/user-attachments/assets/0444329a-1625-4e60-84e1-93050acb719e) 1. Hellzerg Optimizer

Start with Hellzerg's Optimizer @ [github.com/hellzerg/optimizer](https://github.com/hellzerg/optimizer/releases/)
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

## Avoid this junk

> [!CAUTION]
> ### ![hone opt](https://github.com/user-attachments/assets/99c5855e-cd7c-4cac-98aa-9333a13cacce) 1. Hone
> Reverts your optimizations, paid tiers to apply optimizations.

> [!CAUTION]
> ### ![exitlag](https://github.com/user-attachments/assets/025a7837-a975-4d5c-8c65-adb70e1fb86a) 2. ExitLag
> - Change your dns to:
> `1.1.1.1` (cloudflare) 
> or 
> `8.8.8.8` (google)
> and check if that helps.

> [!CAUTION]
> ### ![ccleaner](https://github.com/user-attachments/assets/2a502fe9-99bb-41fc-a743-695ab59a7ce3) ![image](https://github.com/user-attachments/assets/aa9581bd-a3ef-4dd8-8c84-dd9039ba2afe) 3. "Driver Booster" / "Cleaner" apps
> - Manually install drivers from official websites. (Download standalone installers, not whole apps)
>   
> - Manually clean files on the disk you don't need. (Folders like `Photos`, `Videos`, `Documents`, `Downloads` or `Temp`)

> [!NOTE] 
> ### ![avast](https://github.com/user-attachments/assets/b6df3ca8-32a8-4472-a43c-8ad707e3b798) 4. Antiviruses
> While they aren't bad, you shouldn't be paying for one.
> 
> Windows Defender is usually good enough.


# 🌐 Browser
## The options we have

Don't use Microsoft Edge, nor Google Chrome, they collect your data in the background.

Here's what I personally recommend:

> ### ![image](https://github.com/user-attachments/assets/f331a318-03fc-4526-aea7-f5d3e520b08a) [Zen Browser](https://zen-browser.app/download/)
An open-source fork of Firefox, beautiful UI and focus on privacy.

> ### ![image](https://github.com/user-attachments/assets/062e6131-f9f8-4ca3-abab-d71950132b4f) [Firefox](https://www.mozilla.org/en-US/firefox/download/thanks/)
Can't go wrong with Firefox, it is THE open-source browser.

## Search engine

> ### ![image](https://github.com/user-attachments/assets/1b82f7e7-191a-4382-ae2c-cc9b800c47e8) DuckDuckGo
Has everything Google has, yet is very focused on privacy.

> [!WARNING] 
> ## If you want to use Google
> Google, by default, collects your data with every search.
> - If you want to use Google, modify its search parameters in your browser's settings:
> ```
> https://www.google.com/search?q=%s&peek_pws=0
> ```
> Be aware they may still be tracking you.
