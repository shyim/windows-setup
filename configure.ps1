# Enable darkmode

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force

# Explorer

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -Value 0 -Force

# Windows Snapping

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name SnapAssist -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name EnableSnapAssistFlyout -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name EnableSnapBar -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name EnableTaskGroups -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name DITest -Value 0 -Type Dword -Force

# Disable animations
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name MinAnimate -Value 0 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name UserPreferencesMask -Value ([byte[]]"90,12,07,80,10,00,00,00".Split(',') | % { "0x$_"}) -Type Binary -Force

# Set color
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name AccentColor -Value 4287365347 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name ColorizationColor -Value 3303211148 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name ColorizationColorBalance -Value 89 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name ColorizationAfterglow -Value 3303211148 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name ColorizationAfterglowBalance -Value 10 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name ColorizationBlurBalance -Value 1 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name EnableWindowColorization -Value 1 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name ColorizationGlassAttribute -Value 1 -Type Dword -Force

# Start menu
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name Start_Layout -Value 1 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name Start_TrackDocs -Value 1 -Type Dword -Force
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$de${eb3dc3e9-b9d7-4408-a3cf-733bcd095eac}$$windows.data.unifiedtile.startglobalproperties\Current' -Name Data -Value (&{'00,00,00,00,CB,22,CE,0C,70,33,D9,01,00,00,00,00'.split(",") | %{"0x"+$_}}) -Type Binary -Force

# Taskbar
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name SearchboxTaskbarMode -Value 0 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name ShowTaskViewButton -Value 0 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name TaskbarDa -Value 0 -Type Dword -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name TaskbarMn -Value 0 -Type Dword -Force

Stop-Process -processName: Explorer -force